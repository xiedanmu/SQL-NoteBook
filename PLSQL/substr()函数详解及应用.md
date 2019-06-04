### 1、substr函数格式   (俗称：字符截取函数)

解释：

    格式1：substr(string string, int a, int b);
    格式2：substr(string string, int a);
    特殊3：DBMS_LOB.SUBSTR(col1,n,pos)
           DBMS_LOB.SUBSTR(col1,10,1)表示从第1个字节开始取出10个字节
           DBMS_LOB.SUBSTR(CLOB_VAR,32767)表示截取CLOB变量保存的全部数据

解释：

    格式1：
        1、string 需要截取的字符串 
        2、a 截取字符串的开始位置（注：当a等于0或1时，都是从第一位开始截取）
        3、b 要截取的字符串的长度
    格式2：
        1、string 需要截取的字符串
        2、a 可以理解为从第a个字符开始截取后面所有的字符串。
```sql
1、select substr('HelloWorld',0,3) value from dual; //返回结果：Hel，截取从“H”开始3个字符
2、select substr('HelloWorld',1,3) value from dual; //返回结果：Hel，截取从“H”开始3个字符
3、select substr('HelloWorld',2,3) value from dual; //返回结果：ell，截取从“e”开始3个字符
4、select substr('HelloWorld',0,100) value from dual; //返回结果：HelloWorld，100虽然超出预处理的字符串最长度，但不会影响返回结果，系统按预处理字符串最大数量返回。
5、select substr('HelloWorld',5,3) value from dual; //返回结果：oWo
6、select substr('Hello World',5,3) value from dual; //返回结果：o W (中间的空格也算一个字符串，结果是：o空格W)
7、select substr('HelloWorld',-1,3) value from dual; //返回结果：d （从后面倒数第一位开始往后取1个字符，而不是3个。原因：下面红色 第三个注解）
8、select substr('HelloWorld',-2,3) value from dual; //返回结果：ld （从后面倒数第二位开始往后取2个字符，而不是3个。原因：下面红色 第三个注解）
9、select substr('HelloWorld',-3,3) value from dual; //返回结果：rld （从后面倒数第三位开始往后取3个字符）
10、select substr('HelloWorld',-4,3) value from dual; //返回结果：orl （从后面倒数第四位开始往后取3个字符）
```
https://www.cnblogs.com/dshore123/p/7805050.html 可以看这个网址
