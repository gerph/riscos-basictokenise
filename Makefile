# Makefile for BASICTokenise
#

COMPONENT  = BASICTokenise
TYPE       = raw
INCLUDES   =
OBJS       =
LIBS       =
DOCSRC     = prminxml.basictokenise/xml

include LibraryCommand

target:
		${MKDIR} ${INSTDIR}.${TARGET}
		${CP} !Run ${INSTDIR}.${TARGET}.!Run ${CPFLAGS}
		${CP} basictokenise ${INSTDIR}.${TARGET}.BASICTokenise ${CPFLAGS}

#---------------------------------------------------------------------------
# Dynamic dependencies:
