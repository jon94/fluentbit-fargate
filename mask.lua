function redact_called(tag, timestamp, record)
    local message = record["message"]

    if message then
        -- Replace "called" with "[REDACTED]"
        local redacted_message = string.gsub(message, 'called[%w%p]*', '[REDACTED]')
        record["message"] = redacted_message
    end

    return 2, timestamp, record
end