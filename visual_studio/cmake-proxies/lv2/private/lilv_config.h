/* WARNING! All changes made to this file will be lost! */

#ifndef W_LILV_CONFIG_H_WAF
#define W_LILV_CONFIG_H_WAF

/* #undef LILV_CXX */
#define PYTHONDIR ""
#define PYTHONARCHDIR ""
#define LILV_VERSION "0.24.4"
#define HAVE_LV2 1
#define HAVE_SERD 1
#define HAVE_SORD 1
#define HAVE_SRATOM 1
/* #undef HAVE_SNDFILE */
/* #undef HAVE_LSTAT */
/* #undef HAVE_FLOCK */
#define HAVE_FILENO 1
/* #undef HAVE_CLOCK_GETTIME */
/* #undef HAVE_LIBDL */
#define LILV_PATH_SEP ";"
#define LILV_DIR_SEP "\\"
#define LILV_DEFAULT_LV2_PATH "%APPDATA%\\LV2;%COMMONPROGRAMFILES%\\LV2"

#endif /* W_LILV_CONFIG_H_WAF */
