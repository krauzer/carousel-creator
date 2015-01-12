
ActiveSupport.on_load :active_record do
        require "refile/attachment/active_record"
end

aws = {
  access_key_id: ENV['S3_ACCESS_KEY_ID'],
  secret_access_key: ENV['S3_SECRET_KEY'],
  bucket: ENV['S3_BUCKET']
}

if Sinatra::Application.development?
  Refile.store ||= Refile::Backend::FileSystem.new(APP_ROOT.join("tmp", "uploads", "store"))
  Refile.cache ||= Refile::Backend::FileSystem.new(APP_ROOT.join("tmp", "uploads", "cache"))
end

Refile.app = Refile::App.new