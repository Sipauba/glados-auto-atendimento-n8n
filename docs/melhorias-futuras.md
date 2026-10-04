# Melhorias futuras

Itens para avaliação posterior, sem alteração da lógica funcional nesta organização inicial:

- Migrar headers GLPI e Chatwoot embutidos para Credentials gerenciadas pelo n8n.
- Revisar SQL que interpola conteúdo de mensagens e assuntos; preferir parâmetros para reduzir erros e risco de injeção.
- Confirmar validação da origem do webhook Evolution e proteção contra eventos duplicados.
- Documentar e validar schema/migrações compartilhados de `bot_atendimento_ti` junto ao repositório da base.
- Avaliar retries, timeouts e indisponibilidade das APIs externas.
- Confirmar disponibilidade do `ffmpeg` usado na conversão OPUS/OGG no runtime.
- Revisar compatibilidade de modelos e nodes OpenAI após atualizações do n8n.
