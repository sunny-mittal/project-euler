nums = File.read('./extras/p059_cipher.txt').chomp.split(',')
           .map(&:to_i)

def decrypt(nums, key)
  nums.map.with_index { |elem, i| elem ^ key[i % 3] }
      .map { |elem| elem.chr }
end

def find_key(nums)
  key = []
  freq = Hash.new 0
  first = (0...nums.length).step(3).map { |i| nums[i] }
  second = (1...nums.length).step(3).map { |i| nums[i] }
  third = (2...nums.length).step(3).map { |i| nums[i] }
  [first, second, third].each do |chunk|
    chunk.each { |num| freq[num] += 1 }
    key << freq.invert.max[1]
    freq.clear
  end
  key.map { |v| v ^ 32 }
end

key = find_key(nums)
puts decrypt(nums, key).map(&:ord).reduce(:+)
