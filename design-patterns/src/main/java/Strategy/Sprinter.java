package strategy;


public class Sprinter implements RunStrategy {

  public void Run(String name) {

    System.out.println(name + "is now running (Sprint) at full speed.");
  }
}
