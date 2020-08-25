package strategy;

import java.util.ArrayList;

public class App {
  public static void main(String[] args) {
    Runner aliceRuby = new Runner("Alice Ruby", new Jogger());
    Runner florenceJoyner = new Runner("Florence Joyner", new Sprinter());
    Runner ecliudKipchoge = new Runner("Eliud Kipchoge", new Marathoner());

    ArrayList<Runner> runners = new ArrayList<>();
    runners.add(aliceRuby);
    runners.add(florenceJoyner);
    runners.add(ecliudKipchoge);

    Race race = new Race(runners);
    race.start();
    System.out.println("Change strategy of Alice to Marathoner");
    aliceRuby.ChangeStrategy(new Marathoner());
    race.start();
    System.out.println("Change strategy of Alice to Sprinter");
    aliceRuby.ChangeStrategy(new Sprinter());
    race.start();
  }
}
