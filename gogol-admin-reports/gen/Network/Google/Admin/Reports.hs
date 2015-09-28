{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Admin.Reports
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
module Network.Google.Admin.Reports
    (
    -- * REST Resources

    -- ** Admin Reports API
      AdminReports
    , adminReports
    , adminReportsURL

    -- ** reports.activities.list
    , module Network.Google.API.Reports.Activities.List

    -- ** reports.activities.watch
    , module Network.Google.API.Reports.Activities.Watch

    -- ** admin.channels.stop
    , module Network.Google.API.Admin.Channels.Stop

    -- ** reports.customerUsageReports.get
    , module Network.Google.API.Reports.CustomerUsageReports.Get

    -- ** reports.userUsageReport.get
    , module Network.Google.API.Reports.UserUsageReport.Get

    -- * Types

    -- ** ActivityItemEvents
    , ActivityItemEvents
    , activityItemEvents
    , aieName
    , aieParameters
    , aieType

    -- ** UsageReportItemParameters
    , UsageReportItemParameters
    , usageReportItemParameters
    , uripDatetimeValue
    , uripBoolValue
    , uripIntValue
    , uripStringValue
    , uripName
    , uripMsgValue

    -- ** UsageReportsItemWarnings
    , UsageReportsItemWarnings
    , usageReportsItemWarnings
    , uriwData
    , uriwCode
    , uriwMessage

    -- ** UsageReportsItemDataItemWarnings
    , UsageReportsItemDataItemWarnings
    , usageReportsItemDataItemWarnings
    , uridiwValue
    , uridiwKey

    -- ** Alt
    , Alt (..)

    -- ** Activity
    , Activity
    , activity
    , aEtag
    , aIpAddress
    , aKind
    , aActor
    , aOwnerDomain
    , aEvents
    , aId

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProfileId
    , aaKey

    -- ** UsageReportItemMsgValueItemParameters
    , UsageReportItemMsgValueItemParameters
    , usageReportItemMsgValueItemParameters

    -- ** ActivityItemParametersItemEvents
    , ActivityItemParametersItemEvents
    , activityItemParametersItemEvents
    , aipieBoolValue
    , aipieIntValue
    , aipieValue
    , aipieMultiIntValue
    , aipieName
    , aipieMultiValue

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- ** UsageReportEntity
    , UsageReportEntity
    , usageReportEntity
    , ureProfileId
    , ureCustomerId
    , ureUserEmail
    , ureType

    -- ** ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- ** UsageReport
    , UsageReport
    , usageReport
    , uEtag
    , uKind
    , uDate
    , uParameters
    , uEntity

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

    -- ** Activities
    , Activities
    , activities
    , actEtag
    , actNextPageToken
    , actKind
    , actItems
    ) where

import           Network.Google.Admin.Reports.Types
import           Network.Google.API.Admin.Channels.Stop
import           Network.Google.API.Reports.Activities.List
import           Network.Google.API.Reports.Activities.Watch
import           Network.Google.API.Reports.CustomerUsageReports.Get
import           Network.Google.API.Reports.UserUsageReport.Get
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdminReports =
     ActivitiesWatchAPI :<|> UserUsageReportGetAPI :<|>
       ActivitiesListAPI
       :<|> ChannelsStopAPI
       :<|> CustomerUsageReportsGetAPI

adminReports :: Proxy AdminReports
adminReports = Proxy
