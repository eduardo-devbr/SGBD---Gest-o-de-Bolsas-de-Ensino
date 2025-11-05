
INSERT INTO subarea (sigla_sub, nome_sub) VALUES
('SCC', 'Subárea de Construção Civil'), ('SAB', 'Subárea de Biologia'),
('SAF', 'Subárea de Física'), ('SAM', 'Subárea de Matemática'),
('SAQ', 'Subárea de Química'), ('SAI', 'Subárea de Automação Industrial'),
('SEL', 'Subárea de Eletrotécnica'), ('SEO', 'Subárea de Eletrônica'),
('STC', 'Subárea de Telecomunicações'), ('SCL', 'Subárea de Códigos e Linguagens'),
('SSC', 'Subárea de Sociedade e Cultura'), ('SCI', 'Subárea de Cursos de Informática'),
('STH', 'Subárea de Turismo e Hospitalidade'), ('SME', 'Subárea de Mecânica');


INSERT INTO coordenadores (ID_coordena, nome_coordenadores) VALUES
(1, 'Celso Faustino Soto'), (2, 'Alexandre Neves Ribeiro'), (3, 'Carlos Alberto Mitio Hirano'),
(4, 'Omar Rodrigues Alves'), (5, 'Paulo Roberto de Abreu'), (6, 'Daniel Teixeira Maldonado'),
(7, 'Michelle Rubiane da Rocha Laranja'), (8, 'Nelson de Campos Villela'), (9, 'Mauricio Silva Nascimento'),
(10, 'Luciano Luis Ribeiro da Silva'), (11, 'Tarcisio Fernandes Leao'), (12, 'Carlos Francisco Gerencsez Geraldino'),
(13, 'Jacyro Gramulia Junior'), (14, 'Caroline Arantes Magalhaes'), (15, 'Johnata Souza Santicioli'),
(16, 'Isac Kiyoshi Fujita'), (17, 'Elisabete Teresinha Guerato'), (18, 'Wagner de Aguiar'),
(19, 'Andre Batista Noronha Moreira'), (20, 'Alexandre Ventieri'), (21, 'Marcos Hideyuki Yokoyama'),
(22, 'Eliana Maria Arico'), (23, 'Devanir Cabral Lima Morikawa'), (24, 'Alexandre Beletti Ferreira'),
(25, 'Henrique de Camargo Kottke'), (26, 'Alberto Akio Shiga');


INSERT INTO cursos (ID_curso, nome_curso, ID_coordena, nivel_curso) VALUES
(609, 'TÉCNICO EM QUALIDADE INTEGRADO AO ENSINO MÉDIO - EJA', 1, 'Técnico Integrado - EJA'),
(610, 'TÉCNICO EM MECÂNICA INTEGRADO AO ENSINO MÉDIO', 2, 'Técnico Integrado'),
(611, 'TÉCNICO EM ELETROTÉCNICA INTEGRADO AO ENSINO MÉDIO', 3, 'Técnico Integrado'),
(629, 'TÉCNICO EM ELETRÔNICA INTEGRADO AO ENSINO MÉDIO', 4, 'Técnico Integrado'),
(638, 'TÉCNICO EM INFORMÁTICA INTEGRADO AO ENSINO MÉDIO', 5, 'Técnico Integrado'),
(497, 'TECNOLOGIA EM SISTEMAS ELETRÔNICOS', 4, 'Graduação'),
(549, 'FORMAÇÃO PEDAGÓGICA DE DOCENTES', 6, 'Graduação'),
(551, 'LICENCIATURA EM LETRAS', 7, 'Graduação'),
(559, 'TECNOLOGIA EM PROCESSOS GERENCIAIS', 8, 'Graduação'),
(563, 'TECNOLOGIA EM GESTÃO DA PRODUÇÃO INDUSTRIAL', 9, 'Graduação'),
(565, 'ENGENHARIA CIVIL', 10, 'Graduação'),
(566, 'ENGENHARIA DE CONTROLE E AUTOMAÇÃO', 11, 'Graduação'),
(569, 'LICENCIATURA EM GEOGRAFIA', 12, 'Graduação'),
(581, 'TECNOLOGIA EM SISTEMAS ELÉTRICOS', 13, 'Graduação'),
(596, 'LICENCIATURA EM CIÊNCIAS BIOLÓGICAS', 14, 'Graduação'),
(600, 'TECNOLOGIA EM ANÁLISE E DESENVOLVIMENTO DE SISTEMAS', 15, 'Graduação'),
(603, 'ENGENHARIA DE PRODUÇÃO', 16, 'Graduação'),
(604, 'LICENCIATURA EM MATEMÁTICA', 17, 'Graduação'),
(605, 'PROGRAMA ESPECIAL DE FORMAÇÃO DE DOCENTES', 6, 'Graduação'),
(612, 'ENGENHARIA ELETRÔNICA', 18, 'Graduação'),
(624, 'LICENCIATURA EM FÍSICA', 19, 'Graduação'),
(626, 'TECNOLOGIA EM AUTOMAÇÃO INDUSTRIAL', 20, 'Graduação'),
(628, 'TECNOLOGIA EM TURISMO E HOSPITALIDADE', 21, 'Graduação'),
(730, 'LICENCIATURA EM QUÍMICA', 22, 'Graduação'),
(732, 'ARQUITETURA E URBANISMO', 23, 'Graduação'),
(852, 'BACHARELADO EM SISTEMAS DE INFORMAÇÕES', 24, 'Graduação'),
(865, 'ENGENHARIA MECÂNICA', 25, 'Graduação'),
(946, 'ENGENHARIA ELÉTRICA', 26, 'Graduação');


