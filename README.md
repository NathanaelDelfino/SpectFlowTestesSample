# Utilizando o SpectFlow

### O que é o SpecFlow

   O SpecFlow é uma ferramenta open souce para BDD na plataforma .NET, é uma solução para automação de testes em .NET. É utilizado para definir, gerenciar e executar automatiamente testes de aceitação de modo legivel por humanos. Foi construído utilizando como base o Gherkin, que é um modelo de escrita de casos de teste utilizando linguagem natual. Atualmente o Specflow suporta mais de 70 idiomas, entre eles o português (pt-BR). Os testes são escrito com base em cenários e vinculados ao código, facilitando o processo de descrição do comportamento esperado por meio de cenários e criando códigos para testes a partir destes cenários. Para por fim escrever o códido que será utilizado pela aplicação criando assim o ciclo de BDD >> TDD >> DDD.


### Como instalar o SpecFlow 
O link abaixo descreve na documentação oficial o como realizar a instalação do Specflow

[Como instalar](https://docs.specflow.org/projects/getting-started/en/latest/GettingStarted/Step1.html)

### Como criar um projeto

Com a nossa solução criada, vamos dar inicio dar inicio a criação do projeto no SpecFlow

![image](https://user-images.githubusercontent.com/7662248/194955217-d52ec09b-bc32-44d2-8efd-ffe868601df5.png)

Vamos criar o projeto no SpecFlow

![image](https://user-images.githubusercontent.com/7662248/194955944-ed20e9fd-9c6f-4a10-bdc1-bbbed1b711bf.png)

Na criação apenas definimos um nome, criamos o projeto. A partir desse ponto o projeto já está anexado a nossa solução e temos tudo quase pronto para iniciar a criação do eventos que vamos utilizar em nosso projeto

![image](https://user-images.githubusercontent.com/7662248/194956065-4cfe0b84-48b6-4187-ab9c-17be1616e109.png)

Com o projeto que ira realizar os testes criado, devemos adicionar a referencia do projeto que irá ser desenvolvido e entregue.

![image](https://user-images.githubusercontent.com/7662248/194956412-8423e3a5-1398-495b-b9e0-4cc4c72b9a74.png)

Selecionamos e damos OK

![image](https://user-images.githubusercontent.com/7662248/194956501-c067031e-0c60-4c9c-9a7a-9c2f4fd337ea.png)

_obs: Para que o evento de troca de idioma funcione, deve limpar a solução e e tentar compilar novamente._

Com tudo pronto e configurado começamos a definição dos cenários que irão comportor os comportamentos e funcionalidades esperados pelo sistema que necessita se desenvolvido.

Cada cenário será composto por :

```SpecFlow
Cenário: _Um titulo de compreenção do que deve ser feito (obs: É ideal que se defina bem o que deve ser feito)_
	Dado  _Um pré informação do que será realizado_
	E _Uma informação adicionado do que deve ser feito_
	Quando _O evento que deve ser executado nesse cenário_
	Então _O resultado esperado_
```
![image](https://user-images.githubusercontent.com/7662248/194957721-1ee0217c-41e6-4921-8e13-fac5d7662ca6.png)

Com o cenário definido vamos definir os passos a serem realizados

![image](https://user-images.githubusercontent.com/7662248/194957789-5fa662f1-cc2b-4f2d-bff0-4738be75e71d.png)

Em primeiro momento nos será exibido a seguinte tela, que nos é dado duas opções, a primera que é copiar para o clipboard, e uma segunda que irá alterar o arquivos que armazena nossos testes criados. ⚠️⚠️⚠️ Muito cuidado com a segunda. Pois se já existerem testes no nosso projeto, os mesmos serão sobreescritos pelos novos a serem executados. ⚠️⚠️⚠️


![image](https://user-images.githubusercontent.com/7662248/194957983-03875433-09cc-4eba-a4c6-12d5dca047c4.png)


Agora com os processos definidos nos resta implementar os testes e suas devidas funcionalidades 

![image](https://user-images.githubusercontent.com/7662248/194958336-d4d66f1b-f9c3-4c28-8ab8-021f52ffc1f7.png)

### Escrevendo cenários para o SpecFlow 

![image](https://user-images.githubusercontent.com/7662248/194069672-56a73215-4e94-40b5-beb0-860bab510878.png)



### Deixando o Spec Flow em português

1 - Para deixar o specflow em português primeiramente é necessário adicionar o SpecFlow configuration file
![image](https://user-images.githubusercontent.com/7662248/193665410-b48ba7b8-ea09-49de-958c-304b68e785a9.png)

2 - Adicionado o configuration file, deve ser adicionado dentro do specflow.json

```SpecFlow.json
"language": {
    "feature": "pt-BR"
  }
```

#### Testes criados

![image](https://user-images.githubusercontent.com/7662248/193663903-aff7ec69-0634-4a9a-ae7f-7adddc2bcb47.png)

### Gerando a LivingDoc
O LivingDoc Generator permite gerar documentação viva em formato HTML sem dependências externas.

 - É necessário instalar o  SpecFlow.Plus.LivingDoc Plugin via CLI tool, através do comando
```
  dotnet tool install --global SpecFlow.Plus.LivingDoc.CLI
```
 - Para gerar a documentação automática é necessário realizar um build do projeto e referenciar a dll gerada do projeto em conjunto com o json.
```cmd
livingdoc test-assembly SpecFlowCalculator.dll -t SpecFlowCalculator.deps.json
```
#### Dica 
Quando estiver utilizando Specflow em pt-BR, é necessário adicionar no inicio do arquivo .feature no inicio do arquivo o idioma utilizado
![image](https://user-images.githubusercontent.com/7662248/194056342-e0bffb9d-b946-46d5-8bf7-a3b95a11813e.png)


##### Comando para gerar a documentação automática

![image](https://user-images.githubusercontent.com/7662248/193664496-15c9710d-b7d9-40a6-babd-05f6eedee3f5.png)

##### Documentação Gerada
![image](https://user-images.githubusercontent.com/7662248/194055839-3a213f75-1126-4754-a231-25e6243116e7.png)

##### Arquivo de exemplo
[LivingDoc.zip](https://github.com/NathanaelDelfino/SpectFlowTestesSample/files/9715547/LivingDoc.zip)



