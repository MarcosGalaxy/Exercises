create table Curso (
		idCurso INTEGER unsigned not null auto_increment,
        Nome_curso VARCHAR(40) null,
        Data_inicio DATE null,
        Data_fim DATE null,
        PRIMARY KEY(idCurso)
);

create table Instrutor (
		idInstrutor INTEGER unsigned not null auto_increment,
        Nome_instrutor VARCHAR(40) null,
        Logadouro VARCHAR(255) null,
        Bairro VARCHAR(40) null,
        Cidade VARCHAR(40) null,
        Estado VARCHAR(2) null,
        TEl_residencial INTEGER null,
        Tel_celular INTEGER null,
        Email VARCHAR(60) null,
		PRIMARY KEY(idInstrutor)
);

create table Turma (
		idTurma INTEGER unsigned not null auto_increment,
		Instrutor_idIntrutor INTEGER null,
        Curso_idCurso INTEGER null,
        Dias_semana CHAR(1),
		Horário_incio TIME null,
        Horário_fim TIME null,
        Preço DECIMAL,
        Instrutor_idInstrutor INTEGER null,
        PRIMARY KEY(idTurma),
        INDEX Turma_FKIndex1(Curso_idCurso),
		INDEX Turma_FKIndex2(Instrutor_idInstrutor)
);

create table Aluno (
		idAluno INTEGER unsigned not null auto_increment,
        Turma_idTurma INTEGER null,
        Nome_aluno VARCHAR(10) null,
        Logadouro VARCHAR(225) null,
        Bairro VARCHAR(40) null,
        Cidade VARCHAR(40) null,
        Estado VARCHAR(2) null,
        TEl_residencial INTEGER null,
        Tel_celular INTEGER null,
        Email VARCHAR(60) null,
		PRIMARY KEY(idAluno),
        INDEX Aluno_FKIndex1(Turma_idTurma)
);

create table Disciplina (
		idDisciplina INTEGER unsigned not null auto_increment,
        Instrutor_idInstrutor INTEGER null,
        Nome_disciplina VARCHAR(40) null,
        PRIMARY KEY(idDisciplina),
        INDEX Disciplina_FKIndex1(Instrutor_idInstrutor)
);        

        