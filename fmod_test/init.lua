ModRegisterAudioEventMappings( "mods/fmod_test/project/Build/GUIDs.txt" )

function OnWorldPreUpdate()
    if( not( ModIsEnabled( "mnee" ))) then return end

    dofile_once( "mods/mnee/lib.lua" )

    local bank = "mods/fmod_test/project/Build/Desktop/fmod_test.bank"

    -- pen.play_sound({ bank, "intensity", true,
    --     pen.new.slider( "pitch_intensity", 50, 50, pen.Z.TIPS, 100 )/100,
    --     pen.new.slider( "pitch_intensity2", 50, 75, pen.Z.TIPS, 100 )/100
    -- })

    -- pen.play_sound({ bank, "dynamic_ost", true, pen.new.slider( "ost_energy", 50, 50, pen.Z.TIPS, 100 )/100 })
    
    pen.play_sound({ bank, "radio",
        pen.new.slider( "radio_volume", 50, 50, pen.Z.TIPS, 100, { default = 0.5 })/25,
        pen.new.slider( "radio_frequency", 50, 75, pen.Z.TIPS, 100 )/100
    })

    -- pen.play_sound({ "data/audio/Desktop/fx.snd", "fx/fx_concentration",
    --     pen.new.slider( "volume", 50, 50, pen.Z.TIPS, 100 )/100,
    -- })
end