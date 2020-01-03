$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

require 'pry'
# binding.pry

def list_of_directors(source)
  binding.pry
  directors_array = []
  i = 0
  while i < source.length do
    directors_array += source[i][:name]
    i += 1
  end
  directors_array

end

####

def gross_for_director(d)
  total = 0
  index = 0
binding.pry
  while index < d[:movies].length do
    total += director[:movies][index][:worldwide_gross]
    index += 1
  end
end


def directors_totals(source)
  # returns each directors totals...hash of dir name pointing to total

  result = {}
  director_index = 0
#
#   while director_index < source.length do
#
#     dir_movies = directors_database[director_index][:movies]
#     movie_index = 0
#   binding.pry
#     while movie_index < dir_movies.length do
#     total += dir_movies[movie_index][:worldwide_gross]
#     end
#   end
# end
#
#
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end



def total_gross(source)

  director_earnings_hash = directors_totals(source)
  director_names = list_of_directors(source)
# binding.pry
  worldwide_gross_total = 0
  index = 0
  #
  # while index < director_earnings_hash.length do
  #   director_earnings_hash[i][:name] = directors_totals()
  # end
end



#   while index < director_names.length do
#     total += director_earnings_hash[director_names]
#     #don't understand line of code above
#     index += 1
#   end
#   # binding.pry
#   # Write this implementation
#   #
#   # Should use methods:
#   # 1. directors_totals: returns a Hash of { dir_name => gross }
#   # 2. list_of_directors: names provides an Array of directors names (use
#   #
#   # Visit each key (i.e. director name), look up the value in the hash
#   # returned by directors_totals, and add it to a running total. When done,
#   # return the total
# end
