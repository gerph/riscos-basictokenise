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
		${VTRANSLATE} basictokenise ${INSTDIR}.${TARGET}.BASICTokenise

#---------------------------------------------------------------------------
# Dynamic dependencies:
