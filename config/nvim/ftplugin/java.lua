local config = {
  -- The command that starts the language server
  cmd = {
    '/home/bshaw/Development/Java/jdk-11/bin/java',
    '-Dosgi.bundles.defaultStartLevel=4',
  },

  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})
}
require('jdtls').start_or_attach(config)
