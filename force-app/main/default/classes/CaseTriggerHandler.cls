public class CaseTriggerHandler {
    public static void LimitNoOfCases(List<Case> caseList) {
        Integer monthNumber = Date.Today().Month();
        Integer yearNumber = Date.Today().Year();
        Integer maxCases = 99;
        List<Case> thisMonthCaseList = [select id,CreatedById,CreatedDate from case where CALENDAR_YEAR(CreatedDate) =:YearNumber and CALENDAR_MONTH(CreatedDate)=:monthnumber and CreatedById=:UserInfo.GetUserId()];
        
        if (thisMonthCaseList.Size()>=maxCases)         
            caseList[0].addError('Too many cases created this month');
    }

}