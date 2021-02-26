def jyanken
    puts "じゃんけん・・・・"
    puts "[0]グー,[1]チョキ,[2]パー"
    
    player_hand = gets.to_i #player_handはユーザーから値を受け取る
    computer_hand = rand(0..2) #computer_handは0~2の中でランダムで選択
    
    jyanken_puts = ["グー","チョキ","パー"]
        puts "ポン！"
        puts "------------------------"
        puts "あなたが出したのは　#{jyanken_puts[player_hand]}　"
        puts "相手が出したのは　#{jyanken_puts[computer_hand]}　"
        puts "------------------------"
    
    if player_hand == computer_hand
        puts "あいこで・・・・"
        return true
    
    elsif(player_hand == 0 && computer_hand == 1)||(player_hand == 1 && computer_hand == 2)||(player_hand == 2 && computer_hand == 0)
        puts "あっちむいて・・・・" #英語ではLook this way!(ここでは略してLTWとします)
        puts "[0]上,[1]下,[2]左,[3]右"

        player_direction = gets.to_i #player_directionはユーザーから値を受け取る
        computer_direction = rand(0..3) #computer_directionは0~3の中でランダムで選択
    
        ltw_puts = ["上","下","左","右"]
            puts "ホイ！"
            puts "------------------------"
            puts "あなたの指差し方向は　#{ltw_puts[player_direction]}　"
            puts "相手の顔の向きは　#{ltw_puts[computer_direction]}　"
            puts "------------------------"    
    
        if player_direction == computer_direction
            puts
            puts "あなたの勝ちです！"
            puts
            return false

        else
            puts "もう一回！"
            return true
        end

    else
        puts "あっちむいて・・・・"
        puts "[0]上,[1]下,[2]左,[3]右"
        player_direction = gets.to_i #player_directionはユーザーから値を受け取る
        computer_direction = rand(0..3) #computer_directionは0~3の中でランダムで選択
        ltw_puts = ["上","下","左","右"]
            puts "ホイ！"
            puts "------------------------"
            puts "あなたの顔の向きは　#{ltw_puts[player_direction]}　"
            puts "相手の指差し方向は　#{ltw_puts[computer_direction]}　"
            puts "------------------------" 
    
        if player_direction == computer_direction
            puts 
            puts "あなたの負けです。。。"
            puts
            return false

        else
            puts "もう一回！"
            return true
        end
    end
end

next_game = true

while next_game
    next_game = jyanken
end