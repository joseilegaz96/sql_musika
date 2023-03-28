CREATE DATABASE musica;

USE musica;

CREATE TABLE artista(
  id int(11) NOT NULL AUTO_INCREMENT,
  artista varchar(255) NOT NULL,
  PRIMARY KEY (id));


CREATE TABLE canciones(
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre_cancion varchar(255) DEFAULT NULL,
  duracion time DEFAULT NULL,
  genero varchar(255) DEFAULT NULL,
  artista int(11) DEFAULT NULL,
  ruta varchar(255) NOT NULL,
  nombre_fichero varchar(255) NOT NULL,
  Album varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FK_ARTISTA (artista),
  CONSTRAINT FK_ARTISTA FOREIGN KEY (artista) REFERENCES artista(id));


CREATE TABLE lista_reproduccion(
   id int(11) NOT NULL,
   nombre_lista varchar(255) NOT NULL,
   id_cancion int(11) NOT NULL,
   id_grupo int(11) NOT NULL,
   PRIMARY KEY (id),
   CONSTRAINT FK_ID_CANCION FOREIGN KEY (id_cancion) REFERENCES canciones(id),
   CONSTRAINT FK_ID_ARTISTA FOREIGN KEY (id_grupo) REFERENCES artista(id));

