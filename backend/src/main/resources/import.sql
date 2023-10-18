INSERT INTO tb_user(name,email,password) VALUES ('Don Juan','contato@domjuan.com',123456);
INSERT INTO tb_user(name,email,password) VALUES ('João Barbosa','contato@jb.com',123456);
INSERT INTO tb_user(name,email,password) VALUES ('Maria','contato@maria.com',123456);
INSERT INTO tb_user(name,email,password) VALUES ('Carlos','contato@carlos.com',123456);


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role(user_id,role_id) VALUES (1,1);

INSERT INTO tb_user_role(user_id,role_id) VALUES (2,1);
INSERT INTO tb_user_role(user_id,role_id) VALUES (2,2);
INSERT INTO tb_user_role(user_id,role_id) VALUES (2,3);

INSERT INTO tb_user_role(user_id,role_id) VALUES (3,3);

INSERT INTO tb_user_role(user_id,role_id) VALUES (4,2);
INSERT INTO tb_user_role(user_id,role_id) VALUES (4,3);

