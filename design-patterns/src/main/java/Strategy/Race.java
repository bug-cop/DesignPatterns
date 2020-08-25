package strategy;

import java.util.ArrayList;

public class Race {
  private ArrayList<Runner> runners = new ArrayList<Runner>();

  Race(ArrayList<Runner> runners) {
    this.runners = runners;
  }

  public void start() {
    runners.forEach(runner -> runner.Run());
  }
}
