--�����̳��õ������ݿ� �û���@
create table shop_users(username varchar2(30),password varchar2(30),status varchar2(4)
);
--��ʼ������Ĭ���û�
insert into shop_users values('martin','123123','off');
insert into shop_users values('admin','123123','on');
--��������
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
--������Ʒ��:
create table shops(
shop_id number,
shop_name varchar2(30),
shop_price varchar2(30),
shop_num varchar2(30),
shop_count varchar2(30),
shop_type varchar2(30)
);
--��ʼ����Ʒ
insert into shops values(shop_id.nextval,'ƻ��','5.30','20','100','1');
insert into shops values(shop_id.nextval,'�㽶','3.00','20','90','1');
insert into shops values(shop_id.nextval,'MacbBook','6999.00','20','90','3');
insert into shops values(shop_id.nextval,'Dell xps13','8210.00','20','90','3');
insert into shops values(shop_id.nextval,'AJ �¿��ȿ�','233.00','20','90','2');
insert into shops values(shop_id.nextval,'New balance','1030.00','20','70','2');
insert into shops values(shop_id.nextval,'����','10.00','20','90','1');
insert into shops values(shop_id.nextval,'361�˶���','83.00','20','90','2');
insert into shops values(shop_id.nextval,'��̤�¿��＾��Ь','220.00','20','70','2');
--����Ʒ����ı�
create table shops_type(
  type_name varchar2(30),
  shop_type varchar2(30)  --type_id
);
--��ʼ�������
insert into shops_type values('ˮ��','1');
insert into shops_type values('��װ','2');
insert into shops_type values('����','3');
--���һ�����ű�
create table news(title varchar2(30),info varchar2(300));
--��ʼ������
insert into news values('С��8������----','����˵������������ǽ���δ����������һ�Σ�
С��8����С������Ϊֹ��׿Խ��һ����Ʒ��5��31�գ�С������콢�����ᣬ������Ʒ���������ڼ�');
insert into news values('�ϰ�,���������','JOY by Dior,�ϰ�ȫ����ˮ, ղ�ݸ�������˹��������,ȫ��ͬ������.');
--�����µ���
create table downlist(
shop_id number,
shop_name varchar2(30),
shop_price varchar2(30),
shop_num varchar2(30),
shop_count varchar2(30),
shop_type varchar2(30)
);
--�������Ա�
create table message(
  title varchar2(30),
  info varchar2(300),
  author varchar2(30),
  wtime date
);
--����
commit;