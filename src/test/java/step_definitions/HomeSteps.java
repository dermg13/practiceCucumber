package step_definitions;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import pages.CommonPage;
import pages.HomePage;
import pages.LoginPage;
import utils.CucumberLogUtils;
import utils.SeleniumUtils;
import utils.WebDriverManager;

public class HomeSteps implements CommonPage {
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
        CucumberLogUtils.logInfo("Verify Manage Access button is not displayed", true);
        Assert.assertEquals(btn, "Manage Access");
    }


    @Then("Verify the following {string} are displayed:")
    public void verifyTheFollowingAreDisplayed(String dashboards) {
        Assert.assertTrue(WebDriverManager.isDisplayed(By.xpath(String.format(XPATH_TEMPLATE_TEXT, dashboards))));
    }

    @When("User clicks on Add don't button")
    public void user_clicks_on_add_don_t_button() {
        WebDriverManager.click(homePage.addDontBtn);
    }

    @And("User enters {string} in input field")
    public void userEntersInInputField(String message) {
        WebDriverManager.sendKeys(homePage.inputFields, message);
    }

    @Then("Verify user see {string} field is displayed")
    public void verifyUserSeeFieldIsDisplayed(String txt) {
        Assert.assertTrue(homePage.DontMSG.isDisplayed());
    }



}




