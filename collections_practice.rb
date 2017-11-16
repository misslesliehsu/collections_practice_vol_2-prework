require 'pry'
def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end

def first_wa(array)
  array.detect do |x|
    x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.reject do |x|
    x.class != String
  end
end

def count_elements(array_of_hashes)#array of hash objects
  count = []
  array_of_hashes.each do |x|
    answer = x.merge({:count => array_of_hashes.count(x)})
    count << answer
    end
  count.uniq
end

def merge_data(array_of_name_hashes, array_of_full_hashes) #|[{first_name => "blake"}, {first_name => "ashley"}], [datas]|
  merged_array_of_hashes = []
  array_of_name_hashes.each do |name_hash| #first_name =>blake
    name_hash.each do |label, name_value| #first name,blake
      array_of_full_hashes.each do |full_hash|# blake => {height: 10,  weight: 10}
        full_hash.each do |name_key, stats| #blake, {height:10, weight:10}
          if name_key == name_value
            indiv_new_hash = {}
            indiv_new_hash[label] = name_value
            stats.each do |k, v|
              indiv_new_hash[k] =v
            end
            merged_array_of_hashes<< indiv_new_hash
          end
        end
      end
    end
  end
  merged_array_of_hashes
end

def find_cool(cool) #array of collections of hashes, where one key is coolness
  answer = []
  cool.each do |hash_set|
    hash_set.each do |k, v|
      if v == "cool"
        answer << hash_set
      end
    end
  end
  answer
end

def organize_schools(schools) #hash of schools => hashed locations (eg location: NYC)
  organized = {}  #hash of locations => array of schools there
  schools.each do |name_key, hashed_location| #flatiron => {location: NYC}
    school_array = []
    school_array << name_key
    hashed_location.each do |labeloflocation, location_value|
      if organized.include?(location_value)
        organized[location_value] << name_key
      else
        organized[location_value] = school_array
      end
    end
  end
  organized
end
