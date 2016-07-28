require 'rspec'
require_relative '../tsumoney'
Tsumoney.new(mana:10,money:100).attack

describe Tsumoney do
  let(:tsumoney){Tsumoney.new(mana:10,money:100)}

  before do
    @regex = /Ataque(\sCrítico)?: (\d*)/
  end

  describe '#attack' do
    it 'Retorna uma string com o dano causado' do
      expect(tsumoney.attack).to be_is_a String
    end

    it 'Retorna um Ataque crítico se o ataque for maior que 8000' do
      tsumoney.mana = 1000
      tsumoney.money = 10
      expect(tsumoney.attack[@regex,1].strip).to eq "Crítico"
      expect(tsumoney.attack[@regex,2].to_i).to be > 8000
    end

  end


end
