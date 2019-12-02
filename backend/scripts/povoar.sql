insert into gravadora values
(1, 'Decca Records', 'Inglaterra', 'decca.com'),
(2, 'Deutsche Grammophon', 'Berlim, Alemanha', 'www.deutschegrammophon.com'),
(3, 'fada madrinha', 'rua cochileira, centro', 'www.fadamadrinha.com.br'),
(4, 'meira produ��es', 'rua das acacias', 'www.meiraproducoes.com.br'),
(5, 'American Recordings', '', '')

insert into telefones_gravadora values
(1,'30034458'),
(1,'30034459'),
(1, '30034460'),
(2, '40043322'),
(3, '40056969'),
(4, '40068080')


insert into album values
(1, 'Mozart 225 ', 60, '2019-09-12', '2016-10-28', 'fisica', 1),
(2, 'Complete Mozart Trios', 60.00, '2019-09-10', '2019-09-13', 'download', 2),
(3, 'The Vivaldi Album', 60.00, '2019-11-07', '1999-10-19', 'download', 1),
(4, 'Dvor�k: Symphonies', 60.00, '2019-11-06', '2006-06-27', 'fisica', 1),
(5, 'Mais do mesmo', 21.00, '2019-11-06', '2019-11-06', 'download', 1),
(6, 'Toxicity', 18.00, '2019-11-06', '2001-09-04', 'download', 5)

insert into periodo_musical values
(1, '01-01-1400', '01-01-1500', 'idade media'),
(2, '01-01-1400', '01-01-1500', 'renascenca'),
(3, '01-01-1400', '01-01-1500', 'Per�odo Barroco'),
(4, '01-01-1400', '01-01-1500', 'classico'),
(5, '01-01-1400', '01-01-1500', 'romantico'),
(6, '01-01-1400', '01-01-1500', 'moderno')

insert into compositor values
(1, 'Wilhelm Richard Wagner', 'Lipsia', 'Alemanha', '1813-05-22', '1883-02-13', 5),
(2, 'Anton�n Leopold Dvorak', 'Nelahozeves', 'Tchequia', '1841-09-08', '1904-05-01', 5),
(3, 'Ludwig van Beethoven', 'Bonn', 'Alemanha', '1770-12-03', '1827-03-26', 5),
(4, 'Piotr Ilitch Tchaikovski', 'V�tkinsk', 'R�ssia', '1840-05-07', '1893-11-06', 5),
(5, 'Johannes Brahms', 'Hamburgo', 'Alemanha', '1833-05-07', '1897-04-03', 5),
(6, 'Wolfgang Amadeus Mozart', 'Salzburgo', 'Austria', '1756-01-27', '1791-12-05', 6),
(7, 'Franz Peter Schubert', 'Himmelpfortgrund', 'Viena', '1797-01-31', '1828-11-19', 5),
(8, 'Fr�d�ric Fran�ois Chopin', 'Zelazowa Wola', 'Polonia', '1810-03-01', '1849-10-17', 5),
(9, 'Antonio Vivaldi', 'Veneza', 'It�lia', '1678-03-04', '1741-07-08', 3)



insert into composicao values
(1, 'sinfonia'),
(2, '�pera'),
(3, 'sonata'),
(4, 'concerto')


insert into interprete values
(1, 'Orquestra Filarm�nica de Dresden', 'orquestra'),
(2, 'Hans Peter Blochwitz', 'tenor'),
(3, 'Elzbieta Szmytka', 'soprano'),
(4, 'Academy of Saint Martin in the Fields', 'orquestra'),
(5, 'Edith Wiens', 'soprano'),
(6, 'Gunnar Gudbj�rnson', 'tenor'),
(7, 'Munich Radio Orchestra', 'orquestra'),
(8, 'Iris Vermillion', 'soprano'),
(9, 'Mozart: Plano Trios', 'trio'),
(10, 'Il Giardino Armonico', 'ensemble'),
(11, 'Arnold Schoenberg Choir', 'ensemble'),
(12, 'Cecilia Bartoli', 'soprano'),
(13, 'London Symphony Orchestra', 'orquestra')

select * from faixa
delete from faixa

