math.randomseed(os.time())
local play = true

while play do
    local jogoOn = true
    local attempt = 1
    local green = 0
    local yellow = 0
    
    local aPassword = math.random(1, 9)
    local bPassword = math.random(0, 9)
    while aPassword == bPassword do
        bPassword = math.random(0, 9)
    end
    local cPassword = math.random(0, 9)
    while aPassword == cPassword or bPassword == cPassword do
        cPassword = math.random(0, 9)
    end
    local dPassword = math.random(0, 9)
    while aPassword == dPassword or bPassword == dPassword or cPassword == dPassword do
        dPassword = math.random(0, 9)
    end
    local function password()
        return aPassword .. bPassword .. cPassword .. dPassword
    end

    print('=-=-=-=-=-=-=-=-=PASSWORD GAME=-=-=-=-=-=-=-=-=')
    print('- The objective of the game is to guess the password')
    print('- The password has 4 different numbers')
    print('- You have 10 attempts to guess the password')
    print('- Type "y" at any moment to forfeit')

    while jogoOn do
        green = 0
        yellow = 0
        print('\nAttempt number ' .. attempt .. ':')
        local guess = io.read()
        local number = tonumber(guess)

        if guess == 'y' or guess == 'Y' then
            print('You gave up.\nThe password was ' .. password() .. '.')
            jogoOn = false

        elseif number == nil or number < 1000 or number > 9999 or number % 1 ~= 0 then
            print('Invalid input, try again.')

        else
            green = 0
            yellow = 0
            local aGuess = string.sub(guess, 1, 1)
            local bGuess = string.sub(guess, 2, 2)
            local cGuess = string.sub(guess, 3, 3)
            local dGuess = string.sub(guess, 4, 4)
            local aPasswordStr = tostring(aPassword)
            local bPasswordStr = tostring(bPassword)
            local cPasswordStr = tostring(cPassword)
            local dPasswordStr = tostring(dPassword)
            local a = (aGuess == aPasswordStr)
            local b = (bGuess == bPasswordStr)
            local c = (cGuess == cPasswordStr)
            local d = (dGuess == dPasswordStr)
            local ab = (aGuess == bPasswordStr)
            local ac = (aGuess == cPasswordStr)
            local ad = (aGuess == dPasswordStr)
            local ba = (bGuess == aPasswordStr)
            local bc = (bGuess == cPasswordStr)
            local bd = (bGuess == dPasswordStr)
            local ca = (cGuess == aPasswordStr)
            local cb = (cGuess == bPasswordStr)
            local cd = (cGuess == dPasswordStr)
            local da = (dGuess == aPasswordStr)
            local db = (dGuess == bPasswordStr)
            local dc = (dGuess == cPasswordStr)

            if a then
                green = green + 1
            end
            if b then
                green = green + 1
            end
            if c then
                green = green + 1
            end
            if d then
                green = green + 1
            end
            if ab then
                yellow = yellow + 1
            end
            if ac then
                yellow = yellow + 1
            end
            if ad then
                yellow = yellow + 1
            end
            if ba then
                yellow = yellow + 1
            end
            if bc then
                yellow = yellow + 1
            end
            if bd then 
                yellow = yellow + 1
            end
            if ca then
                yellow = yellow + 1
            end
            if cb then
                yellow = yellow + 1
            end
            if cd then
                yellow = yellow + 1
            end
            if da then
                yellow = yellow + 1
            end
            if db then
                yellow = yellow + 1
            end
            if dc then
                yellow = yellow + 1
            end

            if green == 4 then
                print('\nCongratulations, you won the password game in ' .. attempt .. ' attempts!\nPress ENTER to exit or type anything to play again')
                jogoOn = false
                local playAgain = io.read()
                if playAgain == '' then
                   play = false
                end

            elseif attempt == 10 then
                print('You ran out of attempts! The right password was ' .. password() .. '.\nPress ENTER to exit or type anything to play again')
                jogoOn = false
                local playAgain = io.read()
                if playAgain == '' then
                   play = false
                end

            else
                print('You got ' .. green .. ' numbers on the right spot, and ' .. yellow .. ' right numbers, but in the wrong spot.')
            end
        attempt = attempt + 1
        end
    end
end