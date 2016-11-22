def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      name = contestant_hash["name"]
    end
  end
  name.split(" ").first
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, season_details|
    season_details.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        name = contestant_hash["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, season_details|
    season_details.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season, season_details|
    season_details.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        occupation = contestant_hash["occupation"]
      end
      break if occupation != ""
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  count = 0
  data[season].each do |contestant_hash|
    sum += contestant_hash["age"].to_i
    count += 1
  end
  average = sum.to_f / count.to_f
  if average - average.to_i > 0.49
    average = average.to_i + 1
  else
    average.to_i
  end
end
