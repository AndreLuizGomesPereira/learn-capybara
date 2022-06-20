describe 'Preenchimento de Formulário simples' do
    it 'Login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'   
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'
        click_button 'Login'
        find('#flash').visible?.should == true
    end
end