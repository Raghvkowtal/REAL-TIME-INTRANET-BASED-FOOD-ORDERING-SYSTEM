create table admin(
    id int not null primary key  auto_increment,
    name varchar(255) not null,
    email varchar(255) not null unique,
    password varchar(20) not null
)

create table restorents(
    id int not null primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null unique,
    password varchar(20) not null

)

create table customer(
    id int not null primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null unique,
    mobile_number varchar(20) not null

)

-- admin add photoes

create table foods(
    id int not null primary key auto_increment,
    name varchar(255) not null,
    image varchar(255) not null unique

);


-- order table
create table orders(
    id int not null primary key auto_increment,
    customer_id int not null,
    food_id int not null ,
    quantity int not null,
    restorent_id int not null,
    total_price int not null,

     foreign key(customer_id) references customer(id) on delete cascade on update cascade ,

      foreign key(food_id) references foods(id) on delete cascade on update cascade ,


      foreign key(restorent_id) references restorents(id) on delete cascade on update cascade 
)Engine = InnoDB;




create table foods_hotel(
    id int not null primary key auto_increment,
    food_id int not null ,
    restorent_id int not null,
    unique(food_id,restorent_id),
       foreign key(restorent_id) references restorents(id) on delete cascade on update cascade ,

      foreign key(food_id) references foods(id) on delete cascade on update cascade 
)Engine = InnoDB;


    insert into admin(name,email,password) values("raghavendra","raghavendra@gmail.com","1234")

    insert into restorents(name,email,password) values("panjurli","panjurli@gmail.com","1234"),
    insert into restorents(name,email,password) values("Akshay Cafe ","akshay@gmail.com","1234")