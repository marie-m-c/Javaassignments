import java.util.ArrayList;
public class TestOrders {
    public static void main(String[] args) {
    
        // Menu items
        Item item1 = new Item();
        Item item2 = new Item();
        Item item3 = new Item();
        Item item4 = new Item();

        item1.name = "mocha";
        item2.name = "latte";
        item3.name = "drip coffee";
        item4.name = "cappuccino";

        item1.price = 4.0;
        item2.price = 3.5;
        item3.price = 3.0;
        item4.price = 4.3;

        // Order variables -- order1, order2 etc.
        Order order1 = new Order();
        Order order2 = new Order();
        Order order3 = new Order();
        Order order4 = new Order();

        order1.name = "Cindhuri";
        order2.name = "Jimmy";
        order3.name = "Noah";
        order4.name = "Sam";
    
        // Application Simulations
        System.out.printf("order1 : %s\n", order1);
        System.out.printf("order1 total: %s\n", order1.total);

        System.out.println("\n****Add item1 to order2's item list and increment the order's total ****");
        order2.items = new ArrayList<Item>();
        order2.items.add(item1);
        order2.total += item1.price;
        System.out.printf("Total: %s\n", order2.total);
        
        System.out.println("\n****Noah ordered a cappuccino. Add the cappuccino to their order list and to their tab. ****");
        order3.items = new ArrayList<Item>();
        order3.items.add(item4);
        order3.total += item4.price;
        System.out.printf("Total: %s\n", order3.total);

        System.out.println("\n****Sam added a latte. Update the order accordingly. ****");
        order4.items = new ArrayList<Item>();
        order4.items.add(item2);
        order4.total += item2.price;
        System.out.printf("Total: %s\n", order4.total);

        System.out.println("\n****Cindhuri’s order is now ready. Update her status. ****");
        order1.ready = true;
        System.out.printf("Ready: %s\n", order1.ready);
        
        System.out.println("\n****Sam ordered more drinks - 2 lattes. Update their order as well. ****");
        order4.items.add(item2);
        order4.items.add(item2);
        order4.total += 2 * item2.price;
        System.out.printf("Total: %s\n", order4.total);

        System.out.println("\n****Jimmy s order is now ready. Update his status. ****");
        order2.ready = true;
        System.out.printf("Ready: %s\n", order2.ready);
    }
}
