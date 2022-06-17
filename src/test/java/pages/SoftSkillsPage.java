package pages;

import org.openqa.selenium.support.PageFactory;
import utils.WebDriverManager;

public class SoftSkillsPage {
    public SoftSkillsPage(){
        PageFactory.initElements(WebDriverManager.getDriver(), this);
    }
}
