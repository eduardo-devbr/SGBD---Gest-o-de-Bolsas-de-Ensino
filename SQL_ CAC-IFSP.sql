
DROP TABLE IF EXISTS resultado_bolsa;
DROP TABLE IF EXISTS inscricao_bolsa;
DROP TABLE IF EXISTS registro_desempenho;
DROP TABLE IF EXISTS matricula_turma_aluno;
DROP TABLE IF EXISTS aluno_telefone;
DROP TABLE IF EXISTS aluno_email;
DROP TABLE IF EXISTS projeto_docentes;
DROP TABLE IF EXISTS projeto_disciplina;
DROP TABLE IF EXISTS avaliacao_projeto;
DROP TABLE IF EXISTS projetos_selecionados;
DROP TABLE IF EXISTS turma;
DROP TABLE IF EXISTS depar_academico;
DROP TABLE IF EXISTS projeto_ensino;
DROP TABLE IF EXISTS docentes;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS cursos;
DROP TABLE IF EXISTS disciplinas;
DROP TABLE IF EXISTS diretor_departamento;
DROP TABLE IF EXISTS subarea;
DROP TABLE IF EXISTS coordenadores;

CREATE TABLE coordenadores (
    ID_coordena INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_coordenadores VARCHAR(100)
);

CREATE TABLE subarea (
    sigla_sub VARCHAR(10) PRIMARY KEY, 
    nome_sub VARCHAR(100) 
);

CREATE TABLE diretor_departamento (
    matricula_diretor INTEGER PRIMARY KEY,
    nome_diretor VARCHAR(100)
);

CREATE TABLE disciplinas (
    cod_disciplinas VARCHAR(20) PRIMARY KEY,
    nome_disciplinas VARCHAR(100),
    optativa VARCHAR(3), 
    periodo INTEGER,
    carga_horaria INTEGER
);

CREATE TABLE cursos (
    ID_curso INTEGER PRIMARY KEY,
    nome_curso VARCHAR(100), 
    ID_coordena INTEGER,
    nivel_curso VARCHAR(50),
    FOREIGN KEY (ID_coordena) REFERENCES coordenadores (ID_coordena)
);

CREATE TABLE aluno (
    prontuario VARCHAR(20) PRIMARY KEY,
    nome_aluno VARCHAR(100),
    cpf VARCHAR(11),
    rg VARCHAR(9),
    ID_curso INTEGER,
    FOREIGN KEY (ID_curso) REFERENCES cursos (ID_curso)
);

CREATE TABLE docentes (
    matricula_prof INTEGER PRIMARY KEY,
    nome_prof VARCHAR(100),
    admissao DATE,
    email VARCHAR(100),
    data_nascimento VARCHAR(10),
    ID_curso INTEGER,
    FOREIGN KEY (ID_curso) REFERENCES cursos (ID_curso)
);

CREATE TABLE projeto_ensino (
    ID_projeto INTEGER PRIMARY KEY AUTOINCREMENT,
    duracao VARCHAR(50), 
    modalidade VARCHAR(50), 
    fk_docentes_matricula_prof INTEGER,
    FOREIGN KEY (fk_docentes_matricula_prof) REFERENCES docentes (matricula_prof)
);

CREATE TABLE depar_academico (
    sigla_dep VARCHAR(10) PRIMARY KEY,
    nome_dep VARCHAR(100),
    sigla_sub VARCHAR(10),
    matricula_diretor INTEGER,
    FOREIGN KEY (sigla_sub) REFERENCES subarea (sigla_sub),
    FOREIGN KEY (matricula_diretor) REFERENCES diretor_departamento (matricula_diretor)
);

CREATE TABLE turma (
    num_turma INTEGER PRIMARY KEY AUTOINCREMENT,
    cod_disciplinas VARCHAR(20),
    matricula_prof INTEGER,
    FOREIGN KEY (cod_disciplinas) REFERENCES disciplinas (cod_disciplinas),
    FOREIGN KEY (matricula_prof) REFERENCES docentes (matricula_prof)
);

CREATE TABLE projetos_selecionados (
    ID_projeto INTEGER PRIMARY KEY,
    FOREIGN KEY (ID_projeto) REFERENCES projeto_ensino (ID_projeto)
);

CREATE TABLE avaliacao_projeto (
    ID_projeto INTEGER,
    status VARCHAR(20),
    matricula_diretor INTEGER,
    PRIMARY KEY (ID_projeto, matricula_diretor),
    FOREIGN KEY (ID_projeto) REFERENCES projeto_ensino (ID_projeto),
    FOREIGN KEY (matricula_diretor) REFERENCES diretor_departamento (matricula_diretor)
);

CREATE TABLE projeto_disciplina (
    ID_projeto INTEGER,
    cod_disciplina VARCHAR(20), 
    PRIMARY KEY (ID_projeto, cod_disciplina),
    FOREIGN KEY (ID_projeto) REFERENCES projeto_ensino (ID_projeto),
    FOREIGN KEY (cod_disciplina) REFERENCES disciplinas (cod_disciplinas)
);

CREATE TABLE projeto_docentes (
    ID_projeto INTEGER,
    matricula_prof INTEGER,
    PRIMARY KEY (ID_projeto, matricula_prof),
    FOREIGN KEY (ID_projeto) REFERENCES projeto_ensino (ID_projeto),
    FOREIGN KEY (matricula_prof) REFERENCES docentes (matricula_prof)
);

CREATE TABLE matricula_turma_aluno (
    num_turma INTEGER,
    prontuario VARCHAR(20), 
    PRIMARY KEY (num_turma, prontuario),
    FOREIGN KEY (num_turma) REFERENCES turma (num_turma),
    FOREIGN KEY (prontuario) REFERENCES aluno (prontuario)
);

CREATE TABLE registro_desempenho (
    num_turma INTEGER,
    prontuario VARCHAR(20),
    faltas INTEGER,
    notas DOUBLE,
    PRIMARY KEY (num_turma, prontuario),
    FOREIGN KEY (num_turma, prontuario) REFERENCES matricula_turma_aluno (num_turma, prontuario)
);

CREATE TABLE inscricao_bolsa (
    ID_projeto INTEGER,
    prontuario VARCHAR(20),
    PRIMARY KEY (ID_projeto, prontuario),
    FOREIGN KEY (ID_projeto) REFERENCES projeto_ensino (ID_projeto),
    FOREIGN KEY (prontuario) REFERENCES aluno (prontuario)
);

CREATE TABLE resultado_bolsa (
    ID_projeto INTEGER,
    prontuario VARCHAR(20),
    status VARCHAR(20),
    PRIMARY KEY (ID_projeto, prontuario),
    FOREIGN KEY (ID_projeto, prontuario) REFERENCES inscricao_bolsa (ID_projeto, prontuario)
);

CREATE TABLE aluno_telefone (
    prontuario VARCHAR(20),
    telefone VARCHAR(15), 
    PRIMARY KEY (prontuario, telefone),
    FOREIGN KEY (prontuario) REFERENCES aluno (prontuario)
);

CREATE TABLE aluno_email (
    prontuario VARCHAR(20),
    email VARCHAR(100),
    PRIMARY KEY (prontuario, email),
    FOREIGN KEY (prontuario) REFERENCES aluno (prontuario)
);
