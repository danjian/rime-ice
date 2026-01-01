local function key_binder(key_event, env)
    -- 清空
    if key_event:repr() == "F12" then
        env.engine.context:clear()
        return 1
    end
    return 2
end

return key_binder
