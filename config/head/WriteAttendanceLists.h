#ifndef _WRITE_ATTENDANCE_LISTS_H_
#define _WRITE_ATTENDANCE_LISTS_H_ 

#include <iostream>
#include <cstdint>
#include <mongocxx/instance.hpp>
#include <mongocxx/client.hpp>
#include <mongocxx/options/find.hpp>
#include <mongocxx/stdx.hpp>

#include <bsoncxx/builder/basic/array.hpp>
#include <bsoncxx/builder/stream/document.hpp>
#include <bsoncxx/json.hpp>
#include <bsoncxx/types.hpp>


#include "DataStruct.h"
using bsoncxx::types::value;
using bsoncxx::builder::stream::finalize;
using bsoncxx::builder::stream::document;
using bsoncxx::builder::stream::open_document;
using bsoncxx::builder::stream::close_document;


class CWriteAttendanceLists
{
    public:
        CWriteAttendanceLists();
        virtual ~CWriteAttendanceLists();
    public:
        bool WriteLists();
};

#endif
