package com.cybertek.step_definitions;

import io.cucumber.java.en.Then;

import java.util.List;

public class DataTableStepDefinitions {

    @Then("user should se below words display")
    public void user_should_se_below_words_display(List<String> fruitList) {

        //Print out the size of the list
        System.out.println("Fruit size: "+fruitList.size());  //Prints --> Fruit size: 5
        System.out.println(fruitList.get(1));  //Prints--> kiwi
        System.out.println(fruitList); //Prints --> [Apple, kiwi, Orange, Cucumber, Broccoli]

    }


}
