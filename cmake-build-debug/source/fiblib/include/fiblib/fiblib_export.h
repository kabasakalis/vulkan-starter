
#ifndef FIBLIB_API_H
#define FIBLIB_API_H

#ifdef FIBLIB_STATIC_DEFINE
#  define FIBLIB_API
#  define FIBLIB_NO_EXPORT
#else
#  ifndef FIBLIB_API
#    ifdef fiblib_EXPORTS
        /* We are building this library */
#      define FIBLIB_API __declspec(dllexport)
#    else
        /* We are using this library */
#      define FIBLIB_API __declspec(dllimport)
#    endif
#  endif

#  ifndef FIBLIB_NO_EXPORT
#    define FIBLIB_NO_EXPORT 
#  endif
#endif

#ifndef FIBLIB_DEPRECATED
#  define FIBLIB_DEPRECATED __declspec(deprecated)
#endif

#ifndef FIBLIB_DEPRECATED_EXPORT
#  define FIBLIB_DEPRECATED_EXPORT FIBLIB_API FIBLIB_DEPRECATED
#endif

#ifndef FIBLIB_DEPRECATED_NO_EXPORT
#  define FIBLIB_DEPRECATED_NO_EXPORT FIBLIB_NO_EXPORT FIBLIB_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef FIBLIB_NO_DEPRECATED
#    define FIBLIB_NO_DEPRECATED
#  endif
#endif

#endif /* FIBLIB_API_H */
