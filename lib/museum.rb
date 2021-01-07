class Museum
  attr_reader :name,
              :exhibits

  attr_accessor :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def exhibit_names
    exhibits.map do |exhibit|
      exhibit.name
    end
  end

  def recommend(patron)
    recommend = []
    exhibit_names.each do |exhibit|
      recommend << exhibit if patron.interests.include?exhibit
    end
    recommend
  end

  def recommend_exhibits(patron)
    recommend = []
    exhibits.each do |exhibit|
      if recommend(patron) == patron.interests
        recommend << exhibit
      end
    end
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    exhibit_interest = Hash.new {|h,k| h[k] = []}
    exhibits.map do |exhibit|
      exhibit_interest[exhibit] = 
    end
  end
    # @exhibits.any? do |exhibit|
    #   exhibit == patron.interests
    # end
end
