Funcionalidade: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator](SpectFlowTestesSample/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**


@SomaComDoisNumeros
Cenário: Somando dois numeros
	Dado que o primeiro numero é 50
	E que o segundo numero é 70
	Quando solicitar a soma dos dois numeros
	Então Então o resultado esperado é 120

Cenário: Subtraindo dois numeros
	Dado que o primeiro numero é 70
	E que o segundo numero é 50
	Quando solicitar a subtração dos dois numeros
	Então Então o resultado esperado é 20

Cenário: Multiplicando Dois Numeros
	Dado que o primeiro numero é 5
	E que o segundo numero é 7
	Quando solicitar a mutiplicacao dos dois numeros
	Então Então o resultado esperado é 35

Cenário: Dividindo Dois Numeros
	Dado que o primeiro numero é 10
	E que o segundo numero é 2
	Quando solicitar a divisão dos dois numeros
	Então Então o resultado esperado é 5
