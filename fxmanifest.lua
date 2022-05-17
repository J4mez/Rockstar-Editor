-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }

author 'J4mez'
description 'Rockstar Editor standalone'
version '1.0.0'

-- What to run
client_scripts {
    'client/client.lua',
}
server_script {
    'server/server.lua',
}
shared_script{
    'config.lua',
    '@es_extended/locale.lua',
    'server/server.lua',
    'locales/en.lua',
    'locales/de.lua',
}
dependencies {
    'es_extended',
}