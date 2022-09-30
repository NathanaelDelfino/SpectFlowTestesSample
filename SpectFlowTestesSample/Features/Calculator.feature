Feature: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator](SpectFlowTestesSample/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**


@SomaComDoisNumeros
Scenario: Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are sum
	Then the result should be 120

	When the three numbers are subtract
	Then the result should be 20

@SomaComTresNumeros
Scenario: Add three numbers
	Given the first number is 70
	And the second number is 50
	And the third number is 30
	When the three numbers are sum
	Then the result should be 150




