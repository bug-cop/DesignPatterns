package strategy;

public class Jogger implements RunStrategy {
  public void Run(String name) {
    System.out.println(name + "is now jogging at a comfortable pace.");
  }
}
