#include "../head/WriteAttendanceLists.h"

extern LIST_Attendance g_lstInfo;

CWriteAttendanceLists::CWriteAttendanceLists()
{

}

CWriteAttendanceLists::~CWriteAttendanceLists()
{

}


bool CWriteAttendanceLists::WriteLists()
{
    	    
  //      LIST_Attendance lstInfo;
//        lstInfo = g_lstInfo;
        
    //    mongocxx::instance::current();
		mongocxx::instance inst{};
        mongocxx::client conn{mongocxx::uri{"mongodb://172.16.103.100:27017"}};
        std::string m_Which_Attendance;
		
		
           LIST_Attendance::iterator iter;

		for(iter =/* lstInfo.begin()*/ g_lstInfo.begin(); iter != /*lstInfo.end()*/ g_lstInfo.end(); ++iter)
             {
                  char datepick [10];
                  strcpy(datepick,(*iter).date.c_str());
                  int m_Mouth = (datepick[5]-48)*10+datepick[6]-48; //char to int -48
                  int m_Date = (datepick[8]-48)*10+datepick[9]-48;

                        if( m_Date <16 )  //find attendance_date <16 to  _1
                        {
                                m_Which_Attendance  = "kg_attendance_"+std::to_string(m_Mouth)+"_1";
                        }
                        else
                        {
                                m_Which_Attendance  = "kg_attendance_"+std::to_string(m_Mouth)+"_2";

                        }

    

                  auto db = conn["myattendance"];
    



                  auto cursor = db[m_Which_Attendance].find({});
                  


                        for(auto&& doc : cursor)
                        {

                            if( (*iter)._id == doc["_id"].get_oid().value.to_string() )   //delete same id which was exist
                            {

                                 auto filter_builder = bsoncxx::builder::stream::document{};
                                 bsoncxx::document::value filter_value = filter_builder
                                 <<"_id"
                                 << bsoncxx::oid{doc["_id"].get_oid().value.to_string()}
                                 << bsoncxx::builder::stream::finalize;
                                 db[m_Which_Attendance].delete_one(filter_value.view());

                             }

                        }

                        
                  
                            auto builder = bsoncxx::builder::stream::document{};
                            bsoncxx::document::value doc_value = builder
                            << "_id" <<bsoncxx::oid( (*iter)._id)
                            << "name" << (*iter).name
                            << "owner_id" <<  (*iter).owner_id
                            << "owner_type" << (*iter).owner_type
                            << "status" <<  (*iter).status
                            << "date" <<  (*iter).date
                            << "relationship" << (*iter).relationship
                            << "guardian_id" << (*iter).guardian_id
                            << "school_id" <<  (*iter).school_id
                            << "dep_id" <<  (*iter).dep_id
                            << "dep_code" <<  (*iter).dep_code
                            << "grade_code" <<  (*iter).grade_code
                            << "signin_time" <<  (*iter).signin_time
                            << "signout_time" <<  (*iter).signout_time
                            << "signin_score" <<  (*iter).signin_score
                            << "signout_score" <<  (*iter).signout_score
                            << "signin_image_name" <<  (*iter).signin_image_name
                            << "signout_image_name" <<  (*iter).signout_image_name
                            << bsoncxx::builder::stream::finalize;

                           auto result = db[m_Which_Attendance].insert_one( std::move(doc_value) );
                    
                     
                  } 
                
				

             

        return true;
}
