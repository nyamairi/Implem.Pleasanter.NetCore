﻿(exists(select "Permissions"."PermissionType" from "Permissions" where "Permissions"."ReferenceId" = "InheritPermission" and (("Permissions"."DeptId" = @ipD and @ipD <> 0) or ("Permissions"."UserId" = @ipU and @ipU <> 0) or ("Permissions"."UserId" = -1) or (exists(select * from "GroupMembers" where "Permissions"."GroupId"="GroupMembers"."GroupId" and (("GroupMembers"."DeptId" = @ipD and @ipD <> 0) or ("GroupMembers"."UserId" = @ipU and @ipU <> 0))))) limit 1 ))