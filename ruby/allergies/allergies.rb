class Allergies
  ALLERGENS = %w[eggs peanuts shellfish strawberries tomatoes chocolate pollen cats].freeze

  def initialize(score)
    @score = score
  end

  def allergic_to?(allergen)
    allergen_index = ALLERGENS.index(allergen)
    (@score & (1 << allergen_index)).positive?
  end

  def list
    ALLERGENS.select { |allergen| allergic_to?(allergen) }
  end
end
