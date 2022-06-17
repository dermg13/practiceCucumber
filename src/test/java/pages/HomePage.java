package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.WebDriverManager;

public class HomePage {
    public HomePage(){
        PageFactory.initElements(WebDriverManager.getDriver(), this);
    }
    @FindBy(xpath = "//button[text()='Add do']")
    public WebElement addDoBtn;

    @FindBy(xpath = "//button[text()='Add don't']")
    public WebElement addDontBtn;

    @FindBy(xpath = "//textarea[@placeholder='Your Input...']")
    public WebElement inputFields;

    @FindBy(xpath = "(//div[@class='anyClass'])[1]/div[last()]/div[contains(@class, 'col-md-7')]")
    public WebElement lastMSG;

    @FindBy(xpath = "//button[@class='btn btn-outline-white btn-sm btn-success']")
    public WebElement enterBtn;

}

