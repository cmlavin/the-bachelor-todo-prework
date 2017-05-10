def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    if key == season
      value.each do |element|
        element.each do |attribute, stats|
          if stats == "Winner"
            winner = element["name"].split(' ')
            return winner[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |element|
      element.each do |attribute, stats|
        if stats == occupation
          return element["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  total = 0
  data.each do |key, value|
    value.each do |element|
      element.each do |attribute, stats|
        if stats == hometown
          total += 1
        end
      end
    end
  end
  total
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |element|
      element.each do |attribute, stats|
        if stats == hometown
          return element["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |key, value|
    if key == season
      value.each do |element|
        element.each do |attribute, stats|
          age_array << element["age"].to_i
        end
      end
    end
  end
  age_sum = 0
  age_array.each do |element|
    age_sum += element
  end
  average = (age_sum.to_f / age_array.length).round
end
