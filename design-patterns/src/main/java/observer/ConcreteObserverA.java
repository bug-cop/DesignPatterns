package observer;

public class ConcreteObserverA implements Observer {
  public void update(Subject subject) {
    System.out.println("Concrete Observer A has received the update");
  }
}
