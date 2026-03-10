local letters = {
    {
        letter = "А",
        word = "Аист",
        image = "assets/images/01_aist.png",
        sound = "assets/sounds/01_aist.ogg",
    },
    {
        letter = "Б",
        word = "Белка",
        image = "assets/images/02_belka.png",
        sound = "assets/sounds/02_belka.ogg",
    },
    {
        letter = "В",
        word = "Волк",
        image = "assets/images/03_volk.png",
        sound = "assets/sounds/03_volk.ogg",
    },
    {
        letter = "Г",
        word = "Гусь",
        image = "assets/images/04_gus.png",
        sound = "assets/sounds/04_gus.ogg",
    },
    {
        letter = "Д",
        word = "Дельфин",
        image = "assets/images/05_delfin.png",
        sound = "assets/sounds/05_delfin.ogg",
    },
    {
        letter = "Е",
        word = "Енот",
        image = "assets/images/06_enot.png",
        sound = "assets/sounds/06_enot.ogg",
    },
    {
        letter = "Ё",
        word = "Ёж",
        image = "assets/images/07_yozh.png",
        sound = "assets/sounds/07_yozh.ogg",
    },
    {
        letter = "Ж",
        word = "Жираф",
        image = "assets/images/08_zhiraf.png",
        sound = "assets/sounds/08_zhiraf.ogg",
    },
    {
        letter = "З",
        word = "Заяц",
        image = "assets/images/09_zayats.png",
        sound = "assets/sounds/09_zayats.ogg",
    },
    {
        letter = "И",
        word = "Игуана",
        image = "assets/images/10_iguana.png",
        sound = "assets/sounds/10_iguana.ogg",
    },
    {
        letter = "Й",
        word = "Йорк",
        image = "assets/images/11_york.png",
        sound = "assets/sounds/11_york.ogg",
    },
    {
        letter = "К",
        word = "Кот",
        image = "assets/images/12_kot.png",
        sound = "assets/sounds/12_kot.ogg",
    },
    {
        letter = "Л",
        word = "Лиса",
        image = "assets/images/13_lisa.png",
        sound = "assets/sounds/13_lisa.ogg",
    },
    {
        letter = "М",
        word = "Медведь",
        image = "assets/images/14_medved.png",
        sound = "assets/sounds/14_medved.ogg",
    },
    {
        letter = "Н",
        word = "Носорог",
        image = "assets/images/15_nosorog.png",
        sound = "assets/sounds/15_nosorog.ogg",
    },
    {
        letter = "О",
        word = "Олень",
        image = "assets/images/16_olen.png",
        sound = "assets/sounds/16_olen.ogg",
    },
    {
        letter = "П",
        word = "Панда",
        image = "assets/images/17_panda.png",
        sound = "assets/sounds/17_panda.ogg",
    },
    {
        letter = "Р",
        word = "Рысь",
        image = "assets/images/18_rys.png",
        sound = "assets/sounds/18_rys.ogg",
    },
    {
        letter = "С",
        word = "Сова",
        image = "assets/images/19_sova.png",
        sound = "assets/sounds/19_sova.ogg",
    },
    {
        letter = "Т",
        word = "Тигр",
        image = "assets/images/20_tigr.png",
        sound = "assets/sounds/20_tigr.ogg",
    },
    {
        letter = "У",
        word = "Утёнок",
        image = "assets/images/21_utenok.png",
        sound = "assets/sounds/21_utenok.ogg",
    },
    {
        letter = "Ф",
        word = "Фламинго",
        image = "assets/images/22_flamingo.png",
        sound = "assets/sounds/22_flamingo.ogg",
    },
    {
        letter = "Х",
        word = "Хомяк",
        image = "assets/images/23_homyak.png",
        sound = "assets/sounds/23_homyak.ogg",
    },
    {
        letter = "Ц",
        word = "Цыплёнок",
        image = "assets/images/24_tsyplenok.png",
        sound = "assets/sounds/24_tsyplenok.ogg",
    },
    {
        letter = "Ч",
        word = "Черепаха",
        image = "assets/images/25_cherepaha.png",
        sound = "assets/sounds/25_cherepaha.ogg",
    },
    {
        letter = "Ш",
        word = "Шиншилла",
        image = "assets/images/26_shinshilla.png",
        sound = "assets/sounds/26_shinshilla.ogg",
    },
    {
        letter = "Щ",
        word = "Щенок",
        image = "assets/images/27_shchenok.png",
        sound = "assets/sounds/27_shchenok.ogg",
    },
    {
        letter = "Ъ",
        word = "Твёрдый знак",
        image = "assets/images/28_tvyordyy_znak.png",
        sound = "assets/sounds/28_tvyordyy_znak.ogg",
    },
    {
        letter = "Ы",
        word = "Буква Ы",
        image = "assets/images/29_bukva_y.png",
        sound = "assets/sounds/29_bukva_y.ogg",
    },
    {
        letter = "Ь",
        word = "Мягкий знак",
        image = "assets/images/30_myagkiy_znak.png",
        sound = "assets/sounds/30_myagkiy_znak.ogg",
    },
    {
        letter = "Э",
        word = "Эму",
        image = "assets/images/31_emu.png",
        sound = "assets/sounds/31_emu.ogg",
    },
    {
        letter = "Ю",
        word = "Юрок",
        image = "assets/images/32_yurok.png",
        sound = "assets/sounds/32_yurok.ogg",
    },
    {
        letter = "Я",
        word = "Ягуар",
        image = "assets/images/33_yaguar.png",
        sound = "assets/sounds/33_yaguar.ogg",
    },
}

