{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdSense.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdSense.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdUnit_State
    AdUnit_State
      ( AdUnit_State_STATEUNSPECIFIED,
        AdUnit_State_Active,
        AdUnit_State_Archived,
        ..
      ),

    -- * Alert_Severity
    Alert_Severity
      ( Alert_Severity_SEVERITYUNSPECIFIED,
        Alert_Severity_Info,
        Alert_Severity_Warning,
        Alert_Severity_Severe,
        ..
      ),

    -- * ContentAdsSettings_Type
    ContentAdsSettings_Type
      ( ContentAdsSettings_Type_TYPEUNSPECIFIED,
        ContentAdsSettings_Type_Display,
        ContentAdsSettings_Type_Feed,
        ContentAdsSettings_Type_Article,
        ContentAdsSettings_Type_MATCHEDCONTENT,
        ContentAdsSettings_Type_Link,
        ..
      ),

    -- * Header_Type
    Header_Type
      ( Header_Type_HEADERTYPEUNSPECIFIED,
        Header_Type_Dimension,
        Header_Type_METRICTALLY,
        Header_Type_METRICRATIO,
        Header_Type_METRICCURRENCY,
        Header_Type_METRICMILLISECONDS,
        Header_Type_METRICDECIMAL,
        ..
      ),

    -- * Site_State
    Site_State
      ( Site_State_STATEUNSPECIFIED,
        Site_State_REQUIRESREVIEW,
        Site_State_GETTINGREADY,
        Site_State_Ready,
        Site_State_NEEDSATTENTION,
        ..
      ),

    -- * AccountsReportsGenerateDateRange
    AccountsReportsGenerateDateRange
      ( AccountsReportsGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED,
        AccountsReportsGenerateDateRange_Custom,
        AccountsReportsGenerateDateRange_Today,
        AccountsReportsGenerateDateRange_Yesterday,
        AccountsReportsGenerateDateRange_MONTHTODATE,
        AccountsReportsGenerateDateRange_YEARTODATE,
        AccountsReportsGenerateDateRange_LAST7DAYS,
        AccountsReportsGenerateDateRange_LAST30DAYS,
        ..
      ),

    -- * AccountsReportsGenerateDimensions
    AccountsReportsGenerateDimensions
      ( AccountsReportsGenerateDimensions_DIMENSIONUNSPECIFIED,
        AccountsReportsGenerateDimensions_Date,
        AccountsReportsGenerateDimensions_Week,
        AccountsReportsGenerateDimensions_Month,
        AccountsReportsGenerateDimensions_ACCOUNTNAME,
        AccountsReportsGenerateDimensions_ADCLIENTID,
        AccountsReportsGenerateDimensions_PRODUCTNAME,
        AccountsReportsGenerateDimensions_PRODUCTCODE,
        AccountsReportsGenerateDimensions_ADUNITNAME,
        AccountsReportsGenerateDimensions_ADUNITID,
        AccountsReportsGenerateDimensions_ADUNITSIZENAME,
        AccountsReportsGenerateDimensions_ADUNITSIZECODE,
        AccountsReportsGenerateDimensions_CUSTOMCHANNELNAME,
        AccountsReportsGenerateDimensions_CUSTOMCHANNELID,
        AccountsReportsGenerateDimensions_OWNEDSITEDOMAINNAME,
        AccountsReportsGenerateDimensions_OWNEDSITEID,
        AccountsReportsGenerateDimensions_URLCHANNELNAME,
        AccountsReportsGenerateDimensions_URLCHANNELID,
        AccountsReportsGenerateDimensions_BUYERNETWORKNAME,
        AccountsReportsGenerateDimensions_BUYERNETWORKID,
        AccountsReportsGenerateDimensions_BIDTYPENAME,
        AccountsReportsGenerateDimensions_BIDTYPECODE,
        AccountsReportsGenerateDimensions_CREATIVESIZENAME,
        AccountsReportsGenerateDimensions_CREATIVESIZECODE,
        AccountsReportsGenerateDimensions_DOMAINNAME,
        AccountsReportsGenerateDimensions_DOMAINCODE,
        AccountsReportsGenerateDimensions_COUNTRYNAME,
        AccountsReportsGenerateDimensions_COUNTRYCODE,
        AccountsReportsGenerateDimensions_PLATFORMTYPENAME,
        AccountsReportsGenerateDimensions_PLATFORMTYPECODE,
        AccountsReportsGenerateDimensions_TARGETINGTYPENAME,
        AccountsReportsGenerateDimensions_TARGETINGTYPECODE,
        AccountsReportsGenerateDimensions_CONTENTPLATFORMNAME,
        AccountsReportsGenerateDimensions_CONTENTPLATFORMCODE,
        AccountsReportsGenerateDimensions_ADPLACEMENTNAME,
        AccountsReportsGenerateDimensions_ADPLACEMENTCODE,
        AccountsReportsGenerateDimensions_REQUESTEDADTYPENAME,
        AccountsReportsGenerateDimensions_REQUESTEDADTYPECODE,
        AccountsReportsGenerateDimensions_SERVEDADTYPENAME,
        AccountsReportsGenerateDimensions_SERVEDADTYPECODE,
        AccountsReportsGenerateDimensions_ADFORMATNAME,
        AccountsReportsGenerateDimensions_ADFORMATCODE,
        AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLENAME,
        AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLEID,
        AccountsReportsGenerateDimensions_DOMAINREGISTRANT,
        AccountsReportsGenerateDimensions_WEBSEARCHQUERYSTRING,
        ..
      ),

    -- * AccountsReportsGenerateMetrics
    AccountsReportsGenerateMetrics
      ( AccountsReportsGenerateMetrics_METRICUNSPECIFIED,
        AccountsReportsGenerateMetrics_PAGEVIEWS,
        AccountsReportsGenerateMetrics_ADREQUESTS,
        AccountsReportsGenerateMetrics_MATCHEDADREQUESTS,
        AccountsReportsGenerateMetrics_TOTALIMPRESSIONS,
        AccountsReportsGenerateMetrics_Impressions,
        AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONS,
        AccountsReportsGenerateMetrics_Clicks,
        AccountsReportsGenerateMetrics_PAGEVIEWSSPAMRATIO,
        AccountsReportsGenerateMetrics_ADREQUESTSSPAMRATIO,
        AccountsReportsGenerateMetrics_MATCHEDADREQUESTSSPAMRATIO,
        AccountsReportsGenerateMetrics_IMPRESSIONSSPAMRATIO,
        AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO,
        AccountsReportsGenerateMetrics_CLICKSSPAMRATIO,
        AccountsReportsGenerateMetrics_ADREQUESTSCOVERAGE,
        AccountsReportsGenerateMetrics_PAGEVIEWSCTR,
        AccountsReportsGenerateMetrics_ADREQUESTSCTR,
        AccountsReportsGenerateMetrics_MATCHEDADREQUESTSCTR,
        AccountsReportsGenerateMetrics_IMPRESSIONSCTR,
        AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSCTR,
        AccountsReportsGenerateMetrics_ACTIVEVIEWMEASURABILITY,
        AccountsReportsGenerateMetrics_ACTIVEVIEWVIEWABILITY,
        AccountsReportsGenerateMetrics_ACTIVEVIEWTIME,
        AccountsReportsGenerateMetrics_ESTIMATEDEARNINGS,
        AccountsReportsGenerateMetrics_PAGEVIEWSRPM,
        AccountsReportsGenerateMetrics_ADREQUESTSRPM,
        AccountsReportsGenerateMetrics_MATCHEDADREQUESTSRPM,
        AccountsReportsGenerateMetrics_IMPRESSIONSRPM,
        AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSRPM,
        AccountsReportsGenerateMetrics_COSTPERCLICK,
        AccountsReportsGenerateMetrics_ADSPERIMPRESSION,
        AccountsReportsGenerateMetrics_TOTALEARNINGS,
        AccountsReportsGenerateMetrics_WEBSEARCHRESULTPAGES,
        ..
      ),

    -- * AccountsReportsGenerateReportingTimeZone
    AccountsReportsGenerateReportingTimeZone
      ( AccountsReportsGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
        AccountsReportsGenerateReportingTimeZone_ACCOUNTTIMEZONE,
        AccountsReportsGenerateReportingTimeZone_GOOGLETIMEZONE,
        ..
      ),

    -- * AccountsReportsGenerateCsvDateRange
    AccountsReportsGenerateCsvDateRange
      ( AccountsReportsGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED,
        AccountsReportsGenerateCsvDateRange_Custom,
        AccountsReportsGenerateCsvDateRange_Today,
        AccountsReportsGenerateCsvDateRange_Yesterday,
        AccountsReportsGenerateCsvDateRange_MONTHTODATE,
        AccountsReportsGenerateCsvDateRange_YEARTODATE,
        AccountsReportsGenerateCsvDateRange_LAST7DAYS,
        AccountsReportsGenerateCsvDateRange_LAST30DAYS,
        ..
      ),

    -- * AccountsReportsGenerateCsvDimensions
    AccountsReportsGenerateCsvDimensions
      ( AccountsReportsGenerateCsvDimensions_DIMENSIONUNSPECIFIED,
        AccountsReportsGenerateCsvDimensions_Date,
        AccountsReportsGenerateCsvDimensions_Week,
        AccountsReportsGenerateCsvDimensions_Month,
        AccountsReportsGenerateCsvDimensions_ACCOUNTNAME,
        AccountsReportsGenerateCsvDimensions_ADCLIENTID,
        AccountsReportsGenerateCsvDimensions_PRODUCTNAME,
        AccountsReportsGenerateCsvDimensions_PRODUCTCODE,
        AccountsReportsGenerateCsvDimensions_ADUNITNAME,
        AccountsReportsGenerateCsvDimensions_ADUNITID,
        AccountsReportsGenerateCsvDimensions_ADUNITSIZENAME,
        AccountsReportsGenerateCsvDimensions_ADUNITSIZECODE,
        AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELNAME,
        AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELID,
        AccountsReportsGenerateCsvDimensions_OWNEDSITEDOMAINNAME,
        AccountsReportsGenerateCsvDimensions_OWNEDSITEID,
        AccountsReportsGenerateCsvDimensions_URLCHANNELNAME,
        AccountsReportsGenerateCsvDimensions_URLCHANNELID,
        AccountsReportsGenerateCsvDimensions_BUYERNETWORKNAME,
        AccountsReportsGenerateCsvDimensions_BUYERNETWORKID,
        AccountsReportsGenerateCsvDimensions_BIDTYPENAME,
        AccountsReportsGenerateCsvDimensions_BIDTYPECODE,
        AccountsReportsGenerateCsvDimensions_CREATIVESIZENAME,
        AccountsReportsGenerateCsvDimensions_CREATIVESIZECODE,
        AccountsReportsGenerateCsvDimensions_DOMAINNAME,
        AccountsReportsGenerateCsvDimensions_DOMAINCODE,
        AccountsReportsGenerateCsvDimensions_COUNTRYNAME,
        AccountsReportsGenerateCsvDimensions_COUNTRYCODE,
        AccountsReportsGenerateCsvDimensions_PLATFORMTYPENAME,
        AccountsReportsGenerateCsvDimensions_PLATFORMTYPECODE,
        AccountsReportsGenerateCsvDimensions_TARGETINGTYPENAME,
        AccountsReportsGenerateCsvDimensions_TARGETINGTYPECODE,
        AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMNAME,
        AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMCODE,
        AccountsReportsGenerateCsvDimensions_ADPLACEMENTNAME,
        AccountsReportsGenerateCsvDimensions_ADPLACEMENTCODE,
        AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPENAME,
        AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPECODE,
        AccountsReportsGenerateCsvDimensions_SERVEDADTYPENAME,
        AccountsReportsGenerateCsvDimensions_SERVEDADTYPECODE,
        AccountsReportsGenerateCsvDimensions_ADFORMATNAME,
        AccountsReportsGenerateCsvDimensions_ADFORMATCODE,
        AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLENAME,
        AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLEID,
        AccountsReportsGenerateCsvDimensions_DOMAINREGISTRANT,
        AccountsReportsGenerateCsvDimensions_WEBSEARCHQUERYSTRING,
        ..
      ),

    -- * AccountsReportsGenerateCsvMetrics
    AccountsReportsGenerateCsvMetrics
      ( AccountsReportsGenerateCsvMetrics_METRICUNSPECIFIED,
        AccountsReportsGenerateCsvMetrics_PAGEVIEWS,
        AccountsReportsGenerateCsvMetrics_ADREQUESTS,
        AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTS,
        AccountsReportsGenerateCsvMetrics_TOTALIMPRESSIONS,
        AccountsReportsGenerateCsvMetrics_Impressions,
        AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONS,
        AccountsReportsGenerateCsvMetrics_Clicks,
        AccountsReportsGenerateCsvMetrics_PAGEVIEWSSPAMRATIO,
        AccountsReportsGenerateCsvMetrics_ADREQUESTSSPAMRATIO,
        AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSSPAMRATIO,
        AccountsReportsGenerateCsvMetrics_IMPRESSIONSSPAMRATIO,
        AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO,
        AccountsReportsGenerateCsvMetrics_CLICKSSPAMRATIO,
        AccountsReportsGenerateCsvMetrics_ADREQUESTSCOVERAGE,
        AccountsReportsGenerateCsvMetrics_PAGEVIEWSCTR,
        AccountsReportsGenerateCsvMetrics_ADREQUESTSCTR,
        AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSCTR,
        AccountsReportsGenerateCsvMetrics_IMPRESSIONSCTR,
        AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSCTR,
        AccountsReportsGenerateCsvMetrics_ACTIVEVIEWMEASURABILITY,
        AccountsReportsGenerateCsvMetrics_ACTIVEVIEWVIEWABILITY,
        AccountsReportsGenerateCsvMetrics_ACTIVEVIEWTIME,
        AccountsReportsGenerateCsvMetrics_ESTIMATEDEARNINGS,
        AccountsReportsGenerateCsvMetrics_PAGEVIEWSRPM,
        AccountsReportsGenerateCsvMetrics_ADREQUESTSRPM,
        AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSRPM,
        AccountsReportsGenerateCsvMetrics_IMPRESSIONSRPM,
        AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSRPM,
        AccountsReportsGenerateCsvMetrics_COSTPERCLICK,
        AccountsReportsGenerateCsvMetrics_ADSPERIMPRESSION,
        AccountsReportsGenerateCsvMetrics_TOTALEARNINGS,
        AccountsReportsGenerateCsvMetrics_WEBSEARCHRESULTPAGES,
        ..
      ),

    -- * AccountsReportsGenerateCsvReportingTimeZone
    AccountsReportsGenerateCsvReportingTimeZone
      ( AccountsReportsGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
        AccountsReportsGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE,
        AccountsReportsGenerateCsvReportingTimeZone_GOOGLETIMEZONE,
        ..
      ),

    -- * AccountsReportsSavedGenerateDateRange
    AccountsReportsSavedGenerateDateRange
      ( AccountsReportsSavedGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED,
        AccountsReportsSavedGenerateDateRange_Custom,
        AccountsReportsSavedGenerateDateRange_Today,
        AccountsReportsSavedGenerateDateRange_Yesterday,
        AccountsReportsSavedGenerateDateRange_MONTHTODATE,
        AccountsReportsSavedGenerateDateRange_YEARTODATE,
        AccountsReportsSavedGenerateDateRange_LAST7DAYS,
        AccountsReportsSavedGenerateDateRange_LAST30DAYS,
        ..
      ),

    -- * AccountsReportsSavedGenerateReportingTimeZone
    AccountsReportsSavedGenerateReportingTimeZone
      ( AccountsReportsSavedGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
        AccountsReportsSavedGenerateReportingTimeZone_ACCOUNTTIMEZONE,
        AccountsReportsSavedGenerateReportingTimeZone_GOOGLETIMEZONE,
        ..
      ),

    -- * AccountsReportsSavedGenerateCsvDateRange
    AccountsReportsSavedGenerateCsvDateRange
      ( AccountsReportsSavedGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED,
        AccountsReportsSavedGenerateCsvDateRange_Custom,
        AccountsReportsSavedGenerateCsvDateRange_Today,
        AccountsReportsSavedGenerateCsvDateRange_Yesterday,
        AccountsReportsSavedGenerateCsvDateRange_MONTHTODATE,
        AccountsReportsSavedGenerateCsvDateRange_YEARTODATE,
        AccountsReportsSavedGenerateCsvDateRange_LAST7DAYS,
        AccountsReportsSavedGenerateCsvDateRange_LAST30DAYS,
        ..
      ),

    -- * AccountsReportsSavedGenerateCsvReportingTimeZone
    AccountsReportsSavedGenerateCsvReportingTimeZone
      ( AccountsReportsSavedGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
        AccountsReportsSavedGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE,
        AccountsReportsSavedGenerateCsvReportingTimeZone_GOOGLETIMEZONE,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

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

-- | State of the ad unit.
newtype AdUnit_State = AdUnit_State {fromAdUnit_State :: Core.Text}
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

-- | State unspecified.
pattern AdUnit_State_STATEUNSPECIFIED :: AdUnit_State
pattern AdUnit_State_STATEUNSPECIFIED = AdUnit_State "STATE_UNSPECIFIED"

-- | Ad unit has been activated by the user.
pattern AdUnit_State_Active :: AdUnit_State
pattern AdUnit_State_Active = AdUnit_State "ACTIVE"

-- | Ad unit has been archived by the user. Note that archived ad units are only removed from the default view in the UI. Archived ad units can still serve ads.
pattern AdUnit_State_Archived :: AdUnit_State
pattern AdUnit_State_Archived = AdUnit_State "ARCHIVED"

{-# COMPLETE
  AdUnit_State_STATEUNSPECIFIED,
  AdUnit_State_Active,
  AdUnit_State_Archived,
  AdUnit_State
  #-}

-- | Output only. Severity of this alert.
newtype Alert_Severity = Alert_Severity {fromAlert_Severity :: Core.Text}
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

-- | Unspecified severity.
pattern Alert_Severity_SEVERITYUNSPECIFIED :: Alert_Severity
pattern Alert_Severity_SEVERITYUNSPECIFIED = Alert_Severity "SEVERITY_UNSPECIFIED"

-- | Info.
pattern Alert_Severity_Info :: Alert_Severity
pattern Alert_Severity_Info = Alert_Severity "INFO"

-- | Warning.
pattern Alert_Severity_Warning :: Alert_Severity
pattern Alert_Severity_Warning = Alert_Severity "WARNING"

-- | Severe.
pattern Alert_Severity_Severe :: Alert_Severity
pattern Alert_Severity_Severe = Alert_Severity "SEVERE"

{-# COMPLETE
  Alert_Severity_SEVERITYUNSPECIFIED,
  Alert_Severity_Info,
  Alert_Severity_Warning,
  Alert_Severity_Severe,
  Alert_Severity
  #-}

-- | Type of the ad unit.
newtype ContentAdsSettings_Type = ContentAdsSettings_Type {fromContentAdsSettings_Type :: Core.Text}
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

-- | Unspecified ad unit type.
pattern ContentAdsSettings_Type_TYPEUNSPECIFIED :: ContentAdsSettings_Type
pattern ContentAdsSettings_Type_TYPEUNSPECIFIED = ContentAdsSettings_Type "TYPE_UNSPECIFIED"

-- | Display ad unit.
pattern ContentAdsSettings_Type_Display :: ContentAdsSettings_Type
pattern ContentAdsSettings_Type_Display = ContentAdsSettings_Type "DISPLAY"

-- | In-feed ad unit.
pattern ContentAdsSettings_Type_Feed :: ContentAdsSettings_Type
pattern ContentAdsSettings_Type_Feed = ContentAdsSettings_Type "FEED"

-- | In-article ad unit.
pattern ContentAdsSettings_Type_Article :: ContentAdsSettings_Type
pattern ContentAdsSettings_Type_Article = ContentAdsSettings_Type "ARTICLE"

-- | Matched content unit.
pattern ContentAdsSettings_Type_MATCHEDCONTENT :: ContentAdsSettings_Type
pattern ContentAdsSettings_Type_MATCHEDCONTENT = ContentAdsSettings_Type "MATCHED_CONTENT"

-- | Link ad unit. Note that link ad units have now been retired, see https:\/\/support.google.com\/adsense\/answer\/9987221.
pattern ContentAdsSettings_Type_Link :: ContentAdsSettings_Type
pattern ContentAdsSettings_Type_Link = ContentAdsSettings_Type "LINK"

{-# COMPLETE
  ContentAdsSettings_Type_TYPEUNSPECIFIED,
  ContentAdsSettings_Type_Display,
  ContentAdsSettings_Type_Feed,
  ContentAdsSettings_Type_Article,
  ContentAdsSettings_Type_MATCHEDCONTENT,
  ContentAdsSettings_Type_Link,
  ContentAdsSettings_Type
  #-}

-- | Required. Type of the header.
newtype Header_Type = Header_Type {fromHeader_Type :: Core.Text}
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

-- | Unspecified header.
pattern Header_Type_HEADERTYPEUNSPECIFIED :: Header_Type
pattern Header_Type_HEADERTYPEUNSPECIFIED = Header_Type "HEADER_TYPE_UNSPECIFIED"

-- | Dimension header type.
pattern Header_Type_Dimension :: Header_Type
pattern Header_Type_Dimension = Header_Type "DIMENSION"

-- | Tally header type.
pattern Header_Type_METRICTALLY :: Header_Type
pattern Header_Type_METRICTALLY = Header_Type "METRIC_TALLY"

-- | Ratio header type.
pattern Header_Type_METRICRATIO :: Header_Type
pattern Header_Type_METRICRATIO = Header_Type "METRIC_RATIO"

-- | Currency header type.
pattern Header_Type_METRICCURRENCY :: Header_Type
pattern Header_Type_METRICCURRENCY = Header_Type "METRIC_CURRENCY"

-- | Milliseconds header type.
pattern Header_Type_METRICMILLISECONDS :: Header_Type
pattern Header_Type_METRICMILLISECONDS = Header_Type "METRIC_MILLISECONDS"

-- | Decimal header type.
pattern Header_Type_METRICDECIMAL :: Header_Type
pattern Header_Type_METRICDECIMAL = Header_Type "METRIC_DECIMAL"

{-# COMPLETE
  Header_Type_HEADERTYPEUNSPECIFIED,
  Header_Type_Dimension,
  Header_Type_METRICTALLY,
  Header_Type_METRICRATIO,
  Header_Type_METRICCURRENCY,
  Header_Type_METRICMILLISECONDS,
  Header_Type_METRICDECIMAL,
  Header_Type
  #-}

-- | Output only. State of a site.
newtype Site_State = Site_State {fromSite_State :: Core.Text}
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

-- | State unspecified.
pattern Site_State_STATEUNSPECIFIED :: Site_State
pattern Site_State_STATEUNSPECIFIED = Site_State "STATE_UNSPECIFIED"

-- | The site hasn\'t been checked yet.
pattern Site_State_REQUIRESREVIEW :: Site_State
pattern Site_State_REQUIRESREVIEW = Site_State "REQUIRES_REVIEW"

-- | Running some checks on the site. This usually takes a few days, but in some cases can take up to 2 weeks.
pattern Site_State_GETTINGREADY :: Site_State
pattern Site_State_GETTINGREADY = Site_State "GETTING_READY"

-- | The site is ready to show ads.
pattern Site_State_Ready :: Site_State
pattern Site_State_Ready = Site_State "READY"

-- | Publisher needs to fix some issues before the site is ready to show ads.
pattern Site_State_NEEDSATTENTION :: Site_State
pattern Site_State_NEEDSATTENTION = Site_State "NEEDS_ATTENTION"

{-# COMPLETE
  Site_State_STATEUNSPECIFIED,
  Site_State_REQUIRESREVIEW,
  Site_State_GETTINGREADY,
  Site_State_Ready,
  Site_State_NEEDSATTENTION,
  Site_State
  #-}

-- | Date range of the report, if unset the range will be considered CUSTOM.
newtype AccountsReportsGenerateDateRange = AccountsReportsGenerateDateRange {fromAccountsReportsGenerateDateRange :: Core.Text}
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

-- | Unspecified date range.
pattern AccountsReportsGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED = AccountsReportsGenerateDateRange "REPORTING_DATE_RANGE_UNSPECIFIED"

-- | A custom date range specified using the @start_date@ and @end_date@ fields. This is the default if no ReportingDateRange is provided.
pattern AccountsReportsGenerateDateRange_Custom :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_Custom = AccountsReportsGenerateDateRange "CUSTOM"

-- | Current day.
pattern AccountsReportsGenerateDateRange_Today :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_Today = AccountsReportsGenerateDateRange "TODAY"

-- | Yesterday.
pattern AccountsReportsGenerateDateRange_Yesterday :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_Yesterday = AccountsReportsGenerateDateRange "YESTERDAY"

-- | From the start of the current month to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-03-01, 2020-03-12].
pattern AccountsReportsGenerateDateRange_MONTHTODATE :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_MONTHTODATE = AccountsReportsGenerateDateRange "MONTH_TO_DATE"

-- | From the start of the current year to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-01-01, 2020-03-12].
pattern AccountsReportsGenerateDateRange_YEARTODATE :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_YEARTODATE = AccountsReportsGenerateDateRange "YEAR_TO_DATE"

-- | Last 7 days, excluding current day.
pattern AccountsReportsGenerateDateRange_LAST7DAYS :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_LAST7DAYS = AccountsReportsGenerateDateRange "LAST_7_DAYS"

-- | Last 30 days, excluding current day.
pattern AccountsReportsGenerateDateRange_LAST30DAYS :: AccountsReportsGenerateDateRange
pattern AccountsReportsGenerateDateRange_LAST30DAYS = AccountsReportsGenerateDateRange "LAST_30_DAYS"

{-# COMPLETE
  AccountsReportsGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED,
  AccountsReportsGenerateDateRange_Custom,
  AccountsReportsGenerateDateRange_Today,
  AccountsReportsGenerateDateRange_Yesterday,
  AccountsReportsGenerateDateRange_MONTHTODATE,
  AccountsReportsGenerateDateRange_YEARTODATE,
  AccountsReportsGenerateDateRange_LAST7DAYS,
  AccountsReportsGenerateDateRange_LAST30DAYS,
  AccountsReportsGenerateDateRange
  #-}

-- | Dimensions to base the report on.
newtype AccountsReportsGenerateDimensions = AccountsReportsGenerateDimensions {fromAccountsReportsGenerateDimensions :: Core.Text}
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

-- | Unspecified dimension.
pattern AccountsReportsGenerateDimensions_DIMENSIONUNSPECIFIED :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_DIMENSIONUNSPECIFIED = AccountsReportsGenerateDimensions "DIMENSION_UNSPECIFIED"

-- | Date dimension in YYYY-MM-DD format (e.g. \"2010-02-10\").
pattern AccountsReportsGenerateDimensions_Date :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_Date = AccountsReportsGenerateDimensions "DATE"

-- | Week dimension in YYYY-MM-DD format, representing the first day of each week (e.g. \"2010-02-08\"). The first day of the week is determined by the language_code specified in a report generation request (so e.g. this would be a Monday for \"en-GB\" or \"es\", but a Sunday for \"en\" or \"fr-CA\").
pattern AccountsReportsGenerateDimensions_Week :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_Week = AccountsReportsGenerateDimensions "WEEK"

-- | Month dimension in YYYY-MM format (e.g. \"2010-02\").
pattern AccountsReportsGenerateDimensions_Month :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_Month = AccountsReportsGenerateDimensions "MONTH"

-- | Account name. The members of this dimension match the values from Account.display_name.
pattern AccountsReportsGenerateDimensions_ACCOUNTNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ACCOUNTNAME = AccountsReportsGenerateDimensions "ACCOUNT_NAME"

-- | Unique ID of an ad client. The members of this dimension match the values from AdClient.reporting/dimension/id.
pattern AccountsReportsGenerateDimensions_ADCLIENTID :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADCLIENTID = AccountsReportsGenerateDimensions "AD_CLIENT_ID"

-- | Localized product name (e.g. \"AdSense for Content\", \"AdSense for Search\").
pattern AccountsReportsGenerateDimensions_PRODUCTNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_PRODUCTNAME = AccountsReportsGenerateDimensions "PRODUCT_NAME"

-- | Product code (e.g. \"AFC\", \"AFS\"). The members of this dimension match the values from AdClient.product_code.
pattern AccountsReportsGenerateDimensions_PRODUCTCODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_PRODUCTCODE = AccountsReportsGenerateDimensions "PRODUCT_CODE"

-- | Ad unit name (within which an ad was served). The members of this dimension match the values from AdUnit.display_name.
pattern AccountsReportsGenerateDimensions_ADUNITNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADUNITNAME = AccountsReportsGenerateDimensions "AD_UNIT_NAME"

-- | Unique ID of an ad unit (within which an ad was served). The members of this dimension match the values from AdUnit.reporting/dimension/id.
pattern AccountsReportsGenerateDimensions_ADUNITID :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADUNITID = AccountsReportsGenerateDimensions "AD_UNIT_ID"

-- | Localized size of an ad unit (e.g. \"728x90\", \"Responsive\").
pattern AccountsReportsGenerateDimensions_ADUNITSIZENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADUNITSIZENAME = AccountsReportsGenerateDimensions "AD_UNIT_SIZE_NAME"

-- | The size code of an ad unit (e.g. \"728x90\", \"responsive\").
pattern AccountsReportsGenerateDimensions_ADUNITSIZECODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADUNITSIZECODE = AccountsReportsGenerateDimensions "AD_UNIT_SIZE_CODE"

-- | Custom channel name. The members of this dimension match the values from CustomChannel.display_name.
pattern AccountsReportsGenerateDimensions_CUSTOMCHANNELNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CUSTOMCHANNELNAME = AccountsReportsGenerateDimensions "CUSTOM_CHANNEL_NAME"

-- | Unique ID of a custom channel. The members of this dimension match the values from CustomChannel.reporting/dimension/id.
pattern AccountsReportsGenerateDimensions_CUSTOMCHANNELID :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CUSTOMCHANNELID = AccountsReportsGenerateDimensions "CUSTOM_CHANNEL_ID"

-- | Domain name of a verified site (e.g. \"example.com\"). The members of this dimension match the values from Site.domain.
pattern AccountsReportsGenerateDimensions_OWNEDSITEDOMAINNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_OWNEDSITEDOMAINNAME = AccountsReportsGenerateDimensions "OWNED_SITE_DOMAIN_NAME"

-- | Unique ID of a verified site. The members of this dimension match the values from Site.reporting/dimension/id.
pattern AccountsReportsGenerateDimensions_OWNEDSITEID :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_OWNEDSITEID = AccountsReportsGenerateDimensions "OWNED_SITE_ID"

-- | Name of a URL channel. The members of this dimension match the values from UrlChannel.uri_pattern.
pattern AccountsReportsGenerateDimensions_URLCHANNELNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_URLCHANNELNAME = AccountsReportsGenerateDimensions "URL_CHANNEL_NAME"

-- | Unique ID of a URL channel. The members of this dimension match the values from UrlChannel.reporting/dimension/id.
pattern AccountsReportsGenerateDimensions_URLCHANNELID :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_URLCHANNELID = AccountsReportsGenerateDimensions "URL_CHANNEL_ID"

-- | Name of an ad network that returned the winning ads for an ad request (e.g. \"Google AdWords\"). Note that unlike other \"NAME\" dimensions, the members of this dimensions are not localized.
pattern AccountsReportsGenerateDimensions_BUYERNETWORKNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_BUYERNETWORKNAME = AccountsReportsGenerateDimensions "BUYER_NETWORK_NAME"

-- | Unique (opaque) ID of an ad network that returned the winning ads for an ad request.
pattern AccountsReportsGenerateDimensions_BUYERNETWORKID :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_BUYERNETWORKID = AccountsReportsGenerateDimensions "BUYER_NETWORK_ID"

-- | Localized bid type name (e.g. \"CPC bids\", \"CPM bids\") for a served ad.
pattern AccountsReportsGenerateDimensions_BIDTYPENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_BIDTYPENAME = AccountsReportsGenerateDimensions "BID_TYPE_NAME"

-- | Type of a bid (e.g. \"cpc\", \"cpm\") for a served ad.
pattern AccountsReportsGenerateDimensions_BIDTYPECODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_BIDTYPECODE = AccountsReportsGenerateDimensions "BID_TYPE_CODE"

-- | Localized creative size name (e.g. \"728x90\", \"Dynamic\") of a served ad.
pattern AccountsReportsGenerateDimensions_CREATIVESIZENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CREATIVESIZENAME = AccountsReportsGenerateDimensions "CREATIVE_SIZE_NAME"

-- | Creative size code (e.g. \"728x90\", \"dynamic\") of a served ad.
pattern AccountsReportsGenerateDimensions_CREATIVESIZECODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CREATIVESIZECODE = AccountsReportsGenerateDimensions "CREATIVE_SIZE_CODE"

-- | Localized name of a host on which an ad was served, after IDNA decoding (e.g. \"www.google.com\", \"Web caches and other\", \"bücher.example\").
pattern AccountsReportsGenerateDimensions_DOMAINNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_DOMAINNAME = AccountsReportsGenerateDimensions "DOMAIN_NAME"

-- | Name of a host on which an ad was served (e.g. \"www.google.com\", \"webcaches\", \"xn--bcher-kva.example\").
pattern AccountsReportsGenerateDimensions_DOMAINCODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_DOMAINCODE = AccountsReportsGenerateDimensions "DOMAIN_CODE"

-- | Localized region name of a user viewing an ad (e.g. \"United States\", \"France\").
pattern AccountsReportsGenerateDimensions_COUNTRYNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_COUNTRYNAME = AccountsReportsGenerateDimensions "COUNTRY_NAME"

-- | CLDR region code of a user viewing an ad (e.g. \"US\", \"FR\").
pattern AccountsReportsGenerateDimensions_COUNTRYCODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_COUNTRYCODE = AccountsReportsGenerateDimensions "COUNTRY_CODE"

-- | Localized platform type name (e.g. \"High-end mobile devices\", \"Desktop\").
pattern AccountsReportsGenerateDimensions_PLATFORMTYPENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_PLATFORMTYPENAME = AccountsReportsGenerateDimensions "PLATFORM_TYPE_NAME"

-- | Platform type code (e.g. \"HighEndMobile\", \"Desktop\").
pattern AccountsReportsGenerateDimensions_PLATFORMTYPECODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_PLATFORMTYPECODE = AccountsReportsGenerateDimensions "PLATFORM_TYPE_CODE"

-- | Localized targeting type name (e.g. \"Contextual\", \"Personalized\", \"Run of Network\").
pattern AccountsReportsGenerateDimensions_TARGETINGTYPENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_TARGETINGTYPENAME = AccountsReportsGenerateDimensions "TARGETING_TYPE_NAME"

-- | Targeting type code (e.g. \"Keyword\", \"UserInterest\", \"RunOfNetwork\").
pattern AccountsReportsGenerateDimensions_TARGETINGTYPECODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_TARGETINGTYPECODE = AccountsReportsGenerateDimensions "TARGETING_TYPE_CODE"

-- | Localized content platform name an ad request was made from (e.g. \"AMP\", \"Web\").
pattern AccountsReportsGenerateDimensions_CONTENTPLATFORMNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CONTENTPLATFORMNAME = AccountsReportsGenerateDimensions "CONTENT_PLATFORM_NAME"

-- | Content platform code an ad request was made from (e.g. \"AMP\", \"HTML\").
pattern AccountsReportsGenerateDimensions_CONTENTPLATFORMCODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CONTENTPLATFORMCODE = AccountsReportsGenerateDimensions "CONTENT_PLATFORM_CODE"

-- | Localized ad placement name (e.g. \"Ad unit\", \"Global settings\", \"Manual\").
pattern AccountsReportsGenerateDimensions_ADPLACEMENTNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADPLACEMENTNAME = AccountsReportsGenerateDimensions "AD_PLACEMENT_NAME"

-- | Ad placement code (e.g. \"AD_UNIT\", \"ca-pub-123456:78910\", \"OTHER\").
pattern AccountsReportsGenerateDimensions_ADPLACEMENTCODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADPLACEMENTCODE = AccountsReportsGenerateDimensions "AD_PLACEMENT_CODE"

-- | Localized requested ad type name (e.g. \"Display\", \"Link unit\", \"Other\").
pattern AccountsReportsGenerateDimensions_REQUESTEDADTYPENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_REQUESTEDADTYPENAME = AccountsReportsGenerateDimensions "REQUESTED_AD_TYPE_NAME"

-- | Requested ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
pattern AccountsReportsGenerateDimensions_REQUESTEDADTYPECODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_REQUESTEDADTYPECODE = AccountsReportsGenerateDimensions "REQUESTED_AD_TYPE_CODE"

-- | Localized served ad type name (e.g. \"Display\", \"Link unit\", \"Other\").
pattern AccountsReportsGenerateDimensions_SERVEDADTYPENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_SERVEDADTYPENAME = AccountsReportsGenerateDimensions "SERVED_AD_TYPE_NAME"

-- | Served ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
pattern AccountsReportsGenerateDimensions_SERVEDADTYPECODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_SERVEDADTYPECODE = AccountsReportsGenerateDimensions "SERVED_AD_TYPE_CODE"

-- | Localized ad format name indicating the way an ad is shown to the users on your site (e.g. \"In-page\", \"Anchor\", \"Vignette\").
pattern AccountsReportsGenerateDimensions_ADFORMATNAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADFORMATNAME = AccountsReportsGenerateDimensions "AD_FORMAT_NAME"

-- | Ad format code indicating the way an ad is shown to the users on your site (e.g. \"ON_PAGE\", \"ANCHOR\", \"INTERSTITIAL\").
pattern AccountsReportsGenerateDimensions_ADFORMATCODE :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_ADFORMATCODE = AccountsReportsGenerateDimensions "AD_FORMAT_CODE"

-- | Custom search style name.
pattern AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLENAME :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLENAME = AccountsReportsGenerateDimensions "CUSTOM_SEARCH_STYLE_NAME"

-- | Custom search style id.
pattern AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLEID :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLEID = AccountsReportsGenerateDimensions "CUSTOM_SEARCH_STYLE_ID"

-- | Domain registrants.
pattern AccountsReportsGenerateDimensions_DOMAINREGISTRANT :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_DOMAINREGISTRANT = AccountsReportsGenerateDimensions "DOMAIN_REGISTRANT"

-- | Query strings for web searches.
pattern AccountsReportsGenerateDimensions_WEBSEARCHQUERYSTRING :: AccountsReportsGenerateDimensions
pattern AccountsReportsGenerateDimensions_WEBSEARCHQUERYSTRING = AccountsReportsGenerateDimensions "WEBSEARCH_QUERY_STRING"

{-# COMPLETE
  AccountsReportsGenerateDimensions_DIMENSIONUNSPECIFIED,
  AccountsReportsGenerateDimensions_Date,
  AccountsReportsGenerateDimensions_Week,
  AccountsReportsGenerateDimensions_Month,
  AccountsReportsGenerateDimensions_ACCOUNTNAME,
  AccountsReportsGenerateDimensions_ADCLIENTID,
  AccountsReportsGenerateDimensions_PRODUCTNAME,
  AccountsReportsGenerateDimensions_PRODUCTCODE,
  AccountsReportsGenerateDimensions_ADUNITNAME,
  AccountsReportsGenerateDimensions_ADUNITID,
  AccountsReportsGenerateDimensions_ADUNITSIZENAME,
  AccountsReportsGenerateDimensions_ADUNITSIZECODE,
  AccountsReportsGenerateDimensions_CUSTOMCHANNELNAME,
  AccountsReportsGenerateDimensions_CUSTOMCHANNELID,
  AccountsReportsGenerateDimensions_OWNEDSITEDOMAINNAME,
  AccountsReportsGenerateDimensions_OWNEDSITEID,
  AccountsReportsGenerateDimensions_URLCHANNELNAME,
  AccountsReportsGenerateDimensions_URLCHANNELID,
  AccountsReportsGenerateDimensions_BUYERNETWORKNAME,
  AccountsReportsGenerateDimensions_BUYERNETWORKID,
  AccountsReportsGenerateDimensions_BIDTYPENAME,
  AccountsReportsGenerateDimensions_BIDTYPECODE,
  AccountsReportsGenerateDimensions_CREATIVESIZENAME,
  AccountsReportsGenerateDimensions_CREATIVESIZECODE,
  AccountsReportsGenerateDimensions_DOMAINNAME,
  AccountsReportsGenerateDimensions_DOMAINCODE,
  AccountsReportsGenerateDimensions_COUNTRYNAME,
  AccountsReportsGenerateDimensions_COUNTRYCODE,
  AccountsReportsGenerateDimensions_PLATFORMTYPENAME,
  AccountsReportsGenerateDimensions_PLATFORMTYPECODE,
  AccountsReportsGenerateDimensions_TARGETINGTYPENAME,
  AccountsReportsGenerateDimensions_TARGETINGTYPECODE,
  AccountsReportsGenerateDimensions_CONTENTPLATFORMNAME,
  AccountsReportsGenerateDimensions_CONTENTPLATFORMCODE,
  AccountsReportsGenerateDimensions_ADPLACEMENTNAME,
  AccountsReportsGenerateDimensions_ADPLACEMENTCODE,
  AccountsReportsGenerateDimensions_REQUESTEDADTYPENAME,
  AccountsReportsGenerateDimensions_REQUESTEDADTYPECODE,
  AccountsReportsGenerateDimensions_SERVEDADTYPENAME,
  AccountsReportsGenerateDimensions_SERVEDADTYPECODE,
  AccountsReportsGenerateDimensions_ADFORMATNAME,
  AccountsReportsGenerateDimensions_ADFORMATCODE,
  AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLENAME,
  AccountsReportsGenerateDimensions_CUSTOMSEARCHSTYLEID,
  AccountsReportsGenerateDimensions_DOMAINREGISTRANT,
  AccountsReportsGenerateDimensions_WEBSEARCHQUERYSTRING,
  AccountsReportsGenerateDimensions
  #-}

-- | Required. Reporting metrics.
newtype AccountsReportsGenerateMetrics = AccountsReportsGenerateMetrics {fromAccountsReportsGenerateMetrics :: Core.Text}
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

-- | Unspecified metric.
pattern AccountsReportsGenerateMetrics_METRICUNSPECIFIED :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_METRICUNSPECIFIED = AccountsReportsGenerateMetrics "METRIC_UNSPECIFIED"

-- | Number of page views.
pattern AccountsReportsGenerateMetrics_PAGEVIEWS :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_PAGEVIEWS = AccountsReportsGenerateMetrics "PAGE_VIEWS"

-- | Number of ad units that requested ads (for content ads) or search queries (for search ads). An ad request may result in zero, one, or multiple individual ad impressions depending on the size of the ad unit and whether any ads were available.
pattern AccountsReportsGenerateMetrics_ADREQUESTS :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ADREQUESTS = AccountsReportsGenerateMetrics "AD_REQUESTS"

-- | Requests that returned at least one ad.
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTS :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTS = AccountsReportsGenerateMetrics "MATCHED_AD_REQUESTS"

-- | Impressions. An impression is counted for each ad request where at least one ad has been downloaded to the user’s device and has begun to load. It is the number of ad units (for content ads) or search queries (for search ads) that showed ads.
pattern AccountsReportsGenerateMetrics_TOTALIMPRESSIONS :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_TOTALIMPRESSIONS = AccountsReportsGenerateMetrics "TOTAL_IMPRESSIONS"

-- | Impressions. An impression is counted for each ad request where at least one ad has been downloaded to the user’s device and has begun to load. It is the number of ad units (for content ads) or search queries (for search ads) that showed ads.
pattern AccountsReportsGenerateMetrics_Impressions :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_Impressions = AccountsReportsGenerateMetrics "IMPRESSIONS"

-- | Ads shown. Different ad formats will display varying numbers of ads. For example, a vertical banner may consist of 2 or more ads. Also, the number of ads in an ad unit may vary depending on whether the ad unit is displaying standard text ads, expanded text ads or image ads.
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONS :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONS = AccountsReportsGenerateMetrics "INDIVIDUAL_AD_IMPRESSIONS"

-- | Number of times a user clicked on a standard content ad.
pattern AccountsReportsGenerateMetrics_Clicks :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_Clicks = AccountsReportsGenerateMetrics "CLICKS"

-- | Fraction of page views considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateMetrics_PAGEVIEWSSPAMRATIO :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_PAGEVIEWSSPAMRATIO = AccountsReportsGenerateMetrics "PAGE_VIEWS_SPAM_RATIO"

-- | Fraction of ad requests considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateMetrics_ADREQUESTSSPAMRATIO :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ADREQUESTSSPAMRATIO = AccountsReportsGenerateMetrics "AD_REQUESTS_SPAM_RATIO"

-- | Fraction of ad requests that returned ads considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTSSPAMRATIO :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTSSPAMRATIO = AccountsReportsGenerateMetrics "MATCHED_AD_REQUESTS_SPAM_RATIO"

-- | Fraction of impressions considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateMetrics_IMPRESSIONSSPAMRATIO :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_IMPRESSIONSSPAMRATIO = AccountsReportsGenerateMetrics "IMPRESSIONS_SPAM_RATIO"

-- | Fraction of ad impressions considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO = AccountsReportsGenerateMetrics "INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO"

-- | Fraction of clicks considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateMetrics_CLICKSSPAMRATIO :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_CLICKSSPAMRATIO = AccountsReportsGenerateMetrics "CLICKS_SPAM_RATIO"

-- | Ratio of requested ad units or queries to the number returned to the site.
pattern AccountsReportsGenerateMetrics_ADREQUESTSCOVERAGE :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ADREQUESTSCOVERAGE = AccountsReportsGenerateMetrics "AD_REQUESTS_COVERAGE"

-- | Ratio of individual page views that resulted in a click.
pattern AccountsReportsGenerateMetrics_PAGEVIEWSCTR :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_PAGEVIEWSCTR = AccountsReportsGenerateMetrics "PAGE_VIEWS_CTR"

-- | Ratio of ad requests that resulted in a click.
pattern AccountsReportsGenerateMetrics_ADREQUESTSCTR :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ADREQUESTSCTR = AccountsReportsGenerateMetrics "AD_REQUESTS_CTR"

-- | Ratio of clicks to matched requests.
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTSCTR :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTSCTR = AccountsReportsGenerateMetrics "MATCHED_AD_REQUESTS_CTR"

-- | Ratio of IMPRESSIONS that resulted in a click.
pattern AccountsReportsGenerateMetrics_IMPRESSIONSCTR :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_IMPRESSIONSCTR = AccountsReportsGenerateMetrics "IMPRESSIONS_CTR"

-- | Ratio of individual ad impressions that resulted in a click.
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSCTR :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSCTR = AccountsReportsGenerateMetrics "INDIVIDUAL_AD_IMPRESSIONS_CTR"

-- | Ratio of requests that were measurable for viewability.
pattern AccountsReportsGenerateMetrics_ACTIVEVIEWMEASURABILITY :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ACTIVEVIEWMEASURABILITY = AccountsReportsGenerateMetrics "ACTIVE_VIEW_MEASURABILITY"

-- | Ratio of requests that were viewable.
pattern AccountsReportsGenerateMetrics_ACTIVEVIEWVIEWABILITY :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ACTIVEVIEWVIEWABILITY = AccountsReportsGenerateMetrics "ACTIVE_VIEW_VIEWABILITY"

-- | Mean time an ad was displayed on screen.
pattern AccountsReportsGenerateMetrics_ACTIVEVIEWTIME :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ACTIVEVIEWTIME = AccountsReportsGenerateMetrics "ACTIVE_VIEW_TIME"

-- | Estimated earnings of the publisher. Note that earnings up to yesterday are accurate, more recent earnings are estimated due to the possibility of spam, or exchange rate fluctuations.
pattern AccountsReportsGenerateMetrics_ESTIMATEDEARNINGS :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ESTIMATEDEARNINGS = AccountsReportsGenerateMetrics "ESTIMATED_EARNINGS"

-- | Revenue per thousand page views. This is calculated by dividing the estimated revenue by the number of page views multiplied by 1000.
pattern AccountsReportsGenerateMetrics_PAGEVIEWSRPM :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_PAGEVIEWSRPM = AccountsReportsGenerateMetrics "PAGE_VIEWS_RPM"

-- | Revenue per thousand ad requests. This is calculated by dividing estimated revenue by the number of ad requests multiplied by 1000.
pattern AccountsReportsGenerateMetrics_ADREQUESTSRPM :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ADREQUESTSRPM = AccountsReportsGenerateMetrics "AD_REQUESTS_RPM"

-- | Revenue per thousand matched ad requests. This is calculated by dividing estimated revenue by the number of matched ad requests multiplied by 1000.
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTSRPM :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_MATCHEDADREQUESTSRPM = AccountsReportsGenerateMetrics "MATCHED_AD_REQUESTS_RPM"

-- | Revenue per thousand ad impressions. This is calculated by dividing estimated revenue by the number of ad impressions multiplied by 1000.
pattern AccountsReportsGenerateMetrics_IMPRESSIONSRPM :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_IMPRESSIONSRPM = AccountsReportsGenerateMetrics "IMPRESSIONS_RPM"

-- | Revenue per thousand individual ad impressions. This is calculated by dividing estimated revenue by the number of individual ad impressions multiplied by 1000.
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSRPM :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSRPM = AccountsReportsGenerateMetrics "INDIVIDUAL_AD_IMPRESSIONS_RPM"

-- | Amount the publisher earns each time a user clicks on an ad. CPC is calculated by dividing the estimated revenue by the number of clicks received.
pattern AccountsReportsGenerateMetrics_COSTPERCLICK :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_COSTPERCLICK = AccountsReportsGenerateMetrics "COST_PER_CLICK"

-- | Number of ad views per impression.
pattern AccountsReportsGenerateMetrics_ADSPERIMPRESSION :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_ADSPERIMPRESSION = AccountsReportsGenerateMetrics "ADS_PER_IMPRESSION"

-- | Total earnings.
pattern AccountsReportsGenerateMetrics_TOTALEARNINGS :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_TOTALEARNINGS = AccountsReportsGenerateMetrics "TOTAL_EARNINGS"

-- | Number of results pages.
pattern AccountsReportsGenerateMetrics_WEBSEARCHRESULTPAGES :: AccountsReportsGenerateMetrics
pattern AccountsReportsGenerateMetrics_WEBSEARCHRESULTPAGES = AccountsReportsGenerateMetrics "WEBSEARCH_RESULT_PAGES"

{-# COMPLETE
  AccountsReportsGenerateMetrics_METRICUNSPECIFIED,
  AccountsReportsGenerateMetrics_PAGEVIEWS,
  AccountsReportsGenerateMetrics_ADREQUESTS,
  AccountsReportsGenerateMetrics_MATCHEDADREQUESTS,
  AccountsReportsGenerateMetrics_TOTALIMPRESSIONS,
  AccountsReportsGenerateMetrics_Impressions,
  AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONS,
  AccountsReportsGenerateMetrics_Clicks,
  AccountsReportsGenerateMetrics_PAGEVIEWSSPAMRATIO,
  AccountsReportsGenerateMetrics_ADREQUESTSSPAMRATIO,
  AccountsReportsGenerateMetrics_MATCHEDADREQUESTSSPAMRATIO,
  AccountsReportsGenerateMetrics_IMPRESSIONSSPAMRATIO,
  AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO,
  AccountsReportsGenerateMetrics_CLICKSSPAMRATIO,
  AccountsReportsGenerateMetrics_ADREQUESTSCOVERAGE,
  AccountsReportsGenerateMetrics_PAGEVIEWSCTR,
  AccountsReportsGenerateMetrics_ADREQUESTSCTR,
  AccountsReportsGenerateMetrics_MATCHEDADREQUESTSCTR,
  AccountsReportsGenerateMetrics_IMPRESSIONSCTR,
  AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSCTR,
  AccountsReportsGenerateMetrics_ACTIVEVIEWMEASURABILITY,
  AccountsReportsGenerateMetrics_ACTIVEVIEWVIEWABILITY,
  AccountsReportsGenerateMetrics_ACTIVEVIEWTIME,
  AccountsReportsGenerateMetrics_ESTIMATEDEARNINGS,
  AccountsReportsGenerateMetrics_PAGEVIEWSRPM,
  AccountsReportsGenerateMetrics_ADREQUESTSRPM,
  AccountsReportsGenerateMetrics_MATCHEDADREQUESTSRPM,
  AccountsReportsGenerateMetrics_IMPRESSIONSRPM,
  AccountsReportsGenerateMetrics_INDIVIDUALADIMPRESSIONSRPM,
  AccountsReportsGenerateMetrics_COSTPERCLICK,
  AccountsReportsGenerateMetrics_ADSPERIMPRESSION,
  AccountsReportsGenerateMetrics_TOTALEARNINGS,
  AccountsReportsGenerateMetrics_WEBSEARCHRESULTPAGES,
  AccountsReportsGenerateMetrics
  #-}

-- | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information, see <https://support.google.com/adsense/answer/9830725 changing the time zone of your reports>.
newtype AccountsReportsGenerateReportingTimeZone = AccountsReportsGenerateReportingTimeZone {fromAccountsReportsGenerateReportingTimeZone :: Core.Text}
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

-- | Unspecified timezone.
pattern AccountsReportsGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED :: AccountsReportsGenerateReportingTimeZone
pattern AccountsReportsGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED = AccountsReportsGenerateReportingTimeZone "REPORTING_TIME_ZONE_UNSPECIFIED"

-- | Use the account timezone in the report.
pattern AccountsReportsGenerateReportingTimeZone_ACCOUNTTIMEZONE :: AccountsReportsGenerateReportingTimeZone
pattern AccountsReportsGenerateReportingTimeZone_ACCOUNTTIMEZONE = AccountsReportsGenerateReportingTimeZone "ACCOUNT_TIME_ZONE"

-- | Use the Google timezone in the report (America\/Los_Angeles).
pattern AccountsReportsGenerateReportingTimeZone_GOOGLETIMEZONE :: AccountsReportsGenerateReportingTimeZone
pattern AccountsReportsGenerateReportingTimeZone_GOOGLETIMEZONE = AccountsReportsGenerateReportingTimeZone "GOOGLE_TIME_ZONE"

{-# COMPLETE
  AccountsReportsGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
  AccountsReportsGenerateReportingTimeZone_ACCOUNTTIMEZONE,
  AccountsReportsGenerateReportingTimeZone_GOOGLETIMEZONE,
  AccountsReportsGenerateReportingTimeZone
  #-}

-- | Date range of the report, if unset the range will be considered CUSTOM.
newtype AccountsReportsGenerateCsvDateRange = AccountsReportsGenerateCsvDateRange {fromAccountsReportsGenerateCsvDateRange :: Core.Text}
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

-- | Unspecified date range.
pattern AccountsReportsGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED = AccountsReportsGenerateCsvDateRange "REPORTING_DATE_RANGE_UNSPECIFIED"

-- | A custom date range specified using the @start_date@ and @end_date@ fields. This is the default if no ReportingDateRange is provided.
pattern AccountsReportsGenerateCsvDateRange_Custom :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_Custom = AccountsReportsGenerateCsvDateRange "CUSTOM"

-- | Current day.
pattern AccountsReportsGenerateCsvDateRange_Today :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_Today = AccountsReportsGenerateCsvDateRange "TODAY"

-- | Yesterday.
pattern AccountsReportsGenerateCsvDateRange_Yesterday :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_Yesterday = AccountsReportsGenerateCsvDateRange "YESTERDAY"

-- | From the start of the current month to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-03-01, 2020-03-12].
pattern AccountsReportsGenerateCsvDateRange_MONTHTODATE :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_MONTHTODATE = AccountsReportsGenerateCsvDateRange "MONTH_TO_DATE"

-- | From the start of the current year to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-01-01, 2020-03-12].
pattern AccountsReportsGenerateCsvDateRange_YEARTODATE :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_YEARTODATE = AccountsReportsGenerateCsvDateRange "YEAR_TO_DATE"

-- | Last 7 days, excluding current day.
pattern AccountsReportsGenerateCsvDateRange_LAST7DAYS :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_LAST7DAYS = AccountsReportsGenerateCsvDateRange "LAST_7_DAYS"

-- | Last 30 days, excluding current day.
pattern AccountsReportsGenerateCsvDateRange_LAST30DAYS :: AccountsReportsGenerateCsvDateRange
pattern AccountsReportsGenerateCsvDateRange_LAST30DAYS = AccountsReportsGenerateCsvDateRange "LAST_30_DAYS"

{-# COMPLETE
  AccountsReportsGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED,
  AccountsReportsGenerateCsvDateRange_Custom,
  AccountsReportsGenerateCsvDateRange_Today,
  AccountsReportsGenerateCsvDateRange_Yesterday,
  AccountsReportsGenerateCsvDateRange_MONTHTODATE,
  AccountsReportsGenerateCsvDateRange_YEARTODATE,
  AccountsReportsGenerateCsvDateRange_LAST7DAYS,
  AccountsReportsGenerateCsvDateRange_LAST30DAYS,
  AccountsReportsGenerateCsvDateRange
  #-}

-- | Dimensions to base the report on.
newtype AccountsReportsGenerateCsvDimensions = AccountsReportsGenerateCsvDimensions {fromAccountsReportsGenerateCsvDimensions :: Core.Text}
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

-- | Unspecified dimension.
pattern AccountsReportsGenerateCsvDimensions_DIMENSIONUNSPECIFIED :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_DIMENSIONUNSPECIFIED = AccountsReportsGenerateCsvDimensions "DIMENSION_UNSPECIFIED"

-- | Date dimension in YYYY-MM-DD format (e.g. \"2010-02-10\").
pattern AccountsReportsGenerateCsvDimensions_Date :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_Date = AccountsReportsGenerateCsvDimensions "DATE"

-- | Week dimension in YYYY-MM-DD format, representing the first day of each week (e.g. \"2010-02-08\"). The first day of the week is determined by the language_code specified in a report generation request (so e.g. this would be a Monday for \"en-GB\" or \"es\", but a Sunday for \"en\" or \"fr-CA\").
pattern AccountsReportsGenerateCsvDimensions_Week :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_Week = AccountsReportsGenerateCsvDimensions "WEEK"

-- | Month dimension in YYYY-MM format (e.g. \"2010-02\").
pattern AccountsReportsGenerateCsvDimensions_Month :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_Month = AccountsReportsGenerateCsvDimensions "MONTH"

-- | Account name. The members of this dimension match the values from Account.display_name.
pattern AccountsReportsGenerateCsvDimensions_ACCOUNTNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ACCOUNTNAME = AccountsReportsGenerateCsvDimensions "ACCOUNT_NAME"

-- | Unique ID of an ad client. The members of this dimension match the values from AdClient.reporting/dimension/id.
pattern AccountsReportsGenerateCsvDimensions_ADCLIENTID :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADCLIENTID = AccountsReportsGenerateCsvDimensions "AD_CLIENT_ID"

-- | Localized product name (e.g. \"AdSense for Content\", \"AdSense for Search\").
pattern AccountsReportsGenerateCsvDimensions_PRODUCTNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_PRODUCTNAME = AccountsReportsGenerateCsvDimensions "PRODUCT_NAME"

-- | Product code (e.g. \"AFC\", \"AFS\"). The members of this dimension match the values from AdClient.product_code.
pattern AccountsReportsGenerateCsvDimensions_PRODUCTCODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_PRODUCTCODE = AccountsReportsGenerateCsvDimensions "PRODUCT_CODE"

-- | Ad unit name (within which an ad was served). The members of this dimension match the values from AdUnit.display_name.
pattern AccountsReportsGenerateCsvDimensions_ADUNITNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADUNITNAME = AccountsReportsGenerateCsvDimensions "AD_UNIT_NAME"

-- | Unique ID of an ad unit (within which an ad was served). The members of this dimension match the values from AdUnit.reporting/dimension/id.
pattern AccountsReportsGenerateCsvDimensions_ADUNITID :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADUNITID = AccountsReportsGenerateCsvDimensions "AD_UNIT_ID"

-- | Localized size of an ad unit (e.g. \"728x90\", \"Responsive\").
pattern AccountsReportsGenerateCsvDimensions_ADUNITSIZENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADUNITSIZENAME = AccountsReportsGenerateCsvDimensions "AD_UNIT_SIZE_NAME"

-- | The size code of an ad unit (e.g. \"728x90\", \"responsive\").
pattern AccountsReportsGenerateCsvDimensions_ADUNITSIZECODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADUNITSIZECODE = AccountsReportsGenerateCsvDimensions "AD_UNIT_SIZE_CODE"

-- | Custom channel name. The members of this dimension match the values from CustomChannel.display_name.
pattern AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELNAME = AccountsReportsGenerateCsvDimensions "CUSTOM_CHANNEL_NAME"

-- | Unique ID of a custom channel. The members of this dimension match the values from CustomChannel.reporting/dimension/id.
pattern AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELID :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELID = AccountsReportsGenerateCsvDimensions "CUSTOM_CHANNEL_ID"

-- | Domain name of a verified site (e.g. \"example.com\"). The members of this dimension match the values from Site.domain.
pattern AccountsReportsGenerateCsvDimensions_OWNEDSITEDOMAINNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_OWNEDSITEDOMAINNAME = AccountsReportsGenerateCsvDimensions "OWNED_SITE_DOMAIN_NAME"

-- | Unique ID of a verified site. The members of this dimension match the values from Site.reporting/dimension/id.
pattern AccountsReportsGenerateCsvDimensions_OWNEDSITEID :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_OWNEDSITEID = AccountsReportsGenerateCsvDimensions "OWNED_SITE_ID"

-- | Name of a URL channel. The members of this dimension match the values from UrlChannel.uri_pattern.
pattern AccountsReportsGenerateCsvDimensions_URLCHANNELNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_URLCHANNELNAME = AccountsReportsGenerateCsvDimensions "URL_CHANNEL_NAME"

-- | Unique ID of a URL channel. The members of this dimension match the values from UrlChannel.reporting/dimension/id.
pattern AccountsReportsGenerateCsvDimensions_URLCHANNELID :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_URLCHANNELID = AccountsReportsGenerateCsvDimensions "URL_CHANNEL_ID"

-- | Name of an ad network that returned the winning ads for an ad request (e.g. \"Google AdWords\"). Note that unlike other \"NAME\" dimensions, the members of this dimensions are not localized.
pattern AccountsReportsGenerateCsvDimensions_BUYERNETWORKNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_BUYERNETWORKNAME = AccountsReportsGenerateCsvDimensions "BUYER_NETWORK_NAME"

-- | Unique (opaque) ID of an ad network that returned the winning ads for an ad request.
pattern AccountsReportsGenerateCsvDimensions_BUYERNETWORKID :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_BUYERNETWORKID = AccountsReportsGenerateCsvDimensions "BUYER_NETWORK_ID"

-- | Localized bid type name (e.g. \"CPC bids\", \"CPM bids\") for a served ad.
pattern AccountsReportsGenerateCsvDimensions_BIDTYPENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_BIDTYPENAME = AccountsReportsGenerateCsvDimensions "BID_TYPE_NAME"

-- | Type of a bid (e.g. \"cpc\", \"cpm\") for a served ad.
pattern AccountsReportsGenerateCsvDimensions_BIDTYPECODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_BIDTYPECODE = AccountsReportsGenerateCsvDimensions "BID_TYPE_CODE"

-- | Localized creative size name (e.g. \"728x90\", \"Dynamic\") of a served ad.
pattern AccountsReportsGenerateCsvDimensions_CREATIVESIZENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CREATIVESIZENAME = AccountsReportsGenerateCsvDimensions "CREATIVE_SIZE_NAME"

-- | Creative size code (e.g. \"728x90\", \"dynamic\") of a served ad.
pattern AccountsReportsGenerateCsvDimensions_CREATIVESIZECODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CREATIVESIZECODE = AccountsReportsGenerateCsvDimensions "CREATIVE_SIZE_CODE"

-- | Localized name of a host on which an ad was served, after IDNA decoding (e.g. \"www.google.com\", \"Web caches and other\", \"bücher.example\").
pattern AccountsReportsGenerateCsvDimensions_DOMAINNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_DOMAINNAME = AccountsReportsGenerateCsvDimensions "DOMAIN_NAME"

-- | Name of a host on which an ad was served (e.g. \"www.google.com\", \"webcaches\", \"xn--bcher-kva.example\").
pattern AccountsReportsGenerateCsvDimensions_DOMAINCODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_DOMAINCODE = AccountsReportsGenerateCsvDimensions "DOMAIN_CODE"

-- | Localized region name of a user viewing an ad (e.g. \"United States\", \"France\").
pattern AccountsReportsGenerateCsvDimensions_COUNTRYNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_COUNTRYNAME = AccountsReportsGenerateCsvDimensions "COUNTRY_NAME"

-- | CLDR region code of a user viewing an ad (e.g. \"US\", \"FR\").
pattern AccountsReportsGenerateCsvDimensions_COUNTRYCODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_COUNTRYCODE = AccountsReportsGenerateCsvDimensions "COUNTRY_CODE"

-- | Localized platform type name (e.g. \"High-end mobile devices\", \"Desktop\").
pattern AccountsReportsGenerateCsvDimensions_PLATFORMTYPENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_PLATFORMTYPENAME = AccountsReportsGenerateCsvDimensions "PLATFORM_TYPE_NAME"

-- | Platform type code (e.g. \"HighEndMobile\", \"Desktop\").
pattern AccountsReportsGenerateCsvDimensions_PLATFORMTYPECODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_PLATFORMTYPECODE = AccountsReportsGenerateCsvDimensions "PLATFORM_TYPE_CODE"

-- | Localized targeting type name (e.g. \"Contextual\", \"Personalized\", \"Run of Network\").
pattern AccountsReportsGenerateCsvDimensions_TARGETINGTYPENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_TARGETINGTYPENAME = AccountsReportsGenerateCsvDimensions "TARGETING_TYPE_NAME"

-- | Targeting type code (e.g. \"Keyword\", \"UserInterest\", \"RunOfNetwork\").
pattern AccountsReportsGenerateCsvDimensions_TARGETINGTYPECODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_TARGETINGTYPECODE = AccountsReportsGenerateCsvDimensions "TARGETING_TYPE_CODE"

-- | Localized content platform name an ad request was made from (e.g. \"AMP\", \"Web\").
pattern AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMNAME = AccountsReportsGenerateCsvDimensions "CONTENT_PLATFORM_NAME"

-- | Content platform code an ad request was made from (e.g. \"AMP\", \"HTML\").
pattern AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMCODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMCODE = AccountsReportsGenerateCsvDimensions "CONTENT_PLATFORM_CODE"

-- | Localized ad placement name (e.g. \"Ad unit\", \"Global settings\", \"Manual\").
pattern AccountsReportsGenerateCsvDimensions_ADPLACEMENTNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADPLACEMENTNAME = AccountsReportsGenerateCsvDimensions "AD_PLACEMENT_NAME"

-- | Ad placement code (e.g. \"AD_UNIT\", \"ca-pub-123456:78910\", \"OTHER\").
pattern AccountsReportsGenerateCsvDimensions_ADPLACEMENTCODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADPLACEMENTCODE = AccountsReportsGenerateCsvDimensions "AD_PLACEMENT_CODE"

-- | Localized requested ad type name (e.g. \"Display\", \"Link unit\", \"Other\").
pattern AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPENAME = AccountsReportsGenerateCsvDimensions "REQUESTED_AD_TYPE_NAME"

-- | Requested ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
pattern AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPECODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPECODE = AccountsReportsGenerateCsvDimensions "REQUESTED_AD_TYPE_CODE"

-- | Localized served ad type name (e.g. \"Display\", \"Link unit\", \"Other\").
pattern AccountsReportsGenerateCsvDimensions_SERVEDADTYPENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_SERVEDADTYPENAME = AccountsReportsGenerateCsvDimensions "SERVED_AD_TYPE_NAME"

-- | Served ad type code (e.g. \"IMAGE\", \"RADLINK\", \"OTHER\").
pattern AccountsReportsGenerateCsvDimensions_SERVEDADTYPECODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_SERVEDADTYPECODE = AccountsReportsGenerateCsvDimensions "SERVED_AD_TYPE_CODE"

-- | Localized ad format name indicating the way an ad is shown to the users on your site (e.g. \"In-page\", \"Anchor\", \"Vignette\").
pattern AccountsReportsGenerateCsvDimensions_ADFORMATNAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADFORMATNAME = AccountsReportsGenerateCsvDimensions "AD_FORMAT_NAME"

-- | Ad format code indicating the way an ad is shown to the users on your site (e.g. \"ON_PAGE\", \"ANCHOR\", \"INTERSTITIAL\").
pattern AccountsReportsGenerateCsvDimensions_ADFORMATCODE :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_ADFORMATCODE = AccountsReportsGenerateCsvDimensions "AD_FORMAT_CODE"

-- | Custom search style name.
pattern AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLENAME :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLENAME = AccountsReportsGenerateCsvDimensions "CUSTOM_SEARCH_STYLE_NAME"

-- | Custom search style id.
pattern AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLEID :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLEID = AccountsReportsGenerateCsvDimensions "CUSTOM_SEARCH_STYLE_ID"

-- | Domain registrants.
pattern AccountsReportsGenerateCsvDimensions_DOMAINREGISTRANT :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_DOMAINREGISTRANT = AccountsReportsGenerateCsvDimensions "DOMAIN_REGISTRANT"

-- | Query strings for web searches.
pattern AccountsReportsGenerateCsvDimensions_WEBSEARCHQUERYSTRING :: AccountsReportsGenerateCsvDimensions
pattern AccountsReportsGenerateCsvDimensions_WEBSEARCHQUERYSTRING = AccountsReportsGenerateCsvDimensions "WEBSEARCH_QUERY_STRING"

{-# COMPLETE
  AccountsReportsGenerateCsvDimensions_DIMENSIONUNSPECIFIED,
  AccountsReportsGenerateCsvDimensions_Date,
  AccountsReportsGenerateCsvDimensions_Week,
  AccountsReportsGenerateCsvDimensions_Month,
  AccountsReportsGenerateCsvDimensions_ACCOUNTNAME,
  AccountsReportsGenerateCsvDimensions_ADCLIENTID,
  AccountsReportsGenerateCsvDimensions_PRODUCTNAME,
  AccountsReportsGenerateCsvDimensions_PRODUCTCODE,
  AccountsReportsGenerateCsvDimensions_ADUNITNAME,
  AccountsReportsGenerateCsvDimensions_ADUNITID,
  AccountsReportsGenerateCsvDimensions_ADUNITSIZENAME,
  AccountsReportsGenerateCsvDimensions_ADUNITSIZECODE,
  AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELNAME,
  AccountsReportsGenerateCsvDimensions_CUSTOMCHANNELID,
  AccountsReportsGenerateCsvDimensions_OWNEDSITEDOMAINNAME,
  AccountsReportsGenerateCsvDimensions_OWNEDSITEID,
  AccountsReportsGenerateCsvDimensions_URLCHANNELNAME,
  AccountsReportsGenerateCsvDimensions_URLCHANNELID,
  AccountsReportsGenerateCsvDimensions_BUYERNETWORKNAME,
  AccountsReportsGenerateCsvDimensions_BUYERNETWORKID,
  AccountsReportsGenerateCsvDimensions_BIDTYPENAME,
  AccountsReportsGenerateCsvDimensions_BIDTYPECODE,
  AccountsReportsGenerateCsvDimensions_CREATIVESIZENAME,
  AccountsReportsGenerateCsvDimensions_CREATIVESIZECODE,
  AccountsReportsGenerateCsvDimensions_DOMAINNAME,
  AccountsReportsGenerateCsvDimensions_DOMAINCODE,
  AccountsReportsGenerateCsvDimensions_COUNTRYNAME,
  AccountsReportsGenerateCsvDimensions_COUNTRYCODE,
  AccountsReportsGenerateCsvDimensions_PLATFORMTYPENAME,
  AccountsReportsGenerateCsvDimensions_PLATFORMTYPECODE,
  AccountsReportsGenerateCsvDimensions_TARGETINGTYPENAME,
  AccountsReportsGenerateCsvDimensions_TARGETINGTYPECODE,
  AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMNAME,
  AccountsReportsGenerateCsvDimensions_CONTENTPLATFORMCODE,
  AccountsReportsGenerateCsvDimensions_ADPLACEMENTNAME,
  AccountsReportsGenerateCsvDimensions_ADPLACEMENTCODE,
  AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPENAME,
  AccountsReportsGenerateCsvDimensions_REQUESTEDADTYPECODE,
  AccountsReportsGenerateCsvDimensions_SERVEDADTYPENAME,
  AccountsReportsGenerateCsvDimensions_SERVEDADTYPECODE,
  AccountsReportsGenerateCsvDimensions_ADFORMATNAME,
  AccountsReportsGenerateCsvDimensions_ADFORMATCODE,
  AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLENAME,
  AccountsReportsGenerateCsvDimensions_CUSTOMSEARCHSTYLEID,
  AccountsReportsGenerateCsvDimensions_DOMAINREGISTRANT,
  AccountsReportsGenerateCsvDimensions_WEBSEARCHQUERYSTRING,
  AccountsReportsGenerateCsvDimensions
  #-}

-- | Required. Reporting metrics.
newtype AccountsReportsGenerateCsvMetrics = AccountsReportsGenerateCsvMetrics {fromAccountsReportsGenerateCsvMetrics :: Core.Text}
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

-- | Unspecified metric.
pattern AccountsReportsGenerateCsvMetrics_METRICUNSPECIFIED :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_METRICUNSPECIFIED = AccountsReportsGenerateCsvMetrics "METRIC_UNSPECIFIED"

-- | Number of page views.
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWS :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWS = AccountsReportsGenerateCsvMetrics "PAGE_VIEWS"

-- | Number of ad units that requested ads (for content ads) or search queries (for search ads). An ad request may result in zero, one, or multiple individual ad impressions depending on the size of the ad unit and whether any ads were available.
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTS :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTS = AccountsReportsGenerateCsvMetrics "AD_REQUESTS"

-- | Requests that returned at least one ad.
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTS :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTS = AccountsReportsGenerateCsvMetrics "MATCHED_AD_REQUESTS"

-- | Impressions. An impression is counted for each ad request where at least one ad has been downloaded to the user’s device and has begun to load. It is the number of ad units (for content ads) or search queries (for search ads) that showed ads.
pattern AccountsReportsGenerateCsvMetrics_TOTALIMPRESSIONS :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_TOTALIMPRESSIONS = AccountsReportsGenerateCsvMetrics "TOTAL_IMPRESSIONS"

-- | Impressions. An impression is counted for each ad request where at least one ad has been downloaded to the user’s device and has begun to load. It is the number of ad units (for content ads) or search queries (for search ads) that showed ads.
pattern AccountsReportsGenerateCsvMetrics_Impressions :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_Impressions = AccountsReportsGenerateCsvMetrics "IMPRESSIONS"

-- | Ads shown. Different ad formats will display varying numbers of ads. For example, a vertical banner may consist of 2 or more ads. Also, the number of ads in an ad unit may vary depending on whether the ad unit is displaying standard text ads, expanded text ads or image ads.
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONS :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONS = AccountsReportsGenerateCsvMetrics "INDIVIDUAL_AD_IMPRESSIONS"

-- | Number of times a user clicked on a standard content ad.
pattern AccountsReportsGenerateCsvMetrics_Clicks :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_Clicks = AccountsReportsGenerateCsvMetrics "CLICKS"

-- | Fraction of page views considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWSSPAMRATIO :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWSSPAMRATIO = AccountsReportsGenerateCsvMetrics "PAGE_VIEWS_SPAM_RATIO"

-- | Fraction of ad requests considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSSPAMRATIO :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSSPAMRATIO = AccountsReportsGenerateCsvMetrics "AD_REQUESTS_SPAM_RATIO"

-- | Fraction of ad requests that returned ads considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSSPAMRATIO :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSSPAMRATIO = AccountsReportsGenerateCsvMetrics "MATCHED_AD_REQUESTS_SPAM_RATIO"

-- | Fraction of impressions considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateCsvMetrics_IMPRESSIONSSPAMRATIO :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_IMPRESSIONSSPAMRATIO = AccountsReportsGenerateCsvMetrics "IMPRESSIONS_SPAM_RATIO"

-- | Fraction of ad impressions considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO = AccountsReportsGenerateCsvMetrics "INDIVIDUAL_AD_IMPRESSIONS_SPAM_RATIO"

-- | Fraction of clicks considered to be spam. Only available to premium accounts.
pattern AccountsReportsGenerateCsvMetrics_CLICKSSPAMRATIO :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_CLICKSSPAMRATIO = AccountsReportsGenerateCsvMetrics "CLICKS_SPAM_RATIO"

-- | Ratio of requested ad units or queries to the number returned to the site.
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSCOVERAGE :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSCOVERAGE = AccountsReportsGenerateCsvMetrics "AD_REQUESTS_COVERAGE"

-- | Ratio of individual page views that resulted in a click.
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWSCTR :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWSCTR = AccountsReportsGenerateCsvMetrics "PAGE_VIEWS_CTR"

-- | Ratio of ad requests that resulted in a click.
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSCTR :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSCTR = AccountsReportsGenerateCsvMetrics "AD_REQUESTS_CTR"

-- | Ratio of clicks to matched requests.
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSCTR :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSCTR = AccountsReportsGenerateCsvMetrics "MATCHED_AD_REQUESTS_CTR"

-- | Ratio of IMPRESSIONS that resulted in a click.
pattern AccountsReportsGenerateCsvMetrics_IMPRESSIONSCTR :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_IMPRESSIONSCTR = AccountsReportsGenerateCsvMetrics "IMPRESSIONS_CTR"

-- | Ratio of individual ad impressions that resulted in a click.
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSCTR :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSCTR = AccountsReportsGenerateCsvMetrics "INDIVIDUAL_AD_IMPRESSIONS_CTR"

-- | Ratio of requests that were measurable for viewability.
pattern AccountsReportsGenerateCsvMetrics_ACTIVEVIEWMEASURABILITY :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ACTIVEVIEWMEASURABILITY = AccountsReportsGenerateCsvMetrics "ACTIVE_VIEW_MEASURABILITY"

-- | Ratio of requests that were viewable.
pattern AccountsReportsGenerateCsvMetrics_ACTIVEVIEWVIEWABILITY :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ACTIVEVIEWVIEWABILITY = AccountsReportsGenerateCsvMetrics "ACTIVE_VIEW_VIEWABILITY"

-- | Mean time an ad was displayed on screen.
pattern AccountsReportsGenerateCsvMetrics_ACTIVEVIEWTIME :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ACTIVEVIEWTIME = AccountsReportsGenerateCsvMetrics "ACTIVE_VIEW_TIME"

-- | Estimated earnings of the publisher. Note that earnings up to yesterday are accurate, more recent earnings are estimated due to the possibility of spam, or exchange rate fluctuations.
pattern AccountsReportsGenerateCsvMetrics_ESTIMATEDEARNINGS :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ESTIMATEDEARNINGS = AccountsReportsGenerateCsvMetrics "ESTIMATED_EARNINGS"

-- | Revenue per thousand page views. This is calculated by dividing the estimated revenue by the number of page views multiplied by 1000.
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWSRPM :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_PAGEVIEWSRPM = AccountsReportsGenerateCsvMetrics "PAGE_VIEWS_RPM"

-- | Revenue per thousand ad requests. This is calculated by dividing estimated revenue by the number of ad requests multiplied by 1000.
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSRPM :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ADREQUESTSRPM = AccountsReportsGenerateCsvMetrics "AD_REQUESTS_RPM"

-- | Revenue per thousand matched ad requests. This is calculated by dividing estimated revenue by the number of matched ad requests multiplied by 1000.
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSRPM :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSRPM = AccountsReportsGenerateCsvMetrics "MATCHED_AD_REQUESTS_RPM"

-- | Revenue per thousand ad impressions. This is calculated by dividing estimated revenue by the number of ad impressions multiplied by 1000.
pattern AccountsReportsGenerateCsvMetrics_IMPRESSIONSRPM :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_IMPRESSIONSRPM = AccountsReportsGenerateCsvMetrics "IMPRESSIONS_RPM"

-- | Revenue per thousand individual ad impressions. This is calculated by dividing estimated revenue by the number of individual ad impressions multiplied by 1000.
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSRPM :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSRPM = AccountsReportsGenerateCsvMetrics "INDIVIDUAL_AD_IMPRESSIONS_RPM"

-- | Amount the publisher earns each time a user clicks on an ad. CPC is calculated by dividing the estimated revenue by the number of clicks received.
pattern AccountsReportsGenerateCsvMetrics_COSTPERCLICK :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_COSTPERCLICK = AccountsReportsGenerateCsvMetrics "COST_PER_CLICK"

-- | Number of ad views per impression.
pattern AccountsReportsGenerateCsvMetrics_ADSPERIMPRESSION :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_ADSPERIMPRESSION = AccountsReportsGenerateCsvMetrics "ADS_PER_IMPRESSION"

-- | Total earnings.
pattern AccountsReportsGenerateCsvMetrics_TOTALEARNINGS :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_TOTALEARNINGS = AccountsReportsGenerateCsvMetrics "TOTAL_EARNINGS"

-- | Number of results pages.
pattern AccountsReportsGenerateCsvMetrics_WEBSEARCHRESULTPAGES :: AccountsReportsGenerateCsvMetrics
pattern AccountsReportsGenerateCsvMetrics_WEBSEARCHRESULTPAGES = AccountsReportsGenerateCsvMetrics "WEBSEARCH_RESULT_PAGES"

{-# COMPLETE
  AccountsReportsGenerateCsvMetrics_METRICUNSPECIFIED,
  AccountsReportsGenerateCsvMetrics_PAGEVIEWS,
  AccountsReportsGenerateCsvMetrics_ADREQUESTS,
  AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTS,
  AccountsReportsGenerateCsvMetrics_TOTALIMPRESSIONS,
  AccountsReportsGenerateCsvMetrics_Impressions,
  AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONS,
  AccountsReportsGenerateCsvMetrics_Clicks,
  AccountsReportsGenerateCsvMetrics_PAGEVIEWSSPAMRATIO,
  AccountsReportsGenerateCsvMetrics_ADREQUESTSSPAMRATIO,
  AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSSPAMRATIO,
  AccountsReportsGenerateCsvMetrics_IMPRESSIONSSPAMRATIO,
  AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSSPAMRATIO,
  AccountsReportsGenerateCsvMetrics_CLICKSSPAMRATIO,
  AccountsReportsGenerateCsvMetrics_ADREQUESTSCOVERAGE,
  AccountsReportsGenerateCsvMetrics_PAGEVIEWSCTR,
  AccountsReportsGenerateCsvMetrics_ADREQUESTSCTR,
  AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSCTR,
  AccountsReportsGenerateCsvMetrics_IMPRESSIONSCTR,
  AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSCTR,
  AccountsReportsGenerateCsvMetrics_ACTIVEVIEWMEASURABILITY,
  AccountsReportsGenerateCsvMetrics_ACTIVEVIEWVIEWABILITY,
  AccountsReportsGenerateCsvMetrics_ACTIVEVIEWTIME,
  AccountsReportsGenerateCsvMetrics_ESTIMATEDEARNINGS,
  AccountsReportsGenerateCsvMetrics_PAGEVIEWSRPM,
  AccountsReportsGenerateCsvMetrics_ADREQUESTSRPM,
  AccountsReportsGenerateCsvMetrics_MATCHEDADREQUESTSRPM,
  AccountsReportsGenerateCsvMetrics_IMPRESSIONSRPM,
  AccountsReportsGenerateCsvMetrics_INDIVIDUALADIMPRESSIONSRPM,
  AccountsReportsGenerateCsvMetrics_COSTPERCLICK,
  AccountsReportsGenerateCsvMetrics_ADSPERIMPRESSION,
  AccountsReportsGenerateCsvMetrics_TOTALEARNINGS,
  AccountsReportsGenerateCsvMetrics_WEBSEARCHRESULTPAGES,
  AccountsReportsGenerateCsvMetrics
  #-}

-- | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information, see <https://support.google.com/adsense/answer/9830725 changing the time zone of your reports>.
newtype AccountsReportsGenerateCsvReportingTimeZone = AccountsReportsGenerateCsvReportingTimeZone {fromAccountsReportsGenerateCsvReportingTimeZone :: Core.Text}
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

-- | Unspecified timezone.
pattern AccountsReportsGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED :: AccountsReportsGenerateCsvReportingTimeZone
pattern AccountsReportsGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED = AccountsReportsGenerateCsvReportingTimeZone "REPORTING_TIME_ZONE_UNSPECIFIED"

-- | Use the account timezone in the report.
pattern AccountsReportsGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE :: AccountsReportsGenerateCsvReportingTimeZone
pattern AccountsReportsGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE = AccountsReportsGenerateCsvReportingTimeZone "ACCOUNT_TIME_ZONE"

-- | Use the Google timezone in the report (America\/Los_Angeles).
pattern AccountsReportsGenerateCsvReportingTimeZone_GOOGLETIMEZONE :: AccountsReportsGenerateCsvReportingTimeZone
pattern AccountsReportsGenerateCsvReportingTimeZone_GOOGLETIMEZONE = AccountsReportsGenerateCsvReportingTimeZone "GOOGLE_TIME_ZONE"

{-# COMPLETE
  AccountsReportsGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
  AccountsReportsGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE,
  AccountsReportsGenerateCsvReportingTimeZone_GOOGLETIMEZONE,
  AccountsReportsGenerateCsvReportingTimeZone
  #-}

-- | Date range of the report, if unset the range will be considered CUSTOM.
newtype AccountsReportsSavedGenerateDateRange = AccountsReportsSavedGenerateDateRange {fromAccountsReportsSavedGenerateDateRange :: Core.Text}
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

-- | Unspecified date range.
pattern AccountsReportsSavedGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED = AccountsReportsSavedGenerateDateRange "REPORTING_DATE_RANGE_UNSPECIFIED"

-- | A custom date range specified using the @start_date@ and @end_date@ fields. This is the default if no ReportingDateRange is provided.
pattern AccountsReportsSavedGenerateDateRange_Custom :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_Custom = AccountsReportsSavedGenerateDateRange "CUSTOM"

-- | Current day.
pattern AccountsReportsSavedGenerateDateRange_Today :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_Today = AccountsReportsSavedGenerateDateRange "TODAY"

-- | Yesterday.
pattern AccountsReportsSavedGenerateDateRange_Yesterday :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_Yesterday = AccountsReportsSavedGenerateDateRange "YESTERDAY"

-- | From the start of the current month to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-03-01, 2020-03-12].
pattern AccountsReportsSavedGenerateDateRange_MONTHTODATE :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_MONTHTODATE = AccountsReportsSavedGenerateDateRange "MONTH_TO_DATE"

-- | From the start of the current year to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-01-01, 2020-03-12].
pattern AccountsReportsSavedGenerateDateRange_YEARTODATE :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_YEARTODATE = AccountsReportsSavedGenerateDateRange "YEAR_TO_DATE"

-- | Last 7 days, excluding current day.
pattern AccountsReportsSavedGenerateDateRange_LAST7DAYS :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_LAST7DAYS = AccountsReportsSavedGenerateDateRange "LAST_7_DAYS"

-- | Last 30 days, excluding current day.
pattern AccountsReportsSavedGenerateDateRange_LAST30DAYS :: AccountsReportsSavedGenerateDateRange
pattern AccountsReportsSavedGenerateDateRange_LAST30DAYS = AccountsReportsSavedGenerateDateRange "LAST_30_DAYS"

{-# COMPLETE
  AccountsReportsSavedGenerateDateRange_REPORTINGDATERANGEUNSPECIFIED,
  AccountsReportsSavedGenerateDateRange_Custom,
  AccountsReportsSavedGenerateDateRange_Today,
  AccountsReportsSavedGenerateDateRange_Yesterday,
  AccountsReportsSavedGenerateDateRange_MONTHTODATE,
  AccountsReportsSavedGenerateDateRange_YEARTODATE,
  AccountsReportsSavedGenerateDateRange_LAST7DAYS,
  AccountsReportsSavedGenerateDateRange_LAST30DAYS,
  AccountsReportsSavedGenerateDateRange
  #-}

-- | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information, see <https://support.google.com/adsense/answer/9830725 changing the time zone of your reports>.
newtype AccountsReportsSavedGenerateReportingTimeZone = AccountsReportsSavedGenerateReportingTimeZone {fromAccountsReportsSavedGenerateReportingTimeZone :: Core.Text}
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

-- | Unspecified timezone.
pattern AccountsReportsSavedGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED :: AccountsReportsSavedGenerateReportingTimeZone
pattern AccountsReportsSavedGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED = AccountsReportsSavedGenerateReportingTimeZone "REPORTING_TIME_ZONE_UNSPECIFIED"

-- | Use the account timezone in the report.
pattern AccountsReportsSavedGenerateReportingTimeZone_ACCOUNTTIMEZONE :: AccountsReportsSavedGenerateReportingTimeZone
pattern AccountsReportsSavedGenerateReportingTimeZone_ACCOUNTTIMEZONE = AccountsReportsSavedGenerateReportingTimeZone "ACCOUNT_TIME_ZONE"

-- | Use the Google timezone in the report (America\/Los_Angeles).
pattern AccountsReportsSavedGenerateReportingTimeZone_GOOGLETIMEZONE :: AccountsReportsSavedGenerateReportingTimeZone
pattern AccountsReportsSavedGenerateReportingTimeZone_GOOGLETIMEZONE = AccountsReportsSavedGenerateReportingTimeZone "GOOGLE_TIME_ZONE"

{-# COMPLETE
  AccountsReportsSavedGenerateReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
  AccountsReportsSavedGenerateReportingTimeZone_ACCOUNTTIMEZONE,
  AccountsReportsSavedGenerateReportingTimeZone_GOOGLETIMEZONE,
  AccountsReportsSavedGenerateReportingTimeZone
  #-}

-- | Date range of the report, if unset the range will be considered CUSTOM.
newtype AccountsReportsSavedGenerateCsvDateRange = AccountsReportsSavedGenerateCsvDateRange {fromAccountsReportsSavedGenerateCsvDateRange :: Core.Text}
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

-- | Unspecified date range.
pattern AccountsReportsSavedGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED = AccountsReportsSavedGenerateCsvDateRange "REPORTING_DATE_RANGE_UNSPECIFIED"

-- | A custom date range specified using the @start_date@ and @end_date@ fields. This is the default if no ReportingDateRange is provided.
pattern AccountsReportsSavedGenerateCsvDateRange_Custom :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_Custom = AccountsReportsSavedGenerateCsvDateRange "CUSTOM"

-- | Current day.
pattern AccountsReportsSavedGenerateCsvDateRange_Today :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_Today = AccountsReportsSavedGenerateCsvDateRange "TODAY"

-- | Yesterday.
pattern AccountsReportsSavedGenerateCsvDateRange_Yesterday :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_Yesterday = AccountsReportsSavedGenerateCsvDateRange "YESTERDAY"

-- | From the start of the current month to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-03-01, 2020-03-12].
pattern AccountsReportsSavedGenerateCsvDateRange_MONTHTODATE :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_MONTHTODATE = AccountsReportsSavedGenerateCsvDateRange "MONTH_TO_DATE"

-- | From the start of the current year to the current day. e.g. if the current date is 2020-03-12 then the range will be [2020-01-01, 2020-03-12].
pattern AccountsReportsSavedGenerateCsvDateRange_YEARTODATE :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_YEARTODATE = AccountsReportsSavedGenerateCsvDateRange "YEAR_TO_DATE"

-- | Last 7 days, excluding current day.
pattern AccountsReportsSavedGenerateCsvDateRange_LAST7DAYS :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_LAST7DAYS = AccountsReportsSavedGenerateCsvDateRange "LAST_7_DAYS"

-- | Last 30 days, excluding current day.
pattern AccountsReportsSavedGenerateCsvDateRange_LAST30DAYS :: AccountsReportsSavedGenerateCsvDateRange
pattern AccountsReportsSavedGenerateCsvDateRange_LAST30DAYS = AccountsReportsSavedGenerateCsvDateRange "LAST_30_DAYS"

{-# COMPLETE
  AccountsReportsSavedGenerateCsvDateRange_REPORTINGDATERANGEUNSPECIFIED,
  AccountsReportsSavedGenerateCsvDateRange_Custom,
  AccountsReportsSavedGenerateCsvDateRange_Today,
  AccountsReportsSavedGenerateCsvDateRange_Yesterday,
  AccountsReportsSavedGenerateCsvDateRange_MONTHTODATE,
  AccountsReportsSavedGenerateCsvDateRange_YEARTODATE,
  AccountsReportsSavedGenerateCsvDateRange_LAST7DAYS,
  AccountsReportsSavedGenerateCsvDateRange_LAST30DAYS,
  AccountsReportsSavedGenerateCsvDateRange
  #-}

-- | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information, see <https://support.google.com/adsense/answer/9830725 changing the time zone of your reports>.
newtype AccountsReportsSavedGenerateCsvReportingTimeZone = AccountsReportsSavedGenerateCsvReportingTimeZone {fromAccountsReportsSavedGenerateCsvReportingTimeZone :: Core.Text}
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

-- | Unspecified timezone.
pattern AccountsReportsSavedGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED :: AccountsReportsSavedGenerateCsvReportingTimeZone
pattern AccountsReportsSavedGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED = AccountsReportsSavedGenerateCsvReportingTimeZone "REPORTING_TIME_ZONE_UNSPECIFIED"

-- | Use the account timezone in the report.
pattern AccountsReportsSavedGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE :: AccountsReportsSavedGenerateCsvReportingTimeZone
pattern AccountsReportsSavedGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE = AccountsReportsSavedGenerateCsvReportingTimeZone "ACCOUNT_TIME_ZONE"

-- | Use the Google timezone in the report (America\/Los_Angeles).
pattern AccountsReportsSavedGenerateCsvReportingTimeZone_GOOGLETIMEZONE :: AccountsReportsSavedGenerateCsvReportingTimeZone
pattern AccountsReportsSavedGenerateCsvReportingTimeZone_GOOGLETIMEZONE = AccountsReportsSavedGenerateCsvReportingTimeZone "GOOGLE_TIME_ZONE"

{-# COMPLETE
  AccountsReportsSavedGenerateCsvReportingTimeZone_REPORTINGTIMEZONEUNSPECIFIED,
  AccountsReportsSavedGenerateCsvReportingTimeZone_ACCOUNTTIMEZONE,
  AccountsReportsSavedGenerateCsvReportingTimeZone_GOOGLETIMEZONE,
  AccountsReportsSavedGenerateCsvReportingTimeZone
  #-}
