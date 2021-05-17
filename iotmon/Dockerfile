FROM intersystemsdc/irisdemo-base-irisint-community:version-1.9.0

LABEL maintainer="Amir Samary <amir.samary@intersystems.com>"

# Adding source code that will be loaded by the installer
ADD --chown=irisowner:irisuser ./${IRIS_PROJECT_FOLDER_NAME}/ $IRIS_APP_SOURCEDIR

ADD --chown=irisowner:irisuser ./html/pmml.xml $ISC_PACKAGE_INSTALLDIR/csp/appint/
ADD --chown=irisowner:irisuser ./html/IoTPredMaintenance.png $ISC_PACKAGE_INSTALLDIR/csp/appint/
ADD --chown=irisowner:irisuser ./html/image-map-resizer/js/imageMapResizer.min.js $ISC_PACKAGE_INSTALLDIR/csp/appint/
ADD --chown=irisowner:irisuser ./html/image-map-resizer/js/imageMapResizer.map $ISC_PACKAGE_INSTALLDIR/csp/appint/

# Running the installer. This will load the source from our project.
RUN /usr/irissys/demo/irisdemoinstaller.sh