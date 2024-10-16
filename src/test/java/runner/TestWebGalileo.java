package runner;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty","html:reports/WebGalileo.html","json:reports/WebGalileo.json"},
        features ="src/test/resources",
        tags = "@web",
        glue = {"stepdefs"}

)

public class TestWebGalileo{
}