insert into faixa values --posicao descricao tempo_exec tipo_gravacao tipo_composicao album
-- POS DESC TEMPO TIPO_GRAV TIPO_COMP ALBUM
-- POS ALBUM TIPO_COMP DESC TEMPO TIPO_GRAV
(1, 1, 4, '"Guarda la donna in viso"', 525, 'ADD'),
(2, 1, 4, '"Sono in amore"', 306, 'ADD'),
(3, 1, 4, '"Al destin"', 849, 'ADD'),
(4, 1, 4, '"In faccia alloggetto"', 513, 'ADD'),
(5, 1, 4, '"Lungi da te"', 744, 'ADD'),
(6, 1, 4, '"Se viver non deggio"', 836, 'ADD'),
(7, 1, 4, '"Vado incontro"', 304, 'ADD'),
(8, 1, 4, '"Ah se a morir mi chiama"', 754, 'ADD'),
(1, 2, 1, '1. Allegro assai', 907, 'ADD'),
(2, 2, 1, '2. Adagio', 916, 'ADD'),
(3, 2, 1, '3. Rondeau', 705, 'ADD'),
(4, 2, 1, '1. Allegro', 1206, 'ADD'),
(5, 2, 1, '2. Andante', 611, 'ADD'),
(6, 2, 1, '3. Allegretto', 1034, 'ADD'),
(7, 2, 1, '1. Allegro', 1204, 'ADD'),
(8, 2, 1, '2. Larghetto', 746, 'ADD'),
(9, 2, 1, '3. Allegretto', 620, 'ADD'),
(10, 2, 1, '1. Allegro', 1103, 'ADD'),
(11, 2, 1, '2. Andante grazioso', 353, 'ADD'),
(12, 2, 1, '3. Allegro', 726, 'ADD'),
(13, 2, 1, '1. Allegro', 1120, 'ADD'),
(14, 2, 1, '2. Andante cantabile', 1138, 'ADD'),
(15, 2, 1, '3. Allegro', 445, 'ADD'),
(16, 2, 1, '1. Allegro', 719, 'ADD'),
(17, 2, 1, '2. Andante', 615, 'ADD'),
(18, 2, 1, '3. Allegretto', 510, 'ADD'),
(1, 3, 2, '"Dell�aura al sussurrar"', 206, 'DDD'),
(2, 3, 2, 'Dopo un� orrida', 409, 'DDD'),
(3, 3, 4, 'Di due rai languir costante', 522, 'DDD'),
(4, 3, 2, 'Ander�, voler�, grider�', 300, 'DDD'),
(5, 3, 4, 'Zeffiretti che sussurate', 746, 'DDD'),
(6, 3, 2, 'Alma oppressa', 545, 'DDD'),
(7, 3, 2, 'Dite oim�', 308, 'DDD'),
(8, 3, 2, 'Sventurata navicella', 210, 'DDD'),
(9, 3, 2, 'Ho nel petto un cor s� forte', 824, 'DDD'),
(10, 3, 2, 'Siam navi all�onde algenti', 646, 'DDD'),
(11, 3, 2, 'Gelido in ogni vena', 1110, 'DDD'),
(12, 3, 2, 'Anch�il mar par ', 407, 'DDD'),
(13, 3, 2, 'Di trombe guerriere', 259, 'DDD'),
(1, 4, 1, '1. Allegro con brio', 1004, 'ADD'),
(2, 4, 1, '2. Adagio', 959, 'ADD'),
(3, 4, 1, '3. Allegretto grazioso', 601, 'ADD'),
(4, 4, 1, '4. Allegro ma non troppo', 901, 'ADD'),
(5, 4, 1, '1. Adagio - Allegro molto', 1228, 'ADD'),
(6, 4, 1, '2. Largo', 1226, 'ADD'),
(7, 4, 1, '3. Scherzo (Molto vivace)', 724, 'ADD'),
(8, 4, 1, '4. Allegro con fuoco', 1117, 'ADD')

drop trigger TRIGGER_faixa_barroca

insert into compoe values
(1, 1, 6),
(2, 1, 6),
(3, 1, 6),
(4, 1, 6),
(5, 1, 6),
(6, 1, 6),
(7, 1, 6),
(8, 1, 6),
(1, 2, 6),
(2, 2, 6),
(3, 2, 6),
(4, 2, 6),
(5, 2, 6),
(6, 2, 6),
(7, 2, 6),
(8, 2, 6),
(9, 2, 6),
(10, 2, 6),
(11, 2, 6),
(12, 2, 6),
(13, 2, 6),
(14, 2, 6),
(15, 2, 6),
(16, 2, 6),
(17, 2, 6),
(18, 2, 6),
(1, 3, 9),
(2, 3, 9),
(3, 3, 9),
(4, 3, 9),
(5, 3, 9),
(6, 3, 9),
(7, 3, 9),
(8, 3, 9),
(9, 3, 9),
(10, 3, 9),
(11, 3, 9),
(12, 3, 9),
(13, 3, 9),
(1, 4, 2),
(2, 4, 2),
(3, 4, 2),
(4, 4, 2),
(5, 4, 2),
(6, 4, 2),
(7, 4, 2),
(8, 4, 2)


