package ejemplo.aspectos;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class AspectoCuenta {
	 
    final int MIN_BALANCE = 10;
   

     
    @Before("call(* ejemplo.aspectos.Cuenta.*(..))")
    public void beforeAdvice() {
    System.out.println("Hello");
    }
 
  @Before("within(ejemplo.aspectos.Cuenta)")
    public void beforeAdvice2() {
    System.out.println("Hello2");
    }
 
}
