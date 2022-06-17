package step_definitions;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import pages.CommonPage;
import pages.HomePage;
import pages.LoginPage;
import utils.CucumberLogUtils;
import utils.SeleniumUtils;
import utils.WebDriverManager;

public class HomeSteps extends LoginPage implements CommonPage {
    HomePage homePage;

    public HomeSteps() {
        homePage = new HomePage();
    }

    @Then("Verify title of page is {string}")
    public void verifyTitleOfPageIs(String title) {
        Assert.assertEquals(title, WebDriverManager.getDriver().getTitle());
    }

    @Then("Verify {string} button is displayed")
    public void verifyButtonIsDisplayed(String btn) {
        WebDriverManager.getDriver().findElement(By.xpath(String.format(XPATH_TEMPLATE_TEXT, btn))).click();
    }

    @Then("Verify {string} button is not displayed")
    public void verifyButtonIsNotDisplayed(String btn) {
       Assert.assertTrue(!WebDriverManager.isDisplayed(By.xpath(String.format(XPATH_TEMPLATE_TEXT, btn))));
    }
}

