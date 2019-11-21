
select 
  o.id_oper, 
  o.operacao 
from 
  scan_oper o 
where 
  o.mostrar = 1;


--listar documentos de uma operações selecionada
select
  d.id_doc,
  d.nome,
  l.obrig
from
  scan_docs d
  inner join scan_operdocs l on d.id_doc = l.id_doc
  inner join scan_oper o on l.id_oper = o.id_oper
where
  o.id_oper = &IdOper
order by 
  l.obrig desc, 
  d.id_doc;