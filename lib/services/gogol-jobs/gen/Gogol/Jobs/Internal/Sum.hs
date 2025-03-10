{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Jobs.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Jobs.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * BatchOperationMetadata_State
    BatchOperationMetadata_State
      ( BatchOperationMetadata_State_STATEUNSPECIFIED,
        BatchOperationMetadata_State_Initializing,
        BatchOperationMetadata_State_Processing,
        BatchOperationMetadata_State_Succeeded,
        BatchOperationMetadata_State_Failed,
        BatchOperationMetadata_State_Cancelling,
        BatchOperationMetadata_State_Cancelled,
        ..
      ),

    -- * CommuteFilter_CommuteMethod
    CommuteFilter_CommuteMethod
      ( CommuteFilter_CommuteMethod_COMMUTEMETHODUNSPECIFIED,
        CommuteFilter_CommuteMethod_Driving,
        CommuteFilter_CommuteMethod_Transit,
        CommuteFilter_CommuteMethod_Walking,
        CommuteFilter_CommuteMethod_Cycling,
        CommuteFilter_CommuteMethod_TRANSITACCESSIBLE,
        ..
      ),

    -- * CommuteFilter_RoadTraffic
    CommuteFilter_RoadTraffic
      ( CommuteFilter_RoadTraffic_ROADTRAFFICUNSPECIFIED,
        CommuteFilter_RoadTraffic_TRAFFICFREE,
        CommuteFilter_RoadTraffic_BUSYHOUR,
        ..
      ),

    -- * Company_Size
    Company_Size
      ( Company_Size_COMPANYSIZEUNSPECIFIED,
        Company_Size_Mini,
        Company_Size_Small,
        Company_Size_Smedium,
        Company_Size_Medium,
        Company_Size_Big,
        Company_Size_Bigger,
        Company_Size_Giant,
        ..
      ),

    -- * CompensationEntry_Type
    CompensationEntry_Type
      ( CompensationEntry_Type_COMPENSATIONTYPEUNSPECIFIED,
        CompensationEntry_Type_Base,
        CompensationEntry_Type_Bonus,
        CompensationEntry_Type_SIGNINGBONUS,
        CompensationEntry_Type_Equity,
        CompensationEntry_Type_PROFITSHARING,
        CompensationEntry_Type_Commissions,
        CompensationEntry_Type_Tips,
        CompensationEntry_Type_OTHERCOMPENSATIONTYPE,
        ..
      ),

    -- * CompensationEntry_Unit
    CompensationEntry_Unit
      ( CompensationEntry_Unit_COMPENSATIONUNITUNSPECIFIED,
        CompensationEntry_Unit_Hourly,
        CompensationEntry_Unit_Daily,
        CompensationEntry_Unit_Weekly,
        CompensationEntry_Unit_Monthly,
        CompensationEntry_Unit_Yearly,
        CompensationEntry_Unit_ONETIME,
        CompensationEntry_Unit_OTHERCOMPENSATIONUNIT,
        ..
      ),

    -- * CompensationFilter_Type
    CompensationFilter_Type
      ( CompensationFilter_Type_FILTERTYPEUNSPECIFIED,
        CompensationFilter_Type_UNITONLY,
        CompensationFilter_Type_UNITANDAMOUNT,
        CompensationFilter_Type_ANNUALIZEDBASEAMOUNT,
        CompensationFilter_Type_ANNUALIZEDTOTALAMOUNT,
        ..
      ),

    -- * CompensationFilter_UnitsItem
    CompensationFilter_UnitsItem
      ( CompensationFilter_UnitsItem_COMPENSATIONUNITUNSPECIFIED,
        CompensationFilter_UnitsItem_Hourly,
        CompensationFilter_UnitsItem_Daily,
        CompensationFilter_UnitsItem_Weekly,
        CompensationFilter_UnitsItem_Monthly,
        CompensationFilter_UnitsItem_Yearly,
        CompensationFilter_UnitsItem_ONETIME,
        CompensationFilter_UnitsItem_OTHERCOMPENSATIONUNIT,
        ..
      ),

    -- * CompletionResult_Type
    CompletionResult_Type
      ( CompletionResult_Type_COMPLETIONTYPEUNSPECIFIED,
        CompletionResult_Type_JOBTITLE,
        CompletionResult_Type_COMPANYNAME,
        CompletionResult_Type_Combined,
        ..
      ),

    -- * CustomRankingInfo_ImportanceLevel
    CustomRankingInfo_ImportanceLevel
      ( CustomRankingInfo_ImportanceLevel_IMPORTANCELEVELUNSPECIFIED,
        CustomRankingInfo_ImportanceLevel_None,
        CustomRankingInfo_ImportanceLevel_Low,
        CustomRankingInfo_ImportanceLevel_Mild,
        CustomRankingInfo_ImportanceLevel_Medium,
        CustomRankingInfo_ImportanceLevel_High,
        CustomRankingInfo_ImportanceLevel_Extreme,
        ..
      ),

    -- * DeviceInfo_DeviceType
    DeviceInfo_DeviceType
      ( DeviceInfo_DeviceType_DEVICETYPEUNSPECIFIED,
        DeviceInfo_DeviceType_Web,
        DeviceInfo_DeviceType_MOBILEWEB,
        DeviceInfo_DeviceType_Android,
        DeviceInfo_DeviceType_Ios,
        DeviceInfo_DeviceType_Bot,
        DeviceInfo_DeviceType_Other,
        ..
      ),

    -- * Job_DegreeTypesItem
    Job_DegreeTypesItem
      ( Job_DegreeTypesItem_DEGREETYPEUNSPECIFIED,
        Job_DegreeTypesItem_PRIMARYEDUCATION,
        Job_DegreeTypesItem_LOWERSECONDARYEDUCATION,
        Job_DegreeTypesItem_UPPERSECONDARYEDUCATION,
        Job_DegreeTypesItem_ADULTREMEDIALEDUCATION,
        Job_DegreeTypesItem_ASSOCIATESOREQUIVALENT,
        Job_DegreeTypesItem_BACHELORSOREQUIVALENT,
        Job_DegreeTypesItem_MASTERSOREQUIVALENT,
        Job_DegreeTypesItem_DOCTORALOREQUIVALENT,
        ..
      ),

    -- * Job_EmploymentTypesItem
    Job_EmploymentTypesItem
      ( Job_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED,
        Job_EmploymentTypesItem_FULLTIME,
        Job_EmploymentTypesItem_PARTTIME,
        Job_EmploymentTypesItem_Contractor,
        Job_EmploymentTypesItem_CONTRACTTOHIRE,
        Job_EmploymentTypesItem_Temporary,
        Job_EmploymentTypesItem_Intern,
        Job_EmploymentTypesItem_Volunteer,
        Job_EmploymentTypesItem_PERDIEM,
        Job_EmploymentTypesItem_FLYINFLYOUT,
        Job_EmploymentTypesItem_OTHEREMPLOYMENTTYPE,
        ..
      ),

    -- * Job_JobBenefitsItem
    Job_JobBenefitsItem
      ( Job_JobBenefitsItem_JOBBENEFITUNSPECIFIED,
        Job_JobBenefitsItem_CHILDCARE,
        Job_JobBenefitsItem_Dental,
        Job_JobBenefitsItem_DOMESTICPARTNER,
        Job_JobBenefitsItem_FLEXIBLEHOURS,
        Job_JobBenefitsItem_Medical,
        Job_JobBenefitsItem_LIFEINSURANCE,
        Job_JobBenefitsItem_PARENTALLEAVE,
        Job_JobBenefitsItem_RETIREMENTPLAN,
        Job_JobBenefitsItem_SICKDAYS,
        Job_JobBenefitsItem_Vacation,
        Job_JobBenefitsItem_Vision,
        ..
      ),

    -- * Job_JobLevel
    Job_JobLevel
      ( Job_JobLevel_JOBLEVELUNSPECIFIED,
        Job_JobLevel_ENTRYLEVEL,
        Job_JobLevel_Experienced,
        Job_JobLevel_Manager,
        Job_JobLevel_Director,
        Job_JobLevel_Executive,
        ..
      ),

    -- * Job_PostingRegion
    Job_PostingRegion
      ( Job_PostingRegion_POSTINGREGIONUNSPECIFIED,
        Job_PostingRegion_ADMINISTRATIVEAREA,
        Job_PostingRegion_Nation,
        Job_PostingRegion_Telecommute,
        ..
      ),

    -- * Job_Visibility
    Job_Visibility
      ( Job_Visibility_VISIBILITYUNSPECIFIED,
        Job_Visibility_ACCOUNTONLY,
        Job_Visibility_SHAREDWITHGOOGLE,
        Job_Visibility_SHAREDWITHPUBLIC,
        ..
      ),

    -- * JobDerivedInfo_JobCategoriesItem
    JobDerivedInfo_JobCategoriesItem
      ( JobDerivedInfo_JobCategoriesItem_JOBCATEGORYUNSPECIFIED,
        JobDerivedInfo_JobCategoriesItem_ACCOUNTINGANDFINANCE,
        JobDerivedInfo_JobCategoriesItem_ADMINISTRATIVEANDOFFICE,
        JobDerivedInfo_JobCategoriesItem_ADVERTISINGANDMARKETING,
        JobDerivedInfo_JobCategoriesItem_ANIMALCARE,
        JobDerivedInfo_JobCategoriesItem_ARTFASHIONANDDESIGN,
        JobDerivedInfo_JobCategoriesItem_BUSINESSOPERATIONS,
        JobDerivedInfo_JobCategoriesItem_CLEANINGANDFACILITIES,
        JobDerivedInfo_JobCategoriesItem_COMPUTERANDIT,
        JobDerivedInfo_JobCategoriesItem_Construction,
        JobDerivedInfo_JobCategoriesItem_CUSTOMERSERVICE,
        JobDerivedInfo_JobCategoriesItem_Education,
        JobDerivedInfo_JobCategoriesItem_ENTERTAINMENTANDTRAVEL,
        JobDerivedInfo_JobCategoriesItem_FARMINGANDOUTDOORS,
        JobDerivedInfo_JobCategoriesItem_Healthcare,
        JobDerivedInfo_JobCategoriesItem_HUMANRESOURCES,
        JobDerivedInfo_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR,
        JobDerivedInfo_JobCategoriesItem_Legal,
        JobDerivedInfo_JobCategoriesItem_Management,
        JobDerivedInfo_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE,
        JobDerivedInfo_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING,
        JobDerivedInfo_JobCategoriesItem_OILGASANDMINING,
        JobDerivedInfo_JobCategoriesItem_PERSONALCAREANDSERVICES,
        JobDerivedInfo_JobCategoriesItem_PROTECTIVESERVICES,
        JobDerivedInfo_JobCategoriesItem_REALESTATE,
        JobDerivedInfo_JobCategoriesItem_RESTAURANTANDHOSPITALITY,
        JobDerivedInfo_JobCategoriesItem_SALESANDRETAIL,
        JobDerivedInfo_JobCategoriesItem_SCIENCEANDENGINEERING,
        JobDerivedInfo_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT,
        JobDerivedInfo_JobCategoriesItem_SPORTSFITNESSANDRECREATION,
        JobDerivedInfo_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS,
        ..
      ),

    -- * JobEvent_Type
    JobEvent_Type
      ( JobEvent_Type_JOBEVENTTYPEUNSPECIFIED,
        JobEvent_Type_Impression,
        JobEvent_Type_View,
        JobEvent_Type_VIEWREDIRECT,
        JobEvent_Type_APPLICATIONSTART,
        JobEvent_Type_APPLICATIONFINISH,
        JobEvent_Type_APPLICATIONQUICKSUBMISSION,
        JobEvent_Type_APPLICATIONREDIRECT,
        JobEvent_Type_APPLICATIONSTARTFROMSEARCH,
        JobEvent_Type_APPLICATIONREDIRECTFROMSEARCH,
        JobEvent_Type_APPLICATIONCOMPANYSUBMIT,
        JobEvent_Type_Bookmark,
        JobEvent_Type_Notification,
        JobEvent_Type_Hired,
        JobEvent_Type_SENTCV,
        JobEvent_Type_INTERVIEWGRANTED,
        ..
      ),

    -- * JobQuery_EmploymentTypesItem
    JobQuery_EmploymentTypesItem
      ( JobQuery_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED,
        JobQuery_EmploymentTypesItem_FULLTIME,
        JobQuery_EmploymentTypesItem_PARTTIME,
        JobQuery_EmploymentTypesItem_Contractor,
        JobQuery_EmploymentTypesItem_CONTRACTTOHIRE,
        JobQuery_EmploymentTypesItem_Temporary,
        JobQuery_EmploymentTypesItem_Intern,
        JobQuery_EmploymentTypesItem_Volunteer,
        JobQuery_EmploymentTypesItem_PERDIEM,
        JobQuery_EmploymentTypesItem_FLYINFLYOUT,
        JobQuery_EmploymentTypesItem_OTHEREMPLOYMENTTYPE,
        ..
      ),

    -- * JobQuery_JobCategoriesItem
    JobQuery_JobCategoriesItem
      ( JobQuery_JobCategoriesItem_JOBCATEGORYUNSPECIFIED,
        JobQuery_JobCategoriesItem_ACCOUNTINGANDFINANCE,
        JobQuery_JobCategoriesItem_ADMINISTRATIVEANDOFFICE,
        JobQuery_JobCategoriesItem_ADVERTISINGANDMARKETING,
        JobQuery_JobCategoriesItem_ANIMALCARE,
        JobQuery_JobCategoriesItem_ARTFASHIONANDDESIGN,
        JobQuery_JobCategoriesItem_BUSINESSOPERATIONS,
        JobQuery_JobCategoriesItem_CLEANINGANDFACILITIES,
        JobQuery_JobCategoriesItem_COMPUTERANDIT,
        JobQuery_JobCategoriesItem_Construction,
        JobQuery_JobCategoriesItem_CUSTOMERSERVICE,
        JobQuery_JobCategoriesItem_Education,
        JobQuery_JobCategoriesItem_ENTERTAINMENTANDTRAVEL,
        JobQuery_JobCategoriesItem_FARMINGANDOUTDOORS,
        JobQuery_JobCategoriesItem_Healthcare,
        JobQuery_JobCategoriesItem_HUMANRESOURCES,
        JobQuery_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR,
        JobQuery_JobCategoriesItem_Legal,
        JobQuery_JobCategoriesItem_Management,
        JobQuery_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE,
        JobQuery_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING,
        JobQuery_JobCategoriesItem_OILGASANDMINING,
        JobQuery_JobCategoriesItem_PERSONALCAREANDSERVICES,
        JobQuery_JobCategoriesItem_PROTECTIVESERVICES,
        JobQuery_JobCategoriesItem_REALESTATE,
        JobQuery_JobCategoriesItem_RESTAURANTANDHOSPITALITY,
        JobQuery_JobCategoriesItem_SALESANDRETAIL,
        JobQuery_JobCategoriesItem_SCIENCEANDENGINEERING,
        JobQuery_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT,
        JobQuery_JobCategoriesItem_SPORTSFITNESSANDRECREATION,
        JobQuery_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS,
        ..
      ),

    -- * Location_LocationType
    Location_LocationType
      ( Location_LocationType_LOCATIONTYPEUNSPECIFIED,
        Location_LocationType_Country,
        Location_LocationType_ADMINISTRATIVEAREA,
        Location_LocationType_SUBADMINISTRATIVEAREA,
        Location_LocationType_Locality,
        Location_LocationType_POSTALCODE,
        Location_LocationType_SUBLOCALITY,
        Location_LocationType_SUB_LOCALITY_1,
        Location_LocationType_SUB_LOCALITY_2,
        Location_LocationType_Neighborhood,
        Location_LocationType_STREETADDRESS,
        ..
      ),

    -- * LocationFilter_TelecommutePreference
    LocationFilter_TelecommutePreference
      ( LocationFilter_TelecommutePreference_TELECOMMUTEPREFERENCEUNSPECIFIED,
        LocationFilter_TelecommutePreference_TELECOMMUTEEXCLUDED,
        LocationFilter_TelecommutePreference_TELECOMMUTEALLOWED,
        LocationFilter_TelecommutePreference_TELECOMMUTEJOBSEXCLUDED,
        ..
      ),

    -- * ProcessingOptions_HtmlSanitization
    ProcessingOptions_HtmlSanitization
      ( ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONUNSPECIFIED,
        ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONDISABLED,
        ProcessingOptions_HtmlSanitization_SIMPLEFORMATTINGONLY,
        ..
      ),

    -- * SearchJobsRequest_DiversificationLevel
    SearchJobsRequest_DiversificationLevel
      ( SearchJobsRequest_DiversificationLevel_DIVERSIFICATIONLEVELUNSPECIFIED,
        SearchJobsRequest_DiversificationLevel_Disabled,
        SearchJobsRequest_DiversificationLevel_Simple,
        SearchJobsRequest_DiversificationLevel_ONEPERCOMPANY,
        SearchJobsRequest_DiversificationLevel_TWOPERCOMPANY,
        SearchJobsRequest_DiversificationLevel_MAXTHREEPERCOMPANY,
        SearchJobsRequest_DiversificationLevel_DIVERSIFYBYLOOSERSIMILARITY,
        ..
      ),

    -- * SearchJobsRequest_JobView
    SearchJobsRequest_JobView
      ( SearchJobsRequest_JobView_JOBVIEWUNSPECIFIED,
        SearchJobsRequest_JobView_JOBVIEWIDONLY,
        SearchJobsRequest_JobView_JOBVIEWMINIMAL,
        SearchJobsRequest_JobView_JOBVIEWSMALL,
        SearchJobsRequest_JobView_JOBVIEWFULL,
        ..
      ),

    -- * SearchJobsRequest_KeywordMatchMode
    SearchJobsRequest_KeywordMatchMode
      ( SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHMODEUNSPECIFIED,
        SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHDISABLED,
        SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHALL,
        SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHTITLEONLY,
        ..
      ),

    -- * SearchJobsRequest_RelevanceThreshold
    SearchJobsRequest_RelevanceThreshold
      ( SearchJobsRequest_RelevanceThreshold_RELEVANCETHRESHOLDUNSPECIFIED,
        SearchJobsRequest_RelevanceThreshold_Lowest,
        SearchJobsRequest_RelevanceThreshold_Low,
        SearchJobsRequest_RelevanceThreshold_Medium,
        SearchJobsRequest_RelevanceThreshold_High,
        ..
      ),

    -- * SearchJobsRequest_SearchMode
    SearchJobsRequest_SearchMode
      ( SearchJobsRequest_SearchMode_SEARCHMODEUNSPECIFIED,
        SearchJobsRequest_SearchMode_JOBSEARCH,
        SearchJobsRequest_SearchMode_FEATUREDJOBSEARCH,
        ..
      ),

    -- * ProjectsTenantsCompleteQueryScope
    ProjectsTenantsCompleteQueryScope
      ( ProjectsTenantsCompleteQueryScope_COMPLETIONSCOPEUNSPECIFIED,
        ProjectsTenantsCompleteQueryScope_Tenant,
        ProjectsTenantsCompleteQueryScope_Public,
        ..
      ),

    -- * ProjectsTenantsCompleteQueryType
    ProjectsTenantsCompleteQueryType
      ( ProjectsTenantsCompleteQueryType_COMPLETIONTYPEUNSPECIFIED,
        ProjectsTenantsCompleteQueryType_JOBTITLE,
        ProjectsTenantsCompleteQueryType_COMPANYNAME,
        ProjectsTenantsCompleteQueryType_Combined,
        ..
      ),

    -- * ProjectsTenantsJobsListJobView
    ProjectsTenantsJobsListJobView
      ( ProjectsTenantsJobsListJobView_JOBVIEWUNSPECIFIED,
        ProjectsTenantsJobsListJobView_JOBVIEWIDONLY,
        ProjectsTenantsJobsListJobView_JOBVIEWMINIMAL,
        ProjectsTenantsJobsListJobView_JOBVIEWSMALL,
        ProjectsTenantsJobsListJobView_JOBVIEWFULL,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The state of a long running operation.
newtype BatchOperationMetadata_State = BatchOperationMetadata_State {fromBatchOperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern BatchOperationMetadata_State_STATEUNSPECIFIED :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_STATEUNSPECIFIED = BatchOperationMetadata_State "STATE_UNSPECIFIED"

-- | The batch operation is being prepared for processing.
pattern BatchOperationMetadata_State_Initializing :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Initializing = BatchOperationMetadata_State "INITIALIZING"

-- | The batch operation is actively being processed.
pattern BatchOperationMetadata_State_Processing :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Processing = BatchOperationMetadata_State "PROCESSING"

-- | The batch operation is processed, and at least one item has been successfully processed.
pattern BatchOperationMetadata_State_Succeeded :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Succeeded = BatchOperationMetadata_State "SUCCEEDED"

-- | The batch operation is done and no item has been successfully processed.
pattern BatchOperationMetadata_State_Failed :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Failed = BatchOperationMetadata_State "FAILED"

-- | The batch operation is in the process of cancelling after google.longrunning.Operations.CancelOperation is called.
pattern BatchOperationMetadata_State_Cancelling :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Cancelling = BatchOperationMetadata_State "CANCELLING"

-- | The batch operation is done after google.longrunning.Operations.CancelOperation is called. Any items processed before cancelling are returned in the response.
pattern BatchOperationMetadata_State_Cancelled :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Cancelled = BatchOperationMetadata_State "CANCELLED"

{-# COMPLETE
  BatchOperationMetadata_State_STATEUNSPECIFIED,
  BatchOperationMetadata_State_Initializing,
  BatchOperationMetadata_State_Processing,
  BatchOperationMetadata_State_Succeeded,
  BatchOperationMetadata_State_Failed,
  BatchOperationMetadata_State_Cancelling,
  BatchOperationMetadata_State_Cancelled,
  BatchOperationMetadata_State
  #-}

-- | Required. The method of transportation to calculate the commute time for.
newtype CommuteFilter_CommuteMethod = CommuteFilter_CommuteMethod {fromCommuteFilter_CommuteMethod :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Commute method isn\'t specified.
pattern CommuteFilter_CommuteMethod_COMMUTEMETHODUNSPECIFIED :: CommuteFilter_CommuteMethod
pattern CommuteFilter_CommuteMethod_COMMUTEMETHODUNSPECIFIED = CommuteFilter_CommuteMethod "COMMUTE_METHOD_UNSPECIFIED"

-- | Commute time is calculated based on driving time.
pattern CommuteFilter_CommuteMethod_Driving :: CommuteFilter_CommuteMethod
pattern CommuteFilter_CommuteMethod_Driving = CommuteFilter_CommuteMethod "DRIVING"

-- | Commute time is calculated based on public transit including bus, metro, subway, and so on.
pattern CommuteFilter_CommuteMethod_Transit :: CommuteFilter_CommuteMethod
pattern CommuteFilter_CommuteMethod_Transit = CommuteFilter_CommuteMethod "TRANSIT"

-- | Commute time is calculated based on walking time.
pattern CommuteFilter_CommuteMethod_Walking :: CommuteFilter_CommuteMethod
pattern CommuteFilter_CommuteMethod_Walking = CommuteFilter_CommuteMethod "WALKING"

-- | Commute time is calculated based on biking time.
pattern CommuteFilter_CommuteMethod_Cycling :: CommuteFilter_CommuteMethod
pattern CommuteFilter_CommuteMethod_Cycling = CommuteFilter_CommuteMethod "CYCLING"

-- | Commute time is calculated based on public transit that is wheelchair accessible.
pattern CommuteFilter_CommuteMethod_TRANSITACCESSIBLE :: CommuteFilter_CommuteMethod
pattern CommuteFilter_CommuteMethod_TRANSITACCESSIBLE = CommuteFilter_CommuteMethod "TRANSIT_ACCESSIBLE"

{-# COMPLETE
  CommuteFilter_CommuteMethod_COMMUTEMETHODUNSPECIFIED,
  CommuteFilter_CommuteMethod_Driving,
  CommuteFilter_CommuteMethod_Transit,
  CommuteFilter_CommuteMethod_Walking,
  CommuteFilter_CommuteMethod_Cycling,
  CommuteFilter_CommuteMethod_TRANSITACCESSIBLE,
  CommuteFilter_CommuteMethod
  #-}

-- | Specifies the traffic density to use when calculating commute time.
newtype CommuteFilter_RoadTraffic = CommuteFilter_RoadTraffic {fromCommuteFilter_RoadTraffic :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Road traffic situation isn\'t specified.
pattern CommuteFilter_RoadTraffic_ROADTRAFFICUNSPECIFIED :: CommuteFilter_RoadTraffic
pattern CommuteFilter_RoadTraffic_ROADTRAFFICUNSPECIFIED = CommuteFilter_RoadTraffic "ROAD_TRAFFIC_UNSPECIFIED"

-- | Optimal commute time without considering any traffic impact.
pattern CommuteFilter_RoadTraffic_TRAFFICFREE :: CommuteFilter_RoadTraffic
pattern CommuteFilter_RoadTraffic_TRAFFICFREE = CommuteFilter_RoadTraffic "TRAFFIC_FREE"

-- | Commute time calculation takes in account the peak traffic impact.
pattern CommuteFilter_RoadTraffic_BUSYHOUR :: CommuteFilter_RoadTraffic
pattern CommuteFilter_RoadTraffic_BUSYHOUR = CommuteFilter_RoadTraffic "BUSY_HOUR"

{-# COMPLETE
  CommuteFilter_RoadTraffic_ROADTRAFFICUNSPECIFIED,
  CommuteFilter_RoadTraffic_TRAFFICFREE,
  CommuteFilter_RoadTraffic_BUSYHOUR,
  CommuteFilter_RoadTraffic
  #-}

-- | The employer\'s company size.
newtype Company_Size = Company_Size {fromCompany_Size :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value if the size isn\'t specified.
pattern Company_Size_COMPANYSIZEUNSPECIFIED :: Company_Size
pattern Company_Size_COMPANYSIZEUNSPECIFIED = Company_Size "COMPANY_SIZE_UNSPECIFIED"

-- | The company has less than 50 employees.
pattern Company_Size_Mini :: Company_Size
pattern Company_Size_Mini = Company_Size "MINI"

-- | The company has between 50 and 99 employees.
pattern Company_Size_Small :: Company_Size
pattern Company_Size_Small = Company_Size "SMALL"

-- | The company has between 100 and 499 employees.
pattern Company_Size_Smedium :: Company_Size
pattern Company_Size_Smedium = Company_Size "SMEDIUM"

-- | The company has between 500 and 999 employees.
pattern Company_Size_Medium :: Company_Size
pattern Company_Size_Medium = Company_Size "MEDIUM"

-- | The company has between 1,000 and 4,999 employees.
pattern Company_Size_Big :: Company_Size
pattern Company_Size_Big = Company_Size "BIG"

-- | The company has between 5,000 and 9,999 employees.
pattern Company_Size_Bigger :: Company_Size
pattern Company_Size_Bigger = Company_Size "BIGGER"

-- | The company has 10,000 or more employees.
pattern Company_Size_Giant :: Company_Size
pattern Company_Size_Giant = Company_Size "GIANT"

{-# COMPLETE
  Company_Size_COMPANYSIZEUNSPECIFIED,
  Company_Size_Mini,
  Company_Size_Small,
  Company_Size_Smedium,
  Company_Size_Medium,
  Company_Size_Big,
  Company_Size_Bigger,
  Company_Size_Giant,
  Company_Size
  #-}

-- | Compensation type. Default is CompensationType.COMPENSATION/TYPE/UNSPECIFIED.
newtype CompensationEntry_Type = CompensationEntry_Type {fromCompensationEntry_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern CompensationEntry_Type_COMPENSATIONTYPEUNSPECIFIED :: CompensationEntry_Type
pattern CompensationEntry_Type_COMPENSATIONTYPEUNSPECIFIED = CompensationEntry_Type "COMPENSATION_TYPE_UNSPECIFIED"

-- | Base compensation: Refers to the fixed amount of money paid to an employee by an employer in return for work performed. Base compensation does not include benefits, bonuses or any other potential compensation from an employer.
pattern CompensationEntry_Type_Base :: CompensationEntry_Type
pattern CompensationEntry_Type_Base = CompensationEntry_Type "BASE"

-- | Bonus.
pattern CompensationEntry_Type_Bonus :: CompensationEntry_Type
pattern CompensationEntry_Type_Bonus = CompensationEntry_Type "BONUS"

-- | Signing bonus.
pattern CompensationEntry_Type_SIGNINGBONUS :: CompensationEntry_Type
pattern CompensationEntry_Type_SIGNINGBONUS = CompensationEntry_Type "SIGNING_BONUS"

-- | Equity.
pattern CompensationEntry_Type_Equity :: CompensationEntry_Type
pattern CompensationEntry_Type_Equity = CompensationEntry_Type "EQUITY"

-- | Profit sharing.
pattern CompensationEntry_Type_PROFITSHARING :: CompensationEntry_Type
pattern CompensationEntry_Type_PROFITSHARING = CompensationEntry_Type "PROFIT_SHARING"

-- | Commission.
pattern CompensationEntry_Type_Commissions :: CompensationEntry_Type
pattern CompensationEntry_Type_Commissions = CompensationEntry_Type "COMMISSIONS"

-- | Tips.
pattern CompensationEntry_Type_Tips :: CompensationEntry_Type
pattern CompensationEntry_Type_Tips = CompensationEntry_Type "TIPS"

-- | Other compensation type.
pattern CompensationEntry_Type_OTHERCOMPENSATIONTYPE :: CompensationEntry_Type
pattern CompensationEntry_Type_OTHERCOMPENSATIONTYPE = CompensationEntry_Type "OTHER_COMPENSATION_TYPE"

{-# COMPLETE
  CompensationEntry_Type_COMPENSATIONTYPEUNSPECIFIED,
  CompensationEntry_Type_Base,
  CompensationEntry_Type_Bonus,
  CompensationEntry_Type_SIGNINGBONUS,
  CompensationEntry_Type_Equity,
  CompensationEntry_Type_PROFITSHARING,
  CompensationEntry_Type_Commissions,
  CompensationEntry_Type_Tips,
  CompensationEntry_Type_OTHERCOMPENSATIONTYPE,
  CompensationEntry_Type
  #-}

-- | Frequency of the specified amount. Default is CompensationUnit.COMPENSATION/UNIT/UNSPECIFIED.
newtype CompensationEntry_Unit = CompensationEntry_Unit {fromCompensationEntry_Unit :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern CompensationEntry_Unit_COMPENSATIONUNITUNSPECIFIED :: CompensationEntry_Unit
pattern CompensationEntry_Unit_COMPENSATIONUNITUNSPECIFIED = CompensationEntry_Unit "COMPENSATION_UNIT_UNSPECIFIED"

-- | Hourly.
pattern CompensationEntry_Unit_Hourly :: CompensationEntry_Unit
pattern CompensationEntry_Unit_Hourly = CompensationEntry_Unit "HOURLY"

-- | Daily.
pattern CompensationEntry_Unit_Daily :: CompensationEntry_Unit
pattern CompensationEntry_Unit_Daily = CompensationEntry_Unit "DAILY"

-- | Weekly
pattern CompensationEntry_Unit_Weekly :: CompensationEntry_Unit
pattern CompensationEntry_Unit_Weekly = CompensationEntry_Unit "WEEKLY"

-- | Monthly.
pattern CompensationEntry_Unit_Monthly :: CompensationEntry_Unit
pattern CompensationEntry_Unit_Monthly = CompensationEntry_Unit "MONTHLY"

-- | Yearly.
pattern CompensationEntry_Unit_Yearly :: CompensationEntry_Unit
pattern CompensationEntry_Unit_Yearly = CompensationEntry_Unit "YEARLY"

-- | One time.
pattern CompensationEntry_Unit_ONETIME :: CompensationEntry_Unit
pattern CompensationEntry_Unit_ONETIME = CompensationEntry_Unit "ONE_TIME"

-- | Other compensation units.
pattern CompensationEntry_Unit_OTHERCOMPENSATIONUNIT :: CompensationEntry_Unit
pattern CompensationEntry_Unit_OTHERCOMPENSATIONUNIT = CompensationEntry_Unit "OTHER_COMPENSATION_UNIT"

{-# COMPLETE
  CompensationEntry_Unit_COMPENSATIONUNITUNSPECIFIED,
  CompensationEntry_Unit_Hourly,
  CompensationEntry_Unit_Daily,
  CompensationEntry_Unit_Weekly,
  CompensationEntry_Unit_Monthly,
  CompensationEntry_Unit_Yearly,
  CompensationEntry_Unit_ONETIME,
  CompensationEntry_Unit_OTHERCOMPENSATIONUNIT,
  CompensationEntry_Unit
  #-}

-- | Required. Type of filter.
newtype CompensationFilter_Type = CompensationFilter_Type {fromCompensationFilter_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Filter type unspecified. Position holder, INVALID, should never be used.
pattern CompensationFilter_Type_FILTERTYPEUNSPECIFIED :: CompensationFilter_Type
pattern CompensationFilter_Type_FILTERTYPEUNSPECIFIED = CompensationFilter_Type "FILTER_TYPE_UNSPECIFIED"

-- | Filter by @base compensation entry\'s@ unit. A job is a match if and only if the job contains a base CompensationEntry and the base CompensationEntry\'s unit matches provided units. Populate one or more units. See CompensationInfo.CompensationEntry for definition of base compensation entry.
pattern CompensationFilter_Type_UNITONLY :: CompensationFilter_Type
pattern CompensationFilter_Type_UNITONLY = CompensationFilter_Type "UNIT_ONLY"

-- | Filter by @base compensation entry\'s@ unit and amount \/ range. A job is a match if and only if the job contains a base CompensationEntry, and the base entry\'s unit matches provided CompensationUnit and amount or range overlaps with provided CompensationRange. See CompensationInfo.CompensationEntry for definition of base compensation entry. Set exactly one units and populate range.
pattern CompensationFilter_Type_UNITANDAMOUNT :: CompensationFilter_Type
pattern CompensationFilter_Type_UNITANDAMOUNT = CompensationFilter_Type "UNIT_AND_AMOUNT"

-- | Filter by annualized base compensation amount and @base compensation entry\'s@ unit. Populate range and zero or more units.
pattern CompensationFilter_Type_ANNUALIZEDBASEAMOUNT :: CompensationFilter_Type
pattern CompensationFilter_Type_ANNUALIZEDBASEAMOUNT = CompensationFilter_Type "ANNUALIZED_BASE_AMOUNT"

-- | Filter by annualized total compensation amount and @base compensation entry\'s@ unit . Populate range and zero or more units.
pattern CompensationFilter_Type_ANNUALIZEDTOTALAMOUNT :: CompensationFilter_Type
pattern CompensationFilter_Type_ANNUALIZEDTOTALAMOUNT = CompensationFilter_Type "ANNUALIZED_TOTAL_AMOUNT"

{-# COMPLETE
  CompensationFilter_Type_FILTERTYPEUNSPECIFIED,
  CompensationFilter_Type_UNITONLY,
  CompensationFilter_Type_UNITANDAMOUNT,
  CompensationFilter_Type_ANNUALIZEDBASEAMOUNT,
  CompensationFilter_Type_ANNUALIZEDTOTALAMOUNT,
  CompensationFilter_Type
  #-}

newtype CompensationFilter_UnitsItem = CompensationFilter_UnitsItem {fromCompensationFilter_UnitsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern CompensationFilter_UnitsItem_COMPENSATIONUNITUNSPECIFIED :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_COMPENSATIONUNITUNSPECIFIED = CompensationFilter_UnitsItem "COMPENSATION_UNIT_UNSPECIFIED"

-- | Hourly.
pattern CompensationFilter_UnitsItem_Hourly :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_Hourly = CompensationFilter_UnitsItem "HOURLY"

-- | Daily.
pattern CompensationFilter_UnitsItem_Daily :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_Daily = CompensationFilter_UnitsItem "DAILY"

-- | Weekly
pattern CompensationFilter_UnitsItem_Weekly :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_Weekly = CompensationFilter_UnitsItem "WEEKLY"

-- | Monthly.
pattern CompensationFilter_UnitsItem_Monthly :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_Monthly = CompensationFilter_UnitsItem "MONTHLY"

-- | Yearly.
pattern CompensationFilter_UnitsItem_Yearly :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_Yearly = CompensationFilter_UnitsItem "YEARLY"

-- | One time.
pattern CompensationFilter_UnitsItem_ONETIME :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_ONETIME = CompensationFilter_UnitsItem "ONE_TIME"

-- | Other compensation units.
pattern CompensationFilter_UnitsItem_OTHERCOMPENSATIONUNIT :: CompensationFilter_UnitsItem
pattern CompensationFilter_UnitsItem_OTHERCOMPENSATIONUNIT = CompensationFilter_UnitsItem "OTHER_COMPENSATION_UNIT"

{-# COMPLETE
  CompensationFilter_UnitsItem_COMPENSATIONUNITUNSPECIFIED,
  CompensationFilter_UnitsItem_Hourly,
  CompensationFilter_UnitsItem_Daily,
  CompensationFilter_UnitsItem_Weekly,
  CompensationFilter_UnitsItem_Monthly,
  CompensationFilter_UnitsItem_Yearly,
  CompensationFilter_UnitsItem_ONETIME,
  CompensationFilter_UnitsItem_OTHERCOMPENSATIONUNIT,
  CompensationFilter_UnitsItem
  #-}

-- | The completion topic.
newtype CompletionResult_Type = CompletionResult_Type {fromCompletionResult_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern CompletionResult_Type_COMPLETIONTYPEUNSPECIFIED :: CompletionResult_Type
pattern CompletionResult_Type_COMPLETIONTYPEUNSPECIFIED = CompletionResult_Type "COMPLETION_TYPE_UNSPECIFIED"

-- | Suggest job titles for jobs autocomplete. For CompletionType.JOB/TITLE type, only open jobs with the same language/codes are returned.
pattern CompletionResult_Type_JOBTITLE :: CompletionResult_Type
pattern CompletionResult_Type_JOBTITLE = CompletionResult_Type "JOB_TITLE"

-- | Suggest company names for jobs autocomplete. For CompletionType.COMPANY/NAME type, only companies having open jobs with the same language/codes are returned.
pattern CompletionResult_Type_COMPANYNAME :: CompletionResult_Type
pattern CompletionResult_Type_COMPANYNAME = CompletionResult_Type "COMPANY_NAME"

-- | Suggest both job titles and company names for jobs autocomplete. For CompletionType.COMBINED type, only open jobs with the same language/codes or companies having open jobs with the same language/codes are returned.
pattern CompletionResult_Type_Combined :: CompletionResult_Type
pattern CompletionResult_Type_Combined = CompletionResult_Type "COMBINED"

{-# COMPLETE
  CompletionResult_Type_COMPLETIONTYPEUNSPECIFIED,
  CompletionResult_Type_JOBTITLE,
  CompletionResult_Type_COMPANYNAME,
  CompletionResult_Type_Combined,
  CompletionResult_Type
  #-}

-- | Required. Controls over how important the score of CustomRankingInfo.ranking_expression gets applied to job\'s final ranking position. An error is thrown if not specified.
newtype CustomRankingInfo_ImportanceLevel = CustomRankingInfo_ImportanceLevel {fromCustomRankingInfo_ImportanceLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value if the importance level isn\'t specified.
pattern CustomRankingInfo_ImportanceLevel_IMPORTANCELEVELUNSPECIFIED :: CustomRankingInfo_ImportanceLevel
pattern CustomRankingInfo_ImportanceLevel_IMPORTANCELEVELUNSPECIFIED = CustomRankingInfo_ImportanceLevel "IMPORTANCE_LEVEL_UNSPECIFIED"

-- | The given ranking expression is of None importance, existing relevance score (determined by API algorithm) dominates job\'s final ranking position.
pattern CustomRankingInfo_ImportanceLevel_None :: CustomRankingInfo_ImportanceLevel
pattern CustomRankingInfo_ImportanceLevel_None = CustomRankingInfo_ImportanceLevel "NONE"

-- | The given ranking expression is of Low importance in terms of job\'s final ranking position compared to existing relevance score (determined by API algorithm).
pattern CustomRankingInfo_ImportanceLevel_Low :: CustomRankingInfo_ImportanceLevel
pattern CustomRankingInfo_ImportanceLevel_Low = CustomRankingInfo_ImportanceLevel "LOW"

-- | The given ranking expression is of Mild importance in terms of job\'s final ranking position compared to existing relevance score (determined by API algorithm).
pattern CustomRankingInfo_ImportanceLevel_Mild :: CustomRankingInfo_ImportanceLevel
pattern CustomRankingInfo_ImportanceLevel_Mild = CustomRankingInfo_ImportanceLevel "MILD"

-- | The given ranking expression is of Medium importance in terms of job\'s final ranking position compared to existing relevance score (determined by API algorithm).
pattern CustomRankingInfo_ImportanceLevel_Medium :: CustomRankingInfo_ImportanceLevel
pattern CustomRankingInfo_ImportanceLevel_Medium = CustomRankingInfo_ImportanceLevel "MEDIUM"

-- | The given ranking expression is of High importance in terms of job\'s final ranking position compared to existing relevance score (determined by API algorithm).
pattern CustomRankingInfo_ImportanceLevel_High :: CustomRankingInfo_ImportanceLevel
pattern CustomRankingInfo_ImportanceLevel_High = CustomRankingInfo_ImportanceLevel "HIGH"

-- | The given ranking expression is of Extreme importance, and dominates job\'s final ranking position with existing relevance score (determined by API algorithm) ignored.
pattern CustomRankingInfo_ImportanceLevel_Extreme :: CustomRankingInfo_ImportanceLevel
pattern CustomRankingInfo_ImportanceLevel_Extreme = CustomRankingInfo_ImportanceLevel "EXTREME"

{-# COMPLETE
  CustomRankingInfo_ImportanceLevel_IMPORTANCELEVELUNSPECIFIED,
  CustomRankingInfo_ImportanceLevel_None,
  CustomRankingInfo_ImportanceLevel_Low,
  CustomRankingInfo_ImportanceLevel_Mild,
  CustomRankingInfo_ImportanceLevel_Medium,
  CustomRankingInfo_ImportanceLevel_High,
  CustomRankingInfo_ImportanceLevel_Extreme,
  CustomRankingInfo_ImportanceLevel
  #-}

-- | Type of the device.
newtype DeviceInfo_DeviceType = DeviceInfo_DeviceType {fromDeviceInfo_DeviceType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The device type isn\'t specified.
pattern DeviceInfo_DeviceType_DEVICETYPEUNSPECIFIED :: DeviceInfo_DeviceType
pattern DeviceInfo_DeviceType_DEVICETYPEUNSPECIFIED = DeviceInfo_DeviceType "DEVICE_TYPE_UNSPECIFIED"

-- | A desktop web browser, such as, Chrome, Firefox, Safari, or Internet Explorer)
pattern DeviceInfo_DeviceType_Web :: DeviceInfo_DeviceType
pattern DeviceInfo_DeviceType_Web = DeviceInfo_DeviceType "WEB"

-- | A mobile device web browser, such as a phone or tablet with a Chrome browser.
pattern DeviceInfo_DeviceType_MOBILEWEB :: DeviceInfo_DeviceType
pattern DeviceInfo_DeviceType_MOBILEWEB = DeviceInfo_DeviceType "MOBILE_WEB"

-- | An Android device native application.
pattern DeviceInfo_DeviceType_Android :: DeviceInfo_DeviceType
pattern DeviceInfo_DeviceType_Android = DeviceInfo_DeviceType "ANDROID"

-- | An iOS device native application.
pattern DeviceInfo_DeviceType_Ios :: DeviceInfo_DeviceType
pattern DeviceInfo_DeviceType_Ios = DeviceInfo_DeviceType "IOS"

-- | A bot, as opposed to a device operated by human beings, such as a web crawler.
pattern DeviceInfo_DeviceType_Bot :: DeviceInfo_DeviceType
pattern DeviceInfo_DeviceType_Bot = DeviceInfo_DeviceType "BOT"

-- | Other devices types.
pattern DeviceInfo_DeviceType_Other :: DeviceInfo_DeviceType
pattern DeviceInfo_DeviceType_Other = DeviceInfo_DeviceType "OTHER"

{-# COMPLETE
  DeviceInfo_DeviceType_DEVICETYPEUNSPECIFIED,
  DeviceInfo_DeviceType_Web,
  DeviceInfo_DeviceType_MOBILEWEB,
  DeviceInfo_DeviceType_Android,
  DeviceInfo_DeviceType_Ios,
  DeviceInfo_DeviceType_Bot,
  DeviceInfo_DeviceType_Other,
  DeviceInfo_DeviceType
  #-}

newtype Job_DegreeTypesItem = Job_DegreeTypesItem {fromJob_DegreeTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Represents no degree, or early childhood education. Maps to ISCED code 0. Ex) Kindergarten
pattern Job_DegreeTypesItem_DEGREETYPEUNSPECIFIED :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_DEGREETYPEUNSPECIFIED = Job_DegreeTypesItem "DEGREE_TYPE_UNSPECIFIED"

-- | Primary education which is typically the first stage of compulsory education. ISCED code 1. Ex) Elementary school
pattern Job_DegreeTypesItem_PRIMARYEDUCATION :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_PRIMARYEDUCATION = Job_DegreeTypesItem "PRIMARY_EDUCATION"

-- | Lower secondary education; First stage of secondary education building on primary education, typically with a more subject-oriented curriculum. ISCED code 2. Ex) Middle school
pattern Job_DegreeTypesItem_LOWERSECONDARYEDUCATION :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_LOWERSECONDARYEDUCATION = Job_DegreeTypesItem "LOWER_SECONDARY_EDUCATION"

-- | Middle education; Second\/final stage of secondary education preparing for tertiary education and\/or providing skills relevant to employment. Usually with an increased range of subject options and streams. ISCED code 3. Ex) High school
pattern Job_DegreeTypesItem_UPPERSECONDARYEDUCATION :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_UPPERSECONDARYEDUCATION = Job_DegreeTypesItem "UPPER_SECONDARY_EDUCATION"

-- | Adult Remedial Education; Programmes providing learning experiences that build on secondary education and prepare for labour market entry and\/or tertiary education. The content is broader than secondary but not as complex as tertiary education. ISCED code 4.
pattern Job_DegreeTypesItem_ADULTREMEDIALEDUCATION :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_ADULTREMEDIALEDUCATION = Job_DegreeTypesItem "ADULT_REMEDIAL_EDUCATION"

-- | Associate\'s or equivalent; Short first tertiary programmes that are typically practically-based, occupationally-specific and prepare for labour market entry. These programmes may also provide a pathway to other tertiary programmes. ISCED code 5.
pattern Job_DegreeTypesItem_ASSOCIATESOREQUIVALENT :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_ASSOCIATESOREQUIVALENT = Job_DegreeTypesItem "ASSOCIATES_OR_EQUIVALENT"

-- | Bachelor\'s or equivalent; Programmes designed to provide intermediate academic and\/or professional knowledge, skills and competencies leading to a first tertiary degree or equivalent qualification. ISCED code 6.
pattern Job_DegreeTypesItem_BACHELORSOREQUIVALENT :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_BACHELORSOREQUIVALENT = Job_DegreeTypesItem "BACHELORS_OR_EQUIVALENT"

-- | Master\'s or equivalent; Programmes designed to provide advanced academic and\/or professional knowledge, skills and competencies leading to a second tertiary degree or equivalent qualification. ISCED code 7.
pattern Job_DegreeTypesItem_MASTERSOREQUIVALENT :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_MASTERSOREQUIVALENT = Job_DegreeTypesItem "MASTERS_OR_EQUIVALENT"

-- | Doctoral or equivalent; Programmes designed primarily to lead to an advanced research qualification, usually concluding with the submission and defense of a substantive dissertation of publishable quality based on original research. ISCED code 8.
pattern Job_DegreeTypesItem_DOCTORALOREQUIVALENT :: Job_DegreeTypesItem
pattern Job_DegreeTypesItem_DOCTORALOREQUIVALENT = Job_DegreeTypesItem "DOCTORAL_OR_EQUIVALENT"

{-# COMPLETE
  Job_DegreeTypesItem_DEGREETYPEUNSPECIFIED,
  Job_DegreeTypesItem_PRIMARYEDUCATION,
  Job_DegreeTypesItem_LOWERSECONDARYEDUCATION,
  Job_DegreeTypesItem_UPPERSECONDARYEDUCATION,
  Job_DegreeTypesItem_ADULTREMEDIALEDUCATION,
  Job_DegreeTypesItem_ASSOCIATESOREQUIVALENT,
  Job_DegreeTypesItem_BACHELORSOREQUIVALENT,
  Job_DegreeTypesItem_MASTERSOREQUIVALENT,
  Job_DegreeTypesItem_DOCTORALOREQUIVALENT,
  Job_DegreeTypesItem
  #-}

newtype Job_EmploymentTypesItem = Job_EmploymentTypesItem {fromJob_EmploymentTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value if the employment type isn\'t specified.
pattern Job_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED = Job_EmploymentTypesItem "EMPLOYMENT_TYPE_UNSPECIFIED"

-- | The job requires working a number of hours that constitute full time employment, typically 40 or more hours per week.
pattern Job_EmploymentTypesItem_FULLTIME :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_FULLTIME = Job_EmploymentTypesItem "FULL_TIME"

-- | The job entails working fewer hours than a full time job, typically less than 40 hours a week.
pattern Job_EmploymentTypesItem_PARTTIME :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_PARTTIME = Job_EmploymentTypesItem "PART_TIME"

-- | The job is offered as a contracted, as opposed to a salaried employee, position.
pattern Job_EmploymentTypesItem_Contractor :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_Contractor = Job_EmploymentTypesItem "CONTRACTOR"

-- | The job is offered as a contracted position with the understanding that it\'s converted into a full-time position at the end of the contract. Jobs of this type are also returned by a search for EmploymentType.CONTRACTOR jobs.
pattern Job_EmploymentTypesItem_CONTRACTTOHIRE :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_CONTRACTTOHIRE = Job_EmploymentTypesItem "CONTRACT_TO_HIRE"

-- | The job is offered as a temporary employment opportunity, usually a short-term engagement.
pattern Job_EmploymentTypesItem_Temporary :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_Temporary = Job_EmploymentTypesItem "TEMPORARY"

-- | The job is a fixed-term opportunity for students or entry-level job seekers to obtain on-the-job training, typically offered as a summer position.
pattern Job_EmploymentTypesItem_Intern :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_Intern = Job_EmploymentTypesItem "INTERN"

-- | The is an opportunity for an individual to volunteer, where there\'s no expectation of compensation for the provided services.
pattern Job_EmploymentTypesItem_Volunteer :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_Volunteer = Job_EmploymentTypesItem "VOLUNTEER"

-- | The job requires an employee to work on an as-needed basis with a flexible schedule.
pattern Job_EmploymentTypesItem_PERDIEM :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_PERDIEM = Job_EmploymentTypesItem "PER_DIEM"

-- | The job involves employing people in remote areas and flying them temporarily to the work site instead of relocating employees and their families permanently.
pattern Job_EmploymentTypesItem_FLYINFLYOUT :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_FLYINFLYOUT = Job_EmploymentTypesItem "FLY_IN_FLY_OUT"

-- | The job does not fit any of the other listed types.
pattern Job_EmploymentTypesItem_OTHEREMPLOYMENTTYPE :: Job_EmploymentTypesItem
pattern Job_EmploymentTypesItem_OTHEREMPLOYMENTTYPE = Job_EmploymentTypesItem "OTHER_EMPLOYMENT_TYPE"

{-# COMPLETE
  Job_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED,
  Job_EmploymentTypesItem_FULLTIME,
  Job_EmploymentTypesItem_PARTTIME,
  Job_EmploymentTypesItem_Contractor,
  Job_EmploymentTypesItem_CONTRACTTOHIRE,
  Job_EmploymentTypesItem_Temporary,
  Job_EmploymentTypesItem_Intern,
  Job_EmploymentTypesItem_Volunteer,
  Job_EmploymentTypesItem_PERDIEM,
  Job_EmploymentTypesItem_FLYINFLYOUT,
  Job_EmploymentTypesItem_OTHEREMPLOYMENTTYPE,
  Job_EmploymentTypesItem
  #-}

newtype Job_JobBenefitsItem = Job_JobBenefitsItem {fromJob_JobBenefitsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value if the type isn\'t specified.
pattern Job_JobBenefitsItem_JOBBENEFITUNSPECIFIED :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_JOBBENEFITUNSPECIFIED = Job_JobBenefitsItem "JOB_BENEFIT_UNSPECIFIED"

-- | The job includes access to programs that support child care, such as daycare.
pattern Job_JobBenefitsItem_CHILDCARE :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_CHILDCARE = Job_JobBenefitsItem "CHILD_CARE"

-- | The job includes dental services covered by a dental insurance plan.
pattern Job_JobBenefitsItem_Dental :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_Dental = Job_JobBenefitsItem "DENTAL"

-- | The job offers specific benefits to domestic partners.
pattern Job_JobBenefitsItem_DOMESTICPARTNER :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_DOMESTICPARTNER = Job_JobBenefitsItem "DOMESTIC_PARTNER"

-- | The job allows for a flexible work schedule.
pattern Job_JobBenefitsItem_FLEXIBLEHOURS :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_FLEXIBLEHOURS = Job_JobBenefitsItem "FLEXIBLE_HOURS"

-- | The job includes health services covered by a medical insurance plan.
pattern Job_JobBenefitsItem_Medical :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_Medical = Job_JobBenefitsItem "MEDICAL"

-- | The job includes a life insurance plan provided by the employer or available for purchase by the employee.
pattern Job_JobBenefitsItem_LIFEINSURANCE :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_LIFEINSURANCE = Job_JobBenefitsItem "LIFE_INSURANCE"

-- | The job allows for a leave of absence to a parent to care for a newborn child.
pattern Job_JobBenefitsItem_PARENTALLEAVE :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_PARENTALLEAVE = Job_JobBenefitsItem "PARENTAL_LEAVE"

-- | The job includes a workplace retirement plan provided by the employer or available for purchase by the employee.
pattern Job_JobBenefitsItem_RETIREMENTPLAN :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_RETIREMENTPLAN = Job_JobBenefitsItem "RETIREMENT_PLAN"

-- | The job allows for paid time off due to illness.
pattern Job_JobBenefitsItem_SICKDAYS :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_SICKDAYS = Job_JobBenefitsItem "SICK_DAYS"

-- | The job includes paid time off for vacation.
pattern Job_JobBenefitsItem_Vacation :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_Vacation = Job_JobBenefitsItem "VACATION"

-- | The job includes vision services covered by a vision insurance plan.
pattern Job_JobBenefitsItem_Vision :: Job_JobBenefitsItem
pattern Job_JobBenefitsItem_Vision = Job_JobBenefitsItem "VISION"

{-# COMPLETE
  Job_JobBenefitsItem_JOBBENEFITUNSPECIFIED,
  Job_JobBenefitsItem_CHILDCARE,
  Job_JobBenefitsItem_Dental,
  Job_JobBenefitsItem_DOMESTICPARTNER,
  Job_JobBenefitsItem_FLEXIBLEHOURS,
  Job_JobBenefitsItem_Medical,
  Job_JobBenefitsItem_LIFEINSURANCE,
  Job_JobBenefitsItem_PARENTALLEAVE,
  Job_JobBenefitsItem_RETIREMENTPLAN,
  Job_JobBenefitsItem_SICKDAYS,
  Job_JobBenefitsItem_Vacation,
  Job_JobBenefitsItem_Vision,
  Job_JobBenefitsItem
  #-}

-- | The experience level associated with the job, such as \"Entry Level\".
newtype Job_JobLevel = Job_JobLevel {fromJob_JobLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value if the level isn\'t specified.
pattern Job_JobLevel_JOBLEVELUNSPECIFIED :: Job_JobLevel
pattern Job_JobLevel_JOBLEVELUNSPECIFIED = Job_JobLevel "JOB_LEVEL_UNSPECIFIED"

-- | Entry-level individual contributors, typically with less than 2 years of experience in a similar role. Includes interns.
pattern Job_JobLevel_ENTRYLEVEL :: Job_JobLevel
pattern Job_JobLevel_ENTRYLEVEL = Job_JobLevel "ENTRY_LEVEL"

-- | Experienced individual contributors, typically with 2+ years of experience in a similar role.
pattern Job_JobLevel_Experienced :: Job_JobLevel
pattern Job_JobLevel_Experienced = Job_JobLevel "EXPERIENCED"

-- | Entry- to mid-level managers responsible for managing a team of people.
pattern Job_JobLevel_Manager :: Job_JobLevel
pattern Job_JobLevel_Manager = Job_JobLevel "MANAGER"

-- | Senior-level managers responsible for managing teams of managers.
pattern Job_JobLevel_Director :: Job_JobLevel
pattern Job_JobLevel_Director = Job_JobLevel "DIRECTOR"

-- | Executive-level managers and above, including C-level positions.
pattern Job_JobLevel_Executive :: Job_JobLevel
pattern Job_JobLevel_Executive = Job_JobLevel "EXECUTIVE"

{-# COMPLETE
  Job_JobLevel_JOBLEVELUNSPECIFIED,
  Job_JobLevel_ENTRYLEVEL,
  Job_JobLevel_Experienced,
  Job_JobLevel_Manager,
  Job_JobLevel_Director,
  Job_JobLevel_Executive,
  Job_JobLevel
  #-}

-- | The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn\'t specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
newtype Job_PostingRegion = Job_PostingRegion {fromJob_PostingRegion :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If the region is unspecified, the job is only returned if it matches the LocationFilter.
pattern Job_PostingRegion_POSTINGREGIONUNSPECIFIED :: Job_PostingRegion
pattern Job_PostingRegion_POSTINGREGIONUNSPECIFIED = Job_PostingRegion "POSTING_REGION_UNSPECIFIED"

-- | In addition to exact location matching, job posting is returned when the LocationFilter in the search query is in the same administrative area as the returned job posting. For example, if a @ADMINISTRATIVE_AREA@ job is posted in \"CA, USA\", it\'s returned if LocationFilter has \"Mountain View\". Administrative area refers to top-level administrative subdivision of this country. For example, US state, IT region, UK constituent nation and JP prefecture.
pattern Job_PostingRegion_ADMINISTRATIVEAREA :: Job_PostingRegion
pattern Job_PostingRegion_ADMINISTRATIVEAREA = Job_PostingRegion "ADMINISTRATIVE_AREA"

-- | In addition to exact location matching, job is returned when LocationFilter in search query is in the same country as this job. For example, if a @NATION_WIDE@ job is posted in \"USA\", it\'s returned if LocationFilter has \'Mountain View\'.
pattern Job_PostingRegion_Nation :: Job_PostingRegion
pattern Job_PostingRegion_Nation = Job_PostingRegion "NATION"

-- | Job allows employees to work remotely (telecommute). If locations are provided with this value, the job is considered as having a location, but telecommuting is allowed.
pattern Job_PostingRegion_Telecommute :: Job_PostingRegion
pattern Job_PostingRegion_Telecommute = Job_PostingRegion "TELECOMMUTE"

{-# COMPLETE
  Job_PostingRegion_POSTINGREGIONUNSPECIFIED,
  Job_PostingRegion_ADMINISTRATIVEAREA,
  Job_PostingRegion_Nation,
  Job_PostingRegion_Telecommute,
  Job_PostingRegion
  #-}

-- | Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
newtype Job_Visibility = Job_Visibility {fromJob_Visibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern Job_Visibility_VISIBILITYUNSPECIFIED :: Job_Visibility
pattern Job_Visibility_VISIBILITYUNSPECIFIED = Job_Visibility "VISIBILITY_UNSPECIFIED"

-- | The resource is only visible to the GCP account who owns it.
pattern Job_Visibility_ACCOUNTONLY :: Job_Visibility
pattern Job_Visibility_ACCOUNTONLY = Job_Visibility "ACCOUNT_ONLY"

-- | The resource is visible to the owner and may be visible to other applications and processes at Google.
pattern Job_Visibility_SHAREDWITHGOOGLE :: Job_Visibility
pattern Job_Visibility_SHAREDWITHGOOGLE = Job_Visibility "SHARED_WITH_GOOGLE"

-- | The resource is visible to the owner and may be visible to all other API clients.
pattern Job_Visibility_SHAREDWITHPUBLIC :: Job_Visibility
pattern Job_Visibility_SHAREDWITHPUBLIC = Job_Visibility "SHARED_WITH_PUBLIC"

{-# COMPLETE
  Job_Visibility_VISIBILITYUNSPECIFIED,
  Job_Visibility_ACCOUNTONLY,
  Job_Visibility_SHAREDWITHGOOGLE,
  Job_Visibility_SHAREDWITHPUBLIC,
  Job_Visibility
  #-}

newtype JobDerivedInfo_JobCategoriesItem = JobDerivedInfo_JobCategoriesItem {fromJobDerivedInfo_JobCategoriesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value if the category isn\'t specified.
pattern JobDerivedInfo_JobCategoriesItem_JOBCATEGORYUNSPECIFIED :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_JOBCATEGORYUNSPECIFIED = JobDerivedInfo_JobCategoriesItem "JOB_CATEGORY_UNSPECIFIED"

-- | An accounting and finance job, such as an Accountant.
pattern JobDerivedInfo_JobCategoriesItem_ACCOUNTINGANDFINANCE :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_ACCOUNTINGANDFINANCE = JobDerivedInfo_JobCategoriesItem "ACCOUNTING_AND_FINANCE"

-- | An administrative and office job, such as an Administrative Assistant.
pattern JobDerivedInfo_JobCategoriesItem_ADMINISTRATIVEANDOFFICE :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_ADMINISTRATIVEANDOFFICE = JobDerivedInfo_JobCategoriesItem "ADMINISTRATIVE_AND_OFFICE"

-- | An advertising and marketing job, such as Marketing Manager.
pattern JobDerivedInfo_JobCategoriesItem_ADVERTISINGANDMARKETING :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_ADVERTISINGANDMARKETING = JobDerivedInfo_JobCategoriesItem "ADVERTISING_AND_MARKETING"

-- | An animal care job, such as Veterinarian.
pattern JobDerivedInfo_JobCategoriesItem_ANIMALCARE :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_ANIMALCARE = JobDerivedInfo_JobCategoriesItem "ANIMAL_CARE"

-- | An art, fashion, or design job, such as Designer.
pattern JobDerivedInfo_JobCategoriesItem_ARTFASHIONANDDESIGN :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_ARTFASHIONANDDESIGN = JobDerivedInfo_JobCategoriesItem "ART_FASHION_AND_DESIGN"

-- | A business operations job, such as Business Operations Manager.
pattern JobDerivedInfo_JobCategoriesItem_BUSINESSOPERATIONS :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_BUSINESSOPERATIONS = JobDerivedInfo_JobCategoriesItem "BUSINESS_OPERATIONS"

-- | A cleaning and facilities job, such as Custodial Staff.
pattern JobDerivedInfo_JobCategoriesItem_CLEANINGANDFACILITIES :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_CLEANINGANDFACILITIES = JobDerivedInfo_JobCategoriesItem "CLEANING_AND_FACILITIES"

-- | A computer and IT job, such as Systems Administrator.
pattern JobDerivedInfo_JobCategoriesItem_COMPUTERANDIT :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_COMPUTERANDIT = JobDerivedInfo_JobCategoriesItem "COMPUTER_AND_IT"

-- | A construction job, such as General Laborer.
pattern JobDerivedInfo_JobCategoriesItem_Construction :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_Construction = JobDerivedInfo_JobCategoriesItem "CONSTRUCTION"

-- | A customer service job, such s Cashier.
pattern JobDerivedInfo_JobCategoriesItem_CUSTOMERSERVICE :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_CUSTOMERSERVICE = JobDerivedInfo_JobCategoriesItem "CUSTOMER_SERVICE"

-- | An education job, such as School Teacher.
pattern JobDerivedInfo_JobCategoriesItem_Education :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_Education = JobDerivedInfo_JobCategoriesItem "EDUCATION"

-- | An entertainment and travel job, such as Flight Attendant.
pattern JobDerivedInfo_JobCategoriesItem_ENTERTAINMENTANDTRAVEL :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_ENTERTAINMENTANDTRAVEL = JobDerivedInfo_JobCategoriesItem "ENTERTAINMENT_AND_TRAVEL"

-- | A farming or outdoor job, such as Park Ranger.
pattern JobDerivedInfo_JobCategoriesItem_FARMINGANDOUTDOORS :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_FARMINGANDOUTDOORS = JobDerivedInfo_JobCategoriesItem "FARMING_AND_OUTDOORS"

-- | A healthcare job, such as Registered Nurse.
pattern JobDerivedInfo_JobCategoriesItem_Healthcare :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_Healthcare = JobDerivedInfo_JobCategoriesItem "HEALTHCARE"

-- | A human resources job, such as Human Resources Director.
pattern JobDerivedInfo_JobCategoriesItem_HUMANRESOURCES :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_HUMANRESOURCES = JobDerivedInfo_JobCategoriesItem "HUMAN_RESOURCES"

-- | An installation, maintenance, or repair job, such as Electrician.
pattern JobDerivedInfo_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR = JobDerivedInfo_JobCategoriesItem "INSTALLATION_MAINTENANCE_AND_REPAIR"

-- | A legal job, such as Law Clerk.
pattern JobDerivedInfo_JobCategoriesItem_Legal :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_Legal = JobDerivedInfo_JobCategoriesItem "LEGAL"

-- | A management job, often used in conjunction with another category, such as Store Manager.
pattern JobDerivedInfo_JobCategoriesItem_Management :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_Management = JobDerivedInfo_JobCategoriesItem "MANAGEMENT"

-- | A manufacturing or warehouse job, such as Assembly Technician.
pattern JobDerivedInfo_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE = JobDerivedInfo_JobCategoriesItem "MANUFACTURING_AND_WAREHOUSE"

-- | A media, communications, or writing job, such as Media Relations.
pattern JobDerivedInfo_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING = JobDerivedInfo_JobCategoriesItem "MEDIA_COMMUNICATIONS_AND_WRITING"

-- | An oil, gas or mining job, such as Offshore Driller.
pattern JobDerivedInfo_JobCategoriesItem_OILGASANDMINING :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_OILGASANDMINING = JobDerivedInfo_JobCategoriesItem "OIL_GAS_AND_MINING"

-- | A personal care and services job, such as Hair Stylist.
pattern JobDerivedInfo_JobCategoriesItem_PERSONALCAREANDSERVICES :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_PERSONALCAREANDSERVICES = JobDerivedInfo_JobCategoriesItem "PERSONAL_CARE_AND_SERVICES"

-- | A protective services job, such as Security Guard.
pattern JobDerivedInfo_JobCategoriesItem_PROTECTIVESERVICES :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_PROTECTIVESERVICES = JobDerivedInfo_JobCategoriesItem "PROTECTIVE_SERVICES"

-- | A real estate job, such as Buyer\'s Agent.
pattern JobDerivedInfo_JobCategoriesItem_REALESTATE :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_REALESTATE = JobDerivedInfo_JobCategoriesItem "REAL_ESTATE"

-- | A restaurant and hospitality job, such as Restaurant Server.
pattern JobDerivedInfo_JobCategoriesItem_RESTAURANTANDHOSPITALITY :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_RESTAURANTANDHOSPITALITY = JobDerivedInfo_JobCategoriesItem "RESTAURANT_AND_HOSPITALITY"

-- | A sales and\/or retail job, such Sales Associate.
pattern JobDerivedInfo_JobCategoriesItem_SALESANDRETAIL :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_SALESANDRETAIL = JobDerivedInfo_JobCategoriesItem "SALES_AND_RETAIL"

-- | A science and engineering job, such as Lab Technician.
pattern JobDerivedInfo_JobCategoriesItem_SCIENCEANDENGINEERING :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_SCIENCEANDENGINEERING = JobDerivedInfo_JobCategoriesItem "SCIENCE_AND_ENGINEERING"

-- | A social services or non-profit job, such as Case Worker.
pattern JobDerivedInfo_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT = JobDerivedInfo_JobCategoriesItem "SOCIAL_SERVICES_AND_NON_PROFIT"

-- | A sports, fitness, or recreation job, such as Personal Trainer.
pattern JobDerivedInfo_JobCategoriesItem_SPORTSFITNESSANDRECREATION :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_SPORTSFITNESSANDRECREATION = JobDerivedInfo_JobCategoriesItem "SPORTS_FITNESS_AND_RECREATION"

-- | A transportation or logistics job, such as Truck Driver.
pattern JobDerivedInfo_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS :: JobDerivedInfo_JobCategoriesItem
pattern JobDerivedInfo_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS = JobDerivedInfo_JobCategoriesItem "TRANSPORTATION_AND_LOGISTICS"

{-# COMPLETE
  JobDerivedInfo_JobCategoriesItem_JOBCATEGORYUNSPECIFIED,
  JobDerivedInfo_JobCategoriesItem_ACCOUNTINGANDFINANCE,
  JobDerivedInfo_JobCategoriesItem_ADMINISTRATIVEANDOFFICE,
  JobDerivedInfo_JobCategoriesItem_ADVERTISINGANDMARKETING,
  JobDerivedInfo_JobCategoriesItem_ANIMALCARE,
  JobDerivedInfo_JobCategoriesItem_ARTFASHIONANDDESIGN,
  JobDerivedInfo_JobCategoriesItem_BUSINESSOPERATIONS,
  JobDerivedInfo_JobCategoriesItem_CLEANINGANDFACILITIES,
  JobDerivedInfo_JobCategoriesItem_COMPUTERANDIT,
  JobDerivedInfo_JobCategoriesItem_Construction,
  JobDerivedInfo_JobCategoriesItem_CUSTOMERSERVICE,
  JobDerivedInfo_JobCategoriesItem_Education,
  JobDerivedInfo_JobCategoriesItem_ENTERTAINMENTANDTRAVEL,
  JobDerivedInfo_JobCategoriesItem_FARMINGANDOUTDOORS,
  JobDerivedInfo_JobCategoriesItem_Healthcare,
  JobDerivedInfo_JobCategoriesItem_HUMANRESOURCES,
  JobDerivedInfo_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR,
  JobDerivedInfo_JobCategoriesItem_Legal,
  JobDerivedInfo_JobCategoriesItem_Management,
  JobDerivedInfo_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE,
  JobDerivedInfo_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING,
  JobDerivedInfo_JobCategoriesItem_OILGASANDMINING,
  JobDerivedInfo_JobCategoriesItem_PERSONALCAREANDSERVICES,
  JobDerivedInfo_JobCategoriesItem_PROTECTIVESERVICES,
  JobDerivedInfo_JobCategoriesItem_REALESTATE,
  JobDerivedInfo_JobCategoriesItem_RESTAURANTANDHOSPITALITY,
  JobDerivedInfo_JobCategoriesItem_SALESANDRETAIL,
  JobDerivedInfo_JobCategoriesItem_SCIENCEANDENGINEERING,
  JobDerivedInfo_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT,
  JobDerivedInfo_JobCategoriesItem_SPORTSFITNESSANDRECREATION,
  JobDerivedInfo_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS,
  JobDerivedInfo_JobCategoriesItem
  #-}

-- | Required. The type of the event (see JobEventType).
newtype JobEvent_Type = JobEvent_Type {fromJobEvent_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The event is unspecified by other provided values.
pattern JobEvent_Type_JOBEVENTTYPEUNSPECIFIED :: JobEvent_Type
pattern JobEvent_Type_JOBEVENTTYPEUNSPECIFIED = JobEvent_Type "JOB_EVENT_TYPE_UNSPECIFIED"

-- | The job seeker or other entity interacting with the service has had a job rendered in their view, such as in a list of search results in a compressed or clipped format. This event is typically associated with the viewing of a jobs list on a single page by a job seeker.
pattern JobEvent_Type_Impression :: JobEvent_Type
pattern JobEvent_Type_Impression = JobEvent_Type "IMPRESSION"

-- | The job seeker, or other entity interacting with the service, has viewed the details of a job, including the full description. This event doesn\'t apply to the viewing a snippet of a job appearing as a part of the job search results. Viewing a snippet is associated with an impression).
pattern JobEvent_Type_View :: JobEvent_Type
pattern JobEvent_Type_View = JobEvent_Type "VIEW"

-- | The job seeker or other entity interacting with the service performed an action to view a job and was redirected to a different website for job.
pattern JobEvent_Type_VIEWREDIRECT :: JobEvent_Type
pattern JobEvent_Type_VIEWREDIRECT = JobEvent_Type "VIEW_REDIRECT"

-- | The job seeker or other entity interacting with the service began the process or demonstrated the intention of applying for a job.
pattern JobEvent_Type_APPLICATIONSTART :: JobEvent_Type
pattern JobEvent_Type_APPLICATIONSTART = JobEvent_Type "APPLICATION_START"

-- | The job seeker or other entity interacting with the service submitted an application for a job.
pattern JobEvent_Type_APPLICATIONFINISH :: JobEvent_Type
pattern JobEvent_Type_APPLICATIONFINISH = JobEvent_Type "APPLICATION_FINISH"

-- | The job seeker or other entity interacting with the service submitted an application for a job with a single click without entering information. If a job seeker performs this action, send only this event to the service. Do not also send JobEventType.APPLICATION/START or JobEventType.APPLICATION/FINISH events.
pattern JobEvent_Type_APPLICATIONQUICKSUBMISSION :: JobEvent_Type
pattern JobEvent_Type_APPLICATIONQUICKSUBMISSION = JobEvent_Type "APPLICATION_QUICK_SUBMISSION"

-- | The job seeker or other entity interacting with the service performed an action to apply to a job and was redirected to a different website to complete the application.
pattern JobEvent_Type_APPLICATIONREDIRECT :: JobEvent_Type
pattern JobEvent_Type_APPLICATIONREDIRECT = JobEvent_Type "APPLICATION_REDIRECT"

-- | The job seeker or other entity interacting with the service began the process or demonstrated the intention of applying for a job from the search results page without viewing the details of the job posting. If sending this event, JobEventType.VIEW event shouldn\'t be sent.
pattern JobEvent_Type_APPLICATIONSTARTFROMSEARCH :: JobEvent_Type
pattern JobEvent_Type_APPLICATIONSTARTFROMSEARCH = JobEvent_Type "APPLICATION_START_FROM_SEARCH"

-- | The job seeker, or other entity interacting with the service, performs an action with a single click from the search results page to apply to a job (without viewing the details of the job posting), and is redirected to a different website to complete the application. If a candidate performs this action, send only this event to the service. Do not also send JobEventType.APPLICATION/START, JobEventType.APPLICATION/FINISH or JobEventType.VIEW events.
pattern JobEvent_Type_APPLICATIONREDIRECTFROMSEARCH :: JobEvent_Type
pattern JobEvent_Type_APPLICATIONREDIRECTFROMSEARCH = JobEvent_Type "APPLICATION_REDIRECT_FROM_SEARCH"

-- | This event should be used when a company submits an application on behalf of a job seeker. This event is intended for use by staffing agencies attempting to place candidates.
pattern JobEvent_Type_APPLICATIONCOMPANYSUBMIT :: JobEvent_Type
pattern JobEvent_Type_APPLICATIONCOMPANYSUBMIT = JobEvent_Type "APPLICATION_COMPANY_SUBMIT"

-- | The job seeker or other entity interacting with the service demonstrated an interest in a job by bookmarking or saving it.
pattern JobEvent_Type_Bookmark :: JobEvent_Type
pattern JobEvent_Type_Bookmark = JobEvent_Type "BOOKMARK"

-- | The job seeker or other entity interacting with the service was sent a notification, such as an email alert or device notification, containing one or more jobs listings generated by the service.
pattern JobEvent_Type_Notification :: JobEvent_Type
pattern JobEvent_Type_Notification = JobEvent_Type "NOTIFICATION"

-- | The job seeker or other entity interacting with the service was employed by the hiring entity (employer). Send this event only if the job seeker was hired through an application that was initiated by a search conducted through the Cloud Talent Solution service.
pattern JobEvent_Type_Hired :: JobEvent_Type
pattern JobEvent_Type_Hired = JobEvent_Type "HIRED"

-- | A recruiter or staffing agency submitted an application on behalf of the candidate after interacting with the service to identify a suitable job posting.
pattern JobEvent_Type_SENTCV :: JobEvent_Type
pattern JobEvent_Type_SENTCV = JobEvent_Type "SENT_CV"

-- | The entity interacting with the service (for example, the job seeker), was granted an initial interview by the hiring entity (employer). This event should only be sent if the job seeker was granted an interview as part of an application that was initiated by a search conducted through \/ recommendation provided by the Cloud Talent Solution service.
pattern JobEvent_Type_INTERVIEWGRANTED :: JobEvent_Type
pattern JobEvent_Type_INTERVIEWGRANTED = JobEvent_Type "INTERVIEW_GRANTED"

{-# COMPLETE
  JobEvent_Type_JOBEVENTTYPEUNSPECIFIED,
  JobEvent_Type_Impression,
  JobEvent_Type_View,
  JobEvent_Type_VIEWREDIRECT,
  JobEvent_Type_APPLICATIONSTART,
  JobEvent_Type_APPLICATIONFINISH,
  JobEvent_Type_APPLICATIONQUICKSUBMISSION,
  JobEvent_Type_APPLICATIONREDIRECT,
  JobEvent_Type_APPLICATIONSTARTFROMSEARCH,
  JobEvent_Type_APPLICATIONREDIRECTFROMSEARCH,
  JobEvent_Type_APPLICATIONCOMPANYSUBMIT,
  JobEvent_Type_Bookmark,
  JobEvent_Type_Notification,
  JobEvent_Type_Hired,
  JobEvent_Type_SENTCV,
  JobEvent_Type_INTERVIEWGRANTED,
  JobEvent_Type
  #-}

newtype JobQuery_EmploymentTypesItem = JobQuery_EmploymentTypesItem {fromJobQuery_EmploymentTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value if the employment type isn\'t specified.
pattern JobQuery_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED = JobQuery_EmploymentTypesItem "EMPLOYMENT_TYPE_UNSPECIFIED"

-- | The job requires working a number of hours that constitute full time employment, typically 40 or more hours per week.
pattern JobQuery_EmploymentTypesItem_FULLTIME :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_FULLTIME = JobQuery_EmploymentTypesItem "FULL_TIME"

-- | The job entails working fewer hours than a full time job, typically less than 40 hours a week.
pattern JobQuery_EmploymentTypesItem_PARTTIME :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_PARTTIME = JobQuery_EmploymentTypesItem "PART_TIME"

-- | The job is offered as a contracted, as opposed to a salaried employee, position.
pattern JobQuery_EmploymentTypesItem_Contractor :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_Contractor = JobQuery_EmploymentTypesItem "CONTRACTOR"

-- | The job is offered as a contracted position with the understanding that it\'s converted into a full-time position at the end of the contract. Jobs of this type are also returned by a search for EmploymentType.CONTRACTOR jobs.
pattern JobQuery_EmploymentTypesItem_CONTRACTTOHIRE :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_CONTRACTTOHIRE = JobQuery_EmploymentTypesItem "CONTRACT_TO_HIRE"

-- | The job is offered as a temporary employment opportunity, usually a short-term engagement.
pattern JobQuery_EmploymentTypesItem_Temporary :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_Temporary = JobQuery_EmploymentTypesItem "TEMPORARY"

-- | The job is a fixed-term opportunity for students or entry-level job seekers to obtain on-the-job training, typically offered as a summer position.
pattern JobQuery_EmploymentTypesItem_Intern :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_Intern = JobQuery_EmploymentTypesItem "INTERN"

-- | The is an opportunity for an individual to volunteer, where there\'s no expectation of compensation for the provided services.
pattern JobQuery_EmploymentTypesItem_Volunteer :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_Volunteer = JobQuery_EmploymentTypesItem "VOLUNTEER"

-- | The job requires an employee to work on an as-needed basis with a flexible schedule.
pattern JobQuery_EmploymentTypesItem_PERDIEM :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_PERDIEM = JobQuery_EmploymentTypesItem "PER_DIEM"

-- | The job involves employing people in remote areas and flying them temporarily to the work site instead of relocating employees and their families permanently.
pattern JobQuery_EmploymentTypesItem_FLYINFLYOUT :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_FLYINFLYOUT = JobQuery_EmploymentTypesItem "FLY_IN_FLY_OUT"

-- | The job does not fit any of the other listed types.
pattern JobQuery_EmploymentTypesItem_OTHEREMPLOYMENTTYPE :: JobQuery_EmploymentTypesItem
pattern JobQuery_EmploymentTypesItem_OTHEREMPLOYMENTTYPE = JobQuery_EmploymentTypesItem "OTHER_EMPLOYMENT_TYPE"

{-# COMPLETE
  JobQuery_EmploymentTypesItem_EMPLOYMENTTYPEUNSPECIFIED,
  JobQuery_EmploymentTypesItem_FULLTIME,
  JobQuery_EmploymentTypesItem_PARTTIME,
  JobQuery_EmploymentTypesItem_Contractor,
  JobQuery_EmploymentTypesItem_CONTRACTTOHIRE,
  JobQuery_EmploymentTypesItem_Temporary,
  JobQuery_EmploymentTypesItem_Intern,
  JobQuery_EmploymentTypesItem_Volunteer,
  JobQuery_EmploymentTypesItem_PERDIEM,
  JobQuery_EmploymentTypesItem_FLYINFLYOUT,
  JobQuery_EmploymentTypesItem_OTHEREMPLOYMENTTYPE,
  JobQuery_EmploymentTypesItem
  #-}

newtype JobQuery_JobCategoriesItem = JobQuery_JobCategoriesItem {fromJobQuery_JobCategoriesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value if the category isn\'t specified.
pattern JobQuery_JobCategoriesItem_JOBCATEGORYUNSPECIFIED :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_JOBCATEGORYUNSPECIFIED = JobQuery_JobCategoriesItem "JOB_CATEGORY_UNSPECIFIED"

-- | An accounting and finance job, such as an Accountant.
pattern JobQuery_JobCategoriesItem_ACCOUNTINGANDFINANCE :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_ACCOUNTINGANDFINANCE = JobQuery_JobCategoriesItem "ACCOUNTING_AND_FINANCE"

-- | An administrative and office job, such as an Administrative Assistant.
pattern JobQuery_JobCategoriesItem_ADMINISTRATIVEANDOFFICE :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_ADMINISTRATIVEANDOFFICE = JobQuery_JobCategoriesItem "ADMINISTRATIVE_AND_OFFICE"

-- | An advertising and marketing job, such as Marketing Manager.
pattern JobQuery_JobCategoriesItem_ADVERTISINGANDMARKETING :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_ADVERTISINGANDMARKETING = JobQuery_JobCategoriesItem "ADVERTISING_AND_MARKETING"

-- | An animal care job, such as Veterinarian.
pattern JobQuery_JobCategoriesItem_ANIMALCARE :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_ANIMALCARE = JobQuery_JobCategoriesItem "ANIMAL_CARE"

-- | An art, fashion, or design job, such as Designer.
pattern JobQuery_JobCategoriesItem_ARTFASHIONANDDESIGN :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_ARTFASHIONANDDESIGN = JobQuery_JobCategoriesItem "ART_FASHION_AND_DESIGN"

-- | A business operations job, such as Business Operations Manager.
pattern JobQuery_JobCategoriesItem_BUSINESSOPERATIONS :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_BUSINESSOPERATIONS = JobQuery_JobCategoriesItem "BUSINESS_OPERATIONS"

-- | A cleaning and facilities job, such as Custodial Staff.
pattern JobQuery_JobCategoriesItem_CLEANINGANDFACILITIES :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_CLEANINGANDFACILITIES = JobQuery_JobCategoriesItem "CLEANING_AND_FACILITIES"

-- | A computer and IT job, such as Systems Administrator.
pattern JobQuery_JobCategoriesItem_COMPUTERANDIT :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_COMPUTERANDIT = JobQuery_JobCategoriesItem "COMPUTER_AND_IT"

-- | A construction job, such as General Laborer.
pattern JobQuery_JobCategoriesItem_Construction :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_Construction = JobQuery_JobCategoriesItem "CONSTRUCTION"

-- | A customer service job, such s Cashier.
pattern JobQuery_JobCategoriesItem_CUSTOMERSERVICE :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_CUSTOMERSERVICE = JobQuery_JobCategoriesItem "CUSTOMER_SERVICE"

-- | An education job, such as School Teacher.
pattern JobQuery_JobCategoriesItem_Education :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_Education = JobQuery_JobCategoriesItem "EDUCATION"

-- | An entertainment and travel job, such as Flight Attendant.
pattern JobQuery_JobCategoriesItem_ENTERTAINMENTANDTRAVEL :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_ENTERTAINMENTANDTRAVEL = JobQuery_JobCategoriesItem "ENTERTAINMENT_AND_TRAVEL"

-- | A farming or outdoor job, such as Park Ranger.
pattern JobQuery_JobCategoriesItem_FARMINGANDOUTDOORS :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_FARMINGANDOUTDOORS = JobQuery_JobCategoriesItem "FARMING_AND_OUTDOORS"

-- | A healthcare job, such as Registered Nurse.
pattern JobQuery_JobCategoriesItem_Healthcare :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_Healthcare = JobQuery_JobCategoriesItem "HEALTHCARE"

-- | A human resources job, such as Human Resources Director.
pattern JobQuery_JobCategoriesItem_HUMANRESOURCES :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_HUMANRESOURCES = JobQuery_JobCategoriesItem "HUMAN_RESOURCES"

-- | An installation, maintenance, or repair job, such as Electrician.
pattern JobQuery_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR = JobQuery_JobCategoriesItem "INSTALLATION_MAINTENANCE_AND_REPAIR"

-- | A legal job, such as Law Clerk.
pattern JobQuery_JobCategoriesItem_Legal :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_Legal = JobQuery_JobCategoriesItem "LEGAL"

-- | A management job, often used in conjunction with another category, such as Store Manager.
pattern JobQuery_JobCategoriesItem_Management :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_Management = JobQuery_JobCategoriesItem "MANAGEMENT"

-- | A manufacturing or warehouse job, such as Assembly Technician.
pattern JobQuery_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE = JobQuery_JobCategoriesItem "MANUFACTURING_AND_WAREHOUSE"

-- | A media, communications, or writing job, such as Media Relations.
pattern JobQuery_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING = JobQuery_JobCategoriesItem "MEDIA_COMMUNICATIONS_AND_WRITING"

-- | An oil, gas or mining job, such as Offshore Driller.
pattern JobQuery_JobCategoriesItem_OILGASANDMINING :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_OILGASANDMINING = JobQuery_JobCategoriesItem "OIL_GAS_AND_MINING"

-- | A personal care and services job, such as Hair Stylist.
pattern JobQuery_JobCategoriesItem_PERSONALCAREANDSERVICES :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_PERSONALCAREANDSERVICES = JobQuery_JobCategoriesItem "PERSONAL_CARE_AND_SERVICES"

-- | A protective services job, such as Security Guard.
pattern JobQuery_JobCategoriesItem_PROTECTIVESERVICES :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_PROTECTIVESERVICES = JobQuery_JobCategoriesItem "PROTECTIVE_SERVICES"

-- | A real estate job, such as Buyer\'s Agent.
pattern JobQuery_JobCategoriesItem_REALESTATE :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_REALESTATE = JobQuery_JobCategoriesItem "REAL_ESTATE"

-- | A restaurant and hospitality job, such as Restaurant Server.
pattern JobQuery_JobCategoriesItem_RESTAURANTANDHOSPITALITY :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_RESTAURANTANDHOSPITALITY = JobQuery_JobCategoriesItem "RESTAURANT_AND_HOSPITALITY"

-- | A sales and\/or retail job, such Sales Associate.
pattern JobQuery_JobCategoriesItem_SALESANDRETAIL :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_SALESANDRETAIL = JobQuery_JobCategoriesItem "SALES_AND_RETAIL"

-- | A science and engineering job, such as Lab Technician.
pattern JobQuery_JobCategoriesItem_SCIENCEANDENGINEERING :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_SCIENCEANDENGINEERING = JobQuery_JobCategoriesItem "SCIENCE_AND_ENGINEERING"

-- | A social services or non-profit job, such as Case Worker.
pattern JobQuery_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT = JobQuery_JobCategoriesItem "SOCIAL_SERVICES_AND_NON_PROFIT"

-- | A sports, fitness, or recreation job, such as Personal Trainer.
pattern JobQuery_JobCategoriesItem_SPORTSFITNESSANDRECREATION :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_SPORTSFITNESSANDRECREATION = JobQuery_JobCategoriesItem "SPORTS_FITNESS_AND_RECREATION"

-- | A transportation or logistics job, such as Truck Driver.
pattern JobQuery_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS :: JobQuery_JobCategoriesItem
pattern JobQuery_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS = JobQuery_JobCategoriesItem "TRANSPORTATION_AND_LOGISTICS"

{-# COMPLETE
  JobQuery_JobCategoriesItem_JOBCATEGORYUNSPECIFIED,
  JobQuery_JobCategoriesItem_ACCOUNTINGANDFINANCE,
  JobQuery_JobCategoriesItem_ADMINISTRATIVEANDOFFICE,
  JobQuery_JobCategoriesItem_ADVERTISINGANDMARKETING,
  JobQuery_JobCategoriesItem_ANIMALCARE,
  JobQuery_JobCategoriesItem_ARTFASHIONANDDESIGN,
  JobQuery_JobCategoriesItem_BUSINESSOPERATIONS,
  JobQuery_JobCategoriesItem_CLEANINGANDFACILITIES,
  JobQuery_JobCategoriesItem_COMPUTERANDIT,
  JobQuery_JobCategoriesItem_Construction,
  JobQuery_JobCategoriesItem_CUSTOMERSERVICE,
  JobQuery_JobCategoriesItem_Education,
  JobQuery_JobCategoriesItem_ENTERTAINMENTANDTRAVEL,
  JobQuery_JobCategoriesItem_FARMINGANDOUTDOORS,
  JobQuery_JobCategoriesItem_Healthcare,
  JobQuery_JobCategoriesItem_HUMANRESOURCES,
  JobQuery_JobCategoriesItem_INSTALLATIONMAINTENANCEANDREPAIR,
  JobQuery_JobCategoriesItem_Legal,
  JobQuery_JobCategoriesItem_Management,
  JobQuery_JobCategoriesItem_MANUFACTURINGANDWAREHOUSE,
  JobQuery_JobCategoriesItem_MEDIACOMMUNICATIONSANDWRITING,
  JobQuery_JobCategoriesItem_OILGASANDMINING,
  JobQuery_JobCategoriesItem_PERSONALCAREANDSERVICES,
  JobQuery_JobCategoriesItem_PROTECTIVESERVICES,
  JobQuery_JobCategoriesItem_REALESTATE,
  JobQuery_JobCategoriesItem_RESTAURANTANDHOSPITALITY,
  JobQuery_JobCategoriesItem_SALESANDRETAIL,
  JobQuery_JobCategoriesItem_SCIENCEANDENGINEERING,
  JobQuery_JobCategoriesItem_SOCIALSERVICESANDNONPROFIT,
  JobQuery_JobCategoriesItem_SPORTSFITNESSANDRECREATION,
  JobQuery_JobCategoriesItem_TRANSPORTATIONANDLOGISTICS,
  JobQuery_JobCategoriesItem
  #-}

-- | The type of a location, which corresponds to the address lines field of google.type.PostalAddress. For example, \"Downtown, Atlanta, GA, USA\" has a type of LocationType.NEIGHBORHOOD, and \"Kansas City, KS, USA\" has a type of LocationType.LOCALITY.
newtype Location_LocationType = Location_LocationType {fromLocation_LocationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value if the type isn\'t specified.
pattern Location_LocationType_LOCATIONTYPEUNSPECIFIED :: Location_LocationType
pattern Location_LocationType_LOCATIONTYPEUNSPECIFIED = Location_LocationType "LOCATION_TYPE_UNSPECIFIED"

-- | A country level location.
pattern Location_LocationType_Country :: Location_LocationType
pattern Location_LocationType_Country = Location_LocationType "COUNTRY"

-- | A state or equivalent level location.
pattern Location_LocationType_ADMINISTRATIVEAREA :: Location_LocationType
pattern Location_LocationType_ADMINISTRATIVEAREA = Location_LocationType "ADMINISTRATIVE_AREA"

-- | A county or equivalent level location.
pattern Location_LocationType_SUBADMINISTRATIVEAREA :: Location_LocationType
pattern Location_LocationType_SUBADMINISTRATIVEAREA = Location_LocationType "SUB_ADMINISTRATIVE_AREA"

-- | A city or equivalent level location.
pattern Location_LocationType_Locality :: Location_LocationType
pattern Location_LocationType_Locality = Location_LocationType "LOCALITY"

-- | A postal code level location.
pattern Location_LocationType_POSTALCODE :: Location_LocationType
pattern Location_LocationType_POSTALCODE = Location_LocationType "POSTAL_CODE"

-- | A sublocality is a subdivision of a locality, for example a city borough, ward, or arrondissement. Sublocalities are usually recognized by a local political authority. For example, Manhattan and Brooklyn are recognized as boroughs by the City of New York, and are therefore modeled as sublocalities.
pattern Location_LocationType_SUBLOCALITY :: Location_LocationType
pattern Location_LocationType_SUBLOCALITY = Location_LocationType "SUB_LOCALITY"

-- | A district or equivalent level location.
pattern Location_LocationType_SUB_LOCALITY_1 :: Location_LocationType
pattern Location_LocationType_SUB_LOCALITY_1 = Location_LocationType "SUB_LOCALITY_1"

-- | A smaller district or equivalent level display.
pattern Location_LocationType_SUB_LOCALITY_2 :: Location_LocationType
pattern Location_LocationType_SUB_LOCALITY_2 = Location_LocationType "SUB_LOCALITY_2"

-- | A neighborhood level location.
pattern Location_LocationType_Neighborhood :: Location_LocationType
pattern Location_LocationType_Neighborhood = Location_LocationType "NEIGHBORHOOD"

-- | A street address level location.
pattern Location_LocationType_STREETADDRESS :: Location_LocationType
pattern Location_LocationType_STREETADDRESS = Location_LocationType "STREET_ADDRESS"

{-# COMPLETE
  Location_LocationType_LOCATIONTYPEUNSPECIFIED,
  Location_LocationType_Country,
  Location_LocationType_ADMINISTRATIVEAREA,
  Location_LocationType_SUBADMINISTRATIVEAREA,
  Location_LocationType_Locality,
  Location_LocationType_POSTALCODE,
  Location_LocationType_SUBLOCALITY,
  Location_LocationType_SUB_LOCALITY_1,
  Location_LocationType_SUB_LOCALITY_2,
  Location_LocationType_Neighborhood,
  Location_LocationType_STREETADDRESS,
  Location_LocationType
  #-}

-- | Allows the client to return jobs without a set location, specifically, telecommuting jobs (telecommuting is considered by the service as a special location). Job.posting/region indicates if a job permits telecommuting. If this field is set to TelecommutePreference.TELECOMMUTE/ALLOWED, telecommuting jobs are searched, and address and lat/lng are ignored. If not set or set to TelecommutePreference.TELECOMMUTE/EXCLUDED, the telecommute status of the jobs is ignored. Jobs that have PostingRegion.TELECOMMUTE and have additional Job.addresses may still be matched based on other location filters using address or lat_lng. This filter can be used by itself to search exclusively for telecommuting jobs, or it can be combined with another location filter to search for a combination of job locations, such as \"Mountain View\" or \"telecommuting\" jobs. However, when used in combination with other location filters, telecommuting jobs can be treated as less relevant than other jobs in the search response. This field is only
-- used for job search requests.
newtype LocationFilter_TelecommutePreference = LocationFilter_TelecommutePreference {fromLocationFilter_TelecommutePreference :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value if the telecommute preference isn\'t specified.
pattern LocationFilter_TelecommutePreference_TELECOMMUTEPREFERENCEUNSPECIFIED :: LocationFilter_TelecommutePreference
pattern LocationFilter_TelecommutePreference_TELECOMMUTEPREFERENCEUNSPECIFIED = LocationFilter_TelecommutePreference "TELECOMMUTE_PREFERENCE_UNSPECIFIED"

-- | Deprecated: Ignore telecommute status of jobs. Use TELECOMMUTE/JOBS/EXCLUDED if want to exclude telecommute jobs.
pattern LocationFilter_TelecommutePreference_TELECOMMUTEEXCLUDED :: LocationFilter_TelecommutePreference
pattern LocationFilter_TelecommutePreference_TELECOMMUTEEXCLUDED = LocationFilter_TelecommutePreference "TELECOMMUTE_EXCLUDED"

-- | Allow telecommute jobs.
pattern LocationFilter_TelecommutePreference_TELECOMMUTEALLOWED :: LocationFilter_TelecommutePreference
pattern LocationFilter_TelecommutePreference_TELECOMMUTEALLOWED = LocationFilter_TelecommutePreference "TELECOMMUTE_ALLOWED"

-- | Exclude telecommute jobs.
pattern LocationFilter_TelecommutePreference_TELECOMMUTEJOBSEXCLUDED :: LocationFilter_TelecommutePreference
pattern LocationFilter_TelecommutePreference_TELECOMMUTEJOBSEXCLUDED = LocationFilter_TelecommutePreference "TELECOMMUTE_JOBS_EXCLUDED"

{-# COMPLETE
  LocationFilter_TelecommutePreference_TELECOMMUTEPREFERENCEUNSPECIFIED,
  LocationFilter_TelecommutePreference_TELECOMMUTEEXCLUDED,
  LocationFilter_TelecommutePreference_TELECOMMUTEALLOWED,
  LocationFilter_TelecommutePreference_TELECOMMUTEJOBSEXCLUDED,
  LocationFilter_TelecommutePreference
  #-}

-- | Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn\'t disabled. Defaults to HtmlSanitization.SIMPLE/FORMATTING/ONLY.
newtype ProcessingOptions_HtmlSanitization = ProcessingOptions_HtmlSanitization {fromProcessingOptions_HtmlSanitization :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONUNSPECIFIED :: ProcessingOptions_HtmlSanitization
pattern ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONUNSPECIFIED = ProcessingOptions_HtmlSanitization "HTML_SANITIZATION_UNSPECIFIED"

-- | Disables sanitization on HTML input.
pattern ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONDISABLED :: ProcessingOptions_HtmlSanitization
pattern ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONDISABLED = ProcessingOptions_HtmlSanitization "HTML_SANITIZATION_DISABLED"

-- | Sanitizes HTML input, only accepts bold, italic, ordered list, and unordered list markup tags.
pattern ProcessingOptions_HtmlSanitization_SIMPLEFORMATTINGONLY :: ProcessingOptions_HtmlSanitization
pattern ProcessingOptions_HtmlSanitization_SIMPLEFORMATTINGONLY = ProcessingOptions_HtmlSanitization "SIMPLE_FORMATTING_ONLY"

{-# COMPLETE
  ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONUNSPECIFIED,
  ProcessingOptions_HtmlSanitization_HTMLSANITIZATIONDISABLED,
  ProcessingOptions_HtmlSanitization_SIMPLEFORMATTINGONLY,
  ProcessingOptions_HtmlSanitization
  #-}

-- | Controls whether highly similar jobs are returned next to each other in the search results. Jobs are identified as highly similar based on their titles, job categories, and locations. Highly similar results are clustered so that only one representative job of the cluster is displayed to the job seeker higher up in the results, with the other jobs being displayed lower down in the results. Defaults to DiversificationLevel.SIMPLE if no value is specified.
newtype SearchJobsRequest_DiversificationLevel = SearchJobsRequest_DiversificationLevel {fromSearchJobsRequest_DiversificationLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The diversification level isn\'t specified.
pattern SearchJobsRequest_DiversificationLevel_DIVERSIFICATIONLEVELUNSPECIFIED :: SearchJobsRequest_DiversificationLevel
pattern SearchJobsRequest_DiversificationLevel_DIVERSIFICATIONLEVELUNSPECIFIED = SearchJobsRequest_DiversificationLevel "DIVERSIFICATION_LEVEL_UNSPECIFIED"

-- | Disables diversification. Jobs that would normally be pushed to the last page would not have their positions altered. This may result in highly similar jobs appearing in sequence in the search results.
pattern SearchJobsRequest_DiversificationLevel_Disabled :: SearchJobsRequest_DiversificationLevel
pattern SearchJobsRequest_DiversificationLevel_Disabled = SearchJobsRequest_DiversificationLevel "DISABLED"

-- | Default diversifying behavior. The result list is ordered so that highly similar results are pushed to the end of the last page of search results.
pattern SearchJobsRequest_DiversificationLevel_Simple :: SearchJobsRequest_DiversificationLevel
pattern SearchJobsRequest_DiversificationLevel_Simple = SearchJobsRequest_DiversificationLevel "SIMPLE"

-- | Only one job from the same company will be shown at once, other jobs under same company are pushed to the end of the last page of search result.
pattern SearchJobsRequest_DiversificationLevel_ONEPERCOMPANY :: SearchJobsRequest_DiversificationLevel
pattern SearchJobsRequest_DiversificationLevel_ONEPERCOMPANY = SearchJobsRequest_DiversificationLevel "ONE_PER_COMPANY"

-- | Similar to ONE/PER/COMPANY, but it allows at most two jobs in the same company to be shown at once, the other jobs under same company are pushed to the end of the last page of search result.
pattern SearchJobsRequest_DiversificationLevel_TWOPERCOMPANY :: SearchJobsRequest_DiversificationLevel
pattern SearchJobsRequest_DiversificationLevel_TWOPERCOMPANY = SearchJobsRequest_DiversificationLevel "TWO_PER_COMPANY"

-- | Similar to ONE/PER/COMPANY, but it allows at most three jobs in the same company to be shown at once, the other jobs under same company are dropped.
pattern SearchJobsRequest_DiversificationLevel_MAXTHREEPERCOMPANY :: SearchJobsRequest_DiversificationLevel
pattern SearchJobsRequest_DiversificationLevel_MAXTHREEPERCOMPANY = SearchJobsRequest_DiversificationLevel "MAX_THREE_PER_COMPANY"

-- | The result list is ordered such that somewhat similar results are pushed to the end of the last page of the search results. This option is recommended if SIMPLE diversification does not diversify enough.
pattern SearchJobsRequest_DiversificationLevel_DIVERSIFYBYLOOSERSIMILARITY :: SearchJobsRequest_DiversificationLevel
pattern SearchJobsRequest_DiversificationLevel_DIVERSIFYBYLOOSERSIMILARITY = SearchJobsRequest_DiversificationLevel "DIVERSIFY_BY_LOOSER_SIMILARITY"

{-# COMPLETE
  SearchJobsRequest_DiversificationLevel_DIVERSIFICATIONLEVELUNSPECIFIED,
  SearchJobsRequest_DiversificationLevel_Disabled,
  SearchJobsRequest_DiversificationLevel_Simple,
  SearchJobsRequest_DiversificationLevel_ONEPERCOMPANY,
  SearchJobsRequest_DiversificationLevel_TWOPERCOMPANY,
  SearchJobsRequest_DiversificationLevel_MAXTHREEPERCOMPANY,
  SearchJobsRequest_DiversificationLevel_DIVERSIFYBYLOOSERSIMILARITY,
  SearchJobsRequest_DiversificationLevel
  #-}

-- | The desired job attributes returned for jobs in the search response. Defaults to JobView.JOB/VIEW/SMALL if no value is specified.
newtype SearchJobsRequest_JobView = SearchJobsRequest_JobView {fromSearchJobsRequest_JobView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern SearchJobsRequest_JobView_JOBVIEWUNSPECIFIED :: SearchJobsRequest_JobView
pattern SearchJobsRequest_JobView_JOBVIEWUNSPECIFIED = SearchJobsRequest_JobView "JOB_VIEW_UNSPECIFIED"

-- | A ID only view of job, with following attributes: Job.name, Job.requisition/id, Job.language/code.
pattern SearchJobsRequest_JobView_JOBVIEWIDONLY :: SearchJobsRequest_JobView
pattern SearchJobsRequest_JobView_JOBVIEWIDONLY = SearchJobsRequest_JobView "JOB_VIEW_ID_ONLY"

-- | A minimal view of the job, with the following attributes: Job.name, Job.requisition/id, Job.title, Job.company, Job.DerivedInfo.locations, Job.language/code.
pattern SearchJobsRequest_JobView_JOBVIEWMINIMAL :: SearchJobsRequest_JobView
pattern SearchJobsRequest_JobView_JOBVIEWMINIMAL = SearchJobsRequest_JobView "JOB_VIEW_MINIMAL"

-- | A small view of the job, with the following attributes in the search results: Job.name, Job.requisition/id, Job.title, Job.company, Job.DerivedInfo.locations, Job.visibility, Job.language/code, Job.description.
pattern SearchJobsRequest_JobView_JOBVIEWSMALL :: SearchJobsRequest_JobView
pattern SearchJobsRequest_JobView_JOBVIEWSMALL = SearchJobsRequest_JobView "JOB_VIEW_SMALL"

-- | All available attributes are included in the search results.
pattern SearchJobsRequest_JobView_JOBVIEWFULL :: SearchJobsRequest_JobView
pattern SearchJobsRequest_JobView_JOBVIEWFULL = SearchJobsRequest_JobView "JOB_VIEW_FULL"

{-# COMPLETE
  SearchJobsRequest_JobView_JOBVIEWUNSPECIFIED,
  SearchJobsRequest_JobView_JOBVIEWIDONLY,
  SearchJobsRequest_JobView_JOBVIEWMINIMAL,
  SearchJobsRequest_JobView_JOBVIEWSMALL,
  SearchJobsRequest_JobView_JOBVIEWFULL,
  SearchJobsRequest_JobView
  #-}

-- | Controls what keyword match options to use. If both keyword/match/mode and disable/keyword/match are set, keyword/match/mode will take precedence. Defaults to KeywordMatchMode.KEYWORD/MATCH/ALL if no value is specified.
newtype SearchJobsRequest_KeywordMatchMode = SearchJobsRequest_KeywordMatchMode {fromSearchJobsRequest_KeywordMatchMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The keyword match option isn\'t specified. Defaults to KeywordMatchMode.KEYWORD/MATCH/ALL behavior.
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHMODEUNSPECIFIED :: SearchJobsRequest_KeywordMatchMode
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHMODEUNSPECIFIED = SearchJobsRequest_KeywordMatchMode "KEYWORD_MATCH_MODE_UNSPECIFIED"

-- | Disables keyword matching.
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHDISABLED :: SearchJobsRequest_KeywordMatchMode
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHDISABLED = SearchJobsRequest_KeywordMatchMode "KEYWORD_MATCH_DISABLED"

-- | Enable keyword matching over Job.title, Job.description, Job.company/display/name, Job.addresses, Job.qualifications, and keyword searchable Job.custom_attributes fields.
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHALL :: SearchJobsRequest_KeywordMatchMode
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHALL = SearchJobsRequest_KeywordMatchMode "KEYWORD_MATCH_ALL"

-- | Only enable keyword matching over Job.title.
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHTITLEONLY :: SearchJobsRequest_KeywordMatchMode
pattern SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHTITLEONLY = SearchJobsRequest_KeywordMatchMode "KEYWORD_MATCH_TITLE_ONLY"

{-# COMPLETE
  SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHMODEUNSPECIFIED,
  SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHDISABLED,
  SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHALL,
  SearchJobsRequest_KeywordMatchMode_KEYWORDMATCHTITLEONLY,
  SearchJobsRequest_KeywordMatchMode
  #-}

-- | Optional. The relevance threshold of the search results. Default to Google defined threshold, leveraging a balance of precision and recall to deliver both highly accurate results and comprehensive coverage of relevant information.
newtype SearchJobsRequest_RelevanceThreshold = SearchJobsRequest_RelevanceThreshold {fromSearchJobsRequest_RelevanceThreshold :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. In this case, server behavior defaults to Google defined threshold.
pattern SearchJobsRequest_RelevanceThreshold_RELEVANCETHRESHOLDUNSPECIFIED :: SearchJobsRequest_RelevanceThreshold
pattern SearchJobsRequest_RelevanceThreshold_RELEVANCETHRESHOLDUNSPECIFIED = SearchJobsRequest_RelevanceThreshold "RELEVANCE_THRESHOLD_UNSPECIFIED"

-- | Lowest relevance threshold.
pattern SearchJobsRequest_RelevanceThreshold_Lowest :: SearchJobsRequest_RelevanceThreshold
pattern SearchJobsRequest_RelevanceThreshold_Lowest = SearchJobsRequest_RelevanceThreshold "LOWEST"

-- | Low relevance threshold.
pattern SearchJobsRequest_RelevanceThreshold_Low :: SearchJobsRequest_RelevanceThreshold
pattern SearchJobsRequest_RelevanceThreshold_Low = SearchJobsRequest_RelevanceThreshold "LOW"

-- | Medium relevance threshold.
pattern SearchJobsRequest_RelevanceThreshold_Medium :: SearchJobsRequest_RelevanceThreshold
pattern SearchJobsRequest_RelevanceThreshold_Medium = SearchJobsRequest_RelevanceThreshold "MEDIUM"

-- | High relevance threshold.
pattern SearchJobsRequest_RelevanceThreshold_High :: SearchJobsRequest_RelevanceThreshold
pattern SearchJobsRequest_RelevanceThreshold_High = SearchJobsRequest_RelevanceThreshold "HIGH"

{-# COMPLETE
  SearchJobsRequest_RelevanceThreshold_RELEVANCETHRESHOLDUNSPECIFIED,
  SearchJobsRequest_RelevanceThreshold_Lowest,
  SearchJobsRequest_RelevanceThreshold_Low,
  SearchJobsRequest_RelevanceThreshold_Medium,
  SearchJobsRequest_RelevanceThreshold_High,
  SearchJobsRequest_RelevanceThreshold
  #-}

-- | Mode of a search. Defaults to SearchMode.JOB_SEARCH.
newtype SearchJobsRequest_SearchMode = SearchJobsRequest_SearchMode {fromSearchJobsRequest_SearchMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The mode of the search method isn\'t specified. The default search behavior is identical to JOB_SEARCH search behavior.
pattern SearchJobsRequest_SearchMode_SEARCHMODEUNSPECIFIED :: SearchJobsRequest_SearchMode
pattern SearchJobsRequest_SearchMode_SEARCHMODEUNSPECIFIED = SearchJobsRequest_SearchMode "SEARCH_MODE_UNSPECIFIED"

-- | The job search matches against all jobs, and featured jobs (jobs with promotionValue > 0) are not specially handled.
pattern SearchJobsRequest_SearchMode_JOBSEARCH :: SearchJobsRequest_SearchMode
pattern SearchJobsRequest_SearchMode_JOBSEARCH = SearchJobsRequest_SearchMode "JOB_SEARCH"

-- | The job search matches only against featured jobs (jobs with a promotionValue > 0). This method doesn\'t return any jobs having a promotionValue \<= 0. The search results order is determined by the promotionValue (jobs with a higher promotionValue are returned higher up in the search results), with relevance being used as a tiebreaker.
pattern SearchJobsRequest_SearchMode_FEATUREDJOBSEARCH :: SearchJobsRequest_SearchMode
pattern SearchJobsRequest_SearchMode_FEATUREDJOBSEARCH = SearchJobsRequest_SearchMode "FEATURED_JOB_SEARCH"

{-# COMPLETE
  SearchJobsRequest_SearchMode_SEARCHMODEUNSPECIFIED,
  SearchJobsRequest_SearchMode_JOBSEARCH,
  SearchJobsRequest_SearchMode_FEATUREDJOBSEARCH,
  SearchJobsRequest_SearchMode
  #-}

-- | The scope of the completion. The defaults is CompletionScope.PUBLIC.
newtype ProjectsTenantsCompleteQueryScope = ProjectsTenantsCompleteQueryScope {fromProjectsTenantsCompleteQueryScope :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern ProjectsTenantsCompleteQueryScope_COMPLETIONSCOPEUNSPECIFIED :: ProjectsTenantsCompleteQueryScope
pattern ProjectsTenantsCompleteQueryScope_COMPLETIONSCOPEUNSPECIFIED = ProjectsTenantsCompleteQueryScope "COMPLETION_SCOPE_UNSPECIFIED"

-- | Suggestions are based only on the data provided by the client.
pattern ProjectsTenantsCompleteQueryScope_Tenant :: ProjectsTenantsCompleteQueryScope
pattern ProjectsTenantsCompleteQueryScope_Tenant = ProjectsTenantsCompleteQueryScope "TENANT"

-- | Suggestions are based on all jobs data in the system that\'s visible to the client
pattern ProjectsTenantsCompleteQueryScope_Public :: ProjectsTenantsCompleteQueryScope
pattern ProjectsTenantsCompleteQueryScope_Public = ProjectsTenantsCompleteQueryScope "PUBLIC"

{-# COMPLETE
  ProjectsTenantsCompleteQueryScope_COMPLETIONSCOPEUNSPECIFIED,
  ProjectsTenantsCompleteQueryScope_Tenant,
  ProjectsTenantsCompleteQueryScope_Public,
  ProjectsTenantsCompleteQueryScope
  #-}

-- | The completion topic. The default is CompletionType.COMBINED.
newtype ProjectsTenantsCompleteQueryType = ProjectsTenantsCompleteQueryType {fromProjectsTenantsCompleteQueryType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern ProjectsTenantsCompleteQueryType_COMPLETIONTYPEUNSPECIFIED :: ProjectsTenantsCompleteQueryType
pattern ProjectsTenantsCompleteQueryType_COMPLETIONTYPEUNSPECIFIED = ProjectsTenantsCompleteQueryType "COMPLETION_TYPE_UNSPECIFIED"

-- | Suggest job titles for jobs autocomplete. For CompletionType.JOB/TITLE type, only open jobs with the same language/codes are returned.
pattern ProjectsTenantsCompleteQueryType_JOBTITLE :: ProjectsTenantsCompleteQueryType
pattern ProjectsTenantsCompleteQueryType_JOBTITLE = ProjectsTenantsCompleteQueryType "JOB_TITLE"

-- | Suggest company names for jobs autocomplete. For CompletionType.COMPANY/NAME type, only companies having open jobs with the same language/codes are returned.
pattern ProjectsTenantsCompleteQueryType_COMPANYNAME :: ProjectsTenantsCompleteQueryType
pattern ProjectsTenantsCompleteQueryType_COMPANYNAME = ProjectsTenantsCompleteQueryType "COMPANY_NAME"

-- | Suggest both job titles and company names for jobs autocomplete. For CompletionType.COMBINED type, only open jobs with the same language/codes or companies having open jobs with the same language/codes are returned.
pattern ProjectsTenantsCompleteQueryType_Combined :: ProjectsTenantsCompleteQueryType
pattern ProjectsTenantsCompleteQueryType_Combined = ProjectsTenantsCompleteQueryType "COMBINED"

{-# COMPLETE
  ProjectsTenantsCompleteQueryType_COMPLETIONTYPEUNSPECIFIED,
  ProjectsTenantsCompleteQueryType_JOBTITLE,
  ProjectsTenantsCompleteQueryType_COMPANYNAME,
  ProjectsTenantsCompleteQueryType_Combined,
  ProjectsTenantsCompleteQueryType
  #-}

-- | The desired job attributes returned for jobs in the search response. Defaults to JobView.JOB/VIEW/FULL if no value is specified.
newtype ProjectsTenantsJobsListJobView = ProjectsTenantsJobsListJobView {fromProjectsTenantsJobsListJobView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern ProjectsTenantsJobsListJobView_JOBVIEWUNSPECIFIED :: ProjectsTenantsJobsListJobView
pattern ProjectsTenantsJobsListJobView_JOBVIEWUNSPECIFIED = ProjectsTenantsJobsListJobView "JOB_VIEW_UNSPECIFIED"

-- | A ID only view of job, with following attributes: Job.name, Job.requisition/id, Job.language/code.
pattern ProjectsTenantsJobsListJobView_JOBVIEWIDONLY :: ProjectsTenantsJobsListJobView
pattern ProjectsTenantsJobsListJobView_JOBVIEWIDONLY = ProjectsTenantsJobsListJobView "JOB_VIEW_ID_ONLY"

-- | A minimal view of the job, with the following attributes: Job.name, Job.requisition/id, Job.title, Job.company, Job.DerivedInfo.locations, Job.language/code.
pattern ProjectsTenantsJobsListJobView_JOBVIEWMINIMAL :: ProjectsTenantsJobsListJobView
pattern ProjectsTenantsJobsListJobView_JOBVIEWMINIMAL = ProjectsTenantsJobsListJobView "JOB_VIEW_MINIMAL"

-- | A small view of the job, with the following attributes in the search results: Job.name, Job.requisition/id, Job.title, Job.company, Job.DerivedInfo.locations, Job.visibility, Job.language/code, Job.description.
pattern ProjectsTenantsJobsListJobView_JOBVIEWSMALL :: ProjectsTenantsJobsListJobView
pattern ProjectsTenantsJobsListJobView_JOBVIEWSMALL = ProjectsTenantsJobsListJobView "JOB_VIEW_SMALL"

-- | All available attributes are included in the search results.
pattern ProjectsTenantsJobsListJobView_JOBVIEWFULL :: ProjectsTenantsJobsListJobView
pattern ProjectsTenantsJobsListJobView_JOBVIEWFULL = ProjectsTenantsJobsListJobView "JOB_VIEW_FULL"

{-# COMPLETE
  ProjectsTenantsJobsListJobView_JOBVIEWUNSPECIFIED,
  ProjectsTenantsJobsListJobView_JOBVIEWIDONLY,
  ProjectsTenantsJobsListJobView_JOBVIEWMINIMAL,
  ProjectsTenantsJobsListJobView_JOBVIEWSMALL,
  ProjectsTenantsJobsListJobView_JOBVIEWFULL,
  ProjectsTenantsJobsListJobView
  #-}
