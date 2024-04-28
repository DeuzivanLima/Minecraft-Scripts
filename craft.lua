print('Starting crafting...')

local delay = 0.001

inventory_slot_position = {
        {818, 679}, {855, 669}, {1107, 446}, {924, 669}, {959, 671}, {959, 671}, {1031, 669}, {1067, 671}, {1102, 669}
}

inventory_craft_slot_position = {
        {990, 457}, {1029, 455}, {1003, 421}, {1028, 424}
}

inventory_craft_result = {1107, 446}

function click_at(position)
        os.execute(string.format("sleep %f && xdotool mousemove %d %d click 1", delay, position[1], position[2]))
end

function put_at(position)
        os.execute(string.format("sleep %f && xdotool mousemove %d %d click 3", delay, position[1], position[2]))
end
for i = 1, 10 do
        click_at(inventory_slot_position[1])

        put_at(inventory_craft_slot_position[1])
        put_at(inventory_craft_slot_position[2])
        put_at(inventory_craft_slot_position[3])
        put_at(inventory_craft_slot_position[4])

        click_at(inventory_slot_position[1])
        click_at(inventory_craft_result)
        click_at(inventory_slot_position[2])
end
