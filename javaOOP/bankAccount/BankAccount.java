import java.util.Random;

public class BankAccount {
    // MEMBER VARIABLES
    private double checkingBalance;
    private double savingsBalance;
    private String accountNumber;
    private static int accounts;
    private static double totalMoney;

    // CONSTRUCTOR
    // Be sure to increment the number of accounts
    public BankAccount() {
        accounts++;
        this.accountNumber = generateAccountNumber();
    }

    private String generateAccountNumber() {
        Random random = new Random();
        StringBuilder accountNumberBuilder = new StringBuilder();
        for (int i = 0; i < 10; i++) {
            accountNumberBuilder.append(random.nextInt(10));
        }
        return accountNumberBuilder.toString();
    }

    // GETTERS
    // for checking, savings, accounts, and totalMoney

    public double getCheckingBalance() {
        return checkingBalance;
    }

    public double getSavingsBalance() {
        return savingsBalance;
    }

    public static int getAccounts() {
        return accounts;
    }

    public static double getTotalMoney() {
        return totalMoney;
    }

    // METHODS
    public void deposit(double amount, String accountType) {
        if ("checking".equalsIgnoreCase(accountType)) {
            System.out.println(String.format("Account number %s: Deposit %s %s",accountNumber, amount, accountType));
            checkingBalance += amount;
        } else if ("savings".equalsIgnoreCase(accountType)) {
            System.out.println(String.format("Account number %s: Deposit %s %s",accountNumber, amount, accountType));
            savingsBalance += amount;
        }

        totalMoney += amount;
    }

    public void withdraw(double amount, String accountType) {
        if ("checking".equalsIgnoreCase(accountType)) {
            if (checkingBalance >= amount) {
                System.out.println(String.format("Account number %s: Withdraw %s %s",accountNumber, amount, accountType));
                checkingBalance -= amount;
                totalMoney -= amount;
            } else {
                System.out.println("Insufficient funds in checking account.");
            }
        } else if ("savings".equalsIgnoreCase(accountType)) {
            if (savingsBalance >= amount) {
                System.out.println(String.format("Account number %s: Withdraw %s %s",accountNumber, amount, accountType));
                savingsBalance -= amount;
                totalMoney -= amount;
            } else {
                System.out.println("Insufficient funds in savings account.");
            }
        } else {
            System.out.println("Invalid account type.");
        }
    }

    public void getBalance() {
        System.out.println("Balance for account number : " + accountNumber);
        System.out.println("Checking Balance: $" + checkingBalance);
        System.out.println("Savings Balance: $" + savingsBalance);
    }
}
