#language: pt
#encoding: utf-8

Funcionalidade: Acessa o site da O Dojo, navega até a página de contato e envia um email

Esquema do Cenário: Preencher o formulário de contato
  Dado que estou na Home do site do O Dojo
  E navego até a página de contato através do link
  Quando preencho os campos de "<NOME>", "<EMAIL>", "<ASSUNTO>" e "<MENSAGEM>"
  E clico em ENVIAR
  Então visualizo a mensagem de status
    Exemplos:
    |   NOME    |        EMAIL      |       ASSUNTO     |              MENSAGEM             |
    | Sidnei    | sidnei@teste.com  | Anime favorito    | Meu anime favorito é Dragon Ball  |
    | Cleber    | cleber@teste.com  | Banda favorita    | Curto muito Red hot chili Perpers |
    | Vitor     | vitor@teste.com   | Queijo            | Só cheddar                        |
    | Nhaiara   | nhaiara@teste.com | Praia ou montanha?| Os dois são tops                  |
