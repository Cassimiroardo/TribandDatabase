USE triband;

INSERT INTO localizacao VALUES
(1,'a',1,'a','a',1,1,1,'a'),
(2,'b',2,'b','b',2,2,2,'b'),
(3,'c',3,'c','c',3,3,3,'c'),
(4,'d',4,'d','d',4,4,4,'d'),
(5,'e',5,'e','e',5,5,5,'e'),
(6,'f',6,'f','f',6,6,6,'f'),
(7,'g',7,'g','g',7,7,7,'g');


INSERT INTO agenda VALUES
(1,null,null),
(2,null,null),
(3,null,null),
(4,null,null),
(5,null,null),
(6,null,null),
(7,null,null),

(8,null,null),
(9,null,null),
(10,null,null),
(11,null,null),
(12,null,null),
(13,null,null),
(14,null,null);


INSERT INTO foto VALUES 
(1,null,null,'/foto1.jpg'),
(2,null,null,'/foto2.jpg'),
(3,null,null,'/foto3.jpg'),
(4,null,null,'/foto4.jpg'),
(5,null,null,'/foto5.jpg'),
(6,null,null,'/foto6.jpg'),
(7,null,null,'/foto7.jpg'),

(8,null,null,'/foto8.jpg'),
(9,null,null,'/foto9.jpg'),
(10,null,null,'/foto10.jpg'),
(11,null,null,'/foto11.jpg'),
(12,null,null,'/foto12.jpg'),
(13,null,null,'/foto13.jpg'),
(14,null,null,'/foto14.jpg')
;

INSERT INTO banda VALUES 
(1,1,'a@g.com',1,4,'a','123'),
(2,2,'b@g.com',2,4,'b','123'),
(3,3,'c@g.com',3,4,'c','123'),
(4,4,'d@g.com',4,4,'d','123'),
(5,5,'e@g.com',5,4,'e','123'),
(6,6,'f@g.com',6,4,'f','123'),
(7,7,'g@g.com',7,4,'g','123');


INSERT INTO avaliacao_banda VALUES
(1,1,4,4,date('2003-12-31 14:00:00')),
(2,2,5,5,date('2003-12-31 15:30:00')),
(3,3,5,5,date('2003-12-31 14:00:00')),
(4,4,1,1,date('2003-12-31 12:00:00')),
(5,5,3,5,date('2003-12-31 15:30:00')),
(6,6,5,1,date('2003-12-31 16:00:00')),
(7,7,2,2,date('2003-12-31 17:30:00'));


INSERT INTO estudio VALUES 
(1,7,1,'ea@g.com',7,1,'meia-boca','123'),
(2,8,2,'eb@g.com',8,2,'do Paulo','123'),
(3,9,3,'ec@g.com',9,3,'c','123'),
(4,10,4,'ed@g.com',10,4,'d','123'),
(5,11,5,'ee@g.com',11,5,'e','123'),
(6,12,6,'ef@g.com',12,6,'f','123'),
(7,13,7,'eg@g.com',13,7,'g','123');


INSERT INTO avaliacao_estudio VALUES
(1,1,5,5,5,5,date('2003-12-31 14:00:00')),
(2,2,5,5,5,5,date('2003-12-31 15:30:00')),
(3,3,5,5,5,5,date('2003-12-31 14:00:00')),
(4,4,5,5,5,5,date('2003-12-31 12:00:00')),
(5,5,5,5,5,5,date('2003-12-31 15:30:00')),
(6,6,5,5,5,5,date('2003-12-31 16:00:00')),
(7,7,5,5,5,5,date('2003-12-31 17:30:00'))
;


INSERT INTO reserva VALUES 
(1,1,1, DATE('2003-12-31'),TIME('13:00:00'),TIME('14:00:00')),
(2,1,2, DATE('2003-12-31'),TIME('14:30:00'),TIME('15:30:00')),

(3,3,3,date('2003-12-31'),time('13:00:00'),time('14:00:00')),
(4,4,4,date('2003-12-31'),time('11:00:00'),time('12:00:00')),
(5,5,5,date('2003-12-31'),time('13:00:00'),time('15:30:00')),
(6,6,6,date('2003-12-31'),time('13:00:00'),time('16:00:00')),
(7,7,7,date('2003-12-31'),time('13:00:00'),time('17:30:00'));


INSERT INTO chat VALUES 
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7);

INSERT INTO mensagem VALUES
(1,1,TIME('2003-12-10 13:22:00'),'A'),
(2,2,TIME('2003-12-10 13:22:01'),'B'),
(3,3,TIME('2003-12-10 13:22:02'),'C'),
(4,4,TIME('2003-12-10 13:22:03'),'D'),
(5,5,TIME('2003-12-10 13:22:04'),'E'),
(6,6,TIME('2003-12-10 13:22:05'),'F'),
(7,7,TIME('2003-12-10 13:22:06'),'G');


INSERT INTO servico VALUES 
(1,'A',1),
(2,'B',1),
(3,'C',2),
(4,'D',3),
(5,'E',2),
(6,'F',4),
(7,'G',5),
(8,'KK',6),
(9,'FDSKO',7);


INSERT INTO subservico VALUES
(1,'ABCD',     1),
(2,'ABdsfCD',  2),
(3,'ABCDedd',  3),
(4,'ABasdfCD', 4),
(5,'ABCssssD', 5),
(6,'ABCDd',    6),
(7,'ABdasCD', 7);