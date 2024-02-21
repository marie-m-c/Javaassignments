public class BankTest {
    public static void main(String[] args){
        // Create 3 bank accounts
        // Deposit Test
        // - deposit some money into each bank account's checking or savings account and display the balance each time
        // - each deposit should increase the amount of totalMoney

        BankAccount account1 = new BankAccount();
        BankAccount account2 = new BankAccount();
        BankAccount account3 = new BankAccount();

        account1.deposit(1000, "checking");
        account1.getBalance();
        System.out.println("Total Money: $" + BankAccount.getTotalMoney());

        account2.deposit(500, "savings");
        account2.getBalance();
        System.out.println("Total Money: $" + BankAccount.getTotalMoney());

        account3.deposit(1200, "checking");
        account3.getBalance();
        System.out.println("Total Money: $" + BankAccount.getTotalMoney());

        // Withdrawal Test
        // - withdraw some money from each bank account's checking or savings account and display the remaining balance
        // - each withdrawal should decrease the amount of totalMoney

        account1.withdraw(200, "checking");
        account1.getBalance();
        System.out.println("Total Money: $" + BankAccount.getTotalMoney());

        account2.withdraw(100, "savings");
        account2.getBalance();
        System.out.println("Total Money: $" + BankAccount.getTotalMoney());

        // Static Test (print the number of bank accounts and the totalMoney)
        System.out.println("\nNumber of Bank Accounts: " + BankAccount.getAccounts());
    }
}