INSERT INTO diretor_departamento (matricula_diretor, nome_diretor) VALUES
(1566753, 'Jose Oscar Machado Alexandre'), -- Diretor do DIT
(1521170, 'Brenno Vitorino Costa'); -- Diretor do DHU


INSERT INTO depar_academico (sigla_dep, nome_dep, sigla_sub, matricula_diretor) VALUES
('DCC', 'Departamento de Construção Civil', 'SCC', NULL),
('DCM', 'Departamento de Ciências e Matemática', 'SAB', NULL),
('DEL', 'Departamento de Elétrica', 'SAI', NULL),
('DHU', 'Departamento de Humanidades', 'SCL', 1521170),
('DIT', 'Departamento de Informática e Turismo', 'SCI', 1566753),
('DME', 'Departamento de Mecânica', 'SME', NULL);


INSERT INTO docentes (matricula_prof, nome_prof, admissao, email, data_nascimento, ID_curso) VALUES
(2680331, 'Alexandre Beletti Ferreira', '2010-08-15', 'higuita@ifsp.edu.br', '1975-05-20', 852),
(1753846, 'Andre Evandro Lourenco', '2008-03-10', 'andreevandro@ifsp.edu.br', '1980-11-03', 600),
(1350141, 'Andre Luiz da Silva', '2005-02-01', 'andrels@ifsp.edu.br', '1978-01-15', 600),
(2517425, 'Eurides Balbino da Silva', '2012-01-20', 'eubalbino@ifsp.edu.br', '1985-09-30', 600),
(1566753, 'Jose Oscar Machado Alexandre', '2004-06-01', 'oscar@ifsp.edu.br', '1976-04-10', 600),
(1521170, 'Brenno Vitorino Costa', '2003-09-12', 'brenno@ifsp.edu.br', '1979-07-22', 628),
(2157872, 'Marcos Hideyuki Yokoyama', '2011-05-18', 'marcoshy@ifsp.edu.br', '1982-12-01', 628);


INSERT INTO disciplinas (cod_disciplinas, nome_disciplinas, optativa, periodo, carga_horaria) VALUES
('BD1A2', 'Banco de Dados I', 'Não', 2, 95), ('ES2A2', 'Engenharia de Software II', 'Não', 2, 95),
('LG2A2', 'Lógica de Programação II', 'Não', 2, 95), ('SOPA2', 'Sistemas Operacionais', 'Não', 2, 95),
('BD2A3', 'Banco de Dados II', 'Não', 3, 95), ('DW1A3', 'Desenvolvimento Web I', 'Não', 3, 57),
('LP1A3', 'Linguagem de Programação I', 'Não', 3, 95), ('REDA3', 'Redes de Computadores', 'Não', 3, 95),
('GTIA6', 'Gestão e Governança da TI', 'Não', 6, 57), ('PI2A6', 'Projeto Integrado II', 'Não', 6, 95);


