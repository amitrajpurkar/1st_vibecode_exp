# Speckit

[link from github](https://github.com/github/spec-kit) <br/><br/>
first setup the template for your AI Coding Assistant for your project

## providing prompts to speckit

#### /speckit.constitution
a single page web application showing exploratory analysis of weather data from its local
folder. application should adhere to SOLID principles (Single Responsibility, Open-Closed,
Liskov Substitution, Interface Segregation, Dependency Inversion). application should also
use at least 10 best practices for using simple Next.JS framework. it should have a test
coverage of 90%


#### /speckit.specify
the application provides services to get average temperature and humidity per month over
the year from the weather data in resources folder of the application. it also provides a
service which will for a given month show the trend of temperature and humidity and most
common weather condition in that month. the application on the webpage shows two
charts side by side for average temperature and humidity over the year. it them provides
user option to select a month to see the weather trends for that month


#### /speckit.clarify
run this command , let the AI Code Assistant analyze and ask clarifying questions. answer the questions with your option


#### /speckit.plan
use python 3.12 and UV package manager from Astral which is installed / available on this
project's root folder. use FastAPI or a better library to build the backend services.
WeatherData.csv available in src/main/resources folder, is the data to be used for this
application. use panda library to read CSV data, use matplotlib and seaborn to create
charts, use Next.JS to create a responsive web application with requested features


#### /speckit.tasks
this project has speckit templates. the spec.md and plan.md for the application are located
at ./specs/001-weather-analysis folder. use these and create tasks for this plan. In phase 1,
have tasks for creating backend services for user story 1, then user story 2, then sequence
the tasks for creating the frontend application. have task for implementing unit test cases at
the right sequence. i would like to build one feature at a time.


#### /speckit.implement
Ask AI assistant to implement only certain tasks at time
<br/>Or you can ask it to implement phase by phase, where phases are a collection of tasks in a
defined sequence.