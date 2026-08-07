require 'stdlib/event/event'

Scheduler = {}

function Scheduler.add(key, task_name, force_name)
    if not storage.scheduled_tasks then
        storage.scheduled_tasks = {}
    end
    if key then
        for _, task in pairs(storage.scheduled_tasks) do
            if task.key == key then
                return false
            end
        end
    end
    table.insert(storage.scheduled_tasks, {
        key = key,
        task_name = task_name,
        force_name = force_name,
    })
    return true
end

function Scheduler._tick(event)
    local tasks = storage.scheduled_tasks
    if tasks then
        -- reset task queue, (don't set to nil, the event handler is still registered)
        storage.scheduled_tasks = {}
        -- execute queued tasks
        for _, task in pairs(tasks) do
            local force = game.forces[task.force_name]
            if force then
                if task.task_name == 'upgrade_radars' then
                    upgrade_radars(force)
                elseif task.task_name == 'update_all_surveillance' then
                    update_all_surveillance(force)
                end
            end
        end
        if #storage.scheduled_tasks == 0 then storage.scheduled_tasks = nil end
    end
end

Event.register(defines.events.on_tick, Scheduler._tick)
