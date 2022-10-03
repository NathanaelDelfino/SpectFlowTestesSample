using ProjetoParaSerTestadoNoSpecFlow;
using System;
using TechTalk.SpecFlow;

namespace SpectFlowTestesSample.StepDefinitions
{
    [Binding]
    public class CalculatorStepDefinitions
    {
        public Calculator _calculadora = new Calculator();
        public int _resultado;

        [Given(@"que o primeiro numero é (.*)")]
        public void GivenQueOPrimeiroNumeroE(int p0)
        {
            _calculadora.FirstNumber = p0;
        }

        [Given(@"que o segundo numero é (.*)")]
        public void GivenQueOSegundoNumeroE(int p0)
        {
            _calculadora.SecondNumber = p0;
        }

        [When(@"solicitar a soma dos dois numeros")]
        public void WhenSolicitarASomaDosDoisNumeros()
        {
            _resultado= _calculadora.Add();
        }

        [Then(@"Então o resultado esperado é (.*)")]
        public void ThenEntaoOResultadoEsperadoE(int p0)
        {
            _resultado.Should().Be(p0);
        }

        [When(@"solicitar a subtração dos dois numeros")]
        public void WhenSolicitarASubtracaoDosDoisNumeros()
        {
            _resultado = _calculadora.Subtract();
        }

        [When(@"solicitar a mutiplicacao dos dois numeros")]
        public void WhenSolicitarAMutiplicacaoDosDoisNumeros()
        {
            _resultado = _calculadora.Multiplicate();
        }

        [When(@"solicitar a divisão dos dois numeros")]
        public void WhenSolicitarADivisaoDosDoisNumeros()
        {
            _resultado = _calculadora.Division();
        }

    }
}
