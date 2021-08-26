package com.axonivy.market.utils.htmldialog.test;

import static com.codeborne.selenide.Condition.disabled;
import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.hidden;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;

/**
 * This HtmlDialog WebTest starts the ReadOnlyHtmlDialogDemo process in a real browser 
 * and fill the editable fields in the first step.
 * Next step is to verify that the previously edited fields are shown as read-only fields in the next Html Dialog.
 * <p>
 * The test can either be run
 * <ul>
 * <li>in the Designer IDE ( <code>right click > run as > JUnit Test </code>
 * )</li>
 * <li>or in a Maven continuous integration build pipeline (
 * <code>mvn clean verify</code> )</li>
 * </ul>
 * </p>
 * 
 */
@IvyWebTest(headless = false)
public class HtmlDialogWebIT {

	@Test
	public void testEditableHtmlDialog() {
		startProcessReadOnlyHtmlDialogDemo();
		
		$(By.id("form:editableHtmlDialogLabel")).shouldBe(visible, text("Editable Html Dialog"));
		// check if all the fields are editable
		$(By.id("form:selectBooleanCheckbox")).shouldBe(enabled);
		$(By.id("form:selectOneMenu")).shouldBe(enabled);
		$(By.id("form:selectOneRadio")).shouldBe(enabled);
		$(By.id("form:inputTextarea")).shouldBe(enabled);
		$(By.id("form:addNewButton")).shouldBe(enabled);
		$(By.id("form:proceed")).shouldBe(enabled);
		
		fillEditableHtmlDialog();
	}

	@Test
	public void testReadOnlyHtmlDialog() {
		startProcessReadOnlyHtmlDialogDemo();
		
		fillEditableHtmlDialog();
		// verify if the proceed button is enabled, before clicking it
		$(By.id("form:proceed")).shouldBe(enabled).click();
		// verify if the HTML Dialog is viewed in Read-Only mode
		$(By.id("form:readOnlyHtmlDialogLabel")).shouldBe(visible, text("Read-Only Html Dialog"));
		// check if all the fields are read-only
		$(By.id("form:selectBooleanCheckbox_input")).shouldBe(disabled);
		$(By.id("form:selectOneMenu_input")).shouldBe(disabled);
		$(By.id("form:selectOneRadio:0")).shouldBe(disabled);
		$(By.id("form:selectOneRadio:1")).shouldBe(disabled);
		$(By.id("form:selectOneRadio:2")).shouldBe(disabled);
		$(By.id("form:inputTextarea")).shouldBe(disabled);
		$(By.id("form:addNewButton")).shouldBe(hidden);
		$(By.id("form:dataTable:0:carOwnerInputText")).shouldBe(disabled);
		$(By.id("form:dataTable:0:entryDateCalendar_input")).shouldBe(disabled);
		$(By.id("form:dataTable:1:carOwnerInputText")).shouldBe(disabled);
		$(By.id("form:dataTable:1:entryDateCalendar_input")).shouldBe(disabled);
		$(By.id("form:proceed")).shouldBe(enabled);
	}

	private void startProcessReadOnlyHtmlDialogDemo() {
		open(EngineUrl.createProcessUrl("html-dialog-utils-demo/17B78A810F03E36C/start.ivp"));
	}

	private void fillEditableHtmlDialog() {
		// fill Editable Html Dialog form
		$(By.id("form:selectBooleanCheckbox")).shouldBe(enabled).click();
		
		$(By.id("form:selectOneMenu")).shouldBe(enabled).click();
		$(By.id("form:selectOneMenu_1")).shouldBe(enabled).click();
		
		$(By.id("form:selectOneRadio")).shouldBe(enabled).click();
		$(By.id("form:inputTextarea")).shouldBe(enabled).sendKeys("Filling comment for the Web integration test of the HtmlDialog.");

		$(By.id("form:addNewButton")).shouldBe(enabled).click();
		$(By.id("form:dataTable:0:carOwnerInputText")).shouldBe(enabled).sendKeys("Car owner N°1");
		$(By.id("form:dataTable:0:entryDateCalendar_input")).shouldBe(enabled).sendKeys("25082021");
		
		$(By.id("form:addNewButton")).shouldBe(enabled).click();
		$(By.id("form:dataTable:1:carOwnerInputText")).shouldBe(enabled).sendKeys("Car owner N°2");
		$(By.id("form:dataTable:1:entryDateCalendar_input")).shouldBe(enabled).sendKeys("26092020");
		
	}

}