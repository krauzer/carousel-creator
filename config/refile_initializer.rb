
ActiveSupport.on_load :active_record do
        require "refile/attachment/active_record"
end
