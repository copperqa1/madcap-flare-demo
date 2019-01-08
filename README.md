# Madcap Flare

Using Madcap Flare, You can create batch targets for a project. From the Batch Target Editor, you can select actions to take and schedule tasks. To generate output from Flare targets using commands specified outside of the Flare user interface, you can use a command line executable called madbuild.exe. This executable is located in the Flare.app folder of your folder installation.

Install Madcap Flare - Non-Intractive Mode.
- Open the command line
- Change the directory path to where SetupMadCapFlare.exe is saved

    $ ```cd C:\Download_path_for_SetupMadCapFlare```

- Call the exe and add a flag

    $ ```SetupMadCapFlare.exe -silent``` <br/>
	silent will install Flare in the background.
	
# Building Madcap Flare Project using `madbuild` cli.
- Building All Targets in Project Using the Command Line.
	
	$ ```madbuild -project MyProject.flprj``` <br/>
	madbuild -project [project] will build all targets available in current project.

- Building Specific Targets in Project Using the Command Line.

	$```madbuild -project MyProject.flprj -target MyTargetName``` <br/>
	madbuild -project [project] -target [MyTargetName] is representing specfic build target and ```-log true``` option will enable logging.

## Exceptions & Error Handling

Using madbuild cli, there are warnings in the build of flare. Build output using the command line, Flare sends a value to the command line's ERRORLEVEL global variable. This value indicates the success, or lack of success, of the compilation and/or publishing process. Print error code using ECHO %ERRORLEVEL% at the command prompt after build.

## Common error codes

 ```
	0 = Success - No problems
    1 = One or more Target Builds failed – One or more of the targets failed to compile
    2 = One or more Publish Targets failed – One or more of the targets failed to compile
    3 = Build completed with compiler warnings
    4 = Compiler reported errors
    5 = Failed to process one or more project import files
    6 = Failed to load topic
    7 = Missing linked file
 ```
	
## Application & Input Errors

 ```
	-1 = Application error – Something critical has forced Flare to close
    1000 = Zero arguments passed in
    1001 = Show Help
    2000 = Unlicensed Flare
    2001 = Flare not activated
    2002 = Invalid license activation code
    2003 = License expired
    2004 = Evaluation expired
    2005 = Trial expired
    2006 = Project does not exist
    2007 = Batch file does not exist
    2008 = Floating session request failed
    2009 = Floating session timeout
    2010 = Target not found
 ```
	
## Warnings
	
	- If Publish Target is missing
	- Software Trial / Activation related warnings.
	- Missing files/targets.


