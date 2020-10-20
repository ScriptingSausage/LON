local LTNEncode = function(...)
    local Params = {...}
    
    local Encoded = "{"
    for _, code in pairs(Params) do
        if not typeof(code) == "table" then
            Emcode = Encoded .. code .. " "
        end
    end
    return string.sub(Encoded, 1, string.len(Encoded) - 1)
end
