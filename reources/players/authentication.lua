local MINIMUN_PASSWORD_LENGHT = 6

local function isPasswordValid(password)
    return string.len(password) >= MINIMUN_PASSWORD_LENGHT
end

addEvent('auth:register-attempt', true)
addEventHandler('auth:register-attempt', root, function (username, password)
    if not username or not password then
        return outputChatBox("SYNTAX "..comando.." [usuario] [senha]", source, 200,20,20)
    end

    if getAccount(username) then
        return outputChatBox("Usuario ja existe!",source, 255,100,100)
    end

    if not isPasswordValid(password) then
        return outputChatBox("Senha não é valida!",source, 255,100,100)
    end

    passwordHash(password, 'bcrypt', {}, function (hashedPassword)
        local account = addAccount(username,hashedPassword)
        setAccountData(account,'hashed_password',hashedPassword)
    end)


end)

addEvent('auth:login-attempt',true)
addEventHandler('auth:login-attempt', root, function (username, password)

    local account = getAccount(username)
    if not account then 
        return outputChatBox("Conta não existente ou senha errada", source, 255,100,100)
    end

    local hashedPasword =  getAccountData(account, 'hashed_password')
    local player = source
    passwordVerify(password, hashedPasword, function (isValid)
        if not isValid then 
            return outputChatBox("Conta não existente ou senha errada", player, 255,100,100)
        end

        if logIn(player, account, hashedPasword) then 
            --spawnPlayer(player, 0,0,0)
            --setCameraTarget(player, player)
            return triggerClientEvent(player,'login-menu:close', player)
        end

    return outputChatBox("Ocorreu um erro não indentificado, contate um ADMIN",player, 255,100,100)
end)
end)



addEventHandler('onPlayerJoin', root, function()
    triggerClientEvent(source, 'login-menu:open', source)
end)
