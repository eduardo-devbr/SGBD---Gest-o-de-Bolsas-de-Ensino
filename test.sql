
SELECT
    a.prontuario,
    a.nome_aluno,
    c.nome_curso
FROM
    aluno a
JOIN
    cursos c ON a.ID_curso = c.ID_curso;


SELECT
    pe.ID_projeto,
    d.nome_prof AS professor_responsavel,
    ap.status AS status_avaliacao
FROM
    projeto_ensino pe
JOIN
    docentes d ON pe.fk_docentes_matricula_prof = d.matricula_prof
JOIN
    avaliacao_projeto ap ON pe.ID_projeto = ap.ID_projeto;


SELECT
    a.nome_aluno,
    pe.ID_projeto,
    d.nome_prof AS orientador
FROM
    resultado_bolsa rb
JOIN
    aluno a ON rb.prontuario = a.prontuario
JOIN
    projeto_ensino pe ON rb.ID_projeto = pe.ID_projeto
JOIN
    docentes d ON pe.fk_docentes_matricula_prof = d.matricula_prof
WHERE
    rb.status = 'aprovado';

SELECT
    a.nome_aluno,
    d.nome_disciplinas,
    rd.notas,
    rd.faltas
FROM
    registro_desempenho rd
JOIN
    aluno a ON rd.prontuario = a.prontuario
JOIN
    turma t ON rd.num_turma = t.num_turma
JOIN
    disciplinas d ON t.cod_disciplinas = d.cod_disciplinas
WHERE
    a.nome_aluno = 'Ana Clara Silva' AND d.nome_disciplinas = 'Banco de Dados I';


INSERT INTO aluno (prontuario, nome_aluno, cpf, rg, ID_curso) VALUES
('SP100009', 'Roberto Carlos Braga', '99988877766', '667778889', 600);

-- 2 - Adicionar o email para o novo aluno.
INSERT INTO aluno_email (prontuario, email) VALUES
('SP100009', 'roberto.braga@aluno.ifsp.edu.br');


-- 3 - Verificando se o aluno foi inserido:
SELECT * FROM aluno WHERE prontuario = 'SP100009';



UPDATE
    avaliacao_projeto
SET
    status = 'aprovado'
WHERE
    ID_projeto = 2;

INSERT INTO projetos_selecionados (ID_projeto) VALUES (2);


SELECT * FROM avaliacao_projeto WHERE ID_projeto = 2;
SELECT * FROM projetos_selecionados;

DELETE FROM aluno_email WHERE prontuario = 'SP100009';
DELETE FROM aluno WHERE prontuario = 'SP100009';


SELECT * FROM aluno WHERE prontuario = 'SP100009';

