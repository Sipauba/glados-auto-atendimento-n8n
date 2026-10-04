# Integrações

Configure credenciais nas Credentials do n8n. Esta documentação não contém valores reais.

| Integração | Finalidade | Configuração/autenticação | Credential n8n |
| --- | --- | --- | --- |
| n8n Webhook | Entrada dos eventos | URL HTTPS e webhook `autobot`; proteger a instância e validar a origem | Sem Credential no node; configurar URL no Evolution |
| OpenAI | Classificação, interpretação e respostas | API key e acesso aos modelos usados | `OpenAI API` (`openAiApi`), nome original `API OpenAI - Glados Autoatendimento` |
| PostgreSQL | Histórico e base | Host, porta, database, usuário e senha; schema `bot_atendimento_ti` | `Postgres` (`postgres`), nome original `Postgres Supabase` |
| Evolution API | WhatsApp, envio e mídia | URL e chave/header da API | `Header Auth` (`httpHeaderAuth`), nome original `API Evo chat` |
| Chatwoot | Encaminhamento e agentes | URL, account/inbox aplicável e access token em header | Usar Credential HTTP Header Auth ou variável segura; headers inline atuais estão mascarados |
| GLPI REST | Sessão, categorias e chamados | URL, App-Token e User-Token; Session-Token obtido dinamicamente | Criar Credentials HTTP Header Auth; headers inline atuais estão mascarados |
| MySQL do GLPI | Consulta de categorias e tickets | Host, database, usuário e senha | `MySQL` (`mySql`), nome original `MySQL GLPI Suporte Supply` |

Após importar, configure os hosts mascarados nas URLs, recrie as Credentials e associe-as aos nodes. Substitua headers inline sanitizados nos nodes GLPI e Chatwoot por referências seguras antes de ativar o fluxo. O Session-Token deve vir do node de início de sessão.
