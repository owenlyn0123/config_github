#ifndef HEAD_DEFINE_H_
#define HEAD_DEFINE_H_

#if (defined(WIN32) || defined(_WIN32) || defined(_WIN64))
    #include <windows.h>
    #ifdef NETSDK_EXPORTS
        #define CLIENT_NET_API  __declspec(dllexport)
    #else
        #define CLIENT_NET_API  __declspec(dllimport)
    #endif

    #define CALLBACK        __stdcall
    #define CALL_METHOD     __stdcall  //__cdecl

    #define INT64           __int64
    #define TP_U64          unsigned __int64

    #ifndef LLONG
        #ifdef _WIN64
            #define LLONG   INT64
        #else 
            #define LLONG   LONG
        #endif
    #endif

    #ifndef LDWORD
        #ifdef _WIN64
            #define LDWORD  INT64
        #else 
            #define LDWORD  DWORD
        #endif
    #endif
#else    //non-windows
    #define CLIENT_NET_API  extern "C"
    #define CALL_METHOD 
    #define CALLBACK
 
    #define INT         int
    #define WORD        int32_t 
    #define DWORD       int32_t 
    #define LONG        long
    #define LPDWORD     DWORD*

    #define BOOL    int

    #ifndef TRUE
    #define TRUE        1
    #endif

    #ifndef FALSE
    #define FALSE       0
    #endif
    #define BYTE        unsigned char
    #define CHAR        char
    #define PBYTE       BYTE*
    #define UINT        unsigned int
    #define VOID 	    void
    #define HDC         void*
    #define HWND        void*
    #define LPVOID      void*

    #ifndef NULL
    #define NULL        0
    #endif

    #define LLONG       long
    #define INT64       long long
    #define TP_U64      unsigned long long
    #define LDWORD      long 
    #define LPSTR char*
    #define LPCSTR	const char* 
    #define PDWORD 	DWORD*
    #define PUCHAR      unsigned char*
	#define PVOID	void*
    #include <string>
    #define CSTRING std::string
    #define CWSTRING std::wstring
    #define CString std::string
    #define CWString std::wstring
    #define LPCTSTR char*
    #ifndef _DebugPrint
    #define _DebugPrint printf
    #endif
    #define MAX_PATH 260
    #ifndef DEF_RECT
    typedef struct  tagRECT
    {
        LONG left;
        LONG top;
        LONG right;
        LONG bottom;
    } RECT;
    #define DEF_RECT
    #endif
#endif // linux

#ifndef LDWORD
    #if (defined(WIN32) || defined(_WIN32) || defined(_WIN64))
        #ifdef _WIN64
            #define LDWORD  __int64
        #else //WIN32 
            #define LDWORD  DWORD
        #endif
    #else    //linux
        #define LDWORD      long 
    #endif
#endif

#endif  // HEAD_DEFINE_H_

