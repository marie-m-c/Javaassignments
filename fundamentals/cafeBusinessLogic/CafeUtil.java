import java.util.ArrayList;

public class CafeUtil {
    public int getStreakGoal(int numWeeks) {
        int sum = 0;
        for (int i = 1; i <= numWeeks; i++) {
            sum += i;
        }
        return sum;
    }

    public int getStreakGoal() {
        int sum = 0;
        for (int i = 1; i <= 10; i++) {
            sum += i;
        }
        return sum;
    }

    public double getOrderTotal(double[] prices) {
        double total = 0.00;
        for (double p : prices) {
            total += p;
        }
        return total;
    }

    public void displayMenu(ArrayList<String> menuItems) {
        for (int i = 0; i < menuItems.size(); i++) {
            System.out.println(String.format("%d    %s", i, menuItems.get(i)));
        }
    }

    public void addCustomer(ArrayList<String> customers) {
        System.out.println("Please enter your name:");
        String username = System.console().readLine();
        System.out.println(String.format("Hello, %s!", username));
        System.out.println(String.format("There are %d people in front of you", customers.size()));
        customers.add(username);
        for (String name: customers) {
            System.out.println(name);
        }
    }

    public void printPriceChart(String product, double price, int maxQuantity) {
        for (int i = 1; i <= maxQuantity; i++) {
            double total = (price-0.50) * i + 0.50;
            System.out.println(String.format("%d    -   $%s", i, total));
        }
    }

    public boolean displayMenu(ArrayList<String> menuItems, ArrayList<Double> prices) {
        if (menuItems.size() != prices.size()) {
            return false;
        }
        for (int i = 0; i < menuItems.size(); i++) {
            System.out.println(String.format("%d    %s  --  $%s", i, menuItems.get(i), prices.get(i)));
        }
        return true;
    }

    public ArrayList<String> addCustomers() {
        ArrayList<String> customers = new ArrayList<String>();
        while (true) {
            System.out.println("Add new customer:");
            String username = System.console().readLine();
            if (username.equals("q")) {
                break;
            }
            System.out.println(String.format("New customer, %s!", username));
            customers.add(username);
        }
        return customers;
    }
}