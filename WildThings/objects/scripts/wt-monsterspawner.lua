function init(args)
  entity.setInteractive(true)
end

function onInteraction(args)
	entity.smash()
	world.spawnMonster(entity.configParameter("monsterType"), entity.toAbsolutePosition({ 0.0, 5.0 }), { level = 3 }, { damageTeamType = "friendly" } )
end