
#ifndef BASELIB_API_H
#define BASELIB_API_H

#ifdef BASELIB_STATIC_DEFINE
#  define BASELIB_API
#  define BASELIB_NO_EXPORT
#else
#  ifndef BASELIB_API
#    ifdef baselib_EXPORTS
        /* We are building this library */
#      define BASELIB_API __declspec(dllexport)
#    else
        /* We are using this library */
#      define BASELIB_API __declspec(dllimport)
#    endif
#  endif

#  ifndef BASELIB_NO_EXPORT
#    define BASELIB_NO_EXPORT 
#  endif
#endif

#ifndef BASELIB_DEPRECATED
#  define BASELIB_DEPRECATED __declspec(deprecated)
#endif

#ifndef BASELIB_DEPRECATED_EXPORT
#  define BASELIB_DEPRECATED_EXPORT BASELIB_API BASELIB_DEPRECATED
#endif

#ifndef BASELIB_DEPRECATED_NO_EXPORT
#  define BASELIB_DEPRECATED_NO_EXPORT BASELIB_NO_EXPORT BASELIB_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef BASELIB_NO_DEPRECATED
#    define BASELIB_NO_DEPRECATED
#  endif
#endif

#endif /* BASELIB_API_H */
