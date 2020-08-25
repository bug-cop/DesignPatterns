package observer;

public class App {
  public static void main(String[] args) {
    ConcreteObserverA observerA = new ConcreteObserverA();
    ConcreteObserverB observerB = new ConcreteObserverB();

    ConcreteSubject subject = new ConcreteSubject();
    subject.attach(observerA);
    subject.attach(observerB);
    subject.performOperation();

    subject.detach(observerA);
    subject.detach(observerB);

    subject.performOperation();
  }
}