local currentIndex = 1
local currentImage = nil
local currentSound = nil

local function fileExists(path)
    local info = love.filesystem.getInfo(path)
    return info ~= nil
end

local function stopCurrentSound()
    if currentSound then
        currentSound:stop()
        currentSound = nil
    end
end

local function loadCard(index)
    local item = letters[index]
    if not item then
        return
    end

    currentImage = nil
    stopCurrentSound()

    if fileExists(item.image) then
        currentImage = love.graphics.newImage(item.image)
    end

    if fileExists(item.sound) then
        currentSound = love.audio.newSource(item.sound, "static")
        currentSound:play()
    end
end

local function nextLetter()
    currentIndex = currentIndex + 1
    if currentIndex > #letters then
        currentIndex = 1
    end
    loadCard(currentIndex)
end

local function prevLetter()
    currentIndex = currentIndex - 1
    if currentIndex < 1 then
        currentIndex = #letters
    end
    loadCard(currentIndex)
end

local function replaySound()
    if currentSound then
        currentSound:stop()
        currentSound:play()
    end
end

function love.load()
    love.window.setTitle("Alphabet Game")
    love.window.setMode(640, 480, {
        resizable = false,
        vsync = true
    })

    loadCard(currentIndex)
end


local startHeld = false
local backHeld = false

local function checkQuitCombo()
    if startHeld and backHeld then
        love.event.quit()
    end
end

function love.keypressed(key, scancode)
    if key == "right" or scancode == "right" then
        nextLetter()

    elseif key == "left" or scancode == "left" then
        prevLetter()

    elseif key == "return" or key == "space" or scancode == "return" or scancode == "space" then
        replaySound()

    elseif key == "escape" or scancode == "escape" then
        love.event.quit()
    end
end

function love.gamepadpressed(joystick, button)
    if button == "dpright" then
        nextLetter()

    elseif button == "dpleft" then
        prevLetter()

    elseif button == "a" then
        replaySound()

    elseif button == "start" then
        startHeld = true
        checkQuitCombo()

    elseif button == "back" then
        backHeld = true
        checkQuitCombo()
    end
end

function love.gamepadreleased(joystick, button)
    if button == "start" then
        startHeld = false

    elseif button == "back" then
        backHeld = false
    end
end

function love.draw()
    local w = love.graphics.getWidth()
    local h = love.graphics.getHeight()

    local item = letters[currentIndex]

    love.graphics.clear(0.95, 0.95, 1.0)


    if currentImage then
        love.graphics.draw(
            currentImage,
            0,
            0
        )
    else
        love.graphics.setFont(smallFont)
        love.graphics.printf("No image: " .. item.image, 0, 640, w, "center")
    end

end
