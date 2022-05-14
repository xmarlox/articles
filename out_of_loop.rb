# frozen_string_literal: true

def out_of_for_loop
  puts "original for loop"
  for num in 1..5
    puts num
  end

  puts "using break - out of for loop"
  for num in 1..5
    break if num > 3
    puts num
  end

  puts "using next - out of for loop"
  for num in 1..5
    next if num > 3
    puts num
  end

  puts "using raise - out of for loop"
  begin
    for num in 1..5
      raise if num > 3
      puts num
    end
  rescue
    puts 'rescued'
  end

  puts "using return - out of for loop"
  for num in 1..5
    return if num > 3
    puts num
  end
end

out_of_for_loop

puts "################################"

def out_of_while_loop
  puts "original while loop"
  num = 1
  while num <= 5 do
    puts num
    num = num + 1
  end

  puts "using break - out of while loop"
  num = 1
  while num <= 5
    break if num > 3
    puts num
    num += 1
  end

  puts "using next - out of while loop"
  num = 1
  while num <= 5
    next num += 1 if num > 3
    puts num
    num += 1
  end

  puts "using raise - out of while loop"
  begin
    num = 1
    while num <= 5
      raise if num > 3
      puts num
      num += 1
    end
  rescue
    puts 'rescued'
  end

  puts "using return - out of while loop"
  num = 1
  while num <= 5
    return if num > 3
    puts num
    num += 1
  end
end

out_of_while_loop

puts "################################"

def out_of_each_loop
  puts "original each loop"
  (1..5).each do |num|
    puts num
    num = num + 1
  end

  puts "using break - out of each loop"
  (1..5).each do |num|
    break if num > 3
    puts num
    num += 1
  end

  puts "using next - out of each loop"
  (1..5).each do |num|
    next num += 1 if num > 3
    puts num
    num += 1
  end

  puts "using raise - out of each loop"
  begin
    (1..5).each do |num|
      raise if num > 3
      puts num
      num += 1
    end
  rescue
    puts 'rescued'
  end

  puts "using return - out of each loop"
  (1..5).each do |num|
    return if num > 3
    puts num
    num += 1
  end
end

out_of_each_loop

puts "################################"

def out_of_map_loop
  puts "original each loop"
  (1..5).map do |num|
    puts num
    num = num + 1
  end

  puts "using break - out of map loop"
  (1..5).map do |num|
    break if num > 3
    puts num
    num += 1
  end

  puts "using next - out of map loop"
  (1..5).map do |num|
    next num += 1 if num > 3
    puts num
    num += 1
  end

  puts "using raise - out of map loop"
  begin
    (1..5).map do |num|
      raise if num > 3
      puts num
      num += 1
    end
  rescue
    puts 'rescued'
  end

  puts "using return - out of map loop"
  (1..5).map do |num|
    return if num > 3
    puts num
    num += 1
  end
end

out_of_map_loop


# def dont_use_next
#   next
# end

# dont_use_next


# def dont_use_break
#   break
# end

# dont_use_break

# def use_raise
#   raise "You need to rescue me! :raise_hands:"
# end

# use_raise

# def use_return
#   puts "Code ignored after this."
#   return
  
#   puts "I will not be shown..."
#   puts "So unfair... :frowning:"
#   raise "your hands! :raise_hands:"
# end

# use_return
