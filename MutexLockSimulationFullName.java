

public class MutexLockSimulationFullName {

    public static void main(String[] args) throws InterruptedException {

        Bank bank = new Bank();

        Thread t1 = new Thread(bank::run, "Thread1");
        Thread t2 = new Thread(bank::run, "Thread2");
        Thread t3 = new Thread(bank::run, "Thread3");

        t1.start();
        t2.start();
        t3.start();

        t1.join();
        t2.join();
        t3.join();
    }
}
