#include "../head/GetAttendanceLists.h"
#include "../head/WriteAttendanceLists.h"

int main()
{


CGetAttendanceLists *p_Get;

if(p_Get->GetLists())
{
  
    CWriteAttendanceLists *p_Write;
    p_Write->WriteLists();
}

return 0;

}
