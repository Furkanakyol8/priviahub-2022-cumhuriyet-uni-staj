for i in 1..5
    if i > 4 && i < 10
      puts i
      i += 1
      redo
    end
    puts i
  end