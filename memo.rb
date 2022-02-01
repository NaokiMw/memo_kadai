 require "csv"

    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
    memo_type = gets.to_s
    p memo_type
    
    if memo_type.chomp == "1"
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp

    puts "メモしたい内容を記入してください"
    puts "完了後、Ctrl+Dを押します"
    memo = readlines
    
    memoCsv = CSV.open(file_name + ".csv","w")
    memoCsv.puts memo

   elsif memo_type.chomp == "2"
   puts "拡張子を除いた編集したいファイル名を入力してください"
   file_name = gets.chomp

   memoCsv = CSV.read(file_name + ".csv")
   p "メモの内容は、#{memoCsv}です"
   
   puts "メモの内容を編集してください"
   puts "完了後、Ctrl+Dを押します"
   
   memo = readlines
   memoCsv = CSV.open(file_name + ".csv","a")
   memoCsv.puts memo
    
   end
   