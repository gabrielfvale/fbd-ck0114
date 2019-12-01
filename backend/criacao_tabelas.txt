create table gravadora
(
    cod_grav smallint not null,
    nome varchar(30) not null,
    endereco varchar(30) not null,
    home_page varchar(50) not null,
    constraint PK_gravadora primary key(cod_grav)
) on BDSpotPer_fg01
 
CREATE TABLE telefones_gravadora 
(
    cod_grav smallint not null,
    telefone varchar(30) not null,
    constraint PK_telefones_gravadora primary key(cod_grav, telefone),
    constraint FK_telefones_gravadora foreign key(cod_grav) references gravadora on delete cascade
) on BDSpotPer_fg01
 
create table album
(
    cod_album smallint not null,
    descricao varchar(30) default 'Este album não possui descrição.',
    pr_compra dec(6,2) not null,
    dt_compra date not null,
    dt_gravacao date not null,
    tipo_compra varchar(8) not null,
    cod_grav smallint not null,
    constraint PK_album primary key(cod_album),
    constraint FL_album foreign key(cod_grav) references gravadora,
    constraint CHECK_album_dt_compra check (dt_compra > '01.01.2000'),
    constraint CHECK_album_tipo_compra check (tipo_compra = 'fisica' or tipo_compra = 'download')
) on BDSpotPer_fg01
 
CREATE TABLE composicao
(
    cod_composicao SMALLINT not null,
    descricao VARCHAR(50) DEFAULT 'Esta composição não possui descrição.',
    CONSTRAINT PK_composicao PRIMARY KEY(cod_composicao)
) on BDSpotPer_fg01
 
 
CREATE TABLE periodo_musical
(
    cod_periodo SMALLINT not null,
    inicio DATE not null,
    fim DATE not null,
    descricao VARCHAR(50) DEFAULT 'Este período musical não possui descrição.',
    CONSTRAINT PK_periodo_musical PRIMARY KEY(cod_periodo),
    CONSTRAINT CHECK_periodo_musical CHECK(inicio < fim)
) on BDSpotPer_fg01
 
 
 
 
 
 
 
 
CREATE TABLE compositor
(
    cod_compositor SMALLINT not null,
    nome VARCHAR(50) not null,
    cidade VARCHAR(50) not null,
    pais VARCHAR(50) not null,
    data_nasc DATE not null,
    data_morte DATE not null,
    cod_periodo SMALLINT not null,
    CONSTRAINT PK_compositor PRIMARY KEY(cod_compositor),
    CONSTRAINT FK_compositor FOREIGN KEY(cod_periodo) REFERENCES periodo_musical,
    CONSTRAINT CHECK_compositor CHECK(data_nasc < data_morte)
) on BDSpotPer_fg01
 
 
CREATE TABLE faixa
(
    n_faixa SMALLINT not null,
    cod_album SMALLINT not null,
    cod_composicao SMALLINT not null,
    descricao VARCHAR(30) DEFAULT 'Esta faixa não possui descrição',
    tempo_exec SMALLINT not null,
    tipo_grav char(3) not null,
    CONSTRAINT PK_faixa PRIMARY KEY NONCLUSTERED (n_faixa, cod_album),
	CONSTRAINT FK_faixa_album FOREIGN key(cod_album) REFERENCES album ON DELETE cascade,
    CONSTRAINT FK_faixa FOREIGN key(cod_composicao) REFERENCES composicao ON DELETE cascade,
    CONSTRAINT CHECK_faixa_tipo_grav CHECK(tipo_grav = 'ADD' or tipo_grav='DDD'),
    CONSTRAINT CHECK_faixa_tempo_exec CHECK(tempo_exec >= 0)
) on BDSpotPer_fg02
 
 
 
 
 
CREATE TABLE interprete 
(
    cod_inter SMALLINT not null,
    nome VARCHAR(50) not null,
    tipo VARCHAR(50) not null,
    CONSTRAINT PK_interprete PRIMARY KEY(cod_inter)
) on BDSpotPer_fg01
 
 
 
 
 
 
CREATE TABLE interpreta
(
    n_faixa SMALLINT not null,
    cod_album SMALLINT not null,
    cod_inter SMALLINT not null,
    CONSTRAINT PK_interpreta PRIMARY KEY(n_faixa, cod_album, cod_inter),
    CONSTRAINT FK_interpreta_faixa FOREIGN KEY(n_faixa, cod_album) REFERENCES faixa ON DELETE cascade,
    CONSTRAINT FK_interpreta_interprete FOREIGN KEY(cod_inter) REFERENCES interprete ON DELETE cascade
) on BDSpotPer_fg01
 
CREATE TABLE compoe
(
    n_faixa SMALLINT not null,
    cod_album SMALLINT not null,
    cod_compositor SMALLINT not null,
    CONSTRAINT PK_compoe PRIMARY KEY(n_faixa, cod_album, cod_compositor),
    CONSTRAINT FK_compoe_faixa FOREIGN KEY(n_faixa, cod_album) REFERENCES faixa ON DELETE cascade,
    CONSTRAINT FK_compoe_compositor FOREIGN KEY(cod_compositor) REFERENCES compositor ON DELETE cascade
) on BDSpotPer_fg01
 
 
 
 
CREATE TABLE playlist
(
    cod_playlist SMALLINT not null,
    nome VARCHAR(50) not null,
    data_criacao DATE not null,
    CONSTRAINT PK_playlist PRIMARY KEY(cod_playlist)
) on BDSpotPer_fg02
 
CREATE TABLE faixa_pertence_playlist
(
    cod_playlist SMALLINT not null,
    n_faixa SMALLINT not null,
    cod_album SMALLINT not null,
    vezes_tocada SMALLINT not null,
    ultima_vez DATE not null,
    CONSTRAINT PK_faixa_pertence_playlist PRIMARY KEY(cod_playlist, n_faixa, cod_album),
    CONSTRAINT FK_faixa_pertence_playlist_playlist FOREIGN KEY(cod_playlist) REFERENCES playlist ON DELETE cascade,
    CONSTRAINT FK_faixa_pertence_playlist_faixa FOREIGN KEY(n_faixa, cod_album) REFERENCES faixa ON DELETE cascade
) on BDSpotPer_fg02
 
