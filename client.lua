local spawnlananNPCler = {}

-- NPC'ye Silah Ekleme Fonksiyonu
function NPCSilahVer(npc, silah)
    if silah and DoesEntityExist(npc) then
        GiveWeaponToPed(npc, GetHashKey(silah), 1, false, true) -- Silah veriliyor
        SetCurrentPedWeapon(npc, GetHashKey(silah), true) -- Silah elde tutuluyor
        SetPedCombatAttributes(npc, 46, true) -- NPC'nin silahını bırakmasını engeller
    end
end

-- Animasyon Bulma Fonksiyonu
function AnimasyonBul(animasyonAdi)
    return Config.Animasyonlar[animasyonAdi]
end

-- Sabit NPC Oluşturma Fonksiyonu
function NPCOlustur(model, konum, yon, animasyonAdi)
    local animasyon = AnimasyonBul(animasyonAdi)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end

    local npc = CreatePed(4, model, konum.x, konum.y, konum.z - 1.0, yon, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)

    if animasyon then
        RequestAnimDict(animasyon.sozluk)
        while not HasAnimDictLoaded(animasyon.sozluk) do
            Wait(10)
        end
        TaskPlayAnim(npc, animasyon.sozluk, animasyon.anim, 8.0, -8.0, -1, 1, 0, false, false, false)
    end

    table.insert(spawnlananNPCler, npc)
end

-- Devriye NPC Oluşturma Fonksiyonu
function DevriyeNPCOlustur(veri)
    RequestModel(veri.model)
    while not HasModelLoaded(veri.model) do
        Wait(10)
    end

    local npc = CreatePed(4, veri.model, veri.guzergah[1].x, veri.guzergah[1].y, veri.guzergah[1].z - 1.0, veri.yon, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)

    -- Silah Ekleme
    NPCSilahVer(npc, veri.silah)

    -- Devriye Güzergahı
    Citizen.CreateThread(function()
        while true do
            for _, konum in ipairs(veri.guzergah) do
                TaskGoToCoordAnyMeans(npc, konum.x, konum.y, konum.z, veri.hiz, 0, 0, 786603, 0.0)
                Wait(5000) -- Her noktada 5 saniye bekler
            end
        end
    end)

    table.insert(spawnlananNPCler, npc)
end

-- Sabit NPC'leri Oluştur
Citizen.CreateThread(function()
    for _, npc in ipairs(Config.SabitNPCler) do
        NPCOlustur(npc.model, npc.konum, npc.yon, npc.animasyon)
    end
end)

-- Devriye NPC'leri Oluştur
Citizen.CreateThread(function()
    for _, npc in ipairs(Config.DevriyeNPCler) do
        DevriyeNPCOlustur(npc)
    end
end)
