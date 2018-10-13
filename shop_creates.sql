--创建商城用到的数据库 用户表@
create table shop_users(username varchar2(30),password varchar2(30),status varchar2(4)
);
--初始化两个默认用户
insert into shop_users values('martin','123123','off');
insert into shop_users values('admin','123123','on');
--创建序列
create SEQUENCE auto_count
INCREMENT by 1
start with 1
nomaxvalue
nocycle
cache 10;
create sequence shop_id
increment by 1
start with 1
nomaxvalue 
nocycle
cache 10;
--创建商品表:
create table shops(
shop_id number,
shop_name varchar2(30),
shop_price varchar2(30),
shop_num varchar2(30),
shop_count varchar2(30),
shop_type varchar2(30)
);
--初始化商品
insert into shops values(shop_id.nextval,'苹果','5.30','20','100','1');
insert into shops values(shop_id.nextval,'香蕉','3.00','20','90','1');
insert into shops values(shop_id.nextval,'MacbBook','6999.00','20','90','3');
insert into shops values(shop_id.nextval,'Dell xps13','8210.00','20','90','3');
insert into shops values(shop_id.nextval,'AJ 新款热裤','233.00','20','90','2');
insert into shops values(shop_id.nextval,'New balance','1030.00','20','70','2');
insert into shops values(shop_id.nextval,'西瓜','10.00','20','90','1');
insert into shops values(shop_id.nextval,'361运动裤','83.00','20','90','2');
insert into shops values(shop_id.nextval,'安踏新款秋季球鞋','220.00','20','70','2');
--创商品大类的表
create table shops_type(
  type_name varchar2(30),
  shop_type varchar2(30)  --type_id
);
--初始化种类表
insert into shops_type values('水果','1');
insert into shops_type values('服装','2');
insert into shops_type values('数码','3');
--设计一个新闻表
create table news(title varchar2(30),info varchar2(300));
--初始化新闻
insert into news values('小米8震撼上市----','人们说，最优秀的总是将至未至；但是这一次，
小米8就是小米迄今为止最卓越的一代产品。5月31日，小米年度旗舰发布会，更多新品，与你深圳见');
insert into news values('迪奥,让你更美丽','JOY by Dior,迪奥全新香水, 詹妮弗·劳伦斯倾情演绎,全球同步上市.');
--创建下单表
create table downlist(
shop_id number,
shop_name varchar2(30),
shop_price varchar2(30),
shop_num varchar2(30),
shop_count varchar2(30),
shop_type varchar2(30)
);
--创建留言表
create table message(
  title varchar2(30),
  info varchar2(300),
  author varchar2(30),
  wtime date
);
--测试
commit;