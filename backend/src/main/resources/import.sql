-- INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
-- INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
-- INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
--
-- INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
-- INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
-- INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
--
-- INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
-- INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
-- INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
-- INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
-- INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
-- INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);
--
-- INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');
--
-- INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
-- INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);
--
-- INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 1);
-- INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 2, 1);
-- INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 0, 1);
--
-- INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, null);
-- INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 1);
-- INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 2);
--
-- INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
-- INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
--
-- INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
-- INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');
--
-- INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
-- INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');
--
-- INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
-- INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');
--
-- INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
-- INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');
--
-- INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
-- INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
--
-- INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
-- INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
-- INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
--
-- INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);
--
-- INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
-- INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
-- INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
-- INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
-- INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
-- INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);
--
-- INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
-- INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);
--
-- INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
-- INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);
--
-- INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);












INSERT INTO tb_user(name,email,password) VALUES ('Don Juan','contato@domjuan.com','$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('João Barbosa', 'contato.jb@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user(name,email,password) VALUES ('Maria','contato@maria.com','$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user(name,email,password) VALUES ('Carlos','contato@carlos.com','$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user(name,email,password) VALUES ('Admin','admin@admin.com','$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

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
INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) VALUES ('FAQ','https://uploaddeimagens.com.br/images/004/640/684/full/java.png?1697672324','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBUWz45dwijAKg0rqgBTshIKh1ywd2Cq9F1y9KAIBnw-_4zHkqa9Ff_9nPCnyD87GVlb8&usqp=CAU');

INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2023-10-18T23:00:00Z','2024-10-18T23:59:59Z',1);
INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE'2024-01-10T03:30:00Z','2025-12-24T03:30:00Z',1);
INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE'2023-12-24T03:30:00Z','2024-12-24T03:30:00Z',2);
INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE'2023-11-24T06:30:00Z','2024-11-24T06:30:00Z',3);
INSERT INTO tb_offer(edition,start_Moment,end_Moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE'2023-11-24T06:30:00Z','2024-11-24T06:30:00Z',4);


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
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Introdução ao HTML e CSS', 'Aprenda os conceitos básicos do HTML.', 1, 'https://i.ytimg.com/vi/r01izWfa8wM/maxresdefault.jpg', 0, null, 1);
-- Recursos para o curso "Javascript Básico ao Avançado"
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Fundamentos do JavaScript', 'Aprenda os fundamentos do JavaScript.', 1, 'https://t.ctcdn.com.br/Kf8I0ycbrE9CuHxYzH9PUcaMLio=/640x360/smart/i261792.png', 0, null, 3);
-- Recursos para o curso "Java Spring"
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Introdução ao Spring Boot', 'Inicie com o Spring Boot.', 1, 'https://example.com/spring_intro.jpg', 0, null, 4);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('Forúm', 'Tire suas dúvidas', 4, 'https://example.com/spring_web.jpg', 2, null, 5);


-- Seções para o recurso "Introdução ao HTML"
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 1', 'HTML Básico.', 1, 'https://example.com/aula1.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 2', 'CSS Básico.', 2, 'https://example.com/aula2.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 3', 'HTML E CSS Intermediário.', 3, 'https://example.com/aula2.jpg', 1, 2);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Exercício 1', 'Exercício prático sobre HTML e CSS.', 5, 'https://example.com/exercicio1.jpg', 1, 3);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Projeto 1', 'Primeiro projeto prático com HTML e CSS.', 6, 'https://example.com/projeto1.jpg', 1, 4);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Projeto 2', 'Segundo projeto prático com HTML e CSS.', 7, 'https://example.com/projeto2.jpg', 1, 5);
-- Seções Javascript
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 1', 'Javacript Básico.', 1, 'https://example.com/aula1.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 2', 'DOM Básico.', 2, 'https://example.com/aula2.jpg', 2, 8);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 3', 'Eventos básico.', 3, 'https://example.com/aula2.jpg', 2, 9);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 4', 'Eventos e funções - Intermediário.', 4, 'https://example.com/aula2.jpg', 2, 10);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Exercício 1', 'Exercício prático sobre Javascript.', 5, 'https://example.com/exercicio1.jpg', 2, 11);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Projeto 1', 'Primeiro projeto prático com Javascript.', 6, 'https://example.com/projeto1.jpg', 2, 12);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Projeto 2', 'Segundo projeto prático com Javascript.', 7, 'https://example.com/projeto2.jpg', 2, 13);


-- Matrículas para o curso "HTML e CSS Completo"
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_Moment, available, only_update)VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-10-19T12:00:00Z',null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_Moment, available, only_update)VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-10-24T12:30:00Z',null, true, false);
-- Matrículas para o curso "Javascript Básico ao Avançado"
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment,refund_Moment, available, only_update)VALUES (2, 2, TIMESTAMP WITH TIME ZONE '2024-01-11T04:00:00Z',null, true, false);


-- Seed Lesson 1 e sua content e Tasks - Sesion 1 Html Básico
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de HTML', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Este é um conteúdo introdutório sobre HTML. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video1');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de HTML Básico', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Este é um conteúdo introdutório sobre HTML. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video1');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 de HTML Básico', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Este é um conteúdo introdutório sobre HTML. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video1');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (3,'Nesta tarefa, você terá que criar uma estrutura html para uma futura aplicação com CSS.', 9, 4, 1.3, TIMESTAMP WITH TIME ZONE '2023-10-27T16:00:00Z');

-- Seed Lesson 1 e sua content e Tasks - Seção 2 CSS Básico
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de CSS Básico', 1, 2);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (4, 'Este é um conteúdo introdutório sobre CSS Básico. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video7');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de CSS Básico', 2, 2);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (5, 'Este é um conteúdo sobre CSS Básico. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video8');
INSERT INTO tb_lesson (title, position, section_id) VALUES('Aula 3 de CSS Básico', 3, 2);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (6, 'Este é um conteúdo sobre CSS Básico. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video9');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (6,'Nesta tarefa, você terá deixar a estrutura html, criada na seção anterior, totalmente responsiva e estilizada aplicando CSS.', 9, 4, 1.3, TIMESTAMP WITH TIME ZONE '2023-10-27T16:00:00Z');

-- Seed Lesson 1 e sua content e Tasks - Seção 3 HTML Intermediário
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de HTML Intermediário', 1, 3);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (7, 'Este é um conteúdo introdutório sobre HTML Intermediário. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video10');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de CSS Intermediário', 2, 3);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (8, 'Este é um conteúdo sobre HTML e CSS Intermediário. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video11');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 de HTML e CSS Intermediário', 3, 3);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (9, 'Este é um conteúdo sobre HTML Intermediário. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video12');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (9,'Nesta tarefa, você terá que melhorar a estrutura html, criada na seção anterior, totalmente responsiva e estilizada aplicando CSS.', 9, 4, 1.3, TIMESTAMP WITH TIME ZONE '2023-10-27T16:00:00Z');

-- Seed Lesson 1 e sua content e Tasks - Seção 8 JavaScript Básico
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de JavaScript Básico', 1, 7);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (10, 'Este é um conteúdo introdutório sobre JavaScript Básico. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video25');
-- INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de JavaScript Básico', 2, 7);
-- INSERT INTO tb_content (id, text_content, video_uri) VALUES (11, 'Este é um conteúdo sobre JavaScript Básico. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video26');
-- INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 de JavaScript Básico', 3, 7);
-- INSERT INTO tb_content (id, text_content, video_uri) VALUES (12, 'Este é um conteúdo sobre JavaScript Básico. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video27');
-- INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (12,'Nesta tarefa, você terá que .', 9, 4, 1.3, TIMESTAMP WITH TIME ZONE '2023-10-27T16:00:00Z');


-- Aula 1 de HTML
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (3, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (4, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (5, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (6, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (7, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (8, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (9, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (10, 1, 1);

--Seed para Deliver
INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, user_id, offer_id, lesson_id)VALUES ('https://exemplo.com/entrega1', TIMESTAMP WITH TIME ZONE '2023-11-02T11:00:00Z', 2, 'Bom trabalho!', 10, 1,1,4);
INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count,user_id, offer_id, lesson_id)VALUES('https://exemplo.com/entrega2', TIMESTAMP WITH TIME ZONE '2023-11-05T13:00:00Z', 2, 'Bom trabalho!', 9, 1,1,6);

--TOPICS
INSERT INTO tb_topic(title, body, moment,author_id,offer_id,lesson_id ) VALUES ('Título - Tópico 1','Corpo do tópico 1',  TIMESTAMP WITH TIME ZONE '2023-12-12T13:00:00Z',1,1,1);
INSERT INTO tb_topic(title, body, moment,author_id,offer_id,lesson_id ) VALUES ('Título - Tópico 2','Corpo do tópico 2',  TIMESTAMP WITH TIME ZONE '2023-12-12T13:00:00Z',2,1,1);
INSERT INTO tb_topic(title, body, moment,author_id,offer_id,lesson_id) VALUES ('Título - Tópico 3','Corpo do tópico 3',  TIMESTAMP WITH TIME ZONE '2023-12-12T13:00:00Z',2,1,1);
INSERT INTO tb_topic(title, body, moment,author_id,offer_id,lesson_id ) VALUES ('Título - Tópico 4','Corpo do tópico 4',  TIMESTAMP WITH TIME ZONE '2023-12-12T13:00:00Z',1,1,2);
INSERT INTO tb_topic(title, body, moment,author_id,offer_id,lesson_id ) VALUES ('Título - Tópico 5','Corpo do tópico 5',  TIMESTAMP WITH TIME ZONE '2023-12-12T13:00:00Z',1,1,2);
INSERT INTO tb_topic(title, body, moment,author_id,offer_id,lesson_id) VALUES ('Título - Tópico 6','Corpo do tópico 6',  TIMESTAMP WITH TIME ZONE '2023-12-12T13:00:00Z',2,1,3);
-- Usuários que curtiram os tópicos
INSERT INTO tb_topic_likes(topic_id,user_id)VALUES (1,2);
INSERT INTO tb_topic_likes(topic_id,user_id)VALUES (2,1);
INSERT INTO tb_topic_likes(topic_id,user_id)VALUES (1,3);

INSERT INTO tb_reply(body,moment,topic_id,author_id) VALUES ('Tente aperta ALT + F5', TIMESTAMP WITH TIME ZONE '2023-10-22T15:00Z',1,2);
INSERT INTO tb_reply(body,moment,topic_id,author_id) VALUES ('Deu certo, valeu !', TIMESTAMP WITH TIME ZONE '2023-10-22T17:00Z',1,1);

INSERT INTO tb_reply_likes(reply_id, user_id) VALUES (1,1);
INSERT INTO tb_reply_likes(reply_id, user_id) VALUES (2,2);