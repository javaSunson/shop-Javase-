--�û���
create table users(user_id number(5),
username varchar2(30),
password varchar2(30),
isadmin varchar2(10),
isOnline varchar2(10)
);
--�����������õ�����
create sequence user_seq;
create sequence list_seq;
create sequence shop_seq;
create sequence record_seq;
--��ʼ�����ݿ�
insert into users values(
user_seq.nextval,
'admin','123456',
'1',
'0'
);
--��Ʒ��
create table shops(
shop_id number(5),
shop_name varchar2(30),
shop_price number(10,2),
shop_num varchar2(30),
shop_type varchar2(30)
);

--������
create table lists(
list_id number(5),
shop_id number(5),
user_id number(5),
user_name varchar2(30),
money number(12,2) 
);
--���������,������¼�µ�֮��Ĳ�ѯ�Ȳ���
create table record(
record_id number(5),
list_id number(5),
shop_id number(5),
user_id number(5),
user_name varchar2(30),
money number(12,2)
);
commit;