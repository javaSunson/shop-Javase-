--�������û�,�±�
create tablespace shop  datafile 'E:\shop.dbf' size 500M autoextend on;
--������ʱ��ռ�   ���������м�������������������
create temporary tablespace temp_shop
tempfile 'E:\temp_shop.dbf'
size 100M;
--����һ���û� ָ����ռ䣬�Ժ���û����������ݣ�
--������shop��Ӧ�������ļ��
create user shop identified by 123456
default tablespace shop
temporary tablespace temp_shop
account unlock;
--��Ȩ  �´������û�Ĭ��û���κ�Ȩ�ޡ�
grant connect ,resource to shop;




