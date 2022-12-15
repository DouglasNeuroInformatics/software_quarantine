setenv( "__GLX_VENDOR_LIBRARY_NAME", "mesa" )
setenv( "RSTUDIO_CHROMIUM_ARGUMENTS", "--disable-gpu --enable-webgl-software-rendering" )
LmodMessage("Warning: remotemesa should only be used for ssh -X connections and for rstudio, use vglrun for X2Go sessions")
