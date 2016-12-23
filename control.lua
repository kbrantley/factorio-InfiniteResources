script.on_event(defines.events.on_resource_depleted, function(r)
	resource.entity.amount = 100000
end)

script.on_event(defines.events.on_chunk_generated, function(c)
	for _, e in pairs(c.surface.find_entities_filtered({area={c.area.left_top, c.area.right_bottom}, type="resource"})) do e.amount = 100000 end
end)
