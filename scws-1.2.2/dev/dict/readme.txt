1. baidu_getnum.php  - �� baidu.com ȡ�عؼ��ʵ�����Ƶ��

   Usage: php baidu_getnum.php w.txt > tmp.txt
   Usage: php baidu_getnum.php <word>

2. w.txt , z.txt
   ���г�ʼ��Ƶ���ļ�, w.txt �Ǵ��ļ�, z.txt �����ļ�

3. bdb.class2.php  (binary db) �����Ʒ��Ч�ʲ������

4. calc_text.php
   �� w.txt �� z.txt ת���ɱ��õĴʵ��ı��ļ�
   php calc_text.php > dict.txt
   php calc_text.php w > dw.txt  (only w.txt)
   php calc_text.php z > dz.txt  (only z.text)

5. dba.class.php
   ���� dba �����, �Ա�� xdb/hdb �ӿ���ȫһ��

6. draw_hdb.php
   ��� hdb/xdb �Ľڵ�ͼ

   php draw_hdb.php <dict_file> <tree_index:default=-1>
   dict_file = *.hdb | *.xdb

7. hdb.class.php  (hdb�������)

8. leitu_get.php (��leitu.com ��ȡ����)
   php leitu_get.php <input txtfile>

9. mk_dbm.php ��calc_text.php ���ɵ� txt �ļ�����ֱ��ʹ�õ� dba��xdb/hdb��ʽ

   php mk_dbm.php <input file> <output file>
   output��ʽ�Զ�ʶ��xdb, hdb, cdb, gdbm ...

10. sync_hdb.php ���� xdb/hdb �����ݽṹ����������תΪƽ�������

   php sync_hdb.php <dbm file> [tree_index]

11. test_query.php <dict query test>
   php test_quer.php <dictfile> <query word>

12. xdb.class.php  (xdb�����������)

------------------------------------------------
xdb��hdb������

hdb�ǿ�ƽ̨������ģ��ͻ����ֽ����޹أ���ÿ����¼��xdb��ʡ4�ֽڿռ�
xdbΪ����C���xdb����д���ͻ����ֽ����йأ���������.


�� w.txt/z.txt ת���ɿ��ôʵ�ıر����裺

php calc_text.php > dict.txt
php mk_dbm.php dict.txt dict.xdb
php sync_xdb.php dict.xdb -1
...
���ɵ� xdb �ɹ�C��ִ�ֱ��ʹ��



