import java.util.concurrent.Semaphore;

class Account {
    String name;
    int balance;
    Semaphore lock = new Semaphore(1);

    Account(String name, int balance) {
        this.name = name;
        this.balance = balance;
    }
}

class Transfer {

    static void transfer(Account a1, Account a2, int amount) {
        // Decide lock order
        Account first = a1.name.compareTo(a2.name) < 0 ? a1 : a2;
        Account second = a1.name.compareTo(a2.name) < 0 ? a2 : a1;

        try {
            System.out.println(Thread.currentThread().getName() +
                    " trying to lock " + first.name);
            first.lock.acquire();
            System.out.println(Thread.currentThread().getName() +
                    " locked " + first.name);

            System.out.println(Thread.currentThread().getName() +
                    " trying to lock " + second.name);
            second.lock.acquire();
            System.out.println(Thread.currentThread().getName() +
                    " locked " + second.name);

            // Critical section
            a1.balance -= amount;
            a2.balance += amount;

            System.out.println(Thread.currentThread().getName() +
                    " transfer completed");

            second.lock.release();
            first.lock.release();

        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

public class DeadlockSolution {
    public static void main(String[] args) {

        Account account1 = new Account("Account-1", 1000);
        Account account2 = new Account("Account-2", 1000);

        Thread t1 = new Thread(() ->
                Transfer.transfer(account1, account2, 100),
                "Thread-1"
        );

        Thread t2 = new Thread(() ->
                Transfer.transfer(account2, account1, 200),
                "Thread-2"
        );

        t1.start();
        t2.start();
    }
}
