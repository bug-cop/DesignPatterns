package strategy;

public class Runner {
  private RunStrategy strategy;
  private final String name;

  Runner(String name, RunStrategy strategy) {
    this.name = name;
    this.strategy = strategy;
  }

  public void Run() {
    strategy.Run(name);
  }

  public void ChangeStrategy(RunStrategy strategy) {
    this.strategy = strategy;
  }
}
