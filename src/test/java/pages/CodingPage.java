package pages;

import org.openqa.selenium.support.PageFactory;
import utils.WebDriverManager;

public class CodingPage {
    public CodingPage() { PageFactory.initElements(WebDriverManager.getDriver(), this); }
}
