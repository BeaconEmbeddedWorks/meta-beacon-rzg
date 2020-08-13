# Include custom package group containing packages needed for the
# Beacon EmbeddedWorks Test Protocol
IMAGE_INSTALL_append = " packagegroup-beacon-test"
# Also include the QT5 examples
IMAGE_INSTALL_append = " packagegroup-qt5-examples"
