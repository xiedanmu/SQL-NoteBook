--ѡ��ǰ100��ҽ���Ȱ���ҽ��ְ������ �ٰ���id����
SELECT TOP 100 *  
FROM o_dmt_ysxx 
ORDER BY 
case
	when zcmc like '����ҽʦ' then 1
	when zcmc like '������ҽʦ' then 2
	when zcmc like '����ҽʦ' then 3
	when zcmc like 'ҽʦ' then 4
end
,id
