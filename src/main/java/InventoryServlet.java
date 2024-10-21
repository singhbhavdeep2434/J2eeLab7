import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import bhavdeep.Product;

@WebServlet("/inventory")
public class InventoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InventoryServlet() {
        super();
    
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = new ArrayList<>();
        productList.add(new Product(1, "Product A", 10, 19.99));
        productList.add(new Product(2, "Product B", 20, 29.99));
        productList.add(new Product(3, "Product C", 30, 39.99));

        request.setAttribute("productList", productList);
        request.setAttribute("currentTime", System.currentTimeMillis());
        request.getRequestDispatcher("/inventory.jsp").forward(request, response);
    }

}


