📘 README — Guia Didático do Pipeline CI/CD (Cofre Digital).

Versão simplificada e pedagógica para estudantes.

🎯 Objetivo deste guia
Este documento resume, de forma clara e didática, o pipeline de CI/CD que você construiu ao longo das aulas.
Ele serve como:

revisão final

material de estudo

referência para projetos futuros

guia para entender pipelines reais

🚀 O que é CI/CD?
CI — Continuous Integration
Processo de integrar código continuamente, garantindo que:

o projeto sempre funciona

dependências estão corretas

testes passam

erros são detectados cedo

CD — Continuous Delivery / Deployment
Processo de entregar ou implantar o software automaticamente, garantindo que:

o build funciona

o deploy é seguro

ambientes são atualizados corretamente

🧩 Como funciona o pipeline do Cofre Digital:
Nosso workflow é dividido em 3 JOBS, que representam etapas reais de um pipeline profissional 
mas adaptadas para fins didáticos.

🟦 JOB 1 — Build + Deploy (Simulado)
Este job representa o fluxo completo de CI/CD:

Checkout do código

Instalação do Python

Instalação das dependências

Build da imagem Docker (simulado)

Login no Docker Hub (simulado)

Push da imagem (simulado)

Deploy em Staging (simulado)

Deploy em Produção (simulado)

Verificação de segurança (simulada)

Por que simular?
Para evitar:

criação de contas externas

uso de secrets reais

riscos de deploy acidental

E ainda assim entender o fluxo real.

🟩 JOB 2 — Testes Simulados
Executa o script:

Código
tests/test_local.sh
Esse script representa testes simples, como:

verificar arquivos

validar estrutura

simular testes unitários

Por que existe?
Para mostrar que testes fazem parte do pipeline, mesmo que simples.

🟧 JOB 3 — Testes Interativos (Automáticos)
Executa:

Código
tests/interactive_tests_ci.sh
Esse script é uma versão adaptada do script interativo original.

O que aprendemos aqui?
Scripts que pedem input humano travariam o pipeline.
Por isso, criamos uma versão automática para CI.

Essa é uma nuance real de pipelines profissionais.

🧠 Aprendizados importantes durante o processo
✔ Workflows podem travar
O workflow #11 travou porque o script interativo esperava input humano.
Isso ensinou:

como cancelar workflows

como interpretar “In progress” infinito

como limpar o ambiente

✔ Commits disparam workflows
O pipeline só roda quando há push na branch main.

✔ A ordem dos commits importa
O workflow só enxerga arquivos que já existem naquele commit.

✔ Simulação é poderosa
Permite aprender CI/CD sem infraestrutura externa.

✔ Jobs encadeados mostram dependência real
O uso de needs: ensina que:

um job só roda se o anterior passar

pipelines reais são sequenciais e condicionais

🧭 Fluxo completo do pipeline
Push na main

Job 1 — Build + Deploy (simulado)

Job 2 — Testes locais

Job 3 — Testes interativos automáticos

Pipeline concluído

🎓 O que você domina agora
Com este pipeline, você aprendeu:

como funciona um workflow real

como organizar jobs e steps

como simular ações reais com segurança

como automatizar scripts interativos

como encadear jobs

como estruturar um pipeline profissional

como interpretar logs e workflows travados

como separar CI de CD

Você agora tem base sólida para criar pipelines reais em qualquer projeto.

🏁 Parabéns!
Você concluiu um pipeline completo de CI/CD —
com testes, build, deploy, simulação, automação e boas práticas.

Este README é o seu certificado técnico informal:
prova de que você entende CI/CD de verdade.

-- Esta edição do arquivo readme.md é proposital apenas para testar a sincronização do git com o github
