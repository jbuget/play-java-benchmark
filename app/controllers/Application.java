package controllers;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import models.Product;
import play.db.jpa.JPA;
import play.db.jpa.Transactional;
import play.libs.F;
import play.libs.Json;
import play.libs.ws.WSClient;
import play.libs.ws.WSRequest;
import play.libs.ws.WSResponse;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Application extends Controller {

    @Inject
    private WSClient ws;

    /*
     * PUBLIC
     */

    public Result index() {
        return ok(views.html.index.render("Index"));
    }

    // GET /basic-string
    public Result basicString() {
        return ok("ok");
    }

    // GET /basic-view
    public Result basicView() {
        return ok(views.html.basic.render("Your new application is ready."));
    }

    // GET /json-response
    public Result jsonResponse() {
        List<Product> products = buildProducts(100);
        return renderProductsJson(Json.toJson(products));
    }

    // GET /simple-view
    public Result simpleView() {
        List<Product> products = buildProducts(100);
        return renderProductsView(products, "Simple view");
    }

    // GET /async-jdbc-view
    public F.Promise<Result> asyncJdbcView() {
        return F.Promise.promise(() -> JPA.withTransaction(this::fetchProducts))
                .map(products -> renderProductsView(products, "JDBC view"));
    }

    // GET /blocking-jdbc-view
    @Transactional(readOnly = true)
    public Result blockingJdbcView() {
        List<Product> products = fetchProducts();
        return renderProductsView(products, "JDBC view");
    }

    // GET /ws-response
    public F.Promise<Result> wsResponse() {
        WSRequest request = ws.url("http://localhost:8081/play-java-benchmark");
        return request.get().map(response -> renderProductsJson(response.asJson()));
    }

    // GET /async-ws-view
    public F.Promise<Result> asyncWsView() {
        WSRequest request = ws.url("http://localhost:8081/play-java-benchmark");
        return request.get().map(response -> {
            try {
                List<Product> products = fromByteArray(response.asByteArray());
                return renderProductsView(products, "Async WS view");
            } catch (Exception e) {
                e.printStackTrace();
                return internalServerError();
            }
        });
    }

    // GET /blocking-ws-view
    public Result blockingWsView() {
        WSRequest request = ws.url("http://localhost:8081/play-java-benchmark");
        WSResponse response = request.get().get(60000);
        try {
            List<Product> products = fromByteArray(response.asByteArray());
            return renderProductsView(products, "Blocking WS view");
        } catch (IOException e) {
            e.printStackTrace();
            return internalServerError();
        }
    }

    /*
     * PRIVATE
     */

    private Result renderProductsJson(JsonNode json) {
        return ok(json);
    }

    private Result renderProductsView(List<Product> products, String pageTitle) {
        return ok(views.html.products.render(products, pageTitle));
    }

    private List<Product> buildProducts(int size) {
        List<Product> products = new ArrayList<>();

        long x = 1L;
        long y = 500L;
        Random r = new Random();

        for (int i = 1; i <= size; i++) {
            String name = "Product " + i;
            long price = (x + ((long) (r.nextDouble() * (y - x)))) / 10 * 10;
            products.add(buildProduct((long) i, name, price));
        }
        return products;
    }

    private Product buildProduct(Long id, String name, Long price) {
        Product product = new Product();
        product.setId(id);
        product.setName(name);
        product.setPrice(price);
        return product;
    }

    private List<Product> fromByteArray(byte[] data) throws IOException {
        TypeReference<List<Product>> type = new TypeReference<List<Product>>() {
        };
        return new ObjectMapper().readValue(data, type);
    }

    private List<Product> fetchProducts() {
        return JPA.em().createQuery("FROM Product", Product.class).getResultList();
    }

}
