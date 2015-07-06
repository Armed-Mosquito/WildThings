function init()  
  status.setPersistentEffects("coldprotectionTech", {{stat = "biomecoldImmunity", amount = 1}})
  
  script.setUpdateDelta(5)

  self.healingRate = 1.0 / effect.configParameter("healTime", 30)
end

function update(dt)
  status.modifyResourcePercentage("health", self.healingRate * dt)
end

function uninit()
  status.clearPersistentEffects("coldprotectionTech")
end