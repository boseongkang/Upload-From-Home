## CalcController

@WebServlet("/calc") 이였던 부분을 Controller 클래스 

```
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalcController {

	@RequestMapping("/calc")
	public ModelAndView result(int num1, int num2, String operator) {
		ModelAndView mav = new ModelAndView();
		int result = 0;
		if (operator.equals("*"))
			result = num1 * num2;
		else if (operator.equals("+"))
			result = num1 + num2;
		else if (operator.equals("-"))
			result = num1 - num2;
		else {
			if (num2 == 0) {
				mav.addObject("error", "나눗셈연산은 0일 수 없습니다.");
				mav.setViewName("errorResult");
				return mav;
			} else
				result = num1 / num2;
		}
		mav.addObject("result", result);
		mav.setViewName("calcResult");
		return mav;
	}

}
```

