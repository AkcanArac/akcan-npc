Config = {}

Config.SabitNPCler = {
    {
        model = 'a_m_y_business_01', -- NPC'nin modeli
        konum = vector3(-267.13, -957.15, 31.22), -- NPC'nin konumu
        yon = 180.0, -- NPC'nin baktığı yön
        animasyon = "El Sallama" -- Animasyonun adı (Animasyonlar listesinden seçip buraya yazın)
    },
    {
        model = 's_m_m_doctor_01', -- NPC'nin modeli
        konum = vector3(310.26, -593.72, 43.28), -- NPC'nin konumu
        yon = 0.0, -- NPC'nin baktığı yön
        animasyon = "Hasta Kontrolü" -- Animasyonun adı (Animasyonlar listesinden seçip buraya yazın)
    }
}

Config.DevriyeNPCler = {
    {
        model = 'a_m_y_hipster_01', -- NPC'nin modeli
        guzergah = { -- Devriye güzergahı
            vector3(435.92, -645.76, 28.73),
            vector3(450.76, -645.12, 28.73),
            vector3(450.76, -625.12, 28.73)
        },
        yon = 270.0, -- Başlangıç yönü
        hiz = 1.0, -- Devriye hızı
        silah = "WEAPON_BAT" -- NPC'nin taşıyacağı silah
    }
}

Config.Animasyonlar = {
    -- Sosyal Animasyonlar
    ["Ayakta Bekleme"] = { sozluk = "amb@world_human_hang_out_street@male_a@base", anim = "base" },
    ["Sigara İçme"] = { sozluk = "amb@world_human_smoking@male@male_a@base", anim = "base" },
    ["Telefonla Konuşma"] = { sozluk = "cellphone@", anim = "cellphone_call_listen_base" },
    ["El Sallama"] = { sozluk = "anim@mp_player_intcelebrationfemale@wave", anim = "wave" },
    ["Alkışlama"] = { sozluk = "anim@mp_player_intcelebrationmale@slow_clap", anim = "slow_clap" },
    ["Selam Verme"] = { sozluk = "anim@mp_player_intcelebrationmale@salute", anim = "salute" },
    ["Kafa Sallama (Evet)"] = { sozluk = "gestures@f@standing@casual", anim = "gesture_pleased" },
    ["Kafa Sallama (Hayır)"] = { sozluk = "gestures@m@standing@casual", anim = "gesture_no_way" },

    -- Dans Animasyonları
    ["Dans 1"] = { sozluk = "anim@amb@nightclub@dancers@club_ambientpeds@", anim = "mi_dance_facedj_17_v2_male^1" },
    ["Dans 2"] = { sozluk = "anim@mp_player_intcelebrationmale@uncle_disco", anim = "uncle_disco" },
    ["Dans 3 (Enerjik)"] = { sozluk = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", anim = "high_center_up" },
    ["Dans 4 (Yavaş)"] = { sozluk = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", anim = "low_center" },
    ["Striptiz 1"] = { sozluk = "mini@strip_club@private_dance@part1", anim = "priv_dance_p1" },
    ["Striptiz 2"] = { sozluk = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2" },
    ["Striptiz Direk Dansı"] = { sozluk = "mini@strip_club@pole_dance@pole_dance1", anim = "pd_dance_01" },
    ["Direk Dansı 2"] = { sozluk = "mini@strip_club@pole_dance@pole_dance2", anim = "pd_dance_02" },

    -- İş ve Hobi
    ["Bilgisayar Kullanma"] = { sozluk = "amb@world_human_seat_computer@male@base", anim = "base" },
    ["Kutu Taşıma"] = { sozluk = "anim@heists@box_carry@", anim = "idle" },
    ["Gitar Çalma"] = { sozluk = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar" },
    ["Silah Temizleme"] = { sozluk = "weapons@pistol@", anim = "reload_aim" },

    -- Düşünme ve Bekleme
    ["Diz Çökme"] = { sozluk = "amb@medic@standing@kneel@base", anim = "base" },
    ["Bekleme (Eller Belde)"] = { sozluk = "amb@world_human_hang_out_street@male_c@base", anim = "base" },
    ["Düşünme"] = { sozluk = "missheist_jewelleadinout", anim = "jh_int_outro_loop_a_male" },
    ["Ellerle Yüzü Kapama"] = { sozluk = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm" },

    -- Spor ve Enerjik
    ["Şınav Çekme"] = { sozluk = "amb@world_human_push_ups@male@base", anim = "base" },
    ["Mekik Çekme"] = { sozluk = "amb@world_human_sit_ups@male@base", anim = "base" },
    ["Koşu"] = { sozluk = "amb@world_human_jog_standing@male@base", anim = "base" },
    ["Esneme"] = { sozluk = "amb@world_human_stretching@male@base", anim = "base" },
    ["Yoga"] = { sozluk = "amb@world_human_yoga@male@base", anim = "base" },

    -- Diğer
    ["Oyun Oynama"] = { sozluk = "amb@world_human_stand_impatient@male@no_sign@base", anim = "base" },
    ["Tartışma"] = { sozluk = "misscommon@response", anim = "argument_short" }
}
