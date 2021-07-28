{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Reports
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Admin SDK lets administrators of enterprise domains to view and manage
-- resources like user, groups etc. It also provides audit and usage
-- reports of domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference>
module Network.Google.Reports
    (
    -- * Service Configuration
      reportsService

    -- * OAuth Scopes
    , adminReportsUsageReadOnlyScope
    , adminReportsAuditReadOnlyScope

    -- * API Declaration
    , ReportsAPI

    -- * Resources

    -- ** admin.channels.stop
    , module Network.Google.Resource.Admin.Channels.Stop

    -- ** reports.activities.list
    , module Network.Google.Resource.Reports.Activities.List

    -- ** reports.activities.watch
    , module Network.Google.Resource.Reports.Activities.Watch

    -- ** reports.customerUsageReports.get
    , module Network.Google.Resource.Reports.CustomerUsageReports.Get

    -- ** reports.entityUsageReports.get
    , module Network.Google.Resource.Reports.EntityUsageReports.Get

    -- ** reports.userUsageReport.get
    , module Network.Google.Resource.Reports.UserUsageReport.Get

    -- * Types

    -- ** ActivitiesListApplicationName
    , ActivitiesListApplicationName (..)

    -- ** UsageReportParametersItem
    , UsageReportParametersItem
    , usageReportParametersItem
    , urpiDatetimeValue
    , urpiBoolValue
    , urpiIntValue
    , urpiStringValue
    , urpiName
    , urpiMsgValue

    -- ** ActivityEventsItemParametersItemMultiMessageValueItem
    , ActivityEventsItemParametersItemMultiMessageValueItem
    , activityEventsItemParametersItemMultiMessageValueItem
    , aeipimmviParameter

    -- ** NestedParameter
    , NestedParameter
    , nestedParameter
    , npBoolValue
    , npIntValue
    , npValue
    , npMultiIntValue
    , npMultiBoolValue
    , npName
    , npMultiValue

    -- ** ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- ** UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- ** UsageReportParametersItemMsgValueItem
    , UsageReportParametersItemMsgValueItem
    , usageReportParametersItemMsgValueItem
    , urpimviAddtional

    -- ** Activities
    , Activities
    , activities
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- ** Channel
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

    -- ** UsageReport
    , UsageReport
    , usageReport
    , uEtag
    , uKind
    , uDate
    , uParameters
    , uEntity

    -- ** EntityUsageReportsGetEntityType
    , EntityUsageReportsGetEntityType (..)

    -- ** UsageReportsWarningsItemDataItem
    , UsageReportsWarningsItemDataItem
    , usageReportsWarningsItemDataItem
    , urwidiValue
    , urwidiKey

    -- ** UsageReportsWarningsItem
    , UsageReportsWarningsItem
    , usageReportsWarningsItem
    , urwiData
    , urwiCode
    , urwiMessage

    -- ** ActivityEventsItem
    , ActivityEventsItem
    , activityEventsItem
    , aeiName
    , aeiParameters
    , aeiType

    -- ** ActivitiesWatchApplicationName
    , ActivitiesWatchApplicationName (..)

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** Activity
    , Activity
    , activity
    , actEtag
    , actIPAddress
    , actKind
    , actActor
    , actOwnerDomain
    , actEvents
    , actId

    -- ** UsageReportEntity
    , UsageReportEntity
    , usageReportEntity
    , ureProFileId
    , ureCustomerId
    , ureUserEmail
    , ureType
    , ureEntityId

    -- ** ActivityEventsItemParametersItem
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

    -- ** ActivityEventsItemParametersItemMessageValue
    , ActivityEventsItemParametersItemMessageValue
    , activityEventsItemParametersItemMessageValue
    , aeipimvParameter

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProFileId
    , aaKey

    -- ** EntityUsageReportsGetEntityKey
    , EntityUsageReportsGetEntityKey (..)
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types
import Network.Google.Resource.Admin.Channels.Stop
import Network.Google.Resource.Reports.Activities.List
import Network.Google.Resource.Reports.Activities.Watch
import Network.Google.Resource.Reports.CustomerUsageReports.Get
import Network.Google.Resource.Reports.EntityUsageReports.Get
import Network.Google.Resource.Reports.UserUsageReport.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Admin SDK API service.
type ReportsAPI =
     ChannelsStopResource :<|> ActivitiesListResource :<|>
       ActivitiesWatchResource
       :<|> CustomerUsageReportsGetResource
       :<|> UserUsageReportGetResource
       :<|> EntityUsageReportsGetResource
