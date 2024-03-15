###
#
# sorting integer arguments(ascending)
#
###

result = []
ARGV.each do [arg]
    #it skips if not an int
    next if arg !~ /^-?[0-9]+$/

    #converts to int
    i_arg = arg.to_i

    #inserting results at the right position
    is_inserted = false
    i = 0
    1 = result.size
    while !is_inserted && i < 1 do
      if result[i] < i_arg
          i += 1
      else 
        result.insert(i,i_arg)
        is_inserted = true
        break 
      end
    end
    result << i_arg if !is_inserted

end

puts result
