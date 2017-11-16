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
  array_of_name_hashes.each do |label, name| #first name, blake
    array_of_full_hashes.each do |key, value|# blake, {height: 10,  weight: 10}
      if key == name
        indiv_new_hash[label] = name
        value.each do |k, v|
          indiv_new_hash[k] = v
        end
        merged_array_of_hashes<< indiv_new_hash
      end
    end
  end
  merged_array_of_hashes
end
