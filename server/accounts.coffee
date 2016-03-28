Accounts.onCreateUser (options, user) ->
	if options.profile
		user.profile = options.profile

	return user

# SERVICES
if inDevelopment
	facebookServiceConfiguration =
		appId: '1149110168441055'
		scope: 'basic'
		secret: '701e155e945ef72e6326af99fb066f11'
	googleServiceConfiguration =
		clientId: '42465252564-k9lb5rk5i85hdommgr40i4i6jp47l6g4.apps.googleusercontent.com'
		redirectUri: 'http://localhost:3000/_oauth/google?close'
		scope: 'basic'
		secret: 'qoJGgnHTDD5gaj1IMNl_Je19'

if inProduction
	facebookServiceConfiguration =
		clientId: 'klwszyo3civw6ch5scunf9vc7exy7mr'
		redirectUri: 'http://twitchbot.meteor.com/_oauth/twitch?close'
		scope: 'basic'
		secret: 'aj6z2mlnqc0nmf9yfsuo37kwqp1gzlz'

ServiceConfiguration.configurations.upsert { service: 'facebook' }, { $set: facebookServiceConfiguration }
ServiceConfiguration.configurations.upsert { service: 'google' }, { $set: googleServiceConfiguration }