# Speckit

[link from github](https://github.com/github/spec-kit) <br/><br/>
first setup the template for your AI Coding Assistant for your project

## providing prompts to speckit
NOTE: 
* used the model "SWE-1.5" from Windsurf Cascade to generate speckit documentation
* used the model "Claude Opus 4.5" to generate code


#### /speckit.constitution
- the application should adhere to SOLID design principles. it should have a test coverage of 90%.
- it should have a modular structure with backend services and user interface client calling these services
- the application should show usage of at minimum 15 of the below
	- arrays
	- user defined objects
	- objects as data records
	- simple selection (if else)
	- complex selection (nested if, if with multiple conditions or switch)
	- loops
	- nested loops
	- user defined methods
	- user defined methods with parameters
	- user defined methods with return values
	- sorting
	- searching
	- file input output
	- use of sentinels or flags
	- recursion
	- merging of two or more sorted data structures
	- polymorphism
	- inheritance
	- encapsulation
	- parsing a text file


#### /speckit.specify
- this is a standalone application
- use a pre-defined list of questions and answers stored in a text/csv file
- user is aked what topic he wants from a pre-defined list;
- user is also asked a difficulty level -- choose from 3, easy-medium-hard
- application randomly picks one question from the topic for that difficulty level
- application receives answer from user, checks against the dataset (question-bank)
- application also keeps track of user's scores
- at the end, the application summarizes the results


#### /speckit.clarify
- run this slash-command  
- let the AI Code Assistant analyze and ask clarifying questions 
- answer the questions with your option


#### /speckit.plan
- implement this application in python 3.12 using UV from Astral as package manager.
- make use of panda library to read list of Question objects from the CSV
- the CSV header specifies the Question Class
- use FastAPI to create backend services for this application
- create two user interfaces, one should be a Command line interface
- second user interface should be in Jinja2 using HTMX


#### /speckit.tasks
- just run the slash-command


#### /speckit.implement
Ask AI assistant to implement only certain tasks at time
<br/>Or you can ask it to implement phase by phase, where phases are a collection of tasks in a
defined sequence.