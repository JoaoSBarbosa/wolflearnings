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
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id)VALUES ('CSS Básico ao Avançado', 'Estude técnicas avançadas de CSS.', 2, 'https://dkrn4sk0rn31v.cloudfront.net/uploads/2022/08/seletores_avancados_do_css.png', 0, null, 1);
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


-- Seções para o recurso "Introdução ao HTML"
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 1', 'HTML Básico.', 1, 'https://example.com/aula1.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 2', 'HTML Intermediário.', 2, 'https://example.com/aula2.jpg', 1, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Exercício 1', 'Exercício prático sobre HTML.', 3, 'https://example.com/exercicio1.jpg', 1, 2);

-- Seções para o recurso "CSS Avançado"
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 1', 'CSS Básico.', 1, 'https://example.com/aula1_css.jpg', 2, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Capítulo 2', 'CSS Intermediário e Avançado.', 2, 'https://example.com/aula2_css.jpg', 2, 4);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Exercício 1', 'Exercício prático sobre CSS.', 3, 'https://example.com/exercicio1_css.jpg', 2, 5);

-- Seções para o recurso "Projetos Práticos"
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Projeto 1', 'Primeiro projeto prático com HTML e CSS.', 1, 'https://example.com/projeto1.jpg', 3, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Projeto 2', 'Segundo projeto prático com HTML e CSS.', 2, 'https://example.com/projeto2.jpg', 3, 7);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id)VALUES ('Projeto 3', 'Terceiro projeto prático com HTML e CSS.', 3, 'https://example.com/projeto3.jpg', 3, 8);


-- Matrículas para o curso "HTML e CSS Completo"
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_Moment, available, only_update)VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-10-19T12:00:00Z',null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment, refund_Moment, available, only_update)VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-10-24T12:30:00Z',null, true, false);

-- Matrículas para o curso "Javascript Básico ao Avançado"
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment,refund_Moment, available, only_update)VALUES (2, 2, TIMESTAMP WITH TIME ZONE '2024-01-11T04:00:00Z',null, true, false);

-- Matrículas para o curso "Java Spring"
INSERT INTO tb_enrollment(user_id, offer_id, enroll_moment,refund_Moment, available, only_update)VALUES (2, 3, TIMESTAMP WITH TIME ZONE '2023-12-25T04:30:00Z',null, true, false);

-- Seed Lesson 1 e sua content e Tasks

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de HTML', 1, 1); -- Exemplo de aula de HTML na seção 1
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Este é um conteúdo introdutório sobre HTML. Vamos explorar os principais conceitos e estruturas.', 'https://exemplo.com/video1');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (1,'Esta tarefa envolve a criação de uma página web básica utilizando HTML. Serão fornecidas instruções detalhadas.', 10, 5, 1.5, TIMESTAMP WITH TIME ZONE '2023-10-20T12:00:00Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de HTML', 2, 1); -- Exemplo de aula de HTML na seção 1
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2,  'Agora que você já tem uma noção básica de HTML, vamos nos aprofundar em tópicos mais avançados.', 'https://exemplo.com/video2');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (2,'Nesta tarefa, você terá que implementar um formulário de contato usando HTML. Siga as instruções cuidadosamente.', 8, 4, 1.2, TIMESTAMP WITH TIME ZONE '2023-10-22T14:00:00Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de CSS', 1, 2); -- Exemplo de aula de CSS na seção 2
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Neste conteúdo, vamos mergulhar no mundo do CSS e aprender a estilizar nossas páginas.', 'https://exemplo.com/video3');
INSERT INTO tb_task (id,description, question_count, approval_count, weight, due_date) VALUES (3,'Você receberá um design de página e terá que implementá-lo usando CSS. Preste atenção aos detalhes.', 12, 6, 1.8, TIMESTAMP WITH TIME ZONE '2023-10-25T10:00:00Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de CSS', 2, 2); -- Exemplo de aula de CSS na seção 2
INSERT INTO tb_content (id, text_content, video_uri) VALUES (4, 'Aqui, vamos abordar técnicas avançadas de CSS, como flexbox e grid layout.', 'https://exemplo.com/video4');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4,'Nesta tarefa, você terá que criar um layout responsivo para uma aplicação web. Use suas habilidades em CSS.', 9, 4, 1.3, TIMESTAMP WITH TIME ZONE '2023-10-27T16:00:00Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de Javascript', 1, 3); -- Exemplo de aula de Javascript na seção 3
INSERT INTO tb_content (id, text_content, video_uri) VALUES (5,'Vamos iniciar nossa jornada no mundo do Javascript, aprendendo sobre variáveis e estruturas de controle.', 'https://exemplo.com/video5');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (5, 'Esta tarefa envolve a implementação de funcionalidades dinâmicas usando Javascript. Siga as instruções fornecidas.', 15, 7, 2.0, TIMESTAMP WITH TIME ZONE '2023-10-30T09:00:00Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de Javascript', 2, 3); -- Exemplo de aula de Javascript na seção 3
INSERT INTO tb_content (id, text_content, video_uri) VALUES (6, 'Agora, vamos nos aprofundar em tópicos avançados, como funções e objetos.', 'https://exemplo.com/video6');
INSERT INTO tb_task (id,description, question_count, approval_count, weight, due_date) VALUES (6, 'Nesta tarefa, você terá que desenvolver um jogo simples usando Javascript. Use sua criatividade!', 11, 5, 1.6, TIMESTAMP WITH TIME ZONE '2023-11-02T11:00:00Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 de Spring', 1, 4); -- Exemplo de aula de Spring na seção 4
INSERT INTO tb_content (id, text_content, video_uri) VALUES (7, 'Iniciaremos nossa jornada no mundo do Spring, explorando os fundamentos do framework.', 'https://exemplo.com/video7');
INSERT INTO tb_task (id,description, question_count, approval_count, weight, due_date) VALUES (7, 'Você terá que criar uma aplicação web usando Spring. Siga as instruções para configurar corretamente o projeto.', 14, 6, 1.9, TIMESTAMP WITH TIME ZONE '2023-11-05T13:00:00Z');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 de Spring', 2, 4); -- Exemplo de aula de Spring na seção 4
INSERT INTO tb_content (id, text_content, video_uri) VALUES (8, 'Aqui, vamos abordar tópicos mais avançados, como segurança e integração com banco de dados.', 'https://exemplo.com/video8');
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (8, 'Nesta tarefa, você terá que implementar autenticação e autorização em uma aplicação Spring.', 13, 6, 1.7, TIMESTAMP WITH TIME ZONE '2023-11-08T15:00:00Z');





-- Aula 1 de HTML
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done (lesson_id,user_id, offer_id) VALUES (3, 1, 1);



