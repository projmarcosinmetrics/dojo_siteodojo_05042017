class OdojoPage
	include Rack::Test::Methods
  include Capybara

  def navegar_para_home_do_site
    visit 'https://vtrmartinez.wixsite.com/dojo'
  end

  def clicar_link_contato
    click_link 'CONTATO'
  end

  def preencher_campos(nome, email, assunto, mensagem)
    fill_in 'CntctFrm1nameField', with: nome
		sleep 2
    fill_in 'CntctFrm1emailField', with: email
		sleep 2
    fill_in 'CntctFrm1subjectField', with: assunto
		sleep 2
    fill_in 'CntctFrm1messageField', with: mensagem
		sleep 2
  end

  def clicar_botao_enviar
    click_button 'CntctFrm1submit'
  end

	def mensagem_status_visivel?
		has_content? 'CntctFrm1notifications'
	end

end
