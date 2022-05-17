function startReRecording()
    --start recording with RE
    StartRecording(1) --https://docs.fivem.net/natives/?_0xC3AC2FFF9612AC81
    ESX.ShowNotification(_U('recording_started'))
end

function stopReRecording()
    --stop recording with RE
    StopRecordingAndSaveClip() --https://docs.fivem.net/natives/?_0x071A5197D6AFC8B3
    ESX.ShowNotification(_U('recording_stopped'))
end



function openMenu()

    local elements = {
		{ label = _U('start_recording'), value = 'rec-start' },
		{ label = _U('stop_recording'), value = 'rec-stop' },
	}

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'menu',
        {
            title    = _U('menu'),
            align    = 'top-left',
            elements = elements
        },
        function(data, menu)
            if data.current.value == 'rec-start' then
                startReRecording()
            elseif data.current.value == 'rec-stop' then
                stopReRecording()
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
    
end