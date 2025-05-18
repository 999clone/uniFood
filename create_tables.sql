create table departments(
    id int auto_increment primary key,
    name varchar(50) not null unique
);

create table users(
    id int auto_increment primary key,
    user_name varchar(50) not null,
    password varchar(50) not null,
    email varchar(50) not null unique,
    rule ENUM('student', 'teacher') not null,
    student_number int not null unique,
    academic_rank varchar(50) not null,
    department_id int not null,
    foreign key (department_id) references departments(id)
);

create table foods(
    id int auto_increment primary key,
    name varchar(100) not null,
    price int not null
);

create table menus(
    id int auto_increment primary key,
    menu_date date not null
);

create table menu_items(
    id int auto_increment primary key,
    menu_id int not null,
    food_id int not null,
    foreign key (menu_id) references menus(id),
    foreign key (food_id) references foods(id)
);

create table orders(
    id int auto_increment primary key,
    user_id int not null,
    menu_item_id int not null,
    order_date_time datetime not null default current_timestamp,
    foreign key (user_id) references users(id),
    foreign key  (menu_item_id) references menu_items(id)
);

