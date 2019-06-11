Dado("que o app esteja aberto") do
  @home = HomeBitbar.new 
  @home.button_ok.click
rescue
  nil
end

Quando("escolher a opção {string}") do |string|
  radio = @home.radio_select()
  radio.each { |elemento|  elemento.click if elemento.text.eql? string }
end

Quando("escrevo o meu nome") do
    @nome = "Thiago"
    @home.text_box.send_keys(@nome)
    @home.tocar_ok_teclado
    @home.button_answer.click
end

Então("vejo a tela de sucesso") do
    @answer = Answer.new
    @answer.first_text_answer.text.eql? MESSAGES[:succes_1]
    @answer.second_text_answer.text.eql? MESSAGES[:succes_2]
end

Então("vejo a tela de falha") do
    @answer = Answer.new
    @answer.first_text_answer.text.eql? MESSAGES[:wrong_1]
    @answer.second_text_answer.text.include? MESSAGES[:wrong_2]
end