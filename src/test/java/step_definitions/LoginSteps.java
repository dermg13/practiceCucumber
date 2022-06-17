package step_definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import pages.CommonPage;
import pages.LoginPage;
import utils.WebDriverManager;

import java.util.Map;

public class LoginSteps implements CommonPage {
    LoginPage loginPage;

    public LoginSteps() {
        loginPage = new LoginPage();
    }

    @Given("User signs in:")
    public void userSignsIn(Map<String, String> data) {
        for (String key : data.keySet()) {
            WebDriverManager.sendKeys(By.xpath(String.format(XPATH_TEMPLATE_INPUT_FIELD, key)), data.get(key));
        }
    }

    @When("User clicks on {string} button")
    public void userClicksOnButton(String btn) {
        WebDriverManager.getDriver().findElement(By.xpath(String.format(XPATH_TEMPLATE_BUTTON, btn))).click();
    }

}
