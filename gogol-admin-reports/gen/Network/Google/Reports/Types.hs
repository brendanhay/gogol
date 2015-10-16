{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Reports.Types
-- Copyright   : (c) 2015 Brendan Hay
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
    , adminReportsUsageReadonlyScope
    , adminReportsAuditReadonlyScope

    -- * UsageReportParametersItem
    , UsageReportParametersItem
    , usageReportParametersItem
    , urpiDatetimeValue
    , urpiBoolValue
    , urpiIntValue
    , urpiStringValue
    , urpiName
    , urpiMsgValue

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

    -- * ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

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

    -- * ActivityEventsItemParametersItem
    , ActivityEventsItemParametersItem
    , activityEventsItemParametersItem
    , aeipiBoolValue
    , aeipiIntValue
    , aeipiValue
    , aeipiMultiIntValue
    , aeipiName
    , aeipiMultiValue

    -- * ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProFileId
    , aaKey
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types.Product
import           Network.Google.Reports.Types.Sum

-- | Default request referring to version 'reports_v1' of the Admin Reports API. This contains the host and root path used as a starting point for constructing service requests.
reportsService :: Service
reportsService
  = defaultService (ServiceId "admin:reports_v1")
      "www.googleapis.com"
      "admin/reports/v1/"

-- | View usage reports of Google Apps for your domain
adminReportsUsageReadonlyScope :: OAuthScope
adminReportsUsageReadonlyScope = "https://www.googleapis.com/auth/admin.reports.usage.readonly";

-- | View audit reports of Google Apps for your domain
adminReportsAuditReadonlyScope :: OAuthScope
adminReportsAuditReadonlyScope = "https://www.googleapis.com/auth/admin.reports.audit.readonly";
