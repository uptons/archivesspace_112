require 'digest/sha1'

if !ENV['DISABLE_STARTUP']
  ArchivesSpacePublic::Application.config.secret_token = Digest::SHA1.hexdigest(AppConfig[:public_cookie_secret])
end
