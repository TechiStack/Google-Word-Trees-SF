public class Vlog_wordTreeCtrl {
    public List<String> Name{get;set;}
    public List<wordTreeData__c> wtList;
    public Vlog_wordTreeCtrl(){
         Name = new List<String>();
        wtList = [SELECT Id, Name FROM wordTreeData__c];
        for(wordTreeData__c wt:wtList){
           Name.add(wt.Name);
        }
    }

}
