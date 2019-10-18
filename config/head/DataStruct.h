#ifndef _DATA_STRUCT_H_
#define _DATA_STRUCT_H_

#include <string.h>
#include <list>
#include "define.h"


#include <iostream>


typedef struct
{
	CSTRING     _id;
	CSTRING		name;
	CSTRING		owner_id;
	DWORD 		owner_type;
	DWORD		status;
	CSTRING		date;
	CSTRING		relationship;
	CSTRING		guardian_id;
	CSTRING		school_id;
	CSTRING		dep_id;
	DWORD       dep_code;
    DWORD		grade_code;
	DWORD 		signin_time;
	DWORD		signout_time;
	CSTRING		signin_score;
	CSTRING		signout_score;
	CSTRING		signin_image_name;
	CSTRING		signout_image_name;
}Attendance_t;
typedef std::list<Attendance_t> LIST_Attendance;


#endif

