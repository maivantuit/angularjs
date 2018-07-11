

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerServlet
 */
@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Customer> listCustomer = new ArrayList<Customer>();
		Customer c1 = new Customer();
		c1.setName("Alfreds Futterkiste");
		c1.setCountry("Germany");
		Customer c2 = new Customer();
		c2.setName("Chop-suey Chinese");
		c2.setCountry("Switzerland");
		Customer c3 = new Customer();
		c3.setName("Centro comercial Moctezuma");
		c3.setCountry("Mexico");
		listCustomer.add(c1);
		listCustomer.add(c2);
		listCustomer.add(c3);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
