# SpectFlowTestesSample
 Estudando SpecFlow


#### Deixando o Spec Flow em português

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

##### Comando para gerar a documentação automática

![image](https://user-images.githubusercontent.com/7662248/193664496-15c9710d-b7d9-40a6-babd-05f6eedee3f5.png)

##### Documentação Gerada
![image](https://user-images.githubusercontent.com/7662248/194050673-5cda3da8-8bb5-4c14-8a4b-52fe34f3a464.png)
