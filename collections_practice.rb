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

def merge_data(keys, data) #|[{first_name => "blake"}, {first_name => "ashley"}], [datas]|
  keys.each do |x|
    x.merge(data)
  binding.pry
end
=begin
  answer = []
  keys.each do |k, v| #|first_name, "blake"|
      v.each do |k1, v1| #|"blake", {trait1: trait1, trait2: trait2}|
        if k1 == v
          answer << {k => v}.merge(v1)
        end
      end
    end
  answer
end
=end
end
