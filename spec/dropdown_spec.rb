describe 'Caixa de seleção', :dropdown do
    it 'Item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'Item especifico com o find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        find('.avenger-list').find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'Outra forma de escolher com o find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        myChoise = find('.avenger-list')
        myChoise.find('option', text: 'Bruce Banner').select_option
        sleep 3
    end

    it 'Qualquer item' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        all('.avenger-list option').sample.select_option
        sleep 3
    end
end