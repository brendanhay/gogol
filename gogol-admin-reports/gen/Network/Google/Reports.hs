{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Reports
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Allows the administrators of Google Apps customers to fetch reports
-- about the usage, collaboration, security and risk for their users.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference>
module Network.Google.Reports
    (
    -- * API Declaration
      ReportsAPI

    -- * Resources

    -- ** AdminChannelsStop
    , module Network.Google.Resource.Admin.Channels.Stop

    -- ** ReportsActivitiesList
    , module Network.Google.Resource.Reports.Activities.List

    -- ** ReportsActivitiesWatch
    , module Network.Google.Resource.Reports.Activities.Watch

    -- ** ReportsCustomerUsageReportsGet
    , module Network.Google.Resource.Reports.CustomerUsageReports.Get

    -- ** ReportsUserUsageReportGet
    , module Network.Google.Resource.Reports.UserUsageReport.Get

    -- * Types

    -- ** UsageReportParametersItem
    , UsageReportParametersItem
    , usageReportParametersItem
    , urpiDatetimeValue
    , urpiBoolValue
    , urpiIntValue
    , urpiStringValue
    , urpiName
    , urpiMsgValue

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
    , urpimviProperties

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

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpProperties

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

    -- ** ActivityEventsItemParametersItem
    , ActivityEventsItemParametersItem
    , activityEventsItemParametersItem
    , aeipiBoolValue
    , aeipiIntValue
    , aeipiValue
    , aeipiMultiIntValue
    , aeipiName
    , aeipiMultiValue

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProFileId
    , aaKey
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types
import           Network.Google.Resource.Admin.Channels.Stop
import           Network.Google.Resource.Reports.Activities.List
import           Network.Google.Resource.Reports.Activities.Watch
import           Network.Google.Resource.Reports.CustomerUsageReports.Get
import           Network.Google.Resource.Reports.UserUsageReport.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Admin Reports API service.
type ReportsAPI =
     ChannelsStopResource :<|> ActivitiesListResource :<|>
       ActivitiesWatchResource
       :<|> CustomerUsageReportsGetResource
       :<|> UserUsageReportGetResource
