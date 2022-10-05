# Utilizando o SpectFlow

### O que é o SpecFlow

   O SpecFlow é uma ferramenta open souce para BDD na plataforma .NET, é uma solução para automação de testes em .NET. É utilizado para definir, gerenciar e executar automatiamente testes de aceitação de modo legivel por humanos. Foi construído utilizando como base o Gherkin, que é um modelo de escrita de casos de teste utilizando linguagem natual. Atualmente o Specflow suporta mais de 70 idiomas, entre eles o português (pt-BR). Os testes são escrito com base em cenários e vinculados ao código, facilitando o processo de descrição do comportamento esperado por meio de cenários e criando códigos para testes a partir destes cenários. Para por fim escrever o códido que será utilizado pela aplicação criando assim o ciclo de BDD >> TDD >> DDD.


### Como instalar o SpecFlow 
O link abaixo descreve na documentação oficial o como realizar a instalação do Specflow

[Como instalar](https://docs.specflow.org/projects/getting-started/en/latest/GettingStarted/Step1.html)

### Como criar um projeto

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



