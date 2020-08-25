package observer;

public class ConcreteObserverB implements Observer {
  public void update(Subject subject) {
    System.out.println("Concrete Observer B has received the update");
  }
}
