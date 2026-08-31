# Sistema de Gerenciamento de Academia

> Projeto acadêmico de Banco de Dados Relacional desenvolvido para a disciplina **Modelagem e Implementação de Banco de Dados com SQL** da **Universidade Veiga de Almeida (UVA)**.

---

##  Sobre o Projeto

O objetivo do projeto é automatizar e otimizar o controle operacional de uma academia, substituindo processos manuais por uma base de dados relacional estruturada e normalizada. O sistema engloba o controle de alunos, planos contratados, matrículas, pagamentos, instrutores, fichas de treinos e o catálogo de exercícios.

---

## Autores

* **Anna Carolina Militão dos Santos** 
* **Jonas Barros Barreto** 
* **Matheus Melo Moraes de Alencar** 
* **João Miguel Calsavara Santos** 

**Orientação:** Universidade Veiga de Almeida (Rio de Janeiro / 2026)

---

## Tecnologias Utilizadas

* **SGBD:** MariaDB `10.4` / MySQL
* **Ferramenta de Gestão:** phpMyAdmin `5.2.1`
* **Linguagem:** SQL (DDL, DML, DQL)

---

## Estrutura do Banco de Dados

O banco de dados `gerenciamento_academia` é composto por **8 entidades**:

1. **`aluno`**: Dados cadastrais dos clientes (CPF único, contato, nascimento).
2. **`plano`**: Pacotes comerciais oferecidos (duração, valores, benefícios).
3. **`matricula`**: Vínculo entre aluno e plano com controle de vigência e status.
4. **`instrutor`**: Profissionais responsáveis pela criação dos treinos.
5. **`treino`**: Ficha de treino elaborada por um instrutor para um aluno específico.
6. **`exercicio`**: Catálogo geral de movimentos e aparelhos disponíveis.
7. **`treino_exercicio`**: Tabela associativa (relacionamento N:N entre Treino e Exercício) contendo séries, repetições, cargas e descansos.
8. **`pagamento`**: Histórico financeiro das transações efetuadas pelos alunos.

---

## Regras de Negócio e Cardinalidades

* **Aluno 1:N Matrícula:** Um aluno pode ter várias matrículas ao longo do tempo.
* **Plano 1:N Matrícula:** Um plano pode estar associado a várias matrículas.
* **Aluno 1:N Pagamento:** Um aluno pode realizar diversos pagamentos.
* **Aluno 1:N Treino:** Um aluno pode possuir múltiplas fichas de treino.
* **Instrutor 1:N Treino:** Um instrutor pode montar vários treinos.
* **Treino N:N Exercício:** Resolvido pela tabela associativa `treino_exercicio`.
* **Integridade Referencial:** Ações `ON DELETE CASCADE` configuradas estrategicamente para remoção automática de treinos e pagamentos ao excluir um aluno.

---

## Como Executar o Código SQL

1. Instale o ambiente **XAMPP** ou **MariaDB/MySQL Server**.
2. Abra a interface do **phpMyAdmin** (ou o seu cliente SQL preferido).
3. Crie o banco de dados:
   ```sql
   CREATE DATABASE gerenciamento_academia;
   USE gerenciamento_academia;
