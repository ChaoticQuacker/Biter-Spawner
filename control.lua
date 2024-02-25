-- List of entity names that should have their force set to the enemy force
local enemy_entities = {
  "spitter-spawner",
  "biter-spawner",
  "small-biter",
  "medium-biter",
  "big-biter",
  "behemoth-biter",
  "small-spitter",
  "medium-spitter",
  "big-spitter",
  "small-spitter",
  "behemoth-spitter",
  "small-worm-turret",
  "medium-worm-turret",
  "big-worm-turret",
  "behemoth-worm-turret"
}

-- Event handler for entity placement
script.on_event(defines.events.on_built_entity, function(event)
  local created_entity = event.created_entity
  

  -- Check if the created entity is one of the enemy entities
  if table.contains(enemy_entities, created_entity.name) then
      -- Set the force of the entity to the enemy force
      created_entity.force = game.forces["enemy"]
  end
end)

-- Function to check if a value exists in a table
function table.contains(table, value)
  for _, v in ipairs(table) do
      if v == value then
          return true
      end
  end
  return false
end
