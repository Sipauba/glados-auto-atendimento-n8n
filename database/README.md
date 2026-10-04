# Banco de dados

O workflow acessa PostgreSQL no schema `bot_atendimento_ti` para histórico e base de conhecimento. Também consulta MySQL do GLPI para categorias e tickets. Conexões são configuradas em Credentials do n8n.

Estruturas inferidas das consultas (não substituem schema/migrations oficiais):

- `bot_atendimento_ti.atendimento`: usa `id`, `data_hora`, `status`, `numero`, `mensagem`, `assunto`, `origem`, `assunto_escolhido` e `resumo`.
- `bot_atendimento_ti.base_conhecimento`: usa `assunto`, `resumo` e `instrucao`.
- MySQL `glpi_itilcategories` e `glpi_tickets`: leitura de categorias e de título/descrição de tickets.

Veja [exemplos.sql](exemplos.sql) para ilustrações sem dados reais.
