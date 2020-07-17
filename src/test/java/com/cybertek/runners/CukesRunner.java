package com.cybertek.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(

        // Adding {} allow us to add more than one plugin
        plugin = {"html:target/cucumber-report.html",
                "rerun:target/rerun.txt", "json:target/cucumber.json"
        },
        //"json:target/cucumber.json"
        features = "src\\test\\resources\\features",
        glue = "com\\cybertek\\step_definitions",
        dryRun = false,
        tags = "@wiki"

)

public class CukesRunner { }
