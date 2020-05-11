json.array! @words do |word|
  json.extract! word, :id, :word, :available
end
