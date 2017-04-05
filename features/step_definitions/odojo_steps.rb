Dado(/^que estou na Home do site do O Dojo$/) do
  @page= OdojoPage.new
  @page.navegar_para_home_do_site
end

Dado(/^navego até a página de contato através do link$/) do
  @page.clicar_link_contato
end

Quando(/^preencho os campos de "([^"]*)", "([^"]*)", "([^"]*)" e "([^"]*)"$/) do |nome, email, assunto, mensagem|
  @page.preencher_campos nome, email, assunto, mensagem
end

Quando(/^clico em ENVIAR$/) do
  @page.clicar_botao_enviar
end

Então(/^visualizo a mensagem de status$/) do
  @page.mensagem_status_visivel?
end
