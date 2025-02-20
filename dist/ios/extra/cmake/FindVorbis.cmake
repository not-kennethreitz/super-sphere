# Sets the following variables:
#
# VORBIS_FOUND
# VORBIS_INCLUDE_DIR
# VORBIS_LIBRARY
# VORBISFILE_LIBRARY

set(VORBIS_SEARCH_PATHS
	/usr/local
	/usr
	)

find_path(VORBIS_INCLUDE_DIR vorbis/vorbisfile.h
	PATH_SUFFIXES include
	PATHS ${VORBIS_SEARCH_PATHS})

find_library(VORBIS_LIBRARY
	NAMES vorbis
	PATH_SUFFIXES lib
	PATHS ${VORBIS_SEARCH_PATHS})

find_library(VORBISFILE_LIBRARY
	NAMES vorbisfile
	PATH_SUFFIXES lib
	PATHS ${VORBIS_SEARCH_PATHS})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Vorbis DEFAULT_MSG VORBIS_LIBRARY VORBISFILE_LIBRARY VORBIS_INCLUDE_DIR)

mark_as_advanced(VORBIS_INCLUDE_DIR VORBIS_LIBRARY VORBISFILE_LIBRARY)
