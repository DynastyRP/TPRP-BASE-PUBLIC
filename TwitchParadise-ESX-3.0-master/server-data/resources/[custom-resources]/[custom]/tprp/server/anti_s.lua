-- Server side events triggered by TriggerServerEvent
local ForbiddenEvents = {
  "adminmenu:allowall",
  "AdminMenu:giveCash",
  "AdminMenu:giveBank",
  "dqd36JWLRC72k8FDttZ5adUKwvwq9n9m",
  "antilynx8:anticheat",
  "antilynxr4:detect",
  "ynx8:anticheat",
  "antilynx8r4a:anticheat",
  "lynx8:anticheat",
  "bank:deposit",
  "bank:withdraw",
  "Banca:deposit",
  "Banca:withdraw",
  "BsCuff:Cuff696999",
  "DiscordBot:playerDied",
  "dmv:success",
  "eden_garage:payhealth",
  "esx_ambulancejob:revive",
  "esx_ambulancejob:setDeathStatus",
  "esx_doorlock:setState",
  "esx_billing:sendBill",
  "esx_banksecurity:pay",
  "esx_blanchisseur:startWhitening",
  "esx_carthief:alertcops",
  "esx_carthief:pay",
  "esx_dmvschool:addLicense",
  "esx_dmvschool:pay",
  "esx_drugs:startHarvestWeed",
  "esx_drugs:startTransformWeed",
  "esx_drugs:startSellWeed",
  "esx_drugs:startHarvestCoke",
  "esx_drugs:startTransformCoke",
  "esx_drugs:startSellCoke",
  "esx_drugs:startHarvestMeth",
  "esx_drugs:startTransformMeth",
  "esx_drugs:startSellMeth",
  "esx_drugs:startHarvestOpium",
  "esx_drugs:startTransformOpium",
  "esx_drugs:startSellOpium",
  "esx_drugs:stopHarvestCoke",
  "esx_drugs:stopTransformCoke",
  "esx_drugs:stopSellCoke",
  "esx_drugs:stopHarvestMeth",
  "esx_drugs:stopTransformMeth",
  "esx_drugs:stopSellMeth",
  "esx_drugs:stopHarvestWeed",
  "esx_drugs:stopTransformWeed",
  "esx_drugs:stopSellWeed",
  "esx_drugs:stopHarvestOpium",
  "esx_drugs:stopTransformOpium",
  "esx_drugs:stopSellOpium",
  "esx_fueldelivery:pay",
  "esx:giveInventoryItem",
  "esx_garbagejob:pay",
  "esx_godirtyjob:pay",
  "esx_gopostaljob:pay",
  "esx_jail:sendToJail",
  "esx_jailer:sendToJail",
  "esx_jobs:caution",
  "esx_mecanojob:onNPCJobCompleted",
  "esx_mechanicjob:startHarvest",
  "esx_mechanicjob:startCraft",
  "esx_pizza:pay",
  "esx_policejob:handcuff",
  "esx-qalle-jail:jailPlayer",
  "esx-qalle-hunting:reward",
  "esx-qalle-hunting:sell",
  "esx_ranger:pay",
  "esx:removeInventoryItem",
  "esx_truckerjob:pay",
  "esx_slotmachine:sv:2",
  "esx_vehicleshop:setVehicleOwned",
  "hentailover:xdlol",
  "js:jailuser",
  "LegacyFuel:PayFuel",
  "lscustoms:payGarage",
  "mellotrainer:adminTempBan",
  "mellotrainer:adminKick",
  "NB:destituerplayer",
  "NB:recruterplayer",
  "police:cuffGranted",
  "unCuffServer",
  "uncuffGranted",
  "vrp_slotmachine:server:2",
  "esx_society:setJobSalary"
}

-- Client side events triggered by TriggerEvent
local ForbiddenClientEvents = {
    "bank:transfer",
    "esx_ambulancejob:revive",
    "esx_society:openBossMenu",
    "esx_status:set",
    "HCheat:TempDisableDetection"
}

for i, cheatersSuckEggs in ipairs(ForbiddenEvents) do
  RegisterNetEvent(cheatersSuckEggs)
  AddEventHandler(cheatersSuckEggs,function()
      local _source = source
      TriggerEvent('banCheater', _source, "Using a LUA injector! (False bans are not possible) Triggered Event: " .. ForbiddenEvents[i] )
    end)
end



