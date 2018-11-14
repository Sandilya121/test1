pragma solidity ^0.4.6;
 pragma experimental ABIEncoderV2;
 
    contract ST {
        
        struct Teacher{
            string tid;
            string tname;
            string subject;
            string[] subjects;
            string[] classes;
        }
        struct Student{
            string sid;
            string[] sidList;
            string sname;
            string[] snameList;
            string class;
            string[] tidList;
            string[] tnameList;
            string[] subjectsList;
                    mapping(string => Teacher) teacherDetails;
        }
        
        mapping(string => Student) studentDetails;
        string[] studentData;
        
        mapping(string => Teacher) teacherData;
        
        function addStudent(string sid, string sname, string class) public returns (bool success){
                        studentDetails[class].sidList.push(sid);
                        studentDetails[class].snameList.push(sname);
                        studentDetails[class].sid = sid;
                        studentDetails[class].sname = sname;
                        studentDetails[sid].sname = sname;
                        studentDetails[sid].class = class;
                        studentDetails[sname].sid = sid;
                        studentDetails[sname].class = class;
                        return true;
        }
        
        function addTeacher(string tid, string tname, string[] subjects, string[] classes, string class, string subject) public returns (bool success){
                        studentDetails[class].tidList.push(tid);
                        studentDetails[class].tnameList.push(tname);
                        studentDetails[class].subjectsList.push(subject);
                        studentDetails[class].teacherDetails[subject].tid = tid;
                        studentDetails[class].teacherDetails[subject].tname = tname;
                        studentDetails[class].teacherDetails[subject].subjects = subjects;
                        studentDetails[class].teacherDetails[subject].classes = classes;
                        teacherData[tid].tname = tname;
                        teacherData[tid].subjects = subjects;
                        teacherData[tid].subject = subject;
                        teacherData[tid].classes = classes;
                        teacherData[tname].classes = classes;
                        teacherData[tname].subjects = subjects;
                        teacherData[tname].subject = subject;
                        teacherData[tname].tid = tid;
                        teacherData[class].tid = tid;
                        teacherData[class].tname = tname;
                        teacherData[class].subject = subject;
                        studentData.push(class);
                        return true;
        }
                    
        function getTeacherbyId(string tid) public constant returns(string tname, string[] subjects, string[] classes){
            return( teacherData[tid].tname,
                    teacherData[tid].subjects,
                    teacherData[tid].classes);}
        function getTeacherbyName(string tname) public constant returns(string tid, string[] subjects, string[] classes){
            return( teacherData[tname].tid,
                    teacherData[tname].subjects,
                    teacherData[tname].classes);}
                    
        function getStudentbyId(string sid) public constant returns(string sname, string class){
            return( studentDetails[sid].sname,
                    studentDetails[sid].class);}
        function getStudentbyName(string sname) public constant returns(string sid, string class){
            return( studentDetails[sname].sid,
                    studentDetails[sname].class);}
                   
        function getClassDetails(string class) public constant returns(string[] tidList, string[] tnameList, string[] subjectsList, string[] sidList, string[] snameList){
            return(//studentDetails[class].sidList,
            studentDetails[class].tidList,
            studentDetails[class].tnameList,
            studentDetails[class].subjectsList,
            studentDetails[class].sidList,
            studentDetails[class].snameList);}
                   //studentDetails[class].snameList);}
                   
 
    }
