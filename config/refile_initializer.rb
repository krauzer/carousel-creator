
ActiveSupport.on_load :active_record do
        require "refile/attachment/active_record"
end

if Sinatra::Application.development?
  Refile.store ||= Refile::Backend::FileSystem.new(APP_ROOT.join("tmp", "uploads", "store"))
  Refile.cache ||= Refile::Backend::FileSystem.new(APP_ROOT.join("tmp", "uploads", "cache"))
end

Refile.app = Refile::App.new