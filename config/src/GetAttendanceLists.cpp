#include "../head/GetAttendanceLists.h"
#include "../head/WriteAttendanceLists.h"

LIST_Attendance g_lstInfo;

CGetAttendanceLists::CGetAttendanceLists()
{
}
CGetAttendanceLists::~CGetAttendanceLists()
{
   
}


bool CGetAttendanceLists::GetLists()
{
    
//    LIST_Attendance lstInfo; 
    
    Attendance_t tUser;



	mongocxx::instance inst{};
    mongocxx::client conn{mongocxx::uri{"mongodb://172.16.103.100:27017"}};
    auto db = conn["localattendance"];
	


	bsoncxx::builder::stream::document filter_builder, update_builder;

    filter_builder << "sync_status" 
				   << open_document 
				   << "$lt" << 2 
				   << close_document 
			 	   << "status" << 1;
    update_builder << "$set" 
				   << open_document 
				   << "sync_status" << 2 
				   << close_document;

    auto cursor = db["attendance"].find(filter_builder.view());


	 try
    {
        if ( cursor.begin() != cursor.end() )
        {
            for (auto&& doc : cursor)
            {
                int m_uncheckin = doc["uncheckin"].get_int32();
                int m_late = doc["late"].get_int32();


                tUser._id = doc["_id"].get_oid().value.to_string();
                tUser.name = doc["name"].get_utf8().value.to_string();
                tUser.owner_id = doc["_id"].get_oid().value.to_string();
                tUser.owner_type = 1;
				
				tUser.status = 1;  //deafult status = 1
                if (m_uncheckin == 1 ) { tUser.status = 4; }
                else if (m_late == 1 ) { tUser.status = 2; }

                tUser.date = doc["date"].get_utf8().value.to_string();
                tUser.relationship = " ";
                tUser.guardian_id = " ";
                tUser.school_id = doc["company_id"].get_utf8().value.to_string();
                tUser.dep_id = doc["dep_id"].get_utf8().value.to_string();
                tUser.dep_code = doc["dep_code"].get_int32();
                tUser.grade_code = doc["grade_code"].get_int32();
                tUser.signin_time = doc["sign_in_time"].get_int32();
				tUser.signin_score = doc["signin_score"].get_utf8().value.to_string();
                tUser.signout_score = doc["score"].get_utf8().value.to_string();
                tUser.signin_image_name = " ";
                tUser.signout_image_name = " ";


				//lstInfo.push_back(tUser);
                g_lstInfo.push_back(tUser);
			}
		}
		
	}

      
	 catch (const std::exception& e)
    {
        std::cout << "find error : " << e.what();
    }

    db["attendance"].update_many(filter_builder.view(), update_builder.view());
    

    //g_lstInfo = lstInfo; 
	
    return true;
}
