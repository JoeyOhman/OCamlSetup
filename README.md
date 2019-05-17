# OCamlSetup
An OCaml Dune project, using VSCode with custom Cygwin build. Code is split in bin folder and lib folder, where bin/main.ml imports the module "Math" from the test library.


## Initialize project sequence, Dune and Visual Studio Code. Made for Windows
* Create repository/project folder

* Create local opam switch, in project folder. (Check current switches and compilers with `opam switch`)
```
opam switch create . ocaml-variants.4.07.1+mingw64c
```
* Make sure the environment is properly synced: `eval $(opam config env)`

* Install tools, (not sure if necessary): `opam install merlin ocp-indent dune utop`

* Setup *settings.json* and *tasks.json* to use Cygwin terminal (bash, not mintty), and custom build so Ctrl+Shift+B builds and executes the program. 

* Create folders `bin` and `lib`

* Initialize both folders with a dune configuration file named `dune`


**bin/dune** contents, will include lib:
```
(executable
  (name main)
  (libraries lib))
```

**lib/dune** contents:
```
(library
  (name lib))
```

To **build**: `dune build bin/main.exe`

To **build and exec**: `dune exec bin/main.exe`


**Ctrl+Shift+B** will now compile and build the project, and then run the code in *bin/main.ml*! **Yay**

<br>
<br>

Partly taken from [this blog post](https://medium.com/@bobbypriambodo/starting-an-ocaml-app-project-using-dune-d4f74e291de8)
