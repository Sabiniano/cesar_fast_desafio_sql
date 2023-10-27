# cesar_fast_desafio_sql

Base de Dados Rede de Lojas
 
Uma rede de lojas quer organizar e gerenciar seus dados, conforme o modelo conceptual a seguir:

![image](https://github.com/Sabiniano/cesar_fast_desafio_sql/assets/12420013/d65bed6c-bcc0-471e-ac5d-df03941bb048)

As tabelas e os atributos desse modelo são:

1.	CATEGORIA PRODUTO (ID, Nome)
2.	DEPARTAMENTO (ID, Nome, Descrição)
3.	FORMAÇÃO (ID, Grau, Curso, Instituição)
4.	FUNÇÃO (ID, Nome, Descrição)
5.	FUNÇÃO DEPARTAMENTO (ID, ID_Funcao, ID_Departamento)
6.	LOJA (ID, Nome, Rua, Bairro, Cidade, Numero, CEP, Complemento)
7.	PESSOA (ID, Nome, Data_Nascimento, Salario)
8.	PESSOA DEPARTAMENTO (ID, ID_Pessoa, ID_Departamento)
9.	PESSOA FORMAÇÃO (ID, ID_Pessoa, ID_Formacao)
10.	PESSOA FUNÇÃO (ID, ID_Pessoa, ID_Funcao)
11.	PESSOA LOJA (ID, ID_Pessoa, ID_Loja)
12.	PRODUTO (ID, Nome, Valor)
13.	PRODUTO_CATEGORIA_PRODUTO (ID, ID_Produto, ID_Categoria_Produto
14.	PRODUTO_DEPARTAMENTO (ID, ID_Produto, ID_Departamento)

Modelo Lógico

![image](https://github.com/Sabiniano/cesar_fast_desafio_sql/assets/12420013/4fbc67b2-9d31-4b95-8c07-e44a2643a77e)
