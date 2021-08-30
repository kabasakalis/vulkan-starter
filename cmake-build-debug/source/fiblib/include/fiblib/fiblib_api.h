
#ifndef FIBLIB_TEMPLATE_API_H
#define FIBLIB_TEMPLATE_API_H

#include <fiblib/fiblib_export.h>

#ifdef FIBLIB_STATIC_DEFINE
#  define FIBLIB_TEMPLATE_API
#else
#  ifndef FIBLIB_TEMPLATE_API
#    ifdef FIBLIB_EXPORTS
        /* We are building this library */
#      define FIBLIB_TEMPLATE_API
#    else
        /* We are using this library */
#      define FIBLIB_TEMPLATE_API
#    endif
#  endif

#endif

#endif
