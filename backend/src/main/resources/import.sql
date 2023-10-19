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

INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) VALUES ('HTHM e CSS completo','https://uploaddeimagens.com.br/images/004/640/682/original/html-css.jpg?1697672190','https://uploaddeimagens.com.br/images/004/640/687/thumb/htmlandcss.png?1697672433');
INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) VALUES ('Javascript Básico ao Avançado','https://uploaddeimagens.com.br/images/004/640/679/full/javascript.jpg?1697672104','https://ps.w.org/javascript-autoloader/assets/icon.svg?rev=2782968');
INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) VALUES ('Java Spring','https://uploaddeimagens.com.br/images/004/640/684/full/java.png?1697672324','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBUWz45dwijAKg0rqgBTshIKh1ywd2Cq9F1y9KAIBnw-_4zHkqa9Ff_9nPCnyD87GVlb8&usqp=CAU');

INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2023-10-18T23:00:00Z','2024-10-18T23:59:59Z',1);
INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE'2024-01-10T03:30:00Z','2025-12-24T03:30:00Z',1);
INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE'2023-12-24T03:30:00Z','2024-12-24T03:30:00Z',2);
INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE'2023-11-24T06:30:00Z','2024-11-24T06:30:00Z',3);

