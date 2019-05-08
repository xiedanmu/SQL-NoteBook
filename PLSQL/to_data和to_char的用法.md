### to_data和to_char的用法

```sql
to_date() 作用是将字符类型按一定格式转化为日期类型；
to_char() 作用是将日期类型按一定格式转化为字符类型；
具体用法：to_date(''2004-11-27'',''yyyy-mm-dd''),前者为字符串，后者为转换日期格式，注意，前后两者要以一对应。
         to_char(sysdate,'yyyy-MM-dd HH24:mi:ss') 前者为系统时间，后者为要转换成的字符串格式。
      如：to_date(''2004-11-27 13:34:43'', ''yyyy-mm-dd hh24:mi:ss'') 将得到具体的时间。

SELECT TO_DATE('2006-05-01 19:25:34', 'YYYY-MM-DD HH24:MI:SS') FROM DUAL
SELECT TO_DATE('2006-05-01 19:25', 'YYYY-MM-DD HH24:MI') FROM DUAL
SELECT TO_DATE('2006-05-01 19', 'YYYY-MM-DD HH24') FROM DUAL
SELECT TO_DATE('2006-05-01', 'YYYY-MM-DD') FROM DUAL
SELECT TO_DATE('2006-05', 'YYYY-MM') FROM DUAL
SELECT TO_DATE('2006', 'YYYY') FROM DUAL
--------------------- 
--SQL语句往Oracle数据库中插入日期型数据（to_date的用法）
INSERT  INTO  FLOOR  VALUES  ( to_date ( '2007-12-20 18:31:34' , 'YYYY-MM-DD HH24:MI:SS' ) ) ;
查询显示：2007-12-20 18:31:34.0
-------------------
INSERT  INTO  FLOOR  VALUES  ( to_date ( '2007-12-14 14:10' , 'YYYY-MM-DD HH24:MI' ) );
查询显示：2007-12-14 14:10:00.0
-------------------
INSERT  INTO  FLOOR  VALUES  ( to_date ( '2007-12-14 14' , 'YYYY-MM-DD HH24' ) );
查询显示：2007-12-14 14:00:00.0
-------------------
INSERT  INTO  FLOOR  VALUES  ( to_date ( '2007-11-15' , 'YYYY-MM-DD' ) );
查询显示：2007-11-15 00:00:00.0
-------------------
INSERT  INTO  FLOOR  VALUES  ( to_date ( '2007-09' , 'YYYY-MM' ) );
查询显示：2007-09-01 00:00:00.0
-------------------
INSERT  INTO  FLOOR  VALUES  ( to_date ( '2007' , 'YYYY' ) );
查询显示：2007-05-01 00:00:00.0
```
