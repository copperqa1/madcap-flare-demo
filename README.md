#Madcap Flare

Using Madcap Flare, You can create batch targets for a project. From the Batch Target Editor, you can select actions to take and schedule tasks. To generate output from Flare targets using commands specified outside of the Flare user interface, you can use a command line executable called madbuild.exe. This executable is located in the Flare.app folder of your folder installation.

Install Madcap Flare - Non-Intractive Mode.
- Open the command line
- Change the directory path to where SetupMadCapFlare.exe is saved

    $ ```cd C:\Download_path_for_SetupMadCapFlare```

- Call the exe and add a flag

    $ ```SetupMadCapFlare.exe -silent``` <br/>
	silent will install Flare in the background.
	
#Building Madcap Flare Project using `madbuild` cli.
- Building All Targets in Project Using the Command Line.
	
	$ ```madbuild -project MyProject.flprj``` <br/>
	madbuild -project [project] will build all targets available in current project.

- Building Specific Targets in Project Using the Command Line.

	$```madbuild -project MyProject.flprj -target MyTargetName``` <br/>
	madbuild -project [project] -target [MyTargetName] is representing specfic build target and ```-log true``` option will enable logging.
