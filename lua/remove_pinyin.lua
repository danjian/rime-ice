local function remove_pinyin(input, env)
    for cand in input:iter() do
        local comment = cand.comment
        cand:get_genuine().comment = comment:gsub("[%a%s]+$", "")
        yield(cand)
    end
end

return remove_pinyin
