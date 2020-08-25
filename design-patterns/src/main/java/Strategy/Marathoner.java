package strategy;


public class Marathoner implements RunStrategy {

  public void Run(String name) {
    System.out.println(name + "is now running at (Marathon) a steady pace.");
  }
}
