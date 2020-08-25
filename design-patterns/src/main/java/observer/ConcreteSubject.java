package observer;

import java.util.ArrayList;
import java.util.List;

public class ConcreteSubject implements Subject {
  private List<Observer> observers = new ArrayList<>();

  public void attach(Observer observer) {
    observers.add(observer);
  }

  public void detach(Observer observer) {
    observers.remove(observer);
  }

  public void notify_() {
    System.out.println("notifying to observers ....");
    observers.forEach(observer -> observer.update(this));
  }

  public void performOperation() {
    System.out.println("Some operations has been performed");
    notify_();
  }
}
