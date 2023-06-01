create table professor (
		idprofessor integer unsigned not null auto_increment,
        nome varchar(40) null,
        primary key(idprofessor)
);

create table disciplina (
		iddisciplina integer unsigned not null auto_increment,
        professor_idprofessor integer unsigned not null,
        nome varchar(40) null,
        primary key(iddisciplina),
        index disciplina_fkindex1(professor_idprofessor)
);

insert into professor (idprofessor, nome) values
(1, 'Gabriel'),
(2, 'Alisson'),
(3, 'Guilherme'),
(4, 'André');

insert into disciplina (iddisciplina, professor_idprofessor, nome) values
(1, 4, 'Design'),
(2, 1, 'Info'),
(3, 2, 'Logi'),
(4, 3, 'Adm');