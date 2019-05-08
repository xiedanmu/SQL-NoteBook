### 什么是dual表

> 在Oracle数据库内有一种特殊的表Dual。Dual表是Oracle中的一个实际存在的表，任何用户均可读取，常用在没有目标表的Select中。
  Dual表由Oracle连同数据字典一同创建，所有的用户都可以用名称DUAL访问该表。
  这个表里只有一列DUMMY，该列定义为VARCHAR2(1)类型，有一行值X。
  从DUAL表选择数据常被用来通过SELECT语句计算常数表达式，由于DUAL只有一行数据，所以常数只返回一次。
  
  ```sql
  例如select to_char(sysdate,'yyyy-MM-dd HH24:mi:ss') from dual
  ```
