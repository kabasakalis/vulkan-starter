
#ifndef BASELIB_TEMPLATE_API_H
#define BASELIB_TEMPLATE_API_H

#include <baselib/baselib_export.h>

#ifdef BASELIB_STATIC_DEFINE
#  define BASELIB_TEMPLATE_API
#else
#  ifndef BASELIB_TEMPLATE_API
#    ifdef BASELIB_EXPORTS
        /* We are building this library */
#      define BASELIB_TEMPLATE_API
#    else
        /* We are using this library */
#      define BASELIB_TEMPLATE_API
#    endif
#  endif

#endif

#endif
