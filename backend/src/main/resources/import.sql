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

INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Nova mensagem', '2023-10-09T10:00:00Z', false, '/messages/1', 1);
INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES ('Atividade pendente', '2023-10-12T11:20:00Z', false, '/tasks/10', 2);

-- Inserir notificações para João Barbosa
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES('Novo comentário', '2023-10-11T15:45:00Z', false, '/posts/7/comments/3', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES('Atividade pendente', '2023-10-12T11:20:00Z', false, '/tasks/10', 2);

-- Inserir notificações para Maria
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES('Nova postagem', '2023-10-13T12:00:00Z', false, '/posts/9', 3);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES('Atualização de perfil', '2023-10-14T09:15:00Z', false, '/profile', 3);

-- Inserir notificações para Carlos
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES('Nova mensagem', '2023-10-15T14:30:00Z', false, '/messages/2', 4);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES('Feedback recebido', '2023-10-16T10:45:00Z', false, '/tasks/12/feedback', 4);

--OFERTAS--

-- Recursos para o curso "HTML e CSS Completo"
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Introdução ao HTML', 'Aprenda os conceitos básicos do HTML.', 1, 'https://i.ytimg.com/vi/r01izWfa8wM/maxresdefault.jpg', 0, null, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('CSS Avançado', 'Estude técnicas avançadas de CSS.', 2, 'https://dkrn4sk0rn31v.cloudfront.net/uploads/2022/08/seletores_avancados_do_css.png', 0, null, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Projetos Práticos', 'Desenvolva projetos práticos utilizando HTML e CSS.', 3, 'https://example.com/practical_projects.jpg', 1, null, 1);

-- Recursos para o curso "Javascript Básico ao Avançado"
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Fundamentos do JavaScript', 'Aprenda os fundamentos do JavaScript.', 1, 'https://t.ctcdn.com.br/Kf8I0ycbrE9CuHxYzH9PUcaMLio=/640x360/smart/i261792.png', 0, null, 2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Programação Orientada a Objetos', 'Estude POO em JavaScript.', 2, 'https://programacao-orientada-a-objetos.online/wp-content/uploads/2021/10/Poo.png', 0, null, 2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Projetos Avançados', 'Desenvolva projetos avançados utilizando JavaScript.', 3, 'https://example.com/advanced_projects.jpg', 1, null, 2);

-- Recursos para o curso "Java Spring"
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Introdução ao Spring Boot', 'Inicie com o Spring Boot.', 1, 'https://example.com/spring_intro.jpg', 0, null, 3);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Segurança no Spring', 'Aprenda sobre segurança no Spring.', 2, 'https://example.com/spring_security.jpg', 0, null, 3);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Desenvolvimento de Aplicações Web', 'Desenvolva aplicações web com Spring.', 3, 'https://example.com/spring_web.jpg', 1, null, 3);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Forúm', 'Tire suas dúvidas', 4, 'https://example.com/spring_web.jpg', 2, null, 3);
