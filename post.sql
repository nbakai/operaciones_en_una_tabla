psql
CREATE DATABASE posts;
\c posts;
CREATE TABLE post(id SERIAL PRIMARY KEY, nombre_de_usuario VARCHAR(100) NOT NULL, fecha_de_creacion DATE, contenido VARCHAR(500), descripcion VARCHAR(500));
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela','2019-06-22', 'Lorem ipsum dolor sit amet, consectetaur adipisicing elit', 'post acerca de lorem ipsum');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela','2019-06-28', 'Lorem ipsum dolor sit amet lklklkllkl', 'post acerca de lorem ipsum 2');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Carlos','2019-07-01', 'Explica el texto que empieza por Lorem ipsum dolor sit', 'post acerca de lorem bla');
ALTER TABLE post ADD COLUMN titulo VARCHAR(30);
UPDATE post set titulo='El título es Lorem' WHERE id=1;

UPDATE post set titulo='ipsum es el título' WHERE id=2;

UPDATE post set titulo='Explicación acerca de' WHERE id=3;

INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro','2019-07-20', 'El paso clásico Lorem ipsum dolor se atribuye al texto', 'hablando del lorem ipsum', 'texto del lorem');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro','2019-07-25', 'El paso clásico del ipsum lorem 2020', 'hablando del textoooo', 'texto del ipsum');

DELETE FROM post WHERE nombre_de_usuario='Carlos';
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Carlos','2019-07-26', 'nascetur ridiculus mus. In iaculis facilisis massa.', 'nascetur ridiculus mus. In eso', 'nascetur ridiculus');

--PARTE 2
CREATE TABLE comentarios(id INT NOT NULL, fecha_y_hora_de_creacion TIMESTAMP, contenido_coment VARCHAR(400),
FOREIGN KEY(id) REFERENCES post(id));
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(1,'2019-06-23 15:25:55-05', 'Nascetur ridiculus mus. In iaculis facilisis massa.');

INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(1,'2019-06-24 16:45:23-05', 'Nulla rhoncus dictum metus. Curabitur tristique mi condimentum');

INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(6, '2019-09-14 11:40:22-07', 'Ut ante enim, dapibus malesuada, fringilla eu, condimentum');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(6, '2019-09-15 12:10:10-04', 'Etiam eu urna. Sed porta. Suspendisse quam');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(6, '2019-09-15 13:10:10-04', 'Sed porta. Suspendisse quamvehicula ut, pulvinar eu');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(6, '2019-09-15 19:50:52-09', 'Pellentesque habitant morbi tristique senectus et netus');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Margarita','2019-09-15', 'Phasellus pellentesque aliquam enim. Proin dui lectus, cursus eu, mattis laoreet, viverra sit amet, quam. Curabitur vel dolor', 'seguimos con el lorem ipsum', 'Phasellus');

INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(7, '2019-10-01 19:40:22-09', 'Aliquam erat volutpat. Quisque dignissim congue leo');

INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(7, '2019-10-01 20:00:12-06', 'Sed metus augue, convallis et, vehicula ut, pulvinar eu');

INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(7, '2019-10-01 20:05:49-03', 'Aenean porttitor eros vel dolor. Donec convallis pede');

INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(7, '2019-10-02 02:15:39-01', 'vehicula ut, pulvinar eu, ante. Integer orci tellus, tristique vitae');

INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido_coment) VALUES(7, '2019-10-02 13:45:49-02', 'Pellentesque habitant morbi tristique senectus et netu');




