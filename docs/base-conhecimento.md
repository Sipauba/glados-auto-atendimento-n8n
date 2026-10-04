# Base de conhecimento

A automação depende logicamente do projeto [Sipauba/kb_glados_dti](https://github.com/Sipauba/kb_glados_dti). O repositório externo contém um painel administrativo Flask que alimenta a tabela `bot_atendimento_ti.base_conhecimento` no Supabase. O painel usa a API REST do Supabase; o workflow Glados consulta a mesma tabela diretamente via PostgreSQL.

Este repositório contém a automação/orquestração. O painel do repositório externo permite cadastrar e manter o conteúdo e as regras: assuntos, resumo e instruções com dados a coletar, ordem de perguntas e decisões de continuidade, encerramento, abertura de chamado ou encaminhamento humano.

Os nodes `Consulta assuntos`, `Consulta assuntos1`, `Consulta base de conhecimento`, `Consulta base de conhecimento1` e `Consulta base de conhecimento2` consultam PostgreSQL compartilhado:

- `bot_atendimento_ti.base_conhecimento`: campos observados `assunto`, `resumo` e `instrucao`.
- `bot_atendimento_ti.atendimento`: histórico usado nas perguntas e decisões.

O README externo também orienta expor `bot_atendimento_ti` nos schemas da API do Supabase e descreve a tabela `usuarios_painel` para autenticação do painel. Essa tabela de usuários pertence ao painel de administração; o workflow fornecido não a consulta.

O workflow lê dados publicados pelo painel, em vez de incorporar o conteúdo ao JSON. Alterações no schema ou na semântica dos campos podem quebrar consultas ou mudar o comportamento. Coordene mudanças nos dois projetos e valide tanto o acesso REST do painel quanto a conexão PostgreSQL do n8n.
