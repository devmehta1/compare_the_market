## Compare the market Automation Framework

The Compare the market framework was added to this code base for the purpose of storing automated acceptance tests for the application.

## Introduction to the Layout

features/<<name>>.feature : Are cucumber feature files which include the test scenarios

features/step_definitions/<<name>>.rb : automation code for the test scenarios

features/support/env.rb : configures the driver and the hostname to use

#Prerequisites

Download Ruby: www.ruby-lang.org/en/downloads/

Ruby Gems: rubygems.org/

Bundler: sudo gem install bundler (#On the command line)

## Environment Setup

To get all the required GEMs, from the project root directory execute:

	bundle install

## Test execution

To run the tests execute command:

	bundle exec cucumber features/energy_comparison_journey.feature 
	
Please make sure you are within the project when executing the above command

## Browser and Operting System

Please use the latest chrome driver 2.35

Chrome Browser Version 64.0.3282.119 (Official Build) 
 
Operating system Ubuntu 16.04
