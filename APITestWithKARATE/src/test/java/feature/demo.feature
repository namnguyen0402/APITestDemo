Feature: Check return values by API

Scenario Outline: get the values of API
	Given url 'https://my-json-server.typicode.com/typicode/demo/posts/1'
	When method get
	Then status 200 with id is "<id>" and title is "<title>"
	Examples:
	|  id	| title |
	|	1 	| Post 1 | 