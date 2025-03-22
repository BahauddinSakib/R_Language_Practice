#List
 T_list<- list("AIUB","BRACU","NSU")
 T_list
 
 T_list<- list("AIUB","BRACU","NSU")
 T_list[2]
 
 T_list<- list("AIUB","BRACU","NSU")
 T_list[3]<- "MIT"
 T_list
 
 #add item
 
 T_list<- list("AIUB","BRACU","NSU")
 append(T_list,"EWU")
 
 #remove item
 
 T_list<- list("AIUB","BRACU","NSU","EWU","DIU","UIU")
 n_list<- T_list[-5]
 n_list
 
 T_list<- list("AIUB","BRACU","NSU","EWU","DIU","UIU")
 T_list[3:5]
 
 T_list<- list("AIUB","BRACU","NSU","EWU","DIU","UIU")
 for(x in T_list){
   print(x)
 }
 
 #combile 2 list
 
 list1<- list("a","b","c")
 list2<- list(1,4,7)
 
 list3<- c(list1,list2)
 list3