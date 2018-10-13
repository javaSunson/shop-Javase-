--创建新用户,新表
create tablespace shop  datafile 'E:\shop.dbf' size 500M autoextend on;
--创建临时表空间   存多表连接中间表、存大数据量排序结果。
create temporary tablespace temp_shop
tempfile 'E:\temp_shop.dbf'
size 100M;
--创建一个用户 指定表空间，以后此用户的所有数据，
--都存在shop对应的数据文件里。
create user shop identified by 123456
default tablespace shop
temporary tablespace temp_shop
account unlock;
--授权  新创建的用户默认没有任何权限。
grant connect ,resource to shop;




