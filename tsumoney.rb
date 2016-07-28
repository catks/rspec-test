class Tsumoney
  attr_accessor :mana,:money,:hp
  def initialize(mana:,money:,hp:100)
    @mana = mana
    @money = money
    @hp = 100
  end

  def attack
    a = @money * @mana
    "Ataque#{" Crítico" if a > 200000}: #{a}"
  end

end
