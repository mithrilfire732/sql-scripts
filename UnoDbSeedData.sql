use UnoDb;

INSERT Players (Username, Password, Win)
values
('atkidd','kidda',0),
('freddie01','01',0),
('frederick02','02',0),
('frod03','03',0);

INSERT Games (GameRoom, PlayerCap, ActiveId)
values
('arMA12345',4,1);

Insert PlayerGames (PlayerId,GameId)
values
(1,1),
(2,1),
(3,1),
(4,1);