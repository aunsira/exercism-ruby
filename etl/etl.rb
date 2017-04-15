class ETL

  def self.transform(hash_of_list)
    hash_result = Hash.new
    hash_of_list.each do |key,value|
      value.each do |v|
        hash_result[v.downcase!] = key
      end
    end
    hash_result
  end
end