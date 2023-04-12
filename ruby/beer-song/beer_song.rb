class BeerSong
  def self.recite(start_bottles, verses_to_recite)
    verses = []

    while verses_to_recite > 0
      case start_bottles
      when 2
        verses << "#{start_bottles} bottles of beer on the wall, #{start_bottles} bottles of beer.\nTake one down and pass it around, #{start_bottles-1} bottle of beer on the wall.\n"
      when 1
        verses << "#{start_bottles} bottle of beer on the wall, #{start_bottles} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      when 0
        verses << "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      else
        verses << "#{start_bottles} bottles of beer on the wall, #{start_bottles} bottles of beer.\nTake one down and pass it around, #{start_bottles-1} bottles of beer on the wall.\n"
      end

      start_bottles -= 1
      verses_to_recite -= 1
      verses << "\n" if verses_to_recite > 0
    end

    verses.join('')
  end
end
