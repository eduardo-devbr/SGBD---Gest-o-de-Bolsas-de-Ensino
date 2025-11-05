# SGBD---Gestao-de-Bolsas-de-Ensino
Sistema de banco de dados para gestão de bolsas de ensino, abrangendo cadastro de docentes, cursos, disciplinas, projetos e bolsistas, com modelagem conceitual, lógica, física e scripts SQL para criação e manipulação dos dados.

# Sistema de Gestão de Bolsas de Ensino - IFSP

## Sobre o Projeto
Este projeto foi desenvolvido como avaliação da disciplina **SPOBDD1 (Sistemas de Processamento de Banco de Dados I)**, com o objetivo de criar a **modelagem completa de um banco de dados** para apoiar a **Coordenação Acadêmica (CAC)** na gestão de **bolsas de ensino** do IFSP - Câmpus São Paulo.

O banco de dados modela todas as etapas do processo de concessão de bolsas — desde a submissão de projetos pelos docentes até a seleção e acompanhamento dos alunos bolsistas.

---

## Objetivos
- Modelar um banco de dados relacional aderente às regras institucionais do IFSP;
- Organizar informações sobre departamentos, cursos, disciplinas, docentes e alunos;
- Registrar projetos de ensino e seus respectivos bolsistas;
- Facilitar consultas, cadastros e atualizações de dados pela CAC.

---

## 🧩 Estrutura do Projeto
O projeto é composto pelos seguintes artefatos:

1. **Modelo Conceitual (DER - Peter Chen)**  
   Representa as principais entidades, atributos e relacionamentos do sistema.

2. **Modelo Lógico**  
   Estrutura derivada do DER, com detalhamento de chaves primárias e estrangeiras.

3. **Modelo Físico**  
   Implementação SQL com comandos `CREATE TABLE`, `INSERT`, `UPDATE`, `SELECT` e `DELETE`.

4. **Normalização (1FN a BCNF)**  
   Garantia de integridade e eliminação de redundâncias nas tabelas.

5. **Scripts SQL**  
   Instruções para criação do banco de dados e inserção de dados de teste.

---

## Entidades Principais
- **Departamento**
- **Subárea**
- **Docente**
- **Curso**
- **Disciplina**
- **Projeto de Ensino**
- **Aluno**
- **Bolsista**
- **Coordenação Acadêmica (CAC)**

---

## Tecnologias Utilizadas
- **Modelo Entidade-Relacionamento**
- **MySQL**
- **Ferramentas de modelagem:**Draw.io
---

## Autor
**Carlos Eduardo**  
Disciplina: SPOBDD1 – Sistemas de Processamento de Banco de Dados I  
Instituição: Instituto Federal de São Paulo – Câmpus São Paulo  
Ano: 2025


🧾 **Tipo de Avaliação:** Projeto Semestral Individual

---

## 📜 Licença
Este projeto foi desenvolvido para fins acadêmicos e não possui fins comerciais.
