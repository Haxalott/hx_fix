RegisterCommand('fix', function(source)
  local ped = PlayerPedId()
  local vehicle = GetVehiclePedIsIn(ped, false)
  if vehicle == 0 then
      lib.notify({
          title = 'You need to be in a vehicle to do this',
          type = 'error'
      })
  else
      SetVehicleFixed(vehicle)
      lib.notify({
          title = 'Your vehicle has been fixed',
          type = 'success'
      })
  end
end)