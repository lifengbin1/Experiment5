create database if not exists db4;

use db4;
create table if not exists student(
    sid bigint primary key auto_increment,
    sname varchar(100) not null,
    sphone char(11) not null unique check(length(sphone) = 11),
    sage int default(18),
		ssex char(2) default('男'),
		sclass varchar(100),
    scollege varchar(100),
		simg long default('./images/avatar.jpg')
);

alter table `student` auto_increment = 202001;
insert into `student`(sname, sphone, sage, ssex, sclass, scollege) values
('李四', '13385151321', 21, '女', '20级卓越班', '计算机科学与工程学院'),
('王五', '13385111322', 20, '男', '20级师范班', '计算机科学与工程学院'),
('老六', '13385121323', 19, '女', '20级卓越班', '马克思主义学院'),
('张三', '13385131324', 22, '男', '20级师范班', '数统学院');

