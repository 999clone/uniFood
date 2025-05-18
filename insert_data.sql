insert into departments(name)
values
    ('computer engineer'),
    ('mechanic engineer'),
    ('electrical engineer');

insert into users(user_name, password, email, rule, student_number)
values
    ('mamad mamali', '123456', 'mamadmamali@gmail.com', 'student', 40312024),
    ('akbar ghodosi', 'passman123', 'akbarjan@hotmail.com', 'student', 40313024);

insert into users(user_name, password, email, rule, academic_rank, department_id)
values
    ('dr mamali', 'drRE112', 'dr.rezaei@gmail.com', 'teacher', 'ostad tamam', 1),
    ('dr behroz', '1234556', 'dr.behrooz@hotmail.com', 'teacher', 'daneshyar',2);

insert into foods(name, price)
values
    ('ghorme sabzi', 30),
    ('kabab kobideh', 40),
    ('fesenjoon', 35);

insert into menus(menu_date)
values
    ('2025-05-18'),
    ('2025-05-19');

insert into menu_items(menu_id, food_id)
values
    (1,1),
    (1,2),
    (2,3),
    (2,1);

insert into orders (user_id, menu_item_id)
values
    (1,1),
    (2,2),
    (1,3);
