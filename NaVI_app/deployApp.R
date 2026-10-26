# obtain meaningful error messages
Sys.setlocale(category = "LC_ALL", locale = "en_US.UTF-8")
Sys.setlocale(category = "LC_PAPER", locale = "en_US.UTF-8")
Sys.setlocale(category = "LC_MEASUREMENT", locale = "en_US.UTF-8")
Sys.setlocale(category = "LC_MESSAGES", locale = "en_US.UTF-8")

# load rsconnect-package
library(rsconnect)

# deploy
appDir <- "."

files <- listDeploymentFiles(
    appDir = appDir,
    appFiles = NULL,
    appFileManifest = NULL,
    error_call = caller_env()
)

rsconnect::deployApp(
    appDir = appDir,
    appFiles = files,
    appName = "NaVI_app",
    appTitle = "NaVI_app",
    launch.browser = FALSE,
    logLevel = "verbose",
    forceUpdate = TRUE,
    appId = 31,
    appVisibility = "private",
    account = "arnd.weber@bafg.de",
    server = "shiny.bafg.de")
