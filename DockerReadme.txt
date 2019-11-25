# docker-sdk

The dockerfile here can be used to build a CentOS7 image containing version 2 of the Glasswall engine which is pre configured to run files in a mounted directory in both analysis and protect modes through the engine and output the files to a mounted output directory.

To use this file simply download the file to a clean workspace and using powershell build your image, if you've never used docker before you will need to install this first.
The dockerfile must be inside the same directory as the release package which must contain, the Core 2 libraries, GWQtCLI and the supporting libraries all of these can be found at https://github.com/filetrust/SDK2.01Evaluation note that the docker file isalsolocated there.

To build an image simply use the following command:
docker build -t *image name*:0.1 .
This will produce a docker image with the configured name.

To run a container of the image and immediatley scan the required files simply run a container and mount your input directory to /input and your output to .output.
Note that your output directory must be empty or Glasswall will fail to produce an output and will destroy any data present in there.
An example of the container build command is as follows:

docker run -it -v C:\data\input:/input -v C:\data\output:/output *image name*:0.1

This command will build the container and mount "C:\data\input" to "/input" on the container and "C:\data\output" to "/output" and then immediatley scan the contents of "/input" ("C:\data\input" on the local machine) and place the regenerated files and analysis reports in  "/output" ("C:\data\output" on the local machine).

NOTES:

Please note that at present PDF files are not supported by the Glasswall engine.
Note that Content Management is currently configured to the default behaviour which is to Sanitise all Content.

The following changes can be made to the docker file to give additional functionality:

line 14 can be changed and suffixed "-r" to give the ability to recursively scan input directories note that this will work with the default mode and with the following edits.

line 14 can be changed to "CMD /home/glasswall/GWQtCLI -i /input -o /output -x export" to produce export packages instead of analysis reports and regenerated files, please note that the streams for the export package are currently only availible in the SISL format.

line 14 can be changed to "CMD /home/glasswall/GWQtCLI -i /input -o /output -x import" to reimport exported archives and produce regenerated files and analysis reports.

This is also availible in a pre built docker image in the following location: https://hub.docker.com/r/mgreengw/glasswall_analyseandregenerate
