class BasicTradeGood
  #Define the basic goods, link to table with defined goods on it.
  #Has a max tonnage, and then a table of DefinedTradeGoods that can make it up.
  #case statement to determine what DefinedTradeGoods to roll up???
  include ActionView::Helpers::NumberHelper
  attr_accessor :basic_trade_good, :morally_ambiguous, :max_tonnage, :total_tonnage, :specifics
  def initialize(basic_trade_good, morally_ambiguous, max_tonnage = nil)
    @basic_trade_good = basic_trade_good
    @morally_ambiguous = morally_ambiguous
    @max_tonnage = max_tonnage
    @detailed_goods = Hash.new(0) #Setting default value
    unless max_tonnage
      case
        when @basic_trade_good == "Basic Electronics"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Basic Machine Parts"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Basic Manufactured Goods"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Basic Raw Materials"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Basic Consumables"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Basic Ore"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Advanced Electronics"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Advanced Machine Parts"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Advanced Manufactured Goods"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Advanced Weapons"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Advanced Vehicles"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Biochemicals"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Crystals & Gems"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Cybernetics"
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Live Animals"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Luxury Consumables"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Luxury Goods"
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Medical Supplies"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Petrochemicals"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Pharmaceuticals"
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Polymers"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Precious Metals"
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Radioactives"
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Robots"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Spices"
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Textiles"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Uncommon Ore"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Uncommon Raw Materials"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Wood"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Vehicles"
          @max_tonnage = roll('1d6') * 10
        when @basic_trade_good == "Biochemicals, Illegal" && @morally_ambiguous
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Cybernetics, Illegal" && @morally_ambiguous
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Drugs, Illegal" && @morally_ambiguous
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Luxuries, Illegal" && @morally_ambiguous
          @max_tonnage = roll('1d6')
        when @basic_trade_good == "Weapons, Illegal" && @morally_ambiguous
          @max_tonnage = roll('1d6') * 5
        when @basic_trade_good == "Exotics"
          #Hmm, max works differently for these...
          #Can't really handle these, so just set max to 0, have to use book
          @max_tonnage = 0
        else
          @max_tonnage = 0
      end
    end
    @remaining_tonnage = @max_tonnage
  end

  def to_s
    if @specifics.blank?
      @specifics = "#{@basic_trade_good}: #{@max_tonnage} tons\n"
      set_detailed_goods.each do |goods, tonnage|
        @specifics += "\t#{goods} |#{tonnage} tons| #{number_to_currency(
                        DefinedTradeGood.base_price[goods.to_sym],
                        unit: 'Cr', format: '%n%u', precision: 0)}\n"
      end
    end
    return @specifics
  end

  #TODO: return hash of detailed trade goods, with key being name, and value being
  #tonnage. Make the system add the tonnage together, with default being 0 tons.
  #Then Add system to look up the base price per ton for every possible detailed
  #set of goods. Then add a to_s method that does what details does now, and add
  #another method to turn the values into a table row, perhaps through a presenter.

  def set_detailed_goods
    while @remaining_tonnage > 0
      goods, tonnage = DefinedTradeGood.specific(@basic_trade_good, @remaining_tonnage)
      @remaining_tonnage -= tonnage
      @detailed_goods[goods] += tonnage
    end
    return @detailed_goods
  end
end
