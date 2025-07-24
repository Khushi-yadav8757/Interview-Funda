// Base class: Account
class Account {
    private String accountHolder;
    private String accountNumber;
    protected double balance;

    // Constructor
    public Account(String accountHolder, String accountNumber, double initialBalance) {
        this.accountHolder = accountHolder;
        this.accountNumber = accountNumber;
        this.balance = initialBalance;
    }

    // Deposit method
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("₹" + amount + " deposited.");
        } else {
            System.out.println("Invalid deposit amount.");
        }
    }

    // Withdraw method
    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("₹" + amount + " withdrawn.");
        } else {
            System.out.println("Insufficient balance or invalid amount.");
        }
    }

    // Display account details
    public void displayDetails() {
        System.out.println("Account Holder: " + accountHolder);
        System.out.println("Account Number: " + accountNumber);
        System.out.println("Balance: ₹" + balance);
    }
}

// Derived class: SavingsAccount
class SavingsAccount extends Account {
    private double interestRate;

    public SavingsAccount(String holder, String accNum, double bal, double interestRate) {
        super(holder, accNum, bal);
        this.interestRate = interestRate;
    }

    // Method to apply interest
    public void applyInterest() {
        double interest = balance * interestRate / 100;
        balance += interest;
        System.out.println("Interest ₹" + interest + " added.");
    }
}

// Main class
public class BankSystem {
    public static void main(String[] args) {
        // Creating a savings account object
        SavingsAccount myAccount = new SavingsAccount("Khushi", "ACC12345", 10000.0, 5.0);

        myAccount.displayDetails();
        myAccount.deposit(2000);
        myAccount.withdraw(1500);
        myAccount.applyInterest();
        myAccount.displayDetails();
    }
}








output :  
Account Holder: Khushi  
Account Number: ACC12345  
Balance: ₹10000.0  

₹2000.0 deposited.  
₹1500.0 withdrawn.  
Interest ₹525.0 added.  

Account Holder: Khushi  
Account Number: ACC12345  
Balance: ₹11025.0