INSERT INTO aluno (prontuario, nome_aluno, cpf, rg, ID_curso) VALUES
('SP100001', 'Ana Clara Silva', '11111111111', '111111111', 600),
('SP100002', 'Bruno Costa Santos', '22222222222', '222222222', 600),
('SP100003', 'Carla Dias Pereira', '33333333333', '333333333', 600),
('SP100004', 'Daniela Lima Oliveira', '44444444444', '444444444', 600),
('SP100005', 'Eduardo Rocha Almeida', '55555555555', '555555555', 600),
('SP100006', 'Fernanda Gomes Martins', '66666666666', '666666666', 628),
('SP100007', 'Gustavo Souza Ribeiro', '77777777777', '777777777', 628),
('SP100008', 'Helena Fernandes Carvalho', '88888888888', '888888888', 628);


INSERT INTO aluno_email (prontuario, email) VALUES
('SP100001', 'ana.silva@aluno.ifsp.edu.br'), ('SP100002', 'bruno.santos@aluno.ifsp.edu.br'),
('SP100003', 'carla.pereira@aluno.ifsp.edu.br'), ('SP100004', 'daniela.oliveira@aluno.ifsp.edu.br'),
('SP100005', 'eduardo.almeida@aluno.ifsp.edu.br'), ('SP100006', 'fernanda.martins@aluno.ifsp.edu.br'),
('SP100007', 'gustavo.ribeiro@aluno.ifsp.edu.br'), ('SP100008', 'helena.carvalho@aluno.ifsp.edu.br');


INSERT INTO aluno_telefone (prontuario, telefone) VALUES
('SP100001', '11987654321'), ('SP100002', '11987654322'), ('SP100003', '11987654323'),
('SP100004', '11987654324'), ('SP100005', '11987654325'), ('SP100006', '11987654326'),
('SP100007', '11987654327'), ('SP100008', '11987654328');


INSERT INTO projeto_ensino (ID_projeto, duracao, modalidade, fk_docentes_matricula_prof) VALUES
(1, 'Semestral', 'Individual', 2517425), 
(2, 'Semestral', 'Coletivo', 1753846),  
(3, 'Anual', 'Individual', 2157872);    


INSERT INTO projeto_docentes (ID_projeto, matricula_prof) VALUES
(1, 2517425),
(2, 1753846),
(2, 1350141), 
(3, 2157872);


INSERT INTO projeto_disciplina (ID_projeto, cod_disciplina) VALUES
(1, 'BD1A2'),
(1, 'BD2A3'),
(2, 'LG2A2'),
(3, 'GTIA6');

INSERT INTO avaliacao_projeto (ID_projeto, status, matricula_diretor) VALUES
(1, 'aprovado', 1566753),
(2, 'aprovado com adequações', 1566753),
(3, 'aprovado', 1521170);

INSERT INTO projetos_selecionados (ID_projeto) VALUES
(1), (3);

INSERT INTO turma (num_turma, cod_disciplinas, matricula_prof) VALUES
(101, 'BD1A2', 2517425),
(102, 'LG2A2', 1753846),
(103, 'GTIA6', 2157872);

INSERT INTO matricula_turma_aluno (num_turma, prontuario) VALUES
(101, 'SP100001'), (101, 'SP100002'), (101, 'SP100003'),
(102, 'SP100001'), (102, 'SP100004'),
(103, 'SP100006'), (103, 'SP100007'), (103, 'SP100008');

INSERT INTO registro_desempenho (num_turma, prontuario, faltas, notas) VALUES
(101, 'SP100001', 2, 8.5), (101, 'SP100002', 0, 9.0), (101, 'SP100003', 5, 6.5),
(102, 'SP100001', 1, 7.0), (102, 'SP100004', 3, 7.5),
(103, 'SP100006', 0, 10.0), (103, 'SP100007', 4, 5.5), (103, 'SP100008', 2, 8.0);

INSERT INTO inscricao_bolsa (ID_projeto, prontuario) VALUES
(1, 'SP100001'), 
(1, 'SP100002'), 
(3, 'SP100006'); 

INSERT INTO resultado_bolsa (ID_projeto, prontuario, status) VALUES
(1, 'SP100001', 'aprovado'),
(1, 'SP100002', 'lista de espera'),
(3, 'SP100006', 'aprovado');
