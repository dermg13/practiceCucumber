package step_definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import pages.CommonPage;
import pages.HomePage;
import utils.WebDriverManager;

public class HomeSteps implements CommonPage {
    HomePage homePage;

    public HomeSteps(){
        homePage = new HomePage();
    }

}
