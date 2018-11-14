pragma solidity ^0.4.25;

contract Info {
    	//string EmailId;
    struct Store { //structure for storing data
        uint  id;
        string Name;
    	string EmailId;
	    uint16 Age;
	    uint64 Number;
	    string Gender;
    }
    //logging the event after task gets added.
    event SLogTaskAdded(uint id, string Name, string EmailId, uint16 Age, uint64 Number, string Gender);

    mapping(uint => Store) private stores;
    uint[] private ids;
    
    function SgetTaskCount() //function for getting all the task counts.
            constant
          public  returns (uint length) {
        return ids.length;
    }

    function SgetTaskIdAt(uint index) //function for getting the task id.
            constant
         public   returns (uint id) {
        return ids[index];
    }

    function SgetTask(uint id) //function for getting the task deatail by supplying the task id.
            constant
         public   returns (string Name, string EmailId, uint16 Age, uint64 Number, string Gender) {
        Store storage store = stores[id];
        return (store.Name,
            store.EmailId,
            store.Age,
            store.Number,
            store.Gender
            );
    }

    function SaddTask(uint id, string Name, string EmailId, uint16 Age, uint64 Number, string Gender)//function for adding the task.
           public returns (bool successful) {
        stores[id] = Store({
            id:id,
            Name: Name,
            EmailId: EmailId,
	        Age: Age,
            Number: Number,
            Gender: Gender
            
        });
        ids.push(id);
        emit SLogTaskAdded(id, Name, EmailId, Age, Number, Gender);
        return true;
    }
    
    /*  --------------------------      Teacher     -----------------------------*/
    
    struct TStore { //structure for storing data
        uint tid;
        string tName;
    	string tEmailId;
    	uint16 tAge;
	    uint64 tNumber;
	    string tGender;
        string tEducation;
    }
    //logging the event after task gets added.
    event TLogTaskAdded(uint tid, string tName, string tEmailId, uint16 tAge, uint64 tNumber, string tGender,string tEducation);

    mapping(uint => TStore) private tstores;
    uint[] private tids;

    function TgettTaskCount() //function for getting all the task counts.
            constant
         public   returns (uint length) {
        return tids.length;
    }

    function TgettTaskIdAt(uint index) //function for getting the task id.
            constant
        public    returns (uint tid) {
        return tids[index];
    }

    function TgettTask(uint tid) //function for getting the task deatail by supplying the task id.
            constant
           public returns (string tName, string tEmailId, uint16 tAge, uint64 tNumber, string tGender,string tEducation) {
        TStore storage tstore = tstores[tid];
        return (tstore.tName,
            tstore.tEmailId,
            tstore.tAge,
            tstore.tNumber,
            tstore.tGender,
            tstore.tEducation
            );
    }

    function TaddTask(uint tid, string tName, string tEmailId, uint16 tAge, uint64 tNumber, string tGender,string tEducation)//function for adding the task.
          public  returns (bool successful) {
        tstores[tid] = TStore({
            tid:tid,
            tName: tName,
            tEmailId: tEmailId,
	        tAge: tAge,
            tNumber: tNumber,
            tGender: tGender,
            tEducation:tEducation
        });
        tids.push(tid);
        emit TLogTaskAdded(tid, tName, tEmailId, tAge, tNumber, tGender,tEducation);
        return true;
    }
     /*  --------------------------      Map     -----------------------------*/
/*    
    struct Map { //structure for storing data
       uint mid;
       string mName;
	   string mEmailId;
	   uint16 mAge;
	   uint64 mNumber;
	   string mGender;
       string mEducation;
     }
     event MLogTaskAdded(string mName, string mEmailId, uint16 mAge, uint64 mNumber, string mGender,string mEducation);
    mapping(uint => Map) private mstores;
    uint[] private mids;*/
    
/*    function MgetStudent(uint sid) //function for getting the task deatail by supplying the task id.
            constant
          public  returns (string sName, string sEmailId, uint16 sAge, uint64 sNumber, string sGender) {
      
      
        return SgetTask(sid);
    }
    
       function MgetTeacher(uint tid) //function for getting the task deatail by supplying the task id.
            constant
          public  returns (string tName, string tEmailId, uint16 tAge, uint64 tNumber, string tGender,string tEducation) {
       
        return TgettTask(tid);
    }*/
    function setAl(uint id,uint tid,string Name,string tName)public {
        
        TStore memory t;
        Store memory s;
        
        t.tid=tid;
        s.id=id;
        t.tName=tName;
        s.Name=Name;
    }
    function delete(uint tid)
    {
        delete[tid];
    }
 function  getAl(uint tids)public view  returns(string Name,string tName)
{
/*    
uint[] memory mediaAssetIds = new uint[](tstores[tids]);

    uint numberOfMediaAssets = 0;

    for(uint i = 1; i <= tstores[tids].length;  i++) {
        mediaAssetIds[numberOfMediaAssets] = tstores[tids][i].id;
        numberOfMediaAssets++;
    }
    return mediaAssetIds;
    
    */
    
    
    
    
    
    
    
    
    
     /*   uint tid;
        string Name;
    	string EmailId;
    	uint16 Age;
	    uint64 Number;
	    string Gender;
        string tEducation;
    */    
    
    /*TStore memory t ;
    t.tid=tid;
    t.tName=tName;
    t.tEmailId=tEmailId;
    t.tAge=tAge;
    t.tNumber=tNumber;
    t.tGender=tGender;
    t.tEducation=tEducation;
    */
    //Info i=new Info();
   /* map1.sid=sid;
    map1.sName=sName;
    map1.sEmailId=sEmailId;
    map1.sAge=sAge;
    map1.sNumber=sNumber;
    map1.sGender=sGender;*/
 
   // MgetTeacher(tid);
    //MgetStudent(sid);
   // return(tName,tEmailId,tAge,tNumber,tGender,tEducation);
   //  ids.push(id);
        //emit TLogTaskAdded(tid,tName, tEmailId, tAge, tNumber, tGender,tEducation);
        
        
}
  
    
    
    
    
    
}


   
