import java.util.ArrayList;
public class TestOrders {
    public static void main(String[] args) {
        // Create two orders for unspecified guests without specifying a name
        Order order1 = new Order();
        Order order2 = new Order();

        // Create three orders with names using the overloaded constructor
        Order orderSam = new Order("Sam");
        Order orderJimmy = new Order("Jimmy");
        Order orderNoah = new Order("Noah");

        // Add at least 2 items to each order using the addItem method
        Item mocha = new Item("Mocha", 4.50);
        Item latte = new Item("Latte", 3.75);
        Item dripCoffee = new Item("Drip Coffee", 2.00);
        Item cappuccino = new Item("Cappuccino", 3.25);

        // Adding items to order1
        order1.addItem(mocha);
        order1.addItem(latte);

        // Adding items to order2
        order2.addItem(dripCoffee);
        order2.addItem(cappuccino);

        // Adding items to orderSam
        orderSam.addItem(mocha);
        orderSam.addItem(cappuccino);

        // Adding items to orderJimmy
        orderJimmy.addItem(latte);
        orderJimmy.addItem(dripCoffee);

        // Adding items to orderNoah
        orderNoah.addItem(mocha);
        orderNoah.addItem(latte);

        // Set some orders to ready
        order1.setReady(true);
        orderJimmy.setReady(true);
        orderNoah.setReady(true);

        // Print the status messages for each order
        System.out.println("Status of Order 1: " + order1.getStatusMessage());
        System.out.println("Status of Order 2: " + order2.getStatusMessage());
        System.out.println("Status of Order Sam: " + orderSam.getStatusMessage());
        System.out.println("Status of Order Jimmy: " + orderJimmy.getStatusMessage());
        System.out.println("Status of Order Noah: " + orderNoah.getStatusMessage());

        // Print the total for each order
        System.out.println("\nTotal for Order 1: $" + order1.getOrderTotal());
        System.out.println("Total for Order 2: $" + order2.getOrderTotal());
        System.out.println("Total for Order Sam: $" + orderSam.getOrderTotal());
        System.out.println("Total for Order Jimmy: $" + orderJimmy.getOrderTotal());
        System.out.println("Total for Order Noah: $" + orderNoah.getOrderTotal());

        // Display the details of all orders
        System.out.println("\nDisplaying Details of All Orders:");
        order1.display();
        order2.display();
        orderSam.display();
        orderJimmy.display();
        orderNoah.display();
    }
}
