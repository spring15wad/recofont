Rails.application.config.middleware.use OmniAuth::Builder do

# For example, in MJF's ~/.profile, there is:
#
#  # -- Needed for RecoFont Project -- #
#  export GH_ID="3%%%%%%%%%%%%%%%%%%e"
#  export GH_Secret="49%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%4c"
#
# (without having %'s masking characters, of course)
# This loads the keys into environment variables, which
# then get loaded into variables in the Rails app 
# by the following…

  provider :github, ENV['GH_ID'], ENV['GH_Secret']
end
