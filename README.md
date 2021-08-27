# GraphicsTemplate

Is a template repository for the graphics module.

Its purpose is to define the initial project structure for using the Graphics module .


# Building

It uses cmake to generate its make files it and has the following external git repositories as dependencies.

+ [FreeImage](https://github.com/CharlesCarley/FreeImage)
+ [FreeType](https://github.com/CharlesCarley/FreeType)
+ [Utils](https://github.com/CharlesCarley/Utils)
+ [Math](https://github.com/CharlesCarley/Math)
+ [Image](https://github.com/CharlesCarley/Image)
+ [Window](https://github.com/CharlesCarley/Window)
+ [SDL](https://github.com/CharlesCarley/SDL)
+ [Data2Array](https://github.com/CharlesCarley/Data2Array)
+ [Graphics](https://github.com/CharlesCarley/Graphics)


The file [gitupdate.py](gitupdate.py) will clone the the dependencies and update the sub-modules to the head of the master branch.


It has been tested with CMake's VisualStudio and Unix Makefile generators.   

### Defines 

Optional definitions used in this project.


| Option                               | Description                                                    | Default |
|:-------------------------------------|:---------------------------------------------------------------|:-------:|
| GraphicsTemplate_COPY_BIN            | Copy binary to the bin directory.                              |   ON    |
| GraphicsTemplate_BACKEND_OPENGL      | Build the OpenGL backend.                                      |   ON    |
| GraphicsTemplate_USE_SDL             | Build with SDL.                                                |   OFF   |
| GraphicsTemplate_NO_PALETTE          | Disable builtin palette.                                       |   OFF   |
| GraphicsTemplate_OP_CHECKS           | Extra checks on function parameters                            |   ON    |
| GraphicsTemplate_EXTRA_BUILTIN_FONTS | Include extra [fonts](https://fonts.google.com/) in the build. |   OFF   |



## Initial Setup

The [rename_initial_template](CMake/rename_initial_template.py) file will swap any GraphicsTemplate variables with the supplied name.
