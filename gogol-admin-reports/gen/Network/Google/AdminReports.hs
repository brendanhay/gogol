{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdminReports
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Allows the administrators of Google Apps customers to fetch reports
-- about the usage, collaboration, security and risk for their users.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference>
module Network.Google.AdminReports
    (
    -- * API
      AdminReportsAPI
    , adminReportsAPI
    , adminReportsURL

    -- * Service Methods

    -- * REST Resources

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

    -- ** ActivityEvents
    , ActivityEvents
    , activityEvents
    , aeName
    , aeParameters
    , aeType

    -- ** UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- ** ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- ** Activities
    , Activities
    , activities
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- ** UsageReport
    , UsageReport
    , usageReport
    , uEtag
    , uKind
    , uDate
    , uParameters
    , uEntity

    -- ** UsageReportParametersMsgValue
    , UsageReportParametersMsgValue
    , usageReportParametersMsgValue

    -- ** Channel
    , Channel
    , channel
    , cResourceUri
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- ** UsageReportsWarningsData
    , UsageReportsWarningsData
    , usageReportsWarningsData
    , urwdValue
    , urwdKey

    -- ** UsageReportsWarnings
    , UsageReportsWarnings
    , usageReportsWarnings
    , urwData
    , urwCode
    , urwMessage

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** Activity
    , Activity
    , activity
    , actEtag
    , actIpAddress
    , actKind
    , actActor
    , actOwnerDomain
    , actEvents
    , actId

    -- ** ActivityEventsParameters
    , ActivityEventsParameters
    , activityEventsParameters
    , aepBoolValue
    , aepIntValue
    , aepValue
    , aepMultiIntValue
    , aepName
    , aepMultiValue

    -- ** UsageReportEntity
    , UsageReportEntity
    , usageReportEntity
    , ureProfileId
    , ureCustomerId
    , ureUserEmail
    , ureType

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProfileId
    , aaKey

    -- ** UsageReportParameters
    , UsageReportParameters
    , usageReportParameters
    , urpDatetimeValue
    , urpBoolValue
    , urpIntValue
    , urpStringValue
    , urpName
    , urpMsgValue

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.AdminReports.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Admin.Channels.Stop
import           Network.Google.Resource.Reports.Activities.List
import           Network.Google.Resource.Reports.Activities.Watch
import           Network.Google.Resource.Reports.CustomerUsageReports.Get
import           Network.Google.Resource.Reports.UserUsageReport.Get

{- $resources
TODO
-}

type AdminReportsAPI =
     ChannelsStopResource :<|> ActivitiesListResource :<|>
       ActivitiesWatchResource
       :<|> CustomerUsageReportsGetResource
       :<|> UserUsageReportGetResource

adminReportsAPI :: Proxy AdminReportsAPI
adminReportsAPI = Proxy