create trigger TRIGGER_faixa_barroca on compoe for insert, update as
begin
	declare @tipo_gravacao varchar(3)

	select @tipo_gravacao=f.tipo_grav from faixa f where f.cod_album = (select cod_album from inserted) and f.n_faixa = (select n_faixa from inserted) 

	declare @numero_barroco smallint

	select @numero_barroco=count(*) from (compoe c inner join compositor comp on c.cod_compositor = comp.cod_compositor) 
									inner join periodo_musical p on comp.cod_periodo=p.cod_periodo
									where (p.descricao like '%Barroco%' or p.descricao like '%barroco%')
									and c.cod_album = (select cod_album from inserted)
									and c.n_faixa = (select n_faixa from inserted)
									

	if @tipo_gravacao <> 'DDD' and  @numero_barroco > 0
	begin
		raiserror('Faixa de per�odo Barroco que n�o possui tipo de grava��o DDD � ilegal nessa aplica��o!', 16, 2);
		rollback transaction
	end

end

insert into interpreta values
(1, 1, 1),
(1, 1, 2),
(2, 1, 3),
(2, 1, 4),
(3, 1, 4),
(4, 1, 3),
(4, 1, 4),
(5, 1, 4),
(5, 1, 5),
(6, 1, 3),
(6, 1, 4),
(6, 1, 5),
(7, 1, 4),
(7, 1, 6),
(8, 1, 7),
(8, 1, 8),
(1, 2, 9),
(2, 2, 9),
(3, 2, 9),
(4, 2, 9),
(5, 2, 9),
(6, 2, 9),
(7, 2, 9),
(8, 2, 9),
(9, 2, 9),
(10, 2, 9),
(11, 2, 9),
(12, 2, 9),
(13, 2, 9),
(14, 2, 9),
(15, 2, 9),
(16, 2, 9),
(17, 2, 9),
(18, 2, 9),
(1, 3, 10),
(1, 3, 11),
(1, 3, 12),
(2, 3, 10),
(2, 3, 11),
(2, 3, 12),
(3, 3, 10),
(3, 3, 11),
(3, 3, 12),
(4, 3, 10),
(4, 3, 11),
(4, 3, 12),
(5, 3, 10),
(5, 3, 11),
(5, 3, 12),
(6, 3, 10),
(6, 3, 11),
(6, 3, 12),
(7, 3, 10),
(7, 3, 11),
(7, 3, 12),
(8, 3, 10),
(8, 3, 11),
(8, 3, 12),
(9, 3, 10),
(9, 3, 11),
(9, 3, 12),
(10, 3, 10),
(10, 3, 11),
(10, 3, 12),
(11, 3, 10),
(11, 3, 11),
(11, 3, 12),
(12, 3, 10),
(12, 3, 11),
(12, 3, 12),
(13, 3, 10),
(13, 3, 11),
(13, 3, 12),
(1, 4, 13),
(2, 4, 13),
(3, 4, 13),
(4, 4, 13),
(5, 4, 13),
(6, 4, 13),
(7, 4, 13),
(8, 4, 13)

insert into playlist values--cod nome data_criacao tempo_total_exec
(1, 'playtest1', '01-12-2019'),
(2, 'playtest2', '01-12-2019'),
(3, 'playtest3', '01-12-2019'),
(4, 'playlist4-concerto-barroco', '01-12-2019'),
(5, 'playlist5-concerto-barroco-e-outros', '01-12-2019'),
(6, 'playlist6-concerto-barroco-tb', '01-12-2019')


insert into faixa_pertence_playlist values--playlist faixa cod_album data_ultima_exec num_vezes_tocado 
(1, 1, 1, 0,'01-12-2019'),
(1, 2, 1, 0,'01-12-2019'),
(1, 5, 1, 0,'01-12-2019'),
(1, 1, 2, 0,'01-12-2019'),
(1, 4, 2, 0,'01-12-2019'),
(1, 7, 3, 0,'01-12-2019'),
(1, 8, 4, 0,'01-12-2019'),
(2, 8, 1, 0,'01-12-2019'),
(2, 18, 2, 0,'01-12-2019'),
(2, 13, 3, 0,'01-12-2019'),
(2, 8, 4, 0,'01-12-2019'),
(3, 6, 1, 0,'01-12-2019'),
(3, 10, 2, 0,'01-12-2019'),
(3, 12, 2, 0,'01-12-2019'),
(3, 17, 2, 0,'01-12-2019'),
(3, 12, 3, 0,'01-12-2019'),
(3, 3, 4, 0,'01-12-2019'),
(3, 2, 4, 0,'01-12-2019'),
(4, 3, 3, 0,'01-12-2019'),
(4, 5, 3, 0,'01-12-2019'),
(5, 3, 3, 0,'01-12-2019'),
(5, 5, 3, 0,'01-12-2019'),
(5, 9, 2, 0,'01-12-2019'),
(5, 5, 1, 0,'01-12-2019'),
(5, 6, 4, 0,'01-12-2019'),
(6, 3, 3, 0,'01-12-2019')
