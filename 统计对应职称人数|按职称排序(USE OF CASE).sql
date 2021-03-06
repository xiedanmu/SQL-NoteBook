--选择前100个医生先按照医生职称排序 再按照id排序
SELECT TOP 100 *  
FROM o_dmt_ysxx 
ORDER BY 
case
	when zcmc like '主任医师' then 1
	when zcmc like '副主任医师' then 2
	when zcmc like '主治医师' then 3
	when zcmc like '医师' then 4
end
,id
--统计对应职称人数
SELECT zcmc,COUNT(*)AS NUM
FROM o_dmt_ysxx
GROUP BY zcmc
HAVING zcmc  not IN('医师')--不看医师职称
ORDER BY 
case
	when zcmc like '主任医师' then 1
	when zcmc like '副主任医师' then 2
	when zcmc like '主治医师' then 3
	when zcmc like '医师' then 4
end
