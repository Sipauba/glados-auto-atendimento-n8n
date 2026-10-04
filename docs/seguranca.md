# Segurança

- Nunca faça commit de Credentials, tokens, senhas, conversas ou identificadores pessoais.
- Mantenha tokens nas Credentials do n8n ou em variáveis de ambiente protegidas; não deixe autenticação inline em nodes HTTP Request.
- Arquivos `.env` não devem ser versionados. Use `.env.example` somente com nomes e valores vazios.
- Revise todo workflow exportado antes de publicar, incluindo headers, query strings, bodies, `pinData` e metadados.
- Tokens revogados ou antigos também não devem permanecer no histórico Git. Se um segredo for publicado, revogue-o e limpe o histórico conforme o processo do projeto.
- Não salve conversas reais, telefones, nomes, e-mails, IPs ou identificadores de suporte em exemplos.
- Use `gitleaks` ou `git-secrets` para verificar commits e habilite secret scanning no provedor Git.
- Restrinja o webhook e a instância n8n, use HTTPS e controle acesso e retenção em PostgreSQL, Chatwoot e GLPI.

O export deste repositório substitui tokens GLPI/Chatwoot, hosts de produção e IDs de Credentials por `xxxxxxxxxxxxxxxxxxxx`. Os nomes descritivos das Credentials foram preservados. A sanitização não apaga segredos de commits preexistentes; confirme o histórico antes de publicar.
