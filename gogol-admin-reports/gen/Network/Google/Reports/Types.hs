{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Reports.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Reports.Types
    (
    -- * Service Configuration
      reportsService

    -- * OAuth Scopes
    , adminReportsUsageReadOnlyScope
    , adminReportsAuditReadOnlyScope

    -- * ActivitiesListApplicationName
    , ActivitiesListApplicationName (..)

    -- * UsageReportParametersItem
    , UsageReportParametersItem
    , usageReportParametersItem
    , urpiDatetimeValue
    , urpiBoolValue
    , urpiIntValue
    , urpiStringValue
    , urpiName
    , urpiMsgValue

    -- * ActivityEventsItemParametersItemMultiMessageValueItem
    , ActivityEventsItemParametersItemMultiMessageValueItem
    , activityEventsItemParametersItemMultiMessageValueItem
    , aeipimmviParameter

    -- * NestedParameter
    , NestedParameter
    , nestedParameter
    , npBoolValue
    , npIntValue
    , npValue
    , npMultiIntValue
    , npMultiBoolValue
    , npName
    , npMultiValue

    -- * ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- * UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- * UsageReportParametersItemMsgValueItem
    , UsageReportParametersItemMsgValueItem
    , usageReportParametersItemMsgValueItem
    , urpimviAddtional

    -- * Activities
    , Activities
    , activities
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- * Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- * UsageReport
    , UsageReport
    , usageReport
    , uEtag
    , uKind
    , uDate
    , uParameters
    , uEntity

    -- * EntityUsageReportsGetEntityType
    , EntityUsageReportsGetEntityType (..)

    -- * UsageReportsWarningsItemDataItem
    , UsageReportsWarningsItemDataItem
    , usageReportsWarningsItemDataItem
    , urwidiValue
    , urwidiKey

    -- * UsageReportsWarningsItem
    , UsageReportsWarningsItem
    , usageReportsWarningsItem
    , urwiData
    , urwiCode
    , urwiMessage

    -- * ActivityEventsItem
    , ActivityEventsItem
    , activityEventsItem
    , aeiName
    , aeiParameters
    , aeiType

    -- * ActivitiesWatchApplicationName
    , ActivitiesWatchApplicationName (..)

    -- * ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * Activity
    , Activity
    , activity
    , actEtag
    , actIPAddress
    , actKind
    , actActor
    , actOwnerDomain
    , actEvents
    , actId

    -- * UsageReportEntity
    , UsageReportEntity
    , usageReportEntity
    , ureProFileId
    , ureCustomerId
    , ureUserEmail
    , ureType
    , ureEntityId

    -- * ActivityEventsItemParametersItem
    , ActivityEventsItemParametersItem
    , activityEventsItemParametersItem
    , aeipiBoolValue
    , aeipiMessageValue
    , aeipiIntValue
    , aeipiValue
    , aeipiMultiIntValue
    , aeipiMultiMessageValue
    , aeipiName
    , aeipiMultiValue

    -- * ActivityEventsItemParametersItemMessageValue
    , ActivityEventsItemParametersItemMessageValue
    , activityEventsItemParametersItemMessageValue
    , aeipimvParameter

    -- * ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProFileId
    , aaKey

    -- * EntityUsageReportsGetEntityKey
    , EntityUsageReportsGetEntityKey (..)
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types.Product
import Network.Google.Reports.Types.Sum

-- | Default request referring to version 'reports_v1' of the Admin SDK API. This contains the host and root path used as a starting point for constructing service requests.
reportsService :: ServiceConfig
reportsService
  = defaultService (ServiceId "admin:reports_v1")
      "admin.googleapis.com"

-- | View usage reports for your G Suite domain
adminReportsUsageReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
adminReportsUsageReadOnlyScope = Proxy

-- | View audit reports for your G Suite domain
adminReportsAuditReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
adminReportsAuditReadOnlyScope = Proxy
