# -----------------------------------------------------------------------------
#
#   Copyright (c) Charles Carley.
#
#   This software is provided 'as-is', without any express or implied
# warranty. In no event will the authors be held liable for any damages
# arising from the use of this software.
#
#   Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not
#    claim that you wrote the original software. If you use this software
#    in a product, an acknowledgment in the product documentation would be
#    appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be
#    misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.
# ------------------------------------------------------------------------------
include(StaticRuntime)
include(ExternalTarget)

set_static_runtime()
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

option(GraphicsTemplate_BUILD_TEST     "Build the unit test program." ON)
option(GraphicsTemplate_AUTO_RUN_TEST  "Automatically run the test program." OFF)

# Define the extern path relative to 
# the GraphicsTemplate source directory
set(Extern ${GraphicsTemplate_SOURCE_DIR}/Extern)

DefineExternalTarget(Utils         Extern "${Extern}")
DefineExternalTarget(Math          Extern "${Extern}")
DefineExternalTarget(FreeType      Extern "${Extern}/FreeType/Source/2.10.4/include")
DefineExternalTarget(FreeImage     Extern "${Extern}/FreeImage/Source")
DefineExternalTarget(Image         Extern "${Extern}/Image")
DefineExternalTarget(Graphics      Extern "${Extern}/Graphics")
DefineExternalTarget(Window        Extern "${Extern}/Graphics")

