-- Exemplos ilustrativos, sem dados reais. Não usar como migração de produção.
SELECT assunto, resumo
FROM bot_atendimento_ti.base_conhecimento
ORDER BY assunto;

SELECT origem, mensagem
FROM bot_atendimento_ti.atendimento
WHERE status = 'iniciado'
  AND numero = '00000000000@s.whatsapp.net'
ORDER BY data_hora ASC;
