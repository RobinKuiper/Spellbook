Accounts.onCreateUser (options, user) ->
	if options.profile
		user.profile = options.profile

	return user

# SERVICES
if inDevelopment
	facebookServiceConfiguration =
		appId: '1713310485579090'
		scope: 'basic'
		secret: '531db86d91dded06bc0f5c6ed5780893'
	googleServiceConfiguration =
		clientId: '164859582288-r195qi86dpi0qjp88cl1u17hnv11du79.apps.googleusercontent.com'
		#redirectUri: 'http://localhost:3000/_oauth/google?close'
		#scope: 'basic'
		secret: 'mmbtK8yE_ytF22j1jDDodP1u'

if inProduction
	facebookServiceConfiguration =
		appId: '1713309618912510'
		scope: 'basic'
		secret: 'dd4b9d38e89426e6ce1ba6219dc89186'
	googleServiceConfiguration =
		clientId: '164859582288-h2ss60qer4fmtqicklcglf00irkdal4g.apps.googleusercontent.com'
		secret: 'dPXt3IWzl_bkjUomba1b15LZ'

ServiceConfiguration.configurations.upsert { service: 'facebook' }, { $set: facebookServiceConfiguration }
ServiceConfiguration.configurations.upsert { service: 'google' }, { $set: googleServiceConfiguration }