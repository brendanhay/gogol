{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Monitoring.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Monitoring.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Aggregation_CrossSeriesReducer
    Aggregation_CrossSeriesReducer
      ( Aggregation_CrossSeriesReducer_REDUCENONE,
        Aggregation_CrossSeriesReducer_REDUCEMEAN,
        Aggregation_CrossSeriesReducer_REDUCEMIN,
        Aggregation_CrossSeriesReducer_REDUCEMAX,
        Aggregation_CrossSeriesReducer_REDUCESUM,
        Aggregation_CrossSeriesReducer_REDUCESTDDEV,
        Aggregation_CrossSeriesReducer_REDUCECOUNT,
        Aggregation_CrossSeriesReducer_REDUCECOUNTTRUE,
        Aggregation_CrossSeriesReducer_REDUCECOUNTFALSE,
        Aggregation_CrossSeriesReducer_REDUCEFRACTIONTRUE,
        Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_99,
        Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_95,
        Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_50,
        Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_05,
        ..
      ),

    -- * Aggregation_PerSeriesAligner
    Aggregation_PerSeriesAligner
      ( Aggregation_PerSeriesAligner_ALIGNNONE,
        Aggregation_PerSeriesAligner_ALIGNDELTA,
        Aggregation_PerSeriesAligner_ALIGNRATE,
        Aggregation_PerSeriesAligner_ALIGNINTERPOLATE,
        Aggregation_PerSeriesAligner_ALIGNNEXTOLDER,
        Aggregation_PerSeriesAligner_ALIGNMIN,
        Aggregation_PerSeriesAligner_ALIGNMAX,
        Aggregation_PerSeriesAligner_ALIGNMEAN,
        Aggregation_PerSeriesAligner_ALIGNCOUNT,
        Aggregation_PerSeriesAligner_ALIGNSUM,
        Aggregation_PerSeriesAligner_ALIGNSTDDEV,
        Aggregation_PerSeriesAligner_ALIGNCOUNTTRUE,
        Aggregation_PerSeriesAligner_ALIGNCOUNTFALSE,
        Aggregation_PerSeriesAligner_ALIGNFRACTIONTRUE,
        Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_99,
        Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_95,
        Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_50,
        Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_05,
        Aggregation_PerSeriesAligner_ALIGNPERCENTCHANGE,
        ..
      ),

    -- * AlertPolicy_Combiner
    AlertPolicy_Combiner
      ( AlertPolicy_Combiner_COMBINEUNSPECIFIED,
        AlertPolicy_Combiner_And,
        AlertPolicy_Combiner_OR,
        AlertPolicy_Combiner_ANDWITHMATCHINGRESOURCE,
        ..
      ),

    -- * AlertPolicy_Severity
    AlertPolicy_Severity
      ( AlertPolicy_Severity_SEVERITYUNSPECIFIED,
        AlertPolicy_Severity_Critical,
        AlertPolicy_Severity_Error',
        AlertPolicy_Severity_Warning,
        ..
      ),

    -- * AlertStrategy_NotificationPromptsItem
    AlertStrategy_NotificationPromptsItem
      ( AlertStrategy_NotificationPromptsItem_NOTIFICATIONPROMPTUNSPECIFIED,
        AlertStrategy_NotificationPromptsItem_Opened,
        AlertStrategy_NotificationPromptsItem_Closed,
        ..
      ),

    -- * CollectdValue_DataSourceType
    CollectdValue_DataSourceType
      ( CollectdValue_DataSourceType_UNSPECIFIEDDATASOURCETYPE,
        CollectdValue_DataSourceType_Gauge,
        CollectdValue_DataSourceType_Counter,
        CollectdValue_DataSourceType_Derive,
        CollectdValue_DataSourceType_Absolute,
        ..
      ),

    -- * ContentMatcher_Matcher
    ContentMatcher_Matcher
      ( ContentMatcher_Matcher_CONTENTMATCHEROPTIONUNSPECIFIED,
        ContentMatcher_Matcher_CONTAINSSTRING,
        ContentMatcher_Matcher_NOTCONTAINSSTRING,
        ContentMatcher_Matcher_MATCHESREGEX,
        ContentMatcher_Matcher_NOTMATCHESREGEX,
        ContentMatcher_Matcher_MATCHESJSONPATH,
        ContentMatcher_Matcher_NOTMATCHESJSONPATH,
        ..
      ),

    -- * Field_Cardinality
    Field_Cardinality
      ( Field_Cardinality_CARDINALITYUNKNOWN,
        Field_Cardinality_CARDINALITYOPTIONAL,
        Field_Cardinality_CARDINALITYREQUIRED,
        Field_Cardinality_CARDINALITYREPEATED,
        ..
      ),

    -- * Field_Kind
    Field_Kind
      ( Field_Kind_TYPEUNKNOWN,
        Field_Kind_TYPEDOUBLE,
        Field_Kind_TYPEFLOAT,
        Field_Kind_TYPE_INT64,
        Field_Kind_TYPE_UINT64,
        Field_Kind_TYPE_INT32,
        Field_Kind_TYPE_FIXED64,
        Field_Kind_TYPE_FIXED32,
        Field_Kind_TYPEBOOL,
        Field_Kind_TYPESTRING,
        Field_Kind_TYPEGROUP,
        Field_Kind_TYPEMESSAGE,
        Field_Kind_TYPEBYTES,
        Field_Kind_TYPE_UINT32,
        Field_Kind_TYPEENUM,
        Field_Kind_TYPE_SFIXED32,
        Field_Kind_TYPE_SFIXED64,
        Field_Kind_TYPE_SINT32,
        Field_Kind_TYPE_SINT64,
        ..
      ),

    -- * HttpCheck_ContentType
    HttpCheck_ContentType
      ( HttpCheck_ContentType_TYPEUNSPECIFIED,
        HttpCheck_ContentType_URLENCODED,
        HttpCheck_ContentType_USERPROVIDED,
        ..
      ),

    -- * HttpCheck_RequestMethod
    HttpCheck_RequestMethod
      ( HttpCheck_RequestMethod_METHODUNSPECIFIED,
        HttpCheck_RequestMethod_Get',
        HttpCheck_RequestMethod_Post',
        ..
      ),

    -- * InternalChecker_State
    InternalChecker_State
      ( InternalChecker_State_Unspecified,
        InternalChecker_State_Creating,
        InternalChecker_State_Running,
        ..
      ),

    -- * JsonPathMatcher_JsonMatcher
    JsonPathMatcher_JsonMatcher
      ( JsonPathMatcher_JsonMatcher_JSONPATHMATCHEROPTIONUNSPECIFIED,
        JsonPathMatcher_JsonMatcher_EXACTMATCH,
        JsonPathMatcher_JsonMatcher_REGEXMATCH,
        ..
      ),

    -- * LabelDescriptor_ValueType
    LabelDescriptor_ValueType
      ( LabelDescriptor_ValueType_String,
        LabelDescriptor_ValueType_Bool,
        LabelDescriptor_ValueType_INT64,
        ..
      ),

    -- * MetricDescriptor_LaunchStage
    MetricDescriptor_LaunchStage
      ( MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MetricDescriptor_LaunchStage_Unimplemented,
        MetricDescriptor_LaunchStage_Prelaunch,
        MetricDescriptor_LaunchStage_EARLYACCESS,
        MetricDescriptor_LaunchStage_Alpha,
        MetricDescriptor_LaunchStage_Beta,
        MetricDescriptor_LaunchStage_GA,
        MetricDescriptor_LaunchStage_Deprecated,
        ..
      ),

    -- * MetricDescriptor_MetricKind
    MetricDescriptor_MetricKind
      ( MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED,
        MetricDescriptor_MetricKind_Gauge,
        MetricDescriptor_MetricKind_Delta,
        MetricDescriptor_MetricKind_Cumulative,
        ..
      ),

    -- * MetricDescriptor_ValueType
    MetricDescriptor_ValueType
      ( MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED,
        MetricDescriptor_ValueType_Bool,
        MetricDescriptor_ValueType_INT64,
        MetricDescriptor_ValueType_Double,
        MetricDescriptor_ValueType_String,
        MetricDescriptor_ValueType_Distribution,
        MetricDescriptor_ValueType_Money,
        ..
      ),

    -- * MetricDescriptorMetadata_LaunchStage
    MetricDescriptorMetadata_LaunchStage
      ( MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MetricDescriptorMetadata_LaunchStage_Unimplemented,
        MetricDescriptorMetadata_LaunchStage_Prelaunch,
        MetricDescriptorMetadata_LaunchStage_EARLYACCESS,
        MetricDescriptorMetadata_LaunchStage_Alpha,
        MetricDescriptorMetadata_LaunchStage_Beta,
        MetricDescriptorMetadata_LaunchStage_GA,
        MetricDescriptorMetadata_LaunchStage_Deprecated,
        ..
      ),

    -- * MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
    MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
      ( MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED,
        MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project,
        MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization,
        MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder,
        ..
      ),

    -- * MetricThreshold_Comparison
    MetricThreshold_Comparison
      ( MetricThreshold_Comparison_COMPARISONUNSPECIFIED,
        MetricThreshold_Comparison_COMPARISONGT,
        MetricThreshold_Comparison_COMPARISONGE,
        MetricThreshold_Comparison_COMPARISONLT,
        MetricThreshold_Comparison_COMPARISONLE,
        MetricThreshold_Comparison_COMPARISONEQ,
        MetricThreshold_Comparison_COMPARISONNE,
        ..
      ),

    -- * MetricThreshold_EvaluationMissingData
    MetricThreshold_EvaluationMissingData
      ( MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED,
        MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE,
        MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE,
        MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATANOOP,
        ..
      ),

    -- * MonitoredResourceDescriptor_LaunchStage
    MonitoredResourceDescriptor_LaunchStage
      ( MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MonitoredResourceDescriptor_LaunchStage_Unimplemented,
        MonitoredResourceDescriptor_LaunchStage_Prelaunch,
        MonitoredResourceDescriptor_LaunchStage_EARLYACCESS,
        MonitoredResourceDescriptor_LaunchStage_Alpha,
        MonitoredResourceDescriptor_LaunchStage_Beta,
        MonitoredResourceDescriptor_LaunchStage_GA,
        MonitoredResourceDescriptor_LaunchStage_Deprecated,
        ..
      ),

    -- * MonitoringQueryLanguageCondition_EvaluationMissingData
    MonitoringQueryLanguageCondition_EvaluationMissingData
      ( MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED,
        MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE,
        MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE,
        MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATANOOP,
        ..
      ),

    -- * NotificationChannel_VerificationStatus
    NotificationChannel_VerificationStatus
      ( NotificationChannel_VerificationStatus_VERIFICATIONSTATUSUNSPECIFIED,
        NotificationChannel_VerificationStatus_Unverified,
        NotificationChannel_VerificationStatus_Verified,
        ..
      ),

    -- * NotificationChannelDescriptor_LaunchStage
    NotificationChannelDescriptor_LaunchStage
      ( NotificationChannelDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        NotificationChannelDescriptor_LaunchStage_Unimplemented,
        NotificationChannelDescriptor_LaunchStage_Prelaunch,
        NotificationChannelDescriptor_LaunchStage_EARLYACCESS,
        NotificationChannelDescriptor_LaunchStage_Alpha,
        NotificationChannelDescriptor_LaunchStage_Beta,
        NotificationChannelDescriptor_LaunchStage_GA,
        NotificationChannelDescriptor_LaunchStage_Deprecated,
        ..
      ),

    -- * NotificationChannelDescriptor_SupportedTiersItem
    NotificationChannelDescriptor_SupportedTiersItem
      ( NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERUNSPECIFIED,
        NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERBASIC,
        NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERPREMIUM,
        ..
      ),

    -- * OperationMetadata_State
    OperationMetadata_State
      ( OperationMetadata_State_STATEUNSPECIFIED,
        OperationMetadata_State_Created,
        OperationMetadata_State_Running,
        OperationMetadata_State_Done,
        OperationMetadata_State_Cancelled,
        ..
      ),

    -- * ResourceGroup_ResourceType
    ResourceGroup_ResourceType
      ( ResourceGroup_ResourceType_RESOURCETYPEUNSPECIFIED,
        ResourceGroup_ResourceType_Instance,
        ResourceGroup_ResourceType_AWSELBLOADBALANCER,
        ..
      ),

    -- * ResponseStatusCode_StatusClass
    ResponseStatusCode_StatusClass
      ( ResponseStatusCode_StatusClass_STATUSCLASSUNSPECIFIED,
        ResponseStatusCode_StatusClass_STATUSCLASS1XX,
        ResponseStatusCode_StatusClass_STATUSCLASS2XX,
        ResponseStatusCode_StatusClass_STATUSCLASS3XX,
        ResponseStatusCode_StatusClass_STATUSCLASS4XX,
        ResponseStatusCode_StatusClass_STATUSCLASS5XX,
        ResponseStatusCode_StatusClass_STATUSCLASSANY,
        ..
      ),

    -- * RowCountTest_Comparison
    RowCountTest_Comparison
      ( RowCountTest_Comparison_COMPARISONUNSPECIFIED,
        RowCountTest_Comparison_COMPARISONGT,
        RowCountTest_Comparison_COMPARISONGE,
        RowCountTest_Comparison_COMPARISONLT,
        RowCountTest_Comparison_COMPARISONLE,
        RowCountTest_Comparison_COMPARISONEQ,
        RowCountTest_Comparison_COMPARISONNE,
        ..
      ),

    -- * ServiceAgentAuthentication_Type
    ServiceAgentAuthentication_Type
      ( ServiceAgentAuthentication_Type_SERVICEAGENTAUTHENTICATIONTYPEUNSPECIFIED,
        ServiceAgentAuthentication_Type_OIDCTOKEN,
        ..
      ),

    -- * ServiceLevelObjective_CalendarPeriod
    ServiceLevelObjective_CalendarPeriod
      ( ServiceLevelObjective_CalendarPeriod_CALENDARPERIODUNSPECIFIED,
        ServiceLevelObjective_CalendarPeriod_Day,
        ServiceLevelObjective_CalendarPeriod_Week,
        ServiceLevelObjective_CalendarPeriod_Fortnight,
        ServiceLevelObjective_CalendarPeriod_Month,
        ServiceLevelObjective_CalendarPeriod_Quarter,
        ServiceLevelObjective_CalendarPeriod_Half,
        ServiceLevelObjective_CalendarPeriod_Year,
        ..
      ),

    -- * TimeSeries_MetricKind
    TimeSeries_MetricKind
      ( TimeSeries_MetricKind_METRICKINDUNSPECIFIED,
        TimeSeries_MetricKind_Gauge,
        TimeSeries_MetricKind_Delta,
        TimeSeries_MetricKind_Cumulative,
        ..
      ),

    -- * TimeSeries_ValueType
    TimeSeries_ValueType
      ( TimeSeries_ValueType_VALUETYPEUNSPECIFIED,
        TimeSeries_ValueType_Bool,
        TimeSeries_ValueType_INT64,
        TimeSeries_ValueType_Double,
        TimeSeries_ValueType_String,
        TimeSeries_ValueType_Distribution,
        TimeSeries_ValueType_Money,
        ..
      ),

    -- * Type_Syntax
    Type_Syntax
      ( Type_Syntax_SYNTAX_PROTO2,
        Type_Syntax_SYNTAX_PROTO3,
        Type_Syntax_SYNTAXEDITIONS,
        ..
      ),

    -- * UptimeCheckConfig_CheckerType
    UptimeCheckConfig_CheckerType
      ( UptimeCheckConfig_CheckerType_CHECKERTYPEUNSPECIFIED,
        UptimeCheckConfig_CheckerType_STATICIPCHECKERS,
        UptimeCheckConfig_CheckerType_VPCCHECKERS,
        ..
      ),

    -- * UptimeCheckConfig_SelectedRegionsItem
    UptimeCheckConfig_SelectedRegionsItem
      ( UptimeCheckConfig_SelectedRegionsItem_REGIONUNSPECIFIED,
        UptimeCheckConfig_SelectedRegionsItem_Usa,
        UptimeCheckConfig_SelectedRegionsItem_Europe,
        UptimeCheckConfig_SelectedRegionsItem_SOUTHAMERICA,
        UptimeCheckConfig_SelectedRegionsItem_ASIAPACIFIC,
        UptimeCheckConfig_SelectedRegionsItem_USAOREGON,
        UptimeCheckConfig_SelectedRegionsItem_USAIOWA,
        UptimeCheckConfig_SelectedRegionsItem_USAVIRGINIA,
        ..
      ),

    -- * UptimeCheckIp_Region
    UptimeCheckIp_Region
      ( UptimeCheckIp_Region_REGIONUNSPECIFIED,
        UptimeCheckIp_Region_Usa,
        UptimeCheckIp_Region_Europe,
        UptimeCheckIp_Region_SOUTHAMERICA,
        UptimeCheckIp_Region_ASIAPACIFIC,
        UptimeCheckIp_Region_USAOREGON,
        UptimeCheckIp_Region_USAIOWA,
        UptimeCheckIp_Region_USAVIRGINIA,
        ..
      ),

    -- * ValueDescriptor_MetricKind
    ValueDescriptor_MetricKind
      ( ValueDescriptor_MetricKind_METRICKINDUNSPECIFIED,
        ValueDescriptor_MetricKind_Gauge,
        ValueDescriptor_MetricKind_Delta,
        ValueDescriptor_MetricKind_Cumulative,
        ..
      ),

    -- * ValueDescriptor_ValueType
    ValueDescriptor_ValueType
      ( ValueDescriptor_ValueType_VALUETYPEUNSPECIFIED,
        ValueDescriptor_ValueType_Bool,
        ValueDescriptor_ValueType_INT64,
        ValueDescriptor_ValueType_Double,
        ValueDescriptor_ValueType_String,
        ValueDescriptor_ValueType_Distribution,
        ValueDescriptor_ValueType_Money,
        ..
      ),

    -- * FoldersTimeSeriesListAggregationCrossSeriesReducer
    FoldersTimeSeriesListAggregationCrossSeriesReducer
      ( FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
        FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
        ..
      ),

    -- * FoldersTimeSeriesListAggregationPerSeriesAligner
    FoldersTimeSeriesListAggregationPerSeriesAligner
      ( FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
        FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
        ..
      ),

    -- * FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
    FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
      ( FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
        FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
        ..
      ),

    -- * FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
    FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
      ( FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
        FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
        ..
      ),

    -- * FoldersTimeSeriesListView
    FoldersTimeSeriesListView
      ( FoldersTimeSeriesListView_Full,
        FoldersTimeSeriesListView_Headers,
        ..
      ),

    -- * OrganizationsTimeSeriesListAggregationCrossSeriesReducer
    OrganizationsTimeSeriesListAggregationCrossSeriesReducer
      ( OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
        OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
        ..
      ),

    -- * OrganizationsTimeSeriesListAggregationPerSeriesAligner
    OrganizationsTimeSeriesListAggregationPerSeriesAligner
      ( OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
        OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
        ..
      ),

    -- * OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
      ( OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
        OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
        ..
      ),

    -- * OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
    OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
      ( OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
        OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
        ..
      ),

    -- * OrganizationsTimeSeriesListView
    OrganizationsTimeSeriesListView
      ( OrganizationsTimeSeriesListView_Full,
        OrganizationsTimeSeriesListView_Headers,
        ..
      ),

    -- * ProjectsTimeSeriesListAggregationCrossSeriesReducer
    ProjectsTimeSeriesListAggregationCrossSeriesReducer
      ( ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
        ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
        ..
      ),

    -- * ProjectsTimeSeriesListAggregationPerSeriesAligner
    ProjectsTimeSeriesListAggregationPerSeriesAligner
      ( ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
        ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
        ..
      ),

    -- * ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
      ( ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
        ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
        ..
      ),

    -- * ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
    ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
      ( ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
        ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
        ..
      ),

    -- * ProjectsTimeSeriesListView
    ProjectsTimeSeriesListView
      ( ProjectsTimeSeriesListView_Full,
        ProjectsTimeSeriesListView_Headers,
        ..
      ),

    -- * ServicesServiceLevelObjectivesGetView
    ServicesServiceLevelObjectivesGetView
      ( ServicesServiceLevelObjectivesGetView_VIEWUNSPECIFIED,
        ServicesServiceLevelObjectivesGetView_Full,
        ServicesServiceLevelObjectivesGetView_Explicit,
        ..
      ),

    -- * ServicesServiceLevelObjectivesListView
    ServicesServiceLevelObjectivesListView
      ( ServicesServiceLevelObjectivesListView_VIEWUNSPECIFIED,
        ServicesServiceLevelObjectivesListView_Full,
        ServicesServiceLevelObjectivesListView_Explicit,
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

-- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
newtype Aggregation_CrossSeriesReducer = Aggregation_CrossSeriesReducer {fromAggregation_CrossSeriesReducer :: Core.Text}
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

-- | No cross-time series reduction. The output of the Aligner is returned.
pattern Aggregation_CrossSeriesReducer_REDUCENONE :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCENONE = Aggregation_CrossSeriesReducer "REDUCE_NONE"

-- | Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern Aggregation_CrossSeriesReducer_REDUCEMEAN :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCEMEAN = Aggregation_CrossSeriesReducer "REDUCE_MEAN"

-- | Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern Aggregation_CrossSeriesReducer_REDUCEMIN :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCEMIN = Aggregation_CrossSeriesReducer "REDUCE_MIN"

-- | Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern Aggregation_CrossSeriesReducer_REDUCEMAX :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCEMAX = Aggregation_CrossSeriesReducer "REDUCE_MAX"

-- | Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value/type of the output is the same as the value/type of the input.
pattern Aggregation_CrossSeriesReducer_REDUCESUM :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCESUM = Aggregation_CrossSeriesReducer "REDUCE_SUM"

-- | Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern Aggregation_CrossSeriesReducer_REDUCESTDDEV :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCESTDDEV = Aggregation_CrossSeriesReducer "REDUCE_STDDEV"

-- | Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value/type. The value/type of the output is INT64.
pattern Aggregation_CrossSeriesReducer_REDUCECOUNT :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCECOUNT = Aggregation_CrossSeriesReducer "REDUCE_COUNT"

-- | Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern Aggregation_CrossSeriesReducer_REDUCECOUNTTRUE :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCECOUNTTRUE = Aggregation_CrossSeriesReducer "REDUCE_COUNT_TRUE"

-- | Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern Aggregation_CrossSeriesReducer_REDUCECOUNTFALSE :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCECOUNTFALSE = Aggregation_CrossSeriesReducer "REDUCE_COUNT_FALSE"

-- | Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The output value is in the range 0.0, 1.0 and has value/type DOUBLE.
pattern Aggregation_CrossSeriesReducer_REDUCEFRACTIONTRUE :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCEFRACTIONTRUE = Aggregation_CrossSeriesReducer "REDUCE_FRACTION_TRUE"

-- | Reduce by computing the 99th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_99 :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_99 = Aggregation_CrossSeriesReducer "REDUCE_PERCENTILE_99"

-- | Reduce by computing the 95th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_95 :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_95 = Aggregation_CrossSeriesReducer "REDUCE_PERCENTILE_95"

-- | Reduce by computing the 50th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_50 :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_50 = Aggregation_CrossSeriesReducer "REDUCE_PERCENTILE_50"

-- | Reduce by computing the 5th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_05 :: Aggregation_CrossSeriesReducer
pattern Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_05 = Aggregation_CrossSeriesReducer "REDUCE_PERCENTILE_05"

{-# COMPLETE
  Aggregation_CrossSeriesReducer_REDUCENONE,
  Aggregation_CrossSeriesReducer_REDUCEMEAN,
  Aggregation_CrossSeriesReducer_REDUCEMIN,
  Aggregation_CrossSeriesReducer_REDUCEMAX,
  Aggregation_CrossSeriesReducer_REDUCESUM,
  Aggregation_CrossSeriesReducer_REDUCESTDDEV,
  Aggregation_CrossSeriesReducer_REDUCECOUNT,
  Aggregation_CrossSeriesReducer_REDUCECOUNTTRUE,
  Aggregation_CrossSeriesReducer_REDUCECOUNTFALSE,
  Aggregation_CrossSeriesReducer_REDUCEFRACTIONTRUE,
  Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_99,
  Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_95,
  Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_50,
  Aggregation_CrossSeriesReducer_REDUCE_PERCENTILE_05,
  Aggregation_CrossSeriesReducer
  #-}

-- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
newtype Aggregation_PerSeriesAligner = Aggregation_PerSeriesAligner {fromAggregation_PerSeriesAligner :: Core.Text}
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

-- | No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value/type of the result is the same as the value/type of the input.
pattern Aggregation_PerSeriesAligner_ALIGNNONE :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNNONE = Aggregation_PerSeriesAligner "ALIGN_NONE"

-- | Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value/type of the aligned result is the same as the value/type of the input.
pattern Aggregation_PerSeriesAligner_ALIGNDELTA :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNDELTA = Aggregation_PerSeriesAligner "ALIGN_DELTA"

-- | Align and convert to a rate. The result is computed as rate = (y1 - y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment/period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value/type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN/PERCENT/CHANGE aligner instead.
pattern Aggregation_PerSeriesAligner_ALIGNRATE :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNRATE = Aggregation_PerSeriesAligner "ALIGN_RATE"

-- | Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern Aggregation_PerSeriesAligner_ALIGNINTERPOLATE :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNINTERPOLATE = Aggregation_PerSeriesAligner "ALIGN_INTERPOLATE"

-- | Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value/type of the aligned result is the same as the value/type of the input.
pattern Aggregation_PerSeriesAligner_ALIGNNEXTOLDER :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNNEXTOLDER = Aggregation_PerSeriesAligner "ALIGN_NEXT_OLDER"

-- | Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern Aggregation_PerSeriesAligner_ALIGNMIN :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNMIN = Aggregation_PerSeriesAligner "ALIGN_MIN"

-- | Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern Aggregation_PerSeriesAligner_ALIGNMAX :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNMAX = Aggregation_PerSeriesAligner "ALIGN_MAX"

-- | Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGNMEAN :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNMEAN = Aggregation_PerSeriesAligner "ALIGN_MEAN"

-- | Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.
pattern Aggregation_PerSeriesAligner_ALIGNCOUNT :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNCOUNT = Aggregation_PerSeriesAligner "ALIGN_COUNT"

-- | Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value/type of the aligned result is the same as the value/type of the input.
pattern Aggregation_PerSeriesAligner_ALIGNSUM :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNSUM = Aggregation_PerSeriesAligner "ALIGN_SUM"

-- | Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGNSTDDEV :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNSTDDEV = Aggregation_PerSeriesAligner "ALIGN_STDDEV"

-- | Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern Aggregation_PerSeriesAligner_ALIGNCOUNTTRUE :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNCOUNTTRUE = Aggregation_PerSeriesAligner "ALIGN_COUNT_TRUE"

-- | Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern Aggregation_PerSeriesAligner_ALIGNCOUNTFALSE :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNCOUNTFALSE = Aggregation_PerSeriesAligner "ALIGN_COUNT_FALSE"

-- | Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGNFRACTIONTRUE :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNFRACTIONTRUE = Aggregation_PerSeriesAligner "ALIGN_FRACTION_TRUE"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_99 :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_99 = Aggregation_PerSeriesAligner "ALIGN_PERCENTILE_99"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_95 :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_95 = Aggregation_PerSeriesAligner "ALIGN_PERCENTILE_95"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_50 :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_50 = Aggregation_PerSeriesAligner "ALIGN_PERCENTILE_50"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_05 :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_05 = Aggregation_PerSeriesAligner "ALIGN_PERCENTILE_05"

-- | Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)\/previous) * 100, where the value of previous is determined based on the alignment/period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values \< 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value/type DOUBLE.
pattern Aggregation_PerSeriesAligner_ALIGNPERCENTCHANGE :: Aggregation_PerSeriesAligner
pattern Aggregation_PerSeriesAligner_ALIGNPERCENTCHANGE = Aggregation_PerSeriesAligner "ALIGN_PERCENT_CHANGE"

{-# COMPLETE
  Aggregation_PerSeriesAligner_ALIGNNONE,
  Aggregation_PerSeriesAligner_ALIGNDELTA,
  Aggregation_PerSeriesAligner_ALIGNRATE,
  Aggregation_PerSeriesAligner_ALIGNINTERPOLATE,
  Aggregation_PerSeriesAligner_ALIGNNEXTOLDER,
  Aggregation_PerSeriesAligner_ALIGNMIN,
  Aggregation_PerSeriesAligner_ALIGNMAX,
  Aggregation_PerSeriesAligner_ALIGNMEAN,
  Aggregation_PerSeriesAligner_ALIGNCOUNT,
  Aggregation_PerSeriesAligner_ALIGNSUM,
  Aggregation_PerSeriesAligner_ALIGNSTDDEV,
  Aggregation_PerSeriesAligner_ALIGNCOUNTTRUE,
  Aggregation_PerSeriesAligner_ALIGNCOUNTFALSE,
  Aggregation_PerSeriesAligner_ALIGNFRACTIONTRUE,
  Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_99,
  Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_95,
  Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_50,
  Aggregation_PerSeriesAligner_ALIGN_PERCENTILE_05,
  Aggregation_PerSeriesAligner_ALIGNPERCENTCHANGE,
  Aggregation_PerSeriesAligner
  #-}

-- | How to combine the results of multiple conditions to determine if an incident should be opened. If condition/time/series/query/language is present, this must be COMBINE_UNSPECIFIED.
newtype AlertPolicy_Combiner = AlertPolicy_Combiner {fromAlertPolicy_Combiner :: Core.Text}
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

-- | An unspecified combiner.
pattern AlertPolicy_Combiner_COMBINEUNSPECIFIED :: AlertPolicy_Combiner
pattern AlertPolicy_Combiner_COMBINEUNSPECIFIED = AlertPolicy_Combiner "COMBINE_UNSPECIFIED"

-- | Combine conditions using the logical AND operator. An incident is created only if all the conditions are met simultaneously. This combiner is satisfied if all conditions are met, even if they are met on completely different resources.
pattern AlertPolicy_Combiner_And :: AlertPolicy_Combiner
pattern AlertPolicy_Combiner_And = AlertPolicy_Combiner "AND"

-- | Combine conditions using the logical OR operator. An incident is created if any of the listed conditions is met.
pattern AlertPolicy_Combiner_OR :: AlertPolicy_Combiner
pattern AlertPolicy_Combiner_OR = AlertPolicy_Combiner "OR"

-- | Combine conditions using logical AND operator, but unlike the regular AND option, an incident is created only if all conditions are met simultaneously on at least one resource.
pattern AlertPolicy_Combiner_ANDWITHMATCHINGRESOURCE :: AlertPolicy_Combiner
pattern AlertPolicy_Combiner_ANDWITHMATCHINGRESOURCE = AlertPolicy_Combiner "AND_WITH_MATCHING_RESOURCE"

{-# COMPLETE
  AlertPolicy_Combiner_COMBINEUNSPECIFIED,
  AlertPolicy_Combiner_And,
  AlertPolicy_Combiner_OR,
  AlertPolicy_Combiner_ANDWITHMATCHINGRESOURCE,
  AlertPolicy_Combiner
  #-}

-- | Optional. The severity of an alerting policy indicates how important incidents generated by that policy are. The severity level will be displayed on the Incident detail page and in notifications.
newtype AlertPolicy_Severity = AlertPolicy_Severity {fromAlertPolicy_Severity :: Core.Text}
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

-- | No severity is specified. This is the default value.
pattern AlertPolicy_Severity_SEVERITYUNSPECIFIED :: AlertPolicy_Severity
pattern AlertPolicy_Severity_SEVERITYUNSPECIFIED = AlertPolicy_Severity "SEVERITY_UNSPECIFIED"

-- | This is the highest severity level. Use this if the problem could cause significant damage or downtime.
pattern AlertPolicy_Severity_Critical :: AlertPolicy_Severity
pattern AlertPolicy_Severity_Critical = AlertPolicy_Severity "CRITICAL"

-- | This is the medium severity level. Use this if the problem could cause minor damage or downtime.
pattern AlertPolicy_Severity_Error' :: AlertPolicy_Severity
pattern AlertPolicy_Severity_Error' = AlertPolicy_Severity "ERROR"

-- | This is the lowest severity level. Use this if the problem is not causing any damage or downtime, but could potentially lead to a problem in the future.
pattern AlertPolicy_Severity_Warning :: AlertPolicy_Severity
pattern AlertPolicy_Severity_Warning = AlertPolicy_Severity "WARNING"

{-# COMPLETE
  AlertPolicy_Severity_SEVERITYUNSPECIFIED,
  AlertPolicy_Severity_Critical,
  AlertPolicy_Severity_Error',
  AlertPolicy_Severity_Warning,
  AlertPolicy_Severity
  #-}

newtype AlertStrategy_NotificationPromptsItem = AlertStrategy_NotificationPromptsItem {fromAlertStrategy_NotificationPromptsItem :: Core.Text}
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

-- | No strategy specified. Treated as error.
pattern AlertStrategy_NotificationPromptsItem_NOTIFICATIONPROMPTUNSPECIFIED :: AlertStrategy_NotificationPromptsItem
pattern AlertStrategy_NotificationPromptsItem_NOTIFICATIONPROMPTUNSPECIFIED = AlertStrategy_NotificationPromptsItem "NOTIFICATION_PROMPT_UNSPECIFIED"

-- | Notify when an incident is opened.
pattern AlertStrategy_NotificationPromptsItem_Opened :: AlertStrategy_NotificationPromptsItem
pattern AlertStrategy_NotificationPromptsItem_Opened = AlertStrategy_NotificationPromptsItem "OPENED"

-- | Notify when an incident is closed.
pattern AlertStrategy_NotificationPromptsItem_Closed :: AlertStrategy_NotificationPromptsItem
pattern AlertStrategy_NotificationPromptsItem_Closed = AlertStrategy_NotificationPromptsItem "CLOSED"

{-# COMPLETE
  AlertStrategy_NotificationPromptsItem_NOTIFICATIONPROMPTUNSPECIFIED,
  AlertStrategy_NotificationPromptsItem_Opened,
  AlertStrategy_NotificationPromptsItem_Closed,
  AlertStrategy_NotificationPromptsItem
  #-}

-- | The type of measurement.
newtype CollectdValue_DataSourceType = CollectdValue_DataSourceType {fromCollectdValue_DataSourceType :: Core.Text}
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

-- | An unspecified data source type. This corresponds to google.api.MetricDescriptor.MetricKind.METRIC/KIND/UNSPECIFIED.
pattern CollectdValue_DataSourceType_UNSPECIFIEDDATASOURCETYPE :: CollectdValue_DataSourceType
pattern CollectdValue_DataSourceType_UNSPECIFIEDDATASOURCETYPE = CollectdValue_DataSourceType "UNSPECIFIED_DATA_SOURCE_TYPE"

-- | An instantaneous measurement of a varying quantity. This corresponds to google.api.MetricDescriptor.MetricKind.GAUGE.
pattern CollectdValue_DataSourceType_Gauge :: CollectdValue_DataSourceType
pattern CollectdValue_DataSourceType_Gauge = CollectdValue_DataSourceType "GAUGE"

-- | A cumulative value over time. This corresponds to google.api.MetricDescriptor.MetricKind.CUMULATIVE.
pattern CollectdValue_DataSourceType_Counter :: CollectdValue_DataSourceType
pattern CollectdValue_DataSourceType_Counter = CollectdValue_DataSourceType "COUNTER"

-- | A rate of change of the measurement.
pattern CollectdValue_DataSourceType_Derive :: CollectdValue_DataSourceType
pattern CollectdValue_DataSourceType_Derive = CollectdValue_DataSourceType "DERIVE"

-- | An amount of change since the last measurement interval. This corresponds to google.api.MetricDescriptor.MetricKind.DELTA.
pattern CollectdValue_DataSourceType_Absolute :: CollectdValue_DataSourceType
pattern CollectdValue_DataSourceType_Absolute = CollectdValue_DataSourceType "ABSOLUTE"

{-# COMPLETE
  CollectdValue_DataSourceType_UNSPECIFIEDDATASOURCETYPE,
  CollectdValue_DataSourceType_Gauge,
  CollectdValue_DataSourceType_Counter,
  CollectdValue_DataSourceType_Derive,
  CollectdValue_DataSourceType_Absolute,
  CollectdValue_DataSourceType
  #-}

-- | The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
newtype ContentMatcher_Matcher = ContentMatcher_Matcher {fromContentMatcher_Matcher :: Core.Text}
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

-- | No content matcher type specified (maintained for backward compatibility, but deprecated for future use). Treated as CONTAINS_STRING.
pattern ContentMatcher_Matcher_CONTENTMATCHEROPTIONUNSPECIFIED :: ContentMatcher_Matcher
pattern ContentMatcher_Matcher_CONTENTMATCHEROPTIONUNSPECIFIED = ContentMatcher_Matcher "CONTENT_MATCHER_OPTION_UNSPECIFIED"

-- | Selects substring matching. The match succeeds if the output contains the content string. This is the default value for checks without a matcher option, or where the value of matcher is CONTENT/MATCHER/OPTION_UNSPECIFIED.
pattern ContentMatcher_Matcher_CONTAINSSTRING :: ContentMatcher_Matcher
pattern ContentMatcher_Matcher_CONTAINSSTRING = ContentMatcher_Matcher "CONTAINS_STRING"

-- | Selects negation of substring matching. The match succeeds if the output does NOT contain the content string.
pattern ContentMatcher_Matcher_NOTCONTAINSSTRING :: ContentMatcher_Matcher
pattern ContentMatcher_Matcher_NOTCONTAINSSTRING = ContentMatcher_Matcher "NOT_CONTAINS_STRING"

-- | Selects regular-expression matching. The match succeeds if the output matches the regular expression specified in the content string. Regex matching is only supported for HTTP\/HTTPS checks.
pattern ContentMatcher_Matcher_MATCHESREGEX :: ContentMatcher_Matcher
pattern ContentMatcher_Matcher_MATCHESREGEX = ContentMatcher_Matcher "MATCHES_REGEX"

-- | Selects negation of regular-expression matching. The match succeeds if the output does NOT match the regular expression specified in the content string. Regex matching is only supported for HTTP\/HTTPS checks.
pattern ContentMatcher_Matcher_NOTMATCHESREGEX :: ContentMatcher_Matcher
pattern ContentMatcher_Matcher_NOTMATCHESREGEX = ContentMatcher_Matcher "NOT_MATCHES_REGEX"

-- | Selects JSONPath matching. See JsonPathMatcher for details on when the match succeeds. JSONPath matching is only supported for HTTP\/HTTPS checks.
pattern ContentMatcher_Matcher_MATCHESJSONPATH :: ContentMatcher_Matcher
pattern ContentMatcher_Matcher_MATCHESJSONPATH = ContentMatcher_Matcher "MATCHES_JSON_PATH"

-- | Selects JSONPath matching. See JsonPathMatcher for details on when the match succeeds. Succeeds when output does NOT match as specified. JSONPath is only supported for HTTP\/HTTPS checks.
pattern ContentMatcher_Matcher_NOTMATCHESJSONPATH :: ContentMatcher_Matcher
pattern ContentMatcher_Matcher_NOTMATCHESJSONPATH = ContentMatcher_Matcher "NOT_MATCHES_JSON_PATH"

{-# COMPLETE
  ContentMatcher_Matcher_CONTENTMATCHEROPTIONUNSPECIFIED,
  ContentMatcher_Matcher_CONTAINSSTRING,
  ContentMatcher_Matcher_NOTCONTAINSSTRING,
  ContentMatcher_Matcher_MATCHESREGEX,
  ContentMatcher_Matcher_NOTMATCHESREGEX,
  ContentMatcher_Matcher_MATCHESJSONPATH,
  ContentMatcher_Matcher_NOTMATCHESJSONPATH,
  ContentMatcher_Matcher
  #-}

-- | The field cardinality.
newtype Field_Cardinality = Field_Cardinality {fromField_Cardinality :: Core.Text}
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

-- | For fields with unknown cardinality.
pattern Field_Cardinality_CARDINALITYUNKNOWN :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYUNKNOWN = Field_Cardinality "CARDINALITY_UNKNOWN"

-- | For optional fields.
pattern Field_Cardinality_CARDINALITYOPTIONAL :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYOPTIONAL = Field_Cardinality "CARDINALITY_OPTIONAL"

-- | For required fields. Proto2 syntax only.
pattern Field_Cardinality_CARDINALITYREQUIRED :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYREQUIRED = Field_Cardinality "CARDINALITY_REQUIRED"

-- | For repeated fields.
pattern Field_Cardinality_CARDINALITYREPEATED :: Field_Cardinality
pattern Field_Cardinality_CARDINALITYREPEATED = Field_Cardinality "CARDINALITY_REPEATED"

{-# COMPLETE
  Field_Cardinality_CARDINALITYUNKNOWN,
  Field_Cardinality_CARDINALITYOPTIONAL,
  Field_Cardinality_CARDINALITYREQUIRED,
  Field_Cardinality_CARDINALITYREPEATED,
  Field_Cardinality
  #-}

-- | The field type.
newtype Field_Kind = Field_Kind {fromField_Kind :: Core.Text}
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

-- | Field type unknown.
pattern Field_Kind_TYPEUNKNOWN :: Field_Kind
pattern Field_Kind_TYPEUNKNOWN = Field_Kind "TYPE_UNKNOWN"

-- | Field type double.
pattern Field_Kind_TYPEDOUBLE :: Field_Kind
pattern Field_Kind_TYPEDOUBLE = Field_Kind "TYPE_DOUBLE"

-- | Field type float.
pattern Field_Kind_TYPEFLOAT :: Field_Kind
pattern Field_Kind_TYPEFLOAT = Field_Kind "TYPE_FLOAT"

-- | Field type int64.
pattern Field_Kind_TYPE_INT64 :: Field_Kind
pattern Field_Kind_TYPE_INT64 = Field_Kind "TYPE_INT64"

-- | Field type uint64.
pattern Field_Kind_TYPE_UINT64 :: Field_Kind
pattern Field_Kind_TYPE_UINT64 = Field_Kind "TYPE_UINT64"

-- | Field type int32.
pattern Field_Kind_TYPE_INT32 :: Field_Kind
pattern Field_Kind_TYPE_INT32 = Field_Kind "TYPE_INT32"

-- | Field type fixed64.
pattern Field_Kind_TYPE_FIXED64 :: Field_Kind
pattern Field_Kind_TYPE_FIXED64 = Field_Kind "TYPE_FIXED64"

-- | Field type fixed32.
pattern Field_Kind_TYPE_FIXED32 :: Field_Kind
pattern Field_Kind_TYPE_FIXED32 = Field_Kind "TYPE_FIXED32"

-- | Field type bool.
pattern Field_Kind_TYPEBOOL :: Field_Kind
pattern Field_Kind_TYPEBOOL = Field_Kind "TYPE_BOOL"

-- | Field type string.
pattern Field_Kind_TYPESTRING :: Field_Kind
pattern Field_Kind_TYPESTRING = Field_Kind "TYPE_STRING"

-- | Field type group. Proto2 syntax only, and deprecated.
pattern Field_Kind_TYPEGROUP :: Field_Kind
pattern Field_Kind_TYPEGROUP = Field_Kind "TYPE_GROUP"

-- | Field type message.
pattern Field_Kind_TYPEMESSAGE :: Field_Kind
pattern Field_Kind_TYPEMESSAGE = Field_Kind "TYPE_MESSAGE"

-- | Field type bytes.
pattern Field_Kind_TYPEBYTES :: Field_Kind
pattern Field_Kind_TYPEBYTES = Field_Kind "TYPE_BYTES"

-- | Field type uint32.
pattern Field_Kind_TYPE_UINT32 :: Field_Kind
pattern Field_Kind_TYPE_UINT32 = Field_Kind "TYPE_UINT32"

-- | Field type enum.
pattern Field_Kind_TYPEENUM :: Field_Kind
pattern Field_Kind_TYPEENUM = Field_Kind "TYPE_ENUM"

-- | Field type sfixed32.
pattern Field_Kind_TYPE_SFIXED32 :: Field_Kind
pattern Field_Kind_TYPE_SFIXED32 = Field_Kind "TYPE_SFIXED32"

-- | Field type sfixed64.
pattern Field_Kind_TYPE_SFIXED64 :: Field_Kind
pattern Field_Kind_TYPE_SFIXED64 = Field_Kind "TYPE_SFIXED64"

-- | Field type sint32.
pattern Field_Kind_TYPE_SINT32 :: Field_Kind
pattern Field_Kind_TYPE_SINT32 = Field_Kind "TYPE_SINT32"

-- | Field type sint64.
pattern Field_Kind_TYPE_SINT64 :: Field_Kind
pattern Field_Kind_TYPE_SINT64 = Field_Kind "TYPE_SINT64"

{-# COMPLETE
  Field_Kind_TYPEUNKNOWN,
  Field_Kind_TYPEDOUBLE,
  Field_Kind_TYPEFLOAT,
  Field_Kind_TYPE_INT64,
  Field_Kind_TYPE_UINT64,
  Field_Kind_TYPE_INT32,
  Field_Kind_TYPE_FIXED64,
  Field_Kind_TYPE_FIXED32,
  Field_Kind_TYPEBOOL,
  Field_Kind_TYPESTRING,
  Field_Kind_TYPEGROUP,
  Field_Kind_TYPEMESSAGE,
  Field_Kind_TYPEBYTES,
  Field_Kind_TYPE_UINT32,
  Field_Kind_TYPEENUM,
  Field_Kind_TYPE_SFIXED32,
  Field_Kind_TYPE_SFIXED64,
  Field_Kind_TYPE_SINT32,
  Field_Kind_TYPE_SINT64,
  Field_Kind
  #-}

-- | The content type header to use for the check. The following configurations result in errors: 1. Content type is specified in both the headers field and the content/type field. 2. Request method is GET and content/type is not TYPE/UNSPECIFIED 3. Request method is POST and content/type is TYPE/UNSPECIFIED. 4. Request method is POST and a \"Content-Type\" header is provided via headers field. The content/type field should be used instead.
newtype HttpCheck_ContentType = HttpCheck_ContentType {fromHttpCheck_ContentType :: Core.Text}
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

-- | No content type specified.
pattern HttpCheck_ContentType_TYPEUNSPECIFIED :: HttpCheck_ContentType
pattern HttpCheck_ContentType_TYPEUNSPECIFIED = HttpCheck_ContentType "TYPE_UNSPECIFIED"

-- | body is in URL-encoded form. Equivalent to setting the Content-Type to application\/x-www-form-urlencoded in the HTTP request.
pattern HttpCheck_ContentType_URLENCODED :: HttpCheck_ContentType
pattern HttpCheck_ContentType_URLENCODED = HttpCheck_ContentType "URL_ENCODED"

-- | body is in custom/content/type form. Equivalent to setting the Content-Type to the contents of custom/content/type in the HTTP request.
pattern HttpCheck_ContentType_USERPROVIDED :: HttpCheck_ContentType
pattern HttpCheck_ContentType_USERPROVIDED = HttpCheck_ContentType "USER_PROVIDED"

{-# COMPLETE
  HttpCheck_ContentType_TYPEUNSPECIFIED,
  HttpCheck_ContentType_URLENCODED,
  HttpCheck_ContentType_USERPROVIDED,
  HttpCheck_ContentType
  #-}

-- | The HTTP request method to use for the check. If set to METHOD/UNSPECIFIED then request/method defaults to GET.
newtype HttpCheck_RequestMethod = HttpCheck_RequestMethod {fromHttpCheck_RequestMethod :: Core.Text}
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

-- | No request method specified.
pattern HttpCheck_RequestMethod_METHODUNSPECIFIED :: HttpCheck_RequestMethod
pattern HttpCheck_RequestMethod_METHODUNSPECIFIED = HttpCheck_RequestMethod "METHOD_UNSPECIFIED"

-- | GET request.
pattern HttpCheck_RequestMethod_Get' :: HttpCheck_RequestMethod
pattern HttpCheck_RequestMethod_Get' = HttpCheck_RequestMethod "GET"

-- | POST request.
pattern HttpCheck_RequestMethod_Post' :: HttpCheck_RequestMethod
pattern HttpCheck_RequestMethod_Post' = HttpCheck_RequestMethod "POST"

{-# COMPLETE
  HttpCheck_RequestMethod_METHODUNSPECIFIED,
  HttpCheck_RequestMethod_Get',
  HttpCheck_RequestMethod_Post',
  HttpCheck_RequestMethod
  #-}

-- | The current operational state of the internal checker.
newtype InternalChecker_State = InternalChecker_State {fromInternalChecker_State :: Core.Text}
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

-- | An internal checker should never be in the unspecified state.
pattern InternalChecker_State_Unspecified :: InternalChecker_State
pattern InternalChecker_State_Unspecified = InternalChecker_State "UNSPECIFIED"

-- | The checker is being created, provisioned, and configured. A checker in this state can be returned by ListInternalCheckers or GetInternalChecker, as well as by examining the long running Operation (https:\/\/cloud.google.com\/apis\/design\/design/patterns#long/running_operations) that created it.
pattern InternalChecker_State_Creating :: InternalChecker_State
pattern InternalChecker_State_Creating = InternalChecker_State "CREATING"

-- | The checker is running and available for use. A checker in this state can be returned by ListInternalCheckers or GetInternalChecker as well as by examining the long running Operation (https:\/\/cloud.google.com\/apis\/design\/design/patterns#long/running_operations) that created it. If a checker is being torn down, it is neither visible nor usable, so there is no \"deleting\" or \"down\" state.
pattern InternalChecker_State_Running :: InternalChecker_State
pattern InternalChecker_State_Running = InternalChecker_State "RUNNING"

{-# COMPLETE
  InternalChecker_State_Unspecified,
  InternalChecker_State_Creating,
  InternalChecker_State_Running,
  InternalChecker_State
  #-}

-- | The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
newtype JsonPathMatcher_JsonMatcher = JsonPathMatcher_JsonMatcher {fromJsonPathMatcher_JsonMatcher :: Core.Text}
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

-- | No JSONPath matcher type specified (not valid).
pattern JsonPathMatcher_JsonMatcher_JSONPATHMATCHEROPTIONUNSPECIFIED :: JsonPathMatcher_JsonMatcher
pattern JsonPathMatcher_JsonMatcher_JSONPATHMATCHEROPTIONUNSPECIFIED = JsonPathMatcher_JsonMatcher "JSON_PATH_MATCHER_OPTION_UNSPECIFIED"

-- | Selects \'exact string\' matching. The match succeeds if the content at the json_path within the output is exactly the same as the content string.
pattern JsonPathMatcher_JsonMatcher_EXACTMATCH :: JsonPathMatcher_JsonMatcher
pattern JsonPathMatcher_JsonMatcher_EXACTMATCH = JsonPathMatcher_JsonMatcher "EXACT_MATCH"

-- | Selects regular-expression matching. The match succeeds if the content at the json_path within the output matches the regular expression specified in the content string.
pattern JsonPathMatcher_JsonMatcher_REGEXMATCH :: JsonPathMatcher_JsonMatcher
pattern JsonPathMatcher_JsonMatcher_REGEXMATCH = JsonPathMatcher_JsonMatcher "REGEX_MATCH"

{-# COMPLETE
  JsonPathMatcher_JsonMatcher_JSONPATHMATCHEROPTIONUNSPECIFIED,
  JsonPathMatcher_JsonMatcher_EXACTMATCH,
  JsonPathMatcher_JsonMatcher_REGEXMATCH,
  JsonPathMatcher_JsonMatcher
  #-}

-- | The type of data that can be assigned to the label.
newtype LabelDescriptor_ValueType = LabelDescriptor_ValueType {fromLabelDescriptor_ValueType :: Core.Text}
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

-- | A variable-length string, not to exceed 1,024 characters. This is the default value type.
pattern LabelDescriptor_ValueType_String :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_String = LabelDescriptor_ValueType "STRING"

-- | Boolean; true or false.
pattern LabelDescriptor_ValueType_Bool :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_Bool = LabelDescriptor_ValueType "BOOL"

-- | A 64-bit signed integer.
pattern LabelDescriptor_ValueType_INT64 :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_INT64 = LabelDescriptor_ValueType "INT64"

{-# COMPLETE
  LabelDescriptor_ValueType_String,
  LabelDescriptor_ValueType_Bool,
  LabelDescriptor_ValueType_INT64,
  LabelDescriptor_ValueType
  #-}

-- | Optional. The launch stage of the metric definition.
newtype MetricDescriptor_LaunchStage = MetricDescriptor_LaunchStage {fromMetricDescriptor_LaunchStage :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MetricDescriptor_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MetricDescriptor_LaunchStage_Unimplemented :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Unimplemented = MetricDescriptor_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MetricDescriptor_LaunchStage_Prelaunch :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Prelaunch = MetricDescriptor_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MetricDescriptor_LaunchStage_EARLYACCESS :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_EARLYACCESS = MetricDescriptor_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MetricDescriptor_LaunchStage_Alpha :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Alpha = MetricDescriptor_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MetricDescriptor_LaunchStage_Beta :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Beta = MetricDescriptor_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MetricDescriptor_LaunchStage_GA :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_GA = MetricDescriptor_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud Platform Subject to the Deprecation Policy (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
pattern MetricDescriptor_LaunchStage_Deprecated :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Deprecated = MetricDescriptor_LaunchStage "DEPRECATED"

{-# COMPLETE
  MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MetricDescriptor_LaunchStage_Unimplemented,
  MetricDescriptor_LaunchStage_Prelaunch,
  MetricDescriptor_LaunchStage_EARLYACCESS,
  MetricDescriptor_LaunchStage_Alpha,
  MetricDescriptor_LaunchStage_Beta,
  MetricDescriptor_LaunchStage_GA,
  MetricDescriptor_LaunchStage_Deprecated,
  MetricDescriptor_LaunchStage
  #-}

-- | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric/kind and value/type might not be supported.
newtype MetricDescriptor_MetricKind = MetricDescriptor_MetricKind {fromMetricDescriptor_MetricKind :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED = MetricDescriptor_MetricKind "METRIC_KIND_UNSPECIFIED"

-- | An instantaneous measurement of a value.
pattern MetricDescriptor_MetricKind_Gauge :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Gauge = MetricDescriptor_MetricKind "GAUGE"

-- | The change in a value during a time interval.
pattern MetricDescriptor_MetricKind_Delta :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Delta = MetricDescriptor_MetricKind "DELTA"

-- | A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.
pattern MetricDescriptor_MetricKind_Cumulative :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Cumulative = MetricDescriptor_MetricKind "CUMULATIVE"

{-# COMPLETE
  MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED,
  MetricDescriptor_MetricKind_Gauge,
  MetricDescriptor_MetricKind_Delta,
  MetricDescriptor_MetricKind_Cumulative,
  MetricDescriptor_MetricKind
  #-}

-- | Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric/kind and value/type might not be supported.
newtype MetricDescriptor_ValueType = MetricDescriptor_ValueType {fromMetricDescriptor_ValueType :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED = MetricDescriptor_ValueType "VALUE_TYPE_UNSPECIFIED"

-- | The value is a boolean. This value type can be used only if the metric kind is GAUGE.
pattern MetricDescriptor_ValueType_Bool :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Bool = MetricDescriptor_ValueType "BOOL"

-- | The value is a signed 64-bit integer.
pattern MetricDescriptor_ValueType_INT64 :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_INT64 = MetricDescriptor_ValueType "INT64"

-- | The value is a double precision floating point number.
pattern MetricDescriptor_ValueType_Double :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Double = MetricDescriptor_ValueType "DOUBLE"

-- | The value is a text string. This value type can be used only if the metric kind is GAUGE.
pattern MetricDescriptor_ValueType_String :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_String = MetricDescriptor_ValueType "STRING"

-- | The value is a Distribution.
pattern MetricDescriptor_ValueType_Distribution :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Distribution = MetricDescriptor_ValueType "DISTRIBUTION"

-- | The value is money.
pattern MetricDescriptor_ValueType_Money :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Money = MetricDescriptor_ValueType "MONEY"

{-# COMPLETE
  MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED,
  MetricDescriptor_ValueType_Bool,
  MetricDescriptor_ValueType_INT64,
  MetricDescriptor_ValueType_Double,
  MetricDescriptor_ValueType_String,
  MetricDescriptor_ValueType_Distribution,
  MetricDescriptor_ValueType_Money,
  MetricDescriptor_ValueType
  #-}

-- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
newtype MetricDescriptorMetadata_LaunchStage = MetricDescriptorMetadata_LaunchStage {fromMetricDescriptorMetadata_LaunchStage :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MetricDescriptorMetadata_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MetricDescriptorMetadata_LaunchStage_Unimplemented :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Unimplemented = MetricDescriptorMetadata_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MetricDescriptorMetadata_LaunchStage_Prelaunch :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Prelaunch = MetricDescriptorMetadata_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MetricDescriptorMetadata_LaunchStage_EARLYACCESS :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_EARLYACCESS = MetricDescriptorMetadata_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MetricDescriptorMetadata_LaunchStage_Alpha :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Alpha = MetricDescriptorMetadata_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MetricDescriptorMetadata_LaunchStage_Beta :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Beta = MetricDescriptorMetadata_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MetricDescriptorMetadata_LaunchStage_GA :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_GA = MetricDescriptorMetadata_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud Platform Subject to the Deprecation Policy (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
pattern MetricDescriptorMetadata_LaunchStage_Deprecated :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Deprecated = MetricDescriptorMetadata_LaunchStage "DEPRECATED"

{-# COMPLETE
  MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MetricDescriptorMetadata_LaunchStage_Unimplemented,
  MetricDescriptorMetadata_LaunchStage_Prelaunch,
  MetricDescriptorMetadata_LaunchStage_EARLYACCESS,
  MetricDescriptorMetadata_LaunchStage_Alpha,
  MetricDescriptorMetadata_LaunchStage_Beta,
  MetricDescriptorMetadata_LaunchStage_GA,
  MetricDescriptorMetadata_LaunchStage_Deprecated,
  MetricDescriptorMetadata_LaunchStage
  #-}

newtype MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem {fromMetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "TIME_SERIES_RESOURCE_HIERARCHY_LEVEL_UNSPECIFIED"

-- | Scopes a metric to a project.
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "PROJECT"

-- | Scopes a metric to an organization.
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "ORGANIZATION"

-- | Scopes a metric to a folder.
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder :: MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
pattern MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder = MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem "FOLDER"

{-# COMPLETE
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_TIMESERIESRESOURCEHIERARCHYLEVELUNSPECIFIED,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Project,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Organization,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem_Folder,
  MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem
  #-}

-- | The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold/value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON/LT and COMPARISON_GT are supported currently.
newtype MetricThreshold_Comparison = MetricThreshold_Comparison {fromMetricThreshold_Comparison :: Core.Text}
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

-- | No ordering relationship is specified.
pattern MetricThreshold_Comparison_COMPARISONUNSPECIFIED :: MetricThreshold_Comparison
pattern MetricThreshold_Comparison_COMPARISONUNSPECIFIED = MetricThreshold_Comparison "COMPARISON_UNSPECIFIED"

-- | True if the left argument is greater than the right argument.
pattern MetricThreshold_Comparison_COMPARISONGT :: MetricThreshold_Comparison
pattern MetricThreshold_Comparison_COMPARISONGT = MetricThreshold_Comparison "COMPARISON_GT"

-- | True if the left argument is greater than or equal to the right argument.
pattern MetricThreshold_Comparison_COMPARISONGE :: MetricThreshold_Comparison
pattern MetricThreshold_Comparison_COMPARISONGE = MetricThreshold_Comparison "COMPARISON_GE"

-- | True if the left argument is less than the right argument.
pattern MetricThreshold_Comparison_COMPARISONLT :: MetricThreshold_Comparison
pattern MetricThreshold_Comparison_COMPARISONLT = MetricThreshold_Comparison "COMPARISON_LT"

-- | True if the left argument is less than or equal to the right argument.
pattern MetricThreshold_Comparison_COMPARISONLE :: MetricThreshold_Comparison
pattern MetricThreshold_Comparison_COMPARISONLE = MetricThreshold_Comparison "COMPARISON_LE"

-- | True if the left argument is equal to the right argument.
pattern MetricThreshold_Comparison_COMPARISONEQ :: MetricThreshold_Comparison
pattern MetricThreshold_Comparison_COMPARISONEQ = MetricThreshold_Comparison "COMPARISON_EQ"

-- | True if the left argument is not equal to the right argument.
pattern MetricThreshold_Comparison_COMPARISONNE :: MetricThreshold_Comparison
pattern MetricThreshold_Comparison_COMPARISONNE = MetricThreshold_Comparison "COMPARISON_NE"

{-# COMPLETE
  MetricThreshold_Comparison_COMPARISONUNSPECIFIED,
  MetricThreshold_Comparison_COMPARISONGT,
  MetricThreshold_Comparison_COMPARISONGE,
  MetricThreshold_Comparison_COMPARISONLT,
  MetricThreshold_Comparison_COMPARISONLE,
  MetricThreshold_Comparison_COMPARISONEQ,
  MetricThreshold_Comparison_COMPARISONNE,
  MetricThreshold_Comparison
  #-}

-- | A condition control that determines how metric-threshold conditions are evaluated when data stops arriving. To use this control, the value of the duration field must be greater than or equal to 60 seconds.
newtype MetricThreshold_EvaluationMissingData = MetricThreshold_EvaluationMissingData {fromMetricThreshold_EvaluationMissingData :: Core.Text}
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

-- | An unspecified evaluation missing data option. Equivalent to EVALUATION/MISSING/DATA/NO/OP.
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED :: MetricThreshold_EvaluationMissingData
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED = MetricThreshold_EvaluationMissingData "EVALUATION_MISSING_DATA_UNSPECIFIED"

-- | If there is no data to evaluate the condition, then evaluate the condition as false.
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE :: MetricThreshold_EvaluationMissingData
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE = MetricThreshold_EvaluationMissingData "EVALUATION_MISSING_DATA_INACTIVE"

-- | If there is no data to evaluate the condition, then evaluate the condition as true.
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE :: MetricThreshold_EvaluationMissingData
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE = MetricThreshold_EvaluationMissingData "EVALUATION_MISSING_DATA_ACTIVE"

-- | Do not evaluate the condition to any value if there is no data.
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATANOOP :: MetricThreshold_EvaluationMissingData
pattern MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATANOOP = MetricThreshold_EvaluationMissingData "EVALUATION_MISSING_DATA_NO_OP"

{-# COMPLETE
  MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED,
  MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE,
  MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE,
  MetricThreshold_EvaluationMissingData_EVALUATIONMISSINGDATANOOP,
  MetricThreshold_EvaluationMissingData
  #-}

-- | Optional. The launch stage of the monitored resource definition.
newtype MonitoredResourceDescriptor_LaunchStage = MonitoredResourceDescriptor_LaunchStage {fromMonitoredResourceDescriptor_LaunchStage :: Core.Text}
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

-- | Do not use this default value.
pattern MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MonitoredResourceDescriptor_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MonitoredResourceDescriptor_LaunchStage_Unimplemented :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Unimplemented = MonitoredResourceDescriptor_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MonitoredResourceDescriptor_LaunchStage_Prelaunch :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Prelaunch = MonitoredResourceDescriptor_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MonitoredResourceDescriptor_LaunchStage_EARLYACCESS :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_EARLYACCESS = MonitoredResourceDescriptor_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MonitoredResourceDescriptor_LaunchStage_Alpha :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Alpha = MonitoredResourceDescriptor_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MonitoredResourceDescriptor_LaunchStage_Beta :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Beta = MonitoredResourceDescriptor_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MonitoredResourceDescriptor_LaunchStage_GA :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_GA = MonitoredResourceDescriptor_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud Platform Subject to the Deprecation Policy (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
pattern MonitoredResourceDescriptor_LaunchStage_Deprecated :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Deprecated = MonitoredResourceDescriptor_LaunchStage "DEPRECATED"

{-# COMPLETE
  MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MonitoredResourceDescriptor_LaunchStage_Unimplemented,
  MonitoredResourceDescriptor_LaunchStage_Prelaunch,
  MonitoredResourceDescriptor_LaunchStage_EARLYACCESS,
  MonitoredResourceDescriptor_LaunchStage_Alpha,
  MonitoredResourceDescriptor_LaunchStage_Beta,
  MonitoredResourceDescriptor_LaunchStage_GA,
  MonitoredResourceDescriptor_LaunchStage_Deprecated,
  MonitoredResourceDescriptor_LaunchStage
  #-}

-- | A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
newtype MonitoringQueryLanguageCondition_EvaluationMissingData = MonitoringQueryLanguageCondition_EvaluationMissingData {fromMonitoringQueryLanguageCondition_EvaluationMissingData :: Core.Text}
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

-- | An unspecified evaluation missing data option. Equivalent to EVALUATION/MISSING/DATA/NO/OP.
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED :: MonitoringQueryLanguageCondition_EvaluationMissingData
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED = MonitoringQueryLanguageCondition_EvaluationMissingData "EVALUATION_MISSING_DATA_UNSPECIFIED"

-- | If there is no data to evaluate the condition, then evaluate the condition as false.
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE :: MonitoringQueryLanguageCondition_EvaluationMissingData
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE = MonitoringQueryLanguageCondition_EvaluationMissingData "EVALUATION_MISSING_DATA_INACTIVE"

-- | If there is no data to evaluate the condition, then evaluate the condition as true.
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE :: MonitoringQueryLanguageCondition_EvaluationMissingData
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE = MonitoringQueryLanguageCondition_EvaluationMissingData "EVALUATION_MISSING_DATA_ACTIVE"

-- | Do not evaluate the condition to any value if there is no data.
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATANOOP :: MonitoringQueryLanguageCondition_EvaluationMissingData
pattern MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATANOOP = MonitoringQueryLanguageCondition_EvaluationMissingData "EVALUATION_MISSING_DATA_NO_OP"

{-# COMPLETE
  MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAUNSPECIFIED,
  MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAINACTIVE,
  MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATAACTIVE,
  MonitoringQueryLanguageCondition_EvaluationMissingData_EVALUATIONMISSINGDATANOOP,
  MonitoringQueryLanguageCondition_EvaluationMissingData
  #-}

-- | Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
newtype NotificationChannel_VerificationStatus = NotificationChannel_VerificationStatus {fromNotificationChannel_VerificationStatus :: Core.Text}
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

-- | Sentinel value used to indicate that the state is unknown, omitted, or is not applicable (as in the case of channels that neither support nor require verification in order to function).
pattern NotificationChannel_VerificationStatus_VERIFICATIONSTATUSUNSPECIFIED :: NotificationChannel_VerificationStatus
pattern NotificationChannel_VerificationStatus_VERIFICATIONSTATUSUNSPECIFIED = NotificationChannel_VerificationStatus "VERIFICATION_STATUS_UNSPECIFIED"

-- | The channel has yet to be verified and requires verification to function. Note that this state also applies to the case where the verification process has been initiated by sending a verification code but where the verification code has not been submitted to complete the process.
pattern NotificationChannel_VerificationStatus_Unverified :: NotificationChannel_VerificationStatus
pattern NotificationChannel_VerificationStatus_Unverified = NotificationChannel_VerificationStatus "UNVERIFIED"

-- | It has been proven that notifications can be received on this notification channel and that someone on the project has access to messages that are delivered to that channel.
pattern NotificationChannel_VerificationStatus_Verified :: NotificationChannel_VerificationStatus
pattern NotificationChannel_VerificationStatus_Verified = NotificationChannel_VerificationStatus "VERIFIED"

{-# COMPLETE
  NotificationChannel_VerificationStatus_VERIFICATIONSTATUSUNSPECIFIED,
  NotificationChannel_VerificationStatus_Unverified,
  NotificationChannel_VerificationStatus_Verified,
  NotificationChannel_VerificationStatus
  #-}

-- | The product launch stage for channels of this type.
newtype NotificationChannelDescriptor_LaunchStage = NotificationChannelDescriptor_LaunchStage {fromNotificationChannelDescriptor_LaunchStage :: Core.Text}
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

-- | Do not use this default value.
pattern NotificationChannelDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED = NotificationChannelDescriptor_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern NotificationChannelDescriptor_LaunchStage_Unimplemented :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_Unimplemented = NotificationChannelDescriptor_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern NotificationChannelDescriptor_LaunchStage_Prelaunch :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_Prelaunch = NotificationChannelDescriptor_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern NotificationChannelDescriptor_LaunchStage_EARLYACCESS :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_EARLYACCESS = NotificationChannelDescriptor_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern NotificationChannelDescriptor_LaunchStage_Alpha :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_Alpha = NotificationChannelDescriptor_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern NotificationChannelDescriptor_LaunchStage_Beta :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_Beta = NotificationChannelDescriptor_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern NotificationChannelDescriptor_LaunchStage_GA :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_GA = NotificationChannelDescriptor_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud Platform Subject to the Deprecation Policy (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
pattern NotificationChannelDescriptor_LaunchStage_Deprecated :: NotificationChannelDescriptor_LaunchStage
pattern NotificationChannelDescriptor_LaunchStage_Deprecated = NotificationChannelDescriptor_LaunchStage "DEPRECATED"

{-# COMPLETE
  NotificationChannelDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  NotificationChannelDescriptor_LaunchStage_Unimplemented,
  NotificationChannelDescriptor_LaunchStage_Prelaunch,
  NotificationChannelDescriptor_LaunchStage_EARLYACCESS,
  NotificationChannelDescriptor_LaunchStage_Alpha,
  NotificationChannelDescriptor_LaunchStage_Beta,
  NotificationChannelDescriptor_LaunchStage_GA,
  NotificationChannelDescriptor_LaunchStage_Deprecated,
  NotificationChannelDescriptor_LaunchStage
  #-}

newtype NotificationChannelDescriptor_SupportedTiersItem = NotificationChannelDescriptor_SupportedTiersItem {fromNotificationChannelDescriptor_SupportedTiersItem :: Core.Text}
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

-- | An invalid sentinel value, used to indicate that a tier has not been provided explicitly.
pattern NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERUNSPECIFIED :: NotificationChannelDescriptor_SupportedTiersItem
pattern NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERUNSPECIFIED = NotificationChannelDescriptor_SupportedTiersItem "SERVICE_TIER_UNSPECIFIED"

-- | The Cloud Monitoring Basic tier, a free tier of service that provides basic features, a moderate allotment of logs, and access to built-in metrics. A number of features are not available in this tier. For more details, see the service tiers documentation (https:\/\/cloud.google.com\/monitoring\/workspaces\/tiers).
pattern NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERBASIC :: NotificationChannelDescriptor_SupportedTiersItem
pattern NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERBASIC = NotificationChannelDescriptor_SupportedTiersItem "SERVICE_TIER_BASIC"

-- | The Cloud Monitoring Premium tier, a higher, more expensive tier of service that provides access to all Cloud Monitoring features, lets you use Cloud Monitoring with AWS accounts, and has a larger allotments for logs and metrics. For more details, see the service tiers documentation (https:\/\/cloud.google.com\/monitoring\/workspaces\/tiers).
pattern NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERPREMIUM :: NotificationChannelDescriptor_SupportedTiersItem
pattern NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERPREMIUM = NotificationChannelDescriptor_SupportedTiersItem "SERVICE_TIER_PREMIUM"

{-# COMPLETE
  NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERUNSPECIFIED,
  NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERBASIC,
  NotificationChannelDescriptor_SupportedTiersItem_SERVICETIERPREMIUM,
  NotificationChannelDescriptor_SupportedTiersItem
  #-}

-- | Current state of the batch operation.
newtype OperationMetadata_State = OperationMetadata_State {fromOperationMetadata_State :: Core.Text}
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

-- | Invalid.
pattern OperationMetadata_State_STATEUNSPECIFIED :: OperationMetadata_State
pattern OperationMetadata_State_STATEUNSPECIFIED = OperationMetadata_State "STATE_UNSPECIFIED"

-- | Request has been received.
pattern OperationMetadata_State_Created :: OperationMetadata_State
pattern OperationMetadata_State_Created = OperationMetadata_State "CREATED"

-- | Request is actively being processed.
pattern OperationMetadata_State_Running :: OperationMetadata_State
pattern OperationMetadata_State_Running = OperationMetadata_State "RUNNING"

-- | The batch processing is done.
pattern OperationMetadata_State_Done :: OperationMetadata_State
pattern OperationMetadata_State_Done = OperationMetadata_State "DONE"

-- | The batch processing was cancelled.
pattern OperationMetadata_State_Cancelled :: OperationMetadata_State
pattern OperationMetadata_State_Cancelled = OperationMetadata_State "CANCELLED"

{-# COMPLETE
  OperationMetadata_State_STATEUNSPECIFIED,
  OperationMetadata_State_Created,
  OperationMetadata_State_Running,
  OperationMetadata_State_Done,
  OperationMetadata_State_Cancelled,
  OperationMetadata_State
  #-}

-- | The resource type of the group members.
newtype ResourceGroup_ResourceType = ResourceGroup_ResourceType {fromResourceGroup_ResourceType :: Core.Text}
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

-- | Default value (not valid).
pattern ResourceGroup_ResourceType_RESOURCETYPEUNSPECIFIED :: ResourceGroup_ResourceType
pattern ResourceGroup_ResourceType_RESOURCETYPEUNSPECIFIED = ResourceGroup_ResourceType "RESOURCE_TYPE_UNSPECIFIED"

-- | A group of instances from Google Cloud Platform (GCP) or Amazon Web Services (AWS).
pattern ResourceGroup_ResourceType_Instance :: ResourceGroup_ResourceType
pattern ResourceGroup_ResourceType_Instance = ResourceGroup_ResourceType "INSTANCE"

-- | A group of Amazon ELB load balancers.
pattern ResourceGroup_ResourceType_AWSELBLOADBALANCER :: ResourceGroup_ResourceType
pattern ResourceGroup_ResourceType_AWSELBLOADBALANCER = ResourceGroup_ResourceType "AWS_ELB_LOAD_BALANCER"

{-# COMPLETE
  ResourceGroup_ResourceType_RESOURCETYPEUNSPECIFIED,
  ResourceGroup_ResourceType_Instance,
  ResourceGroup_ResourceType_AWSELBLOADBALANCER,
  ResourceGroup_ResourceType
  #-}

-- | A class of status codes to accept.
newtype ResponseStatusCode_StatusClass = ResponseStatusCode_StatusClass {fromResponseStatusCode_StatusClass :: Core.Text}
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

-- | Default value that matches no status codes.
pattern ResponseStatusCode_StatusClass_STATUSCLASSUNSPECIFIED :: ResponseStatusCode_StatusClass
pattern ResponseStatusCode_StatusClass_STATUSCLASSUNSPECIFIED = ResponseStatusCode_StatusClass "STATUS_CLASS_UNSPECIFIED"

-- | The class of status codes between 100 and 199.
pattern ResponseStatusCode_StatusClass_STATUSCLASS1XX :: ResponseStatusCode_StatusClass
pattern ResponseStatusCode_StatusClass_STATUSCLASS1XX = ResponseStatusCode_StatusClass "STATUS_CLASS_1XX"

-- | The class of status codes between 200 and 299.
pattern ResponseStatusCode_StatusClass_STATUSCLASS2XX :: ResponseStatusCode_StatusClass
pattern ResponseStatusCode_StatusClass_STATUSCLASS2XX = ResponseStatusCode_StatusClass "STATUS_CLASS_2XX"

-- | The class of status codes between 300 and 399.
pattern ResponseStatusCode_StatusClass_STATUSCLASS3XX :: ResponseStatusCode_StatusClass
pattern ResponseStatusCode_StatusClass_STATUSCLASS3XX = ResponseStatusCode_StatusClass "STATUS_CLASS_3XX"

-- | The class of status codes between 400 and 499.
pattern ResponseStatusCode_StatusClass_STATUSCLASS4XX :: ResponseStatusCode_StatusClass
pattern ResponseStatusCode_StatusClass_STATUSCLASS4XX = ResponseStatusCode_StatusClass "STATUS_CLASS_4XX"

-- | The class of status codes between 500 and 599.
pattern ResponseStatusCode_StatusClass_STATUSCLASS5XX :: ResponseStatusCode_StatusClass
pattern ResponseStatusCode_StatusClass_STATUSCLASS5XX = ResponseStatusCode_StatusClass "STATUS_CLASS_5XX"

-- | The class of all status codes.
pattern ResponseStatusCode_StatusClass_STATUSCLASSANY :: ResponseStatusCode_StatusClass
pattern ResponseStatusCode_StatusClass_STATUSCLASSANY = ResponseStatusCode_StatusClass "STATUS_CLASS_ANY"

{-# COMPLETE
  ResponseStatusCode_StatusClass_STATUSCLASSUNSPECIFIED,
  ResponseStatusCode_StatusClass_STATUSCLASS1XX,
  ResponseStatusCode_StatusClass_STATUSCLASS2XX,
  ResponseStatusCode_StatusClass_STATUSCLASS3XX,
  ResponseStatusCode_StatusClass_STATUSCLASS4XX,
  ResponseStatusCode_StatusClass_STATUSCLASS5XX,
  ResponseStatusCode_StatusClass_STATUSCLASSANY,
  ResponseStatusCode_StatusClass
  #-}

-- | Required. The comparison to apply between the number of rows returned by the query and the threshold.
newtype RowCountTest_Comparison = RowCountTest_Comparison {fromRowCountTest_Comparison :: Core.Text}
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

-- | No ordering relationship is specified.
pattern RowCountTest_Comparison_COMPARISONUNSPECIFIED :: RowCountTest_Comparison
pattern RowCountTest_Comparison_COMPARISONUNSPECIFIED = RowCountTest_Comparison "COMPARISON_UNSPECIFIED"

-- | True if the left argument is greater than the right argument.
pattern RowCountTest_Comparison_COMPARISONGT :: RowCountTest_Comparison
pattern RowCountTest_Comparison_COMPARISONGT = RowCountTest_Comparison "COMPARISON_GT"

-- | True if the left argument is greater than or equal to the right argument.
pattern RowCountTest_Comparison_COMPARISONGE :: RowCountTest_Comparison
pattern RowCountTest_Comparison_COMPARISONGE = RowCountTest_Comparison "COMPARISON_GE"

-- | True if the left argument is less than the right argument.
pattern RowCountTest_Comparison_COMPARISONLT :: RowCountTest_Comparison
pattern RowCountTest_Comparison_COMPARISONLT = RowCountTest_Comparison "COMPARISON_LT"

-- | True if the left argument is less than or equal to the right argument.
pattern RowCountTest_Comparison_COMPARISONLE :: RowCountTest_Comparison
pattern RowCountTest_Comparison_COMPARISONLE = RowCountTest_Comparison "COMPARISON_LE"

-- | True if the left argument is equal to the right argument.
pattern RowCountTest_Comparison_COMPARISONEQ :: RowCountTest_Comparison
pattern RowCountTest_Comparison_COMPARISONEQ = RowCountTest_Comparison "COMPARISON_EQ"

-- | True if the left argument is not equal to the right argument.
pattern RowCountTest_Comparison_COMPARISONNE :: RowCountTest_Comparison
pattern RowCountTest_Comparison_COMPARISONNE = RowCountTest_Comparison "COMPARISON_NE"

{-# COMPLETE
  RowCountTest_Comparison_COMPARISONUNSPECIFIED,
  RowCountTest_Comparison_COMPARISONGT,
  RowCountTest_Comparison_COMPARISONGE,
  RowCountTest_Comparison_COMPARISONLT,
  RowCountTest_Comparison_COMPARISONLE,
  RowCountTest_Comparison_COMPARISONEQ,
  RowCountTest_Comparison_COMPARISONNE,
  RowCountTest_Comparison
  #-}

-- | Type of authentication.
newtype ServiceAgentAuthentication_Type = ServiceAgentAuthentication_Type {fromServiceAgentAuthentication_Type :: Core.Text}
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

-- | Default value, will result in OIDC Authentication.
pattern ServiceAgentAuthentication_Type_SERVICEAGENTAUTHENTICATIONTYPEUNSPECIFIED :: ServiceAgentAuthentication_Type
pattern ServiceAgentAuthentication_Type_SERVICEAGENTAUTHENTICATIONTYPEUNSPECIFIED = ServiceAgentAuthentication_Type "SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED"

-- | OIDC Authentication
pattern ServiceAgentAuthentication_Type_OIDCTOKEN :: ServiceAgentAuthentication_Type
pattern ServiceAgentAuthentication_Type_OIDCTOKEN = ServiceAgentAuthentication_Type "OIDC_TOKEN"

{-# COMPLETE
  ServiceAgentAuthentication_Type_SERVICEAGENTAUTHENTICATIONTYPEUNSPECIFIED,
  ServiceAgentAuthentication_Type_OIDCTOKEN,
  ServiceAgentAuthentication_Type
  #-}

-- | A calendar period, semantically \"since the start of the current \". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
newtype ServiceLevelObjective_CalendarPeriod = ServiceLevelObjective_CalendarPeriod {fromServiceLevelObjective_CalendarPeriod :: Core.Text}
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

-- | Undefined period, raises an error.
pattern ServiceLevelObjective_CalendarPeriod_CALENDARPERIODUNSPECIFIED :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_CALENDARPERIODUNSPECIFIED = ServiceLevelObjective_CalendarPeriod "CALENDAR_PERIOD_UNSPECIFIED"

-- | A day.
pattern ServiceLevelObjective_CalendarPeriod_Day :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_Day = ServiceLevelObjective_CalendarPeriod "DAY"

-- | A week. Weeks begin on Monday, following ISO 8601 (https:\/\/en.wikipedia.org\/wiki\/ISO/week/date).
pattern ServiceLevelObjective_CalendarPeriod_Week :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_Week = ServiceLevelObjective_CalendarPeriod "WEEK"

-- | A fortnight. The first calendar fortnight of the year begins at the start of week 1 according to ISO 8601 (https:\/\/en.wikipedia.org\/wiki\/ISO/week/date).
pattern ServiceLevelObjective_CalendarPeriod_Fortnight :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_Fortnight = ServiceLevelObjective_CalendarPeriod "FORTNIGHT"

-- | A month.
pattern ServiceLevelObjective_CalendarPeriod_Month :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_Month = ServiceLevelObjective_CalendarPeriod "MONTH"

-- | A quarter. Quarters start on dates 1-Jan, 1-Apr, 1-Jul, and 1-Oct of each year.
pattern ServiceLevelObjective_CalendarPeriod_Quarter :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_Quarter = ServiceLevelObjective_CalendarPeriod "QUARTER"

-- | A half-year. Half-years start on dates 1-Jan and 1-Jul.
pattern ServiceLevelObjective_CalendarPeriod_Half :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_Half = ServiceLevelObjective_CalendarPeriod "HALF"

-- | A year.
pattern ServiceLevelObjective_CalendarPeriod_Year :: ServiceLevelObjective_CalendarPeriod
pattern ServiceLevelObjective_CalendarPeriod_Year = ServiceLevelObjective_CalendarPeriod "YEAR"

{-# COMPLETE
  ServiceLevelObjective_CalendarPeriod_CALENDARPERIODUNSPECIFIED,
  ServiceLevelObjective_CalendarPeriod_Day,
  ServiceLevelObjective_CalendarPeriod_Week,
  ServiceLevelObjective_CalendarPeriod_Fortnight,
  ServiceLevelObjective_CalendarPeriod_Month,
  ServiceLevelObjective_CalendarPeriod_Quarter,
  ServiceLevelObjective_CalendarPeriod_Half,
  ServiceLevelObjective_CalendarPeriod_Year,
  ServiceLevelObjective_CalendarPeriod
  #-}

-- | The metric kind of the time series. When listing time series, this metric kind might be different from the metric kind of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the metric kind of the associated metric. If the associated metric\'s descriptor must be auto-created, then this field specifies the metric kind of the new descriptor and must be either GAUGE (the default) or CUMULATIVE.
newtype TimeSeries_MetricKind = TimeSeries_MetricKind {fromTimeSeries_MetricKind :: Core.Text}
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

-- | Do not use this default value.
pattern TimeSeries_MetricKind_METRICKINDUNSPECIFIED :: TimeSeries_MetricKind
pattern TimeSeries_MetricKind_METRICKINDUNSPECIFIED = TimeSeries_MetricKind "METRIC_KIND_UNSPECIFIED"

-- | An instantaneous measurement of a value.
pattern TimeSeries_MetricKind_Gauge :: TimeSeries_MetricKind
pattern TimeSeries_MetricKind_Gauge = TimeSeries_MetricKind "GAUGE"

-- | The change in a value during a time interval.
pattern TimeSeries_MetricKind_Delta :: TimeSeries_MetricKind
pattern TimeSeries_MetricKind_Delta = TimeSeries_MetricKind "DELTA"

-- | A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.
pattern TimeSeries_MetricKind_Cumulative :: TimeSeries_MetricKind
pattern TimeSeries_MetricKind_Cumulative = TimeSeries_MetricKind "CUMULATIVE"

{-# COMPLETE
  TimeSeries_MetricKind_METRICKINDUNSPECIFIED,
  TimeSeries_MetricKind_Gauge,
  TimeSeries_MetricKind_Delta,
  TimeSeries_MetricKind_Cumulative,
  TimeSeries_MetricKind
  #-}

-- | The value type of the time series. When listing time series, this value type might be different from the value type of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the type of the data in the points field.
newtype TimeSeries_ValueType = TimeSeries_ValueType {fromTimeSeries_ValueType :: Core.Text}
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

-- | Do not use this default value.
pattern TimeSeries_ValueType_VALUETYPEUNSPECIFIED :: TimeSeries_ValueType
pattern TimeSeries_ValueType_VALUETYPEUNSPECIFIED = TimeSeries_ValueType "VALUE_TYPE_UNSPECIFIED"

-- | The value is a boolean. This value type can be used only if the metric kind is GAUGE.
pattern TimeSeries_ValueType_Bool :: TimeSeries_ValueType
pattern TimeSeries_ValueType_Bool = TimeSeries_ValueType "BOOL"

-- | The value is a signed 64-bit integer.
pattern TimeSeries_ValueType_INT64 :: TimeSeries_ValueType
pattern TimeSeries_ValueType_INT64 = TimeSeries_ValueType "INT64"

-- | The value is a double precision floating point number.
pattern TimeSeries_ValueType_Double :: TimeSeries_ValueType
pattern TimeSeries_ValueType_Double = TimeSeries_ValueType "DOUBLE"

-- | The value is a text string. This value type can be used only if the metric kind is GAUGE.
pattern TimeSeries_ValueType_String :: TimeSeries_ValueType
pattern TimeSeries_ValueType_String = TimeSeries_ValueType "STRING"

-- | The value is a Distribution.
pattern TimeSeries_ValueType_Distribution :: TimeSeries_ValueType
pattern TimeSeries_ValueType_Distribution = TimeSeries_ValueType "DISTRIBUTION"

-- | The value is money.
pattern TimeSeries_ValueType_Money :: TimeSeries_ValueType
pattern TimeSeries_ValueType_Money = TimeSeries_ValueType "MONEY"

{-# COMPLETE
  TimeSeries_ValueType_VALUETYPEUNSPECIFIED,
  TimeSeries_ValueType_Bool,
  TimeSeries_ValueType_INT64,
  TimeSeries_ValueType_Double,
  TimeSeries_ValueType_String,
  TimeSeries_ValueType_Distribution,
  TimeSeries_ValueType_Money,
  TimeSeries_ValueType
  #-}

-- | The source syntax.
newtype Type_Syntax = Type_Syntax {fromType_Syntax :: Core.Text}
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

-- | Syntax proto2.
pattern Type_Syntax_SYNTAX_PROTO2 :: Type_Syntax
pattern Type_Syntax_SYNTAX_PROTO2 = Type_Syntax "SYNTAX_PROTO2"

-- | Syntax proto3.
pattern Type_Syntax_SYNTAX_PROTO3 :: Type_Syntax
pattern Type_Syntax_SYNTAX_PROTO3 = Type_Syntax "SYNTAX_PROTO3"

-- | Syntax editions.
pattern Type_Syntax_SYNTAXEDITIONS :: Type_Syntax
pattern Type_Syntax_SYNTAXEDITIONS = Type_Syntax "SYNTAX_EDITIONS"

{-# COMPLETE
  Type_Syntax_SYNTAX_PROTO2,
  Type_Syntax_SYNTAX_PROTO3,
  Type_Syntax_SYNTAXEDITIONS,
  Type_Syntax
  #-}

-- | The type of checkers to use to execute the Uptime check.
newtype UptimeCheckConfig_CheckerType = UptimeCheckConfig_CheckerType {fromUptimeCheckConfig_CheckerType :: Core.Text}
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

-- | The default checker type. Currently converted to STATIC/IP/CHECKERS on creation, the default conversion behavior may change in the future.
pattern UptimeCheckConfig_CheckerType_CHECKERTYPEUNSPECIFIED :: UptimeCheckConfig_CheckerType
pattern UptimeCheckConfig_CheckerType_CHECKERTYPEUNSPECIFIED = UptimeCheckConfig_CheckerType "CHECKER_TYPE_UNSPECIFIED"

-- | STATIC/IP/CHECKERS are used for uptime checks that perform egress across the public internet. STATIC/IP/CHECKERS use the static IP addresses returned by ListUptimeCheckIps.
pattern UptimeCheckConfig_CheckerType_STATICIPCHECKERS :: UptimeCheckConfig_CheckerType
pattern UptimeCheckConfig_CheckerType_STATICIPCHECKERS = UptimeCheckConfig_CheckerType "STATIC_IP_CHECKERS"

-- | VPC/CHECKERS are used for uptime checks that perform egress using Service Directory and private network access. When using VPC/CHECKERS, the monitored resource type must be servicedirectory_service.
pattern UptimeCheckConfig_CheckerType_VPCCHECKERS :: UptimeCheckConfig_CheckerType
pattern UptimeCheckConfig_CheckerType_VPCCHECKERS = UptimeCheckConfig_CheckerType "VPC_CHECKERS"

{-# COMPLETE
  UptimeCheckConfig_CheckerType_CHECKERTYPEUNSPECIFIED,
  UptimeCheckConfig_CheckerType_STATICIPCHECKERS,
  UptimeCheckConfig_CheckerType_VPCCHECKERS,
  UptimeCheckConfig_CheckerType
  #-}

newtype UptimeCheckConfig_SelectedRegionsItem = UptimeCheckConfig_SelectedRegionsItem {fromUptimeCheckConfig_SelectedRegionsItem :: Core.Text}
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

-- | Default value if no region is specified. Will result in Uptime checks running from all regions.
pattern UptimeCheckConfig_SelectedRegionsItem_REGIONUNSPECIFIED :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_REGIONUNSPECIFIED = UptimeCheckConfig_SelectedRegionsItem "REGION_UNSPECIFIED"

-- | Allows checks to run from locations within the United States of America.
pattern UptimeCheckConfig_SelectedRegionsItem_Usa :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_Usa = UptimeCheckConfig_SelectedRegionsItem "USA"

-- | Allows checks to run from locations within the continent of Europe.
pattern UptimeCheckConfig_SelectedRegionsItem_Europe :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_Europe = UptimeCheckConfig_SelectedRegionsItem "EUROPE"

-- | Allows checks to run from locations within the continent of South America.
pattern UptimeCheckConfig_SelectedRegionsItem_SOUTHAMERICA :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_SOUTHAMERICA = UptimeCheckConfig_SelectedRegionsItem "SOUTH_AMERICA"

-- | Allows checks to run from locations within the Asia Pacific area (ex: Singapore).
pattern UptimeCheckConfig_SelectedRegionsItem_ASIAPACIFIC :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_ASIAPACIFIC = UptimeCheckConfig_SelectedRegionsItem "ASIA_PACIFIC"

-- | Allows checks to run from locations within the western United States of America
pattern UptimeCheckConfig_SelectedRegionsItem_USAOREGON :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_USAOREGON = UptimeCheckConfig_SelectedRegionsItem "USA_OREGON"

-- | Allows checks to run from locations within the central United States of America
pattern UptimeCheckConfig_SelectedRegionsItem_USAIOWA :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_USAIOWA = UptimeCheckConfig_SelectedRegionsItem "USA_IOWA"

-- | Allows checks to run from locations within the eastern United States of America
pattern UptimeCheckConfig_SelectedRegionsItem_USAVIRGINIA :: UptimeCheckConfig_SelectedRegionsItem
pattern UptimeCheckConfig_SelectedRegionsItem_USAVIRGINIA = UptimeCheckConfig_SelectedRegionsItem "USA_VIRGINIA"

{-# COMPLETE
  UptimeCheckConfig_SelectedRegionsItem_REGIONUNSPECIFIED,
  UptimeCheckConfig_SelectedRegionsItem_Usa,
  UptimeCheckConfig_SelectedRegionsItem_Europe,
  UptimeCheckConfig_SelectedRegionsItem_SOUTHAMERICA,
  UptimeCheckConfig_SelectedRegionsItem_ASIAPACIFIC,
  UptimeCheckConfig_SelectedRegionsItem_USAOREGON,
  UptimeCheckConfig_SelectedRegionsItem_USAIOWA,
  UptimeCheckConfig_SelectedRegionsItem_USAVIRGINIA,
  UptimeCheckConfig_SelectedRegionsItem
  #-}

-- | A broad region category in which the IP address is located.
newtype UptimeCheckIp_Region = UptimeCheckIp_Region {fromUptimeCheckIp_Region :: Core.Text}
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

-- | Default value if no region is specified. Will result in Uptime checks running from all regions.
pattern UptimeCheckIp_Region_REGIONUNSPECIFIED :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_REGIONUNSPECIFIED = UptimeCheckIp_Region "REGION_UNSPECIFIED"

-- | Allows checks to run from locations within the United States of America.
pattern UptimeCheckIp_Region_Usa :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_Usa = UptimeCheckIp_Region "USA"

-- | Allows checks to run from locations within the continent of Europe.
pattern UptimeCheckIp_Region_Europe :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_Europe = UptimeCheckIp_Region "EUROPE"

-- | Allows checks to run from locations within the continent of South America.
pattern UptimeCheckIp_Region_SOUTHAMERICA :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_SOUTHAMERICA = UptimeCheckIp_Region "SOUTH_AMERICA"

-- | Allows checks to run from locations within the Asia Pacific area (ex: Singapore).
pattern UptimeCheckIp_Region_ASIAPACIFIC :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_ASIAPACIFIC = UptimeCheckIp_Region "ASIA_PACIFIC"

-- | Allows checks to run from locations within the western United States of America
pattern UptimeCheckIp_Region_USAOREGON :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_USAOREGON = UptimeCheckIp_Region "USA_OREGON"

-- | Allows checks to run from locations within the central United States of America
pattern UptimeCheckIp_Region_USAIOWA :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_USAIOWA = UptimeCheckIp_Region "USA_IOWA"

-- | Allows checks to run from locations within the eastern United States of America
pattern UptimeCheckIp_Region_USAVIRGINIA :: UptimeCheckIp_Region
pattern UptimeCheckIp_Region_USAVIRGINIA = UptimeCheckIp_Region "USA_VIRGINIA"

{-# COMPLETE
  UptimeCheckIp_Region_REGIONUNSPECIFIED,
  UptimeCheckIp_Region_Usa,
  UptimeCheckIp_Region_Europe,
  UptimeCheckIp_Region_SOUTHAMERICA,
  UptimeCheckIp_Region_ASIAPACIFIC,
  UptimeCheckIp_Region_USAOREGON,
  UptimeCheckIp_Region_USAIOWA,
  UptimeCheckIp_Region_USAVIRGINIA,
  UptimeCheckIp_Region
  #-}

-- | The value stream kind.
newtype ValueDescriptor_MetricKind = ValueDescriptor_MetricKind {fromValueDescriptor_MetricKind :: Core.Text}
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

-- | Do not use this default value.
pattern ValueDescriptor_MetricKind_METRICKINDUNSPECIFIED :: ValueDescriptor_MetricKind
pattern ValueDescriptor_MetricKind_METRICKINDUNSPECIFIED = ValueDescriptor_MetricKind "METRIC_KIND_UNSPECIFIED"

-- | An instantaneous measurement of a value.
pattern ValueDescriptor_MetricKind_Gauge :: ValueDescriptor_MetricKind
pattern ValueDescriptor_MetricKind_Gauge = ValueDescriptor_MetricKind "GAUGE"

-- | The change in a value during a time interval.
pattern ValueDescriptor_MetricKind_Delta :: ValueDescriptor_MetricKind
pattern ValueDescriptor_MetricKind_Delta = ValueDescriptor_MetricKind "DELTA"

-- | A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.
pattern ValueDescriptor_MetricKind_Cumulative :: ValueDescriptor_MetricKind
pattern ValueDescriptor_MetricKind_Cumulative = ValueDescriptor_MetricKind "CUMULATIVE"

{-# COMPLETE
  ValueDescriptor_MetricKind_METRICKINDUNSPECIFIED,
  ValueDescriptor_MetricKind_Gauge,
  ValueDescriptor_MetricKind_Delta,
  ValueDescriptor_MetricKind_Cumulative,
  ValueDescriptor_MetricKind
  #-}

-- | The value type.
newtype ValueDescriptor_ValueType = ValueDescriptor_ValueType {fromValueDescriptor_ValueType :: Core.Text}
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

-- | Do not use this default value.
pattern ValueDescriptor_ValueType_VALUETYPEUNSPECIFIED :: ValueDescriptor_ValueType
pattern ValueDescriptor_ValueType_VALUETYPEUNSPECIFIED = ValueDescriptor_ValueType "VALUE_TYPE_UNSPECIFIED"

-- | The value is a boolean. This value type can be used only if the metric kind is GAUGE.
pattern ValueDescriptor_ValueType_Bool :: ValueDescriptor_ValueType
pattern ValueDescriptor_ValueType_Bool = ValueDescriptor_ValueType "BOOL"

-- | The value is a signed 64-bit integer.
pattern ValueDescriptor_ValueType_INT64 :: ValueDescriptor_ValueType
pattern ValueDescriptor_ValueType_INT64 = ValueDescriptor_ValueType "INT64"

-- | The value is a double precision floating point number.
pattern ValueDescriptor_ValueType_Double :: ValueDescriptor_ValueType
pattern ValueDescriptor_ValueType_Double = ValueDescriptor_ValueType "DOUBLE"

-- | The value is a text string. This value type can be used only if the metric kind is GAUGE.
pattern ValueDescriptor_ValueType_String :: ValueDescriptor_ValueType
pattern ValueDescriptor_ValueType_String = ValueDescriptor_ValueType "STRING"

-- | The value is a Distribution.
pattern ValueDescriptor_ValueType_Distribution :: ValueDescriptor_ValueType
pattern ValueDescriptor_ValueType_Distribution = ValueDescriptor_ValueType "DISTRIBUTION"

-- | The value is money.
pattern ValueDescriptor_ValueType_Money :: ValueDescriptor_ValueType
pattern ValueDescriptor_ValueType_Money = ValueDescriptor_ValueType "MONEY"

{-# COMPLETE
  ValueDescriptor_ValueType_VALUETYPEUNSPECIFIED,
  ValueDescriptor_ValueType_Bool,
  ValueDescriptor_ValueType_INT64,
  ValueDescriptor_ValueType_Double,
  ValueDescriptor_ValueType_String,
  ValueDescriptor_ValueType_Distribution,
  ValueDescriptor_ValueType_Money,
  ValueDescriptor_ValueType
  #-}

-- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
newtype FoldersTimeSeriesListAggregationCrossSeriesReducer = FoldersTimeSeriesListAggregationCrossSeriesReducer {fromFoldersTimeSeriesListAggregationCrossSeriesReducer :: Core.Text}
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

-- | No cross-time series reduction. The output of the Aligner is returned.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_NONE"

-- | Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MEAN"

-- | Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MIN"

-- | Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MAX"

-- | Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value/type of the output is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_SUM"

-- | Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_STDDEV"

-- | Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value/type. The value/type of the output is INT64.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT"

-- | Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT_TRUE"

-- | Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT_FALSE"

-- | Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The output value is in the range 0.0, 1.0 and has value/type DOUBLE.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_FRACTION_TRUE"

-- | Reduce by computing the 99th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_99"

-- | Reduce by computing the 95th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_95"

-- | Reduce by computing the 50th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_50"

-- | Reduce by computing the 5th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 :: FoldersTimeSeriesListAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 = FoldersTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_05"

{-# COMPLETE
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
  FoldersTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
  FoldersTimeSeriesListAggregationCrossSeriesReducer
  #-}

-- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
newtype FoldersTimeSeriesListAggregationPerSeriesAligner = FoldersTimeSeriesListAggregationPerSeriesAligner {fromFoldersTimeSeriesListAggregationPerSeriesAligner :: Core.Text}
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

-- | No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value/type of the result is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_NONE"

-- | Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_DELTA"

-- | Align and convert to a rate. The result is computed as rate = (y1 - y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment/period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value/type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN/PERCENT/CHANGE aligner instead.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_RATE"

-- | Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_INTERPOLATE"

-- | Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_NEXT_OLDER"

-- | Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_MIN"

-- | Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_MAX"

-- | Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_MEAN"

-- | Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT"

-- | Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_SUM"

-- | Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_STDDEV"

-- | Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT_TRUE"

-- | Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT_FALSE"

-- | Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_FRACTION_TRUE"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_99"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_95"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_50"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_05"

-- | Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)\/previous) * 100, where the value of previous is determined based on the alignment/period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values \< 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value/type DOUBLE.
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE :: FoldersTimeSeriesListAggregationPerSeriesAligner
pattern FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE = FoldersTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENT_CHANGE"

{-# COMPLETE
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
  FoldersTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
  FoldersTimeSeriesListAggregationPerSeriesAligner
  #-}

-- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
newtype FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer {fromFoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer :: Core.Text}
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

-- | No cross-time series reduction. The output of the Aligner is returned.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_NONE"

-- | Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MEAN"

-- | Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MIN"

-- | Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MAX"

-- | Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value/type of the output is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_SUM"

-- | Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_STDDEV"

-- | Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value/type. The value/type of the output is INT64.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT"

-- | Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT_TRUE"

-- | Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT_FALSE"

-- | Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The output value is in the range 0.0, 1.0 and has value/type DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_FRACTION_TRUE"

-- | Reduce by computing the 99th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_99"

-- | Reduce by computing the 95th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_95"

-- | Reduce by computing the 50th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_50"

-- | Reduce by computing the 5th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 :: FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 = FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_05"

{-# COMPLETE
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
  FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
  #-}

-- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
newtype FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner {fromFoldersTimeSeriesListSecondaryAggregationPerSeriesAligner :: Core.Text}
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

-- | No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value/type of the result is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_NONE"

-- | Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_DELTA"

-- | Align and convert to a rate. The result is computed as rate = (y1 - y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment/period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value/type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN/PERCENT/CHANGE aligner instead.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_RATE"

-- | Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_INTERPOLATE"

-- | Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_NEXT_OLDER"

-- | Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MIN"

-- | Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MAX"

-- | Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MEAN"

-- | Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT"

-- | Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value/type of the aligned result is the same as the value/type of the input.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_SUM"

-- | Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_STDDEV"

-- | Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT_TRUE"

-- | Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT_FALSE"

-- | Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_FRACTION_TRUE"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_99"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_95"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_50"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_05"

-- | Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)\/previous) * 100, where the value of previous is determined based on the alignment/period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values \< 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value/type DOUBLE.
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE :: FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE = FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENT_CHANGE"

{-# COMPLETE
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
  FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
  #-}

-- | Required. Specifies which information is returned about the time series.
newtype FoldersTimeSeriesListView = FoldersTimeSeriesListView {fromFoldersTimeSeriesListView :: Core.Text}
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

-- | Returns the identity of the metric(s), the time series, and the time series data.
pattern FoldersTimeSeriesListView_Full :: FoldersTimeSeriesListView
pattern FoldersTimeSeriesListView_Full = FoldersTimeSeriesListView "FULL"

-- | Returns the identity of the metric and the time series resource, but not the time series data.
pattern FoldersTimeSeriesListView_Headers :: FoldersTimeSeriesListView
pattern FoldersTimeSeriesListView_Headers = FoldersTimeSeriesListView "HEADERS"

{-# COMPLETE
  FoldersTimeSeriesListView_Full,
  FoldersTimeSeriesListView_Headers,
  FoldersTimeSeriesListView
  #-}

-- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
newtype OrganizationsTimeSeriesListAggregationCrossSeriesReducer = OrganizationsTimeSeriesListAggregationCrossSeriesReducer {fromOrganizationsTimeSeriesListAggregationCrossSeriesReducer :: Core.Text}
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

-- | No cross-time series reduction. The output of the Aligner is returned.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_NONE"

-- | Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MEAN"

-- | Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MIN"

-- | Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MAX"

-- | Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value/type of the output is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_SUM"

-- | Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_STDDEV"

-- | Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value/type. The value/type of the output is INT64.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT"

-- | Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT_TRUE"

-- | Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT_FALSE"

-- | Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The output value is in the range 0.0, 1.0 and has value/type DOUBLE.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_FRACTION_TRUE"

-- | Reduce by computing the 99th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_99"

-- | Reduce by computing the 95th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_95"

-- | Reduce by computing the 50th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_50"

-- | Reduce by computing the 5th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 :: OrganizationsTimeSeriesListAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 = OrganizationsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_05"

{-# COMPLETE
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
  OrganizationsTimeSeriesListAggregationCrossSeriesReducer
  #-}

-- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
newtype OrganizationsTimeSeriesListAggregationPerSeriesAligner = OrganizationsTimeSeriesListAggregationPerSeriesAligner {fromOrganizationsTimeSeriesListAggregationPerSeriesAligner :: Core.Text}
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

-- | No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value/type of the result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_NONE"

-- | Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_DELTA"

-- | Align and convert to a rate. The result is computed as rate = (y1 - y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment/period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value/type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN/PERCENT/CHANGE aligner instead.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_RATE"

-- | Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_INTERPOLATE"

-- | Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_NEXT_OLDER"

-- | Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_MIN"

-- | Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_MAX"

-- | Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_MEAN"

-- | Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT"

-- | Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_SUM"

-- | Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_STDDEV"

-- | Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT_TRUE"

-- | Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT_FALSE"

-- | Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_FRACTION_TRUE"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_99"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_95"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_50"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_05"

-- | Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)\/previous) * 100, where the value of previous is determined based on the alignment/period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values \< 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value/type DOUBLE.
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE :: OrganizationsTimeSeriesListAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE = OrganizationsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENT_CHANGE"

{-# COMPLETE
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
  OrganizationsTimeSeriesListAggregationPerSeriesAligner
  #-}

-- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
newtype OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer {fromOrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer :: Core.Text}
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

-- | No cross-time series reduction. The output of the Aligner is returned.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_NONE"

-- | Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MEAN"

-- | Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MIN"

-- | Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MAX"

-- | Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value/type of the output is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_SUM"

-- | Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_STDDEV"

-- | Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value/type. The value/type of the output is INT64.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT"

-- | Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT_TRUE"

-- | Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT_FALSE"

-- | Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The output value is in the range 0.0, 1.0 and has value/type DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_FRACTION_TRUE"

-- | Reduce by computing the 99th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_99"

-- | Reduce by computing the 95th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_95"

-- | Reduce by computing the 50th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_50"

-- | Reduce by computing the 5th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 :: OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 = OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_05"

{-# COMPLETE
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
  OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
  #-}

-- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
newtype OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner {fromOrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner :: Core.Text}
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

-- | No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value/type of the result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_NONE"

-- | Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_DELTA"

-- | Align and convert to a rate. The result is computed as rate = (y1 - y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment/period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value/type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN/PERCENT/CHANGE aligner instead.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_RATE"

-- | Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_INTERPOLATE"

-- | Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_NEXT_OLDER"

-- | Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MIN"

-- | Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MAX"

-- | Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MEAN"

-- | Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT"

-- | Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value/type of the aligned result is the same as the value/type of the input.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_SUM"

-- | Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_STDDEV"

-- | Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT_TRUE"

-- | Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT_FALSE"

-- | Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_FRACTION_TRUE"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_99"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_95"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_50"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_05"

-- | Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)\/previous) * 100, where the value of previous is determined based on the alignment/period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values \< 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value/type DOUBLE.
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE :: OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE = OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENT_CHANGE"

{-# COMPLETE
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
  OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
  #-}

-- | Required. Specifies which information is returned about the time series.
newtype OrganizationsTimeSeriesListView = OrganizationsTimeSeriesListView {fromOrganizationsTimeSeriesListView :: Core.Text}
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

-- | Returns the identity of the metric(s), the time series, and the time series data.
pattern OrganizationsTimeSeriesListView_Full :: OrganizationsTimeSeriesListView
pattern OrganizationsTimeSeriesListView_Full = OrganizationsTimeSeriesListView "FULL"

-- | Returns the identity of the metric and the time series resource, but not the time series data.
pattern OrganizationsTimeSeriesListView_Headers :: OrganizationsTimeSeriesListView
pattern OrganizationsTimeSeriesListView_Headers = OrganizationsTimeSeriesListView "HEADERS"

{-# COMPLETE
  OrganizationsTimeSeriesListView_Full,
  OrganizationsTimeSeriesListView_Headers,
  OrganizationsTimeSeriesListView
  #-}

-- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
newtype ProjectsTimeSeriesListAggregationCrossSeriesReducer = ProjectsTimeSeriesListAggregationCrossSeriesReducer {fromProjectsTimeSeriesListAggregationCrossSeriesReducer :: Core.Text}
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

-- | No cross-time series reduction. The output of the Aligner is returned.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_NONE"

-- | Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MEAN"

-- | Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MIN"

-- | Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_MAX"

-- | Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value/type of the output is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_SUM"

-- | Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_STDDEV"

-- | Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value/type. The value/type of the output is INT64.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT"

-- | Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT_TRUE"

-- | Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_COUNT_FALSE"

-- | Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The output value is in the range 0.0, 1.0 and has value/type DOUBLE.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_FRACTION_TRUE"

-- | Reduce by computing the 99th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_99"

-- | Reduce by computing the 95th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_95"

-- | Reduce by computing the 50th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_50"

-- | Reduce by computing the 5th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 :: ProjectsTimeSeriesListAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 = ProjectsTimeSeriesListAggregationCrossSeriesReducer "REDUCE_PERCENTILE_05"

{-# COMPLETE
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCENONE,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMEAN,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMIN,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEMAX,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESUM,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCESTDDEV,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNT,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
  ProjectsTimeSeriesListAggregationCrossSeriesReducer
  #-}

-- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
newtype ProjectsTimeSeriesListAggregationPerSeriesAligner = ProjectsTimeSeriesListAggregationPerSeriesAligner {fromProjectsTimeSeriesListAggregationPerSeriesAligner :: Core.Text}
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

-- | No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value/type of the result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_NONE"

-- | Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_DELTA"

-- | Align and convert to a rate. The result is computed as rate = (y1 - y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment/period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value/type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN/PERCENT/CHANGE aligner instead.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_RATE"

-- | Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_INTERPOLATE"

-- | Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_NEXT_OLDER"

-- | Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_MIN"

-- | Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_MAX"

-- | Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_MEAN"

-- | Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT"

-- | Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_SUM"

-- | Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_STDDEV"

-- | Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT_TRUE"

-- | Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_COUNT_FALSE"

-- | Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_FRACTION_TRUE"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_99"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_95"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_50"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENTILE_05"

-- | Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)\/previous) * 100, where the value of previous is determined based on the alignment/period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values \< 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value/type DOUBLE.
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE :: ProjectsTimeSeriesListAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE = ProjectsTimeSeriesListAggregationPerSeriesAligner "ALIGN_PERCENT_CHANGE"

{-# COMPLETE
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNONE,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNDELTA,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNRATE,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNINTERPOLATE,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNNEXTOLDER,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMIN,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMAX,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNMEAN,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNT,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSUM,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNSTDDEV,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
  ProjectsTimeSeriesListAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
  ProjectsTimeSeriesListAggregationPerSeriesAligner
  #-}

-- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
newtype ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer {fromProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer :: Core.Text}
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

-- | No cross-time series reduction. The output of the Aligner is returned.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_NONE"

-- | Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MEAN"

-- | Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MIN"

-- | Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value/type of the output is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_MAX"

-- | Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value/type of the output is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_SUM"

-- | Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_STDDEV"

-- | Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value/type. The value/type of the output is INT64.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT"

-- | Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT_TRUE"

-- | Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The value/type of the output is INT64.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_COUNT_FALSE"

-- | Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value/type. The output value is in the range 0.0, 1.0 and has value/type DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_FRACTION_TRUE"

-- | Reduce by computing the 99th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99 = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_99"

-- | Reduce by computing the 95th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95 = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_95"

-- | Reduce by computing the 50th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50 = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_50"

-- | Reduce by computing the 5th percentile (https:\/\/en.wikipedia.org\/wiki\/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 :: ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
pattern ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05 = ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer "REDUCE_PERCENTILE_05"

{-# COMPLETE
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCENONE,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMEAN,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMIN,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEMAX,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESUM,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCESTDDEV,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNT,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTTRUE,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCECOUNTFALSE,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCEFRACTIONTRUE,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_99,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_95,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_50,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer_REDUCE_PERCENTILE_05,
  ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
  #-}

-- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
newtype ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner {fromProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner :: Core.Text}
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

-- | No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value/type of the result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_NONE"

-- | Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_DELTA"

-- | Align and convert to a rate. The result is computed as rate = (y1 - y0)\/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment/period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value/type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN/PERCENT/CHANGE aligner instead.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_RATE"

-- | Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_INTERPOLATE"

-- | Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_NEXT_OLDER"

-- | Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MIN"

-- | Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MAX"

-- | Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_MEAN"

-- | Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT"

-- | Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value/type of the aligned result is the same as the value/type of the input.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_SUM"

-- | Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_STDDEV"

-- | Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT_TRUE"

-- | Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_COUNT_FALSE"

-- | Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_FRACTION_TRUE"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99 = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_99"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95 = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_95"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50 = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_50"

-- | Align the time series by using percentile aggregation (https:\/\/en.wikipedia.org\/wiki\/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05 = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENTILE_05"

-- | Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)\/previous) * 100, where the value of previous is determined based on the alignment/period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values \< 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value/type DOUBLE.
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE :: ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
pattern ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE = ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner "ALIGN_PERCENT_CHANGE"

{-# COMPLETE
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNONE,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNDELTA,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNRATE,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNINTERPOLATE,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNNEXTOLDER,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMIN,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMAX,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNMEAN,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNT,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSUM,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNSTDDEV,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTTRUE,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNCOUNTFALSE,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNFRACTIONTRUE,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_99,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_95,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_50,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGN_PERCENTILE_05,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner_ALIGNPERCENTCHANGE,
  ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
  #-}

-- | Required. Specifies which information is returned about the time series.
newtype ProjectsTimeSeriesListView = ProjectsTimeSeriesListView {fromProjectsTimeSeriesListView :: Core.Text}
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

-- | Returns the identity of the metric(s), the time series, and the time series data.
pattern ProjectsTimeSeriesListView_Full :: ProjectsTimeSeriesListView
pattern ProjectsTimeSeriesListView_Full = ProjectsTimeSeriesListView "FULL"

-- | Returns the identity of the metric and the time series resource, but not the time series data.
pattern ProjectsTimeSeriesListView_Headers :: ProjectsTimeSeriesListView
pattern ProjectsTimeSeriesListView_Headers = ProjectsTimeSeriesListView "HEADERS"

{-# COMPLETE
  ProjectsTimeSeriesListView_Full,
  ProjectsTimeSeriesListView_Headers,
  ProjectsTimeSeriesListView
  #-}

-- | View of the ServiceLevelObjective to return. If DEFAULT, return the ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.
newtype ServicesServiceLevelObjectivesGetView = ServicesServiceLevelObjectivesGetView {fromServicesServiceLevelObjectivesGetView :: Core.Text}
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

-- | Same as FULL.
pattern ServicesServiceLevelObjectivesGetView_VIEWUNSPECIFIED :: ServicesServiceLevelObjectivesGetView
pattern ServicesServiceLevelObjectivesGetView_VIEWUNSPECIFIED = ServicesServiceLevelObjectivesGetView "VIEW_UNSPECIFIED"

-- | Return the embedded ServiceLevelIndicator in the form in which it was defined. If it was defined using a BasicSli, return that BasicSli.
pattern ServicesServiceLevelObjectivesGetView_Full :: ServicesServiceLevelObjectivesGetView
pattern ServicesServiceLevelObjectivesGetView_Full = ServicesServiceLevelObjectivesGetView "FULL"

-- | For ServiceLevelIndicators using BasicSli articulation, instead return the ServiceLevelIndicator with its mode of computation fully spelled out as a RequestBasedSli. For ServiceLevelIndicators using RequestBasedSli or WindowsBasedSli, return the ServiceLevelIndicator as it was provided.
pattern ServicesServiceLevelObjectivesGetView_Explicit :: ServicesServiceLevelObjectivesGetView
pattern ServicesServiceLevelObjectivesGetView_Explicit = ServicesServiceLevelObjectivesGetView "EXPLICIT"

{-# COMPLETE
  ServicesServiceLevelObjectivesGetView_VIEWUNSPECIFIED,
  ServicesServiceLevelObjectivesGetView_Full,
  ServicesServiceLevelObjectivesGetView_Explicit,
  ServicesServiceLevelObjectivesGetView
  #-}

-- | View of the ServiceLevelObjectives to return. If DEFAULT, return each ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.
newtype ServicesServiceLevelObjectivesListView = ServicesServiceLevelObjectivesListView {fromServicesServiceLevelObjectivesListView :: Core.Text}
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

-- | Same as FULL.
pattern ServicesServiceLevelObjectivesListView_VIEWUNSPECIFIED :: ServicesServiceLevelObjectivesListView
pattern ServicesServiceLevelObjectivesListView_VIEWUNSPECIFIED = ServicesServiceLevelObjectivesListView "VIEW_UNSPECIFIED"

-- | Return the embedded ServiceLevelIndicator in the form in which it was defined. If it was defined using a BasicSli, return that BasicSli.
pattern ServicesServiceLevelObjectivesListView_Full :: ServicesServiceLevelObjectivesListView
pattern ServicesServiceLevelObjectivesListView_Full = ServicesServiceLevelObjectivesListView "FULL"

-- | For ServiceLevelIndicators using BasicSli articulation, instead return the ServiceLevelIndicator with its mode of computation fully spelled out as a RequestBasedSli. For ServiceLevelIndicators using RequestBasedSli or WindowsBasedSli, return the ServiceLevelIndicator as it was provided.
pattern ServicesServiceLevelObjectivesListView_Explicit :: ServicesServiceLevelObjectivesListView
pattern ServicesServiceLevelObjectivesListView_Explicit = ServicesServiceLevelObjectivesListView "EXPLICIT"

{-# COMPLETE
  ServicesServiceLevelObjectivesListView_VIEWUNSPECIFIED,
  ServicesServiceLevelObjectivesListView_Full,
  ServicesServiceLevelObjectivesListView_Explicit,
  ServicesServiceLevelObjectivesListView
  #-}
