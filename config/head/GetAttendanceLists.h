#ifndef _GET_ATTENDANCE_LISTS_H_
#define _GET_ATTENDANCE_LISTS_H_

#include <bsoncxx/builder/basic/array.hpp>
#include <bsoncxx/builder/stream/document.hpp>
#include <bsoncxx/builder/basic/kvp.hpp>
#include <bsoncxx/json.hpp>
#include <bsoncxx/types.hpp>

#include <bsoncxx/stdx/make_unique.hpp>
#include <mongocxx/client.hpp>
#include <mongocxx/instance.hpp>
#include <mongocxx/stdx.hpp>
#include <mongocxx/uri.hpp>
#include <mongocxx/options/find.hpp>

#include "DataStruct.h"
#include <iostream>

using bsoncxx::builder::stream::document;
using bsoncxx::builder::stream::open_document;
using bsoncxx::builder::stream::close_document;


class CGetAttendanceLists 
{
public:
	CGetAttendanceLists();
	virtual ~CGetAttendanceLists();



public:
     bool GetLists( );

};

#endif
