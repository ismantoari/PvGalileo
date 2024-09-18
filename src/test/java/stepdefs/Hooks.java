package stepdefs;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

import java.awt.*;
import java.util.Objects;

import static helper.BaseTest.*;


public class Hooks {
    String tagsRunning = null;

    @Before
    public void beforeTest(Scenario scenario) throws InterruptedException, AWTException {

        String[] tags = scenario.getSourceTagNames().toArray(new String[0]);
        tagsRunning = tags[0];
        if (Objects.equals(tagsRunning, "@web")) {
            startDriver();
        }
    }

    @After
    public void afterTest(Scenario scenario) throws InterruptedException {
        if (Objects.equals(tagsRunning, "@web")) {
            quitDriver();
            driver.quit();
        }
    }
}