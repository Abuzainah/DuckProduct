public abstract class Duck {
    private QuackingStrategy quackingStrategy;

    public void setQuackingStrategy(QuackingStrategy quackingStrategy){
        this.quackingStrategy=quackingStrategy;
    }

    public QuackingStrategy getQuackingStrategy(){
        return quackingStrategy;
    }

    public void performQuacking(){
        this.quackingStrategy.quack();
    }
}
