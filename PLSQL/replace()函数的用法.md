### replace()函数的用法
```sql
需要修改sqlserver数据库中某一字段的值，
例如从“1234560001”至“1234560999”的字段supplier_id进行修改，要求修改后的supplier_id字段值为“654321****”。

可以使用replace()函数进行修改：
update  table  set  supplier_id=replace(supplier_id,'123456','654321') where supplier_id like '123456%';

replace()函数中，
第一个参数表示的是需要进行操作的字段或值，
第二个参数表示的需要被替换的字符串，
第三个参数表示进行替换的字符串

```
