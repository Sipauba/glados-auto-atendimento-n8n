# Fluxo do atendimento

O workflow exportado possui 99 nodes. Os nomes abaixo correspondem aos nodes do arquivo.

1. **Recebimento:** `Webhook` recebe o evento da Evolution API.
2. **Validação do remetente:** o fluxo obtém o identificador da conversa do evento.
3. **Ignorar mensagens do sistema:** `Ignora eu mesmo` evita responder às mensagens do bot.
4. **Grupo ou individual:** `Ignora Grupo1` filtra eventos de grupo.
5. **Tipo de mídia:** `Áudio, texto ou imagem?` separa os ramos.
6. **Texto:** mensagem de conversa ou texto estendido segue para triagem.
7. **Áudio:** `Pega áudio da conversa`, `Converte base64 em áudio`, `Converte de OPUS para OGG` e `Interpreta áudio` preparam e transcrevem o conteúdo.
8. **Imagem:** `Pega imagem da conversa`, `Converte base64 em imagem` e `Interpreta imagem` extraem uma interpretação textual.
9. **Histórico:** nodes `Busca histórico mensagens*` consultam conversas em andamento no PostgreSQL.
10. **Intenção/assunto:** `Verifica saudação`, `Problema ou Saudação`, `Consulta assuntos*` e `Já sabe o que quer?*` identificam a necessidade.
11. **Base de conhecimento:** `Consulta base de conhecimento*` carrega instruções do assunto.
12. **Coleta progressiva:** `Pergunta de acordo com a base*` usa instruções e histórico para solicitar o próximo dado.
13. **Decisão:** `Já pode encerrar?`, `Separa variáveis2` e `Switch` escolhem entre nova pergunta, encerramento, encaminhamento ou chamado.
14. **Atendimento humano:** nodes Chatwoot verificam atribuição, selecionam agente e atribuem a conversa.
15. **Chamado GLPI:** consulta categorias, `GLPI Sup - Iniciar Sessão` e `GLPI Sup - Abre Chamado` criam o chamado e informam seu número.
16. **Chamado existente:** `Procura número do chamado`, `Consulta chamado` e `Gera resumo do chamado` recuperam informações.
17. **Encerramento:** nodes `Encerra atendimento*` finalizam o registro PostgreSQL e podem acionar o Chatwoot.

Mensagens e respostas são gravadas em `bot_atendimento_ti.atendimento`. As consultas SQL interpolam expressões n8n, portanto mudanças nelas exigem cuidado com escaping e validação.
