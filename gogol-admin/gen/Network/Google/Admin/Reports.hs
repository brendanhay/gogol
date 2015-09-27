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
    -- * Resources
      AdminReports
    , ChannelsAPI
    , ChannelsStop
    , ActivitiesAPI
    , ActivitiesList
    , ActivitiesWatch
    , CustomerUsageReportsAPI
    , CustomerUsageReportsGet
    , UserUsageReportAPI
    , UserUsageReportGet

    -- * Types

    -- ** Activities
    , Activities
    , activities
    , actEtag
    , actNextPageToken
    , actKind
    , actItems

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

    -- ** ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- ** ActivityItemEvents
    , ActivityItemEvents
    , activityItemEvents
    , aieName
    , aieParameters
    , aieType

    -- ** ActivityItemParametersItemEvents
    , ActivityItemParametersItemEvents
    , activityItemParametersItemEvents
    , aipieBoolValue
    , aipieIntValue
    , aipieValue
    , aipieMultiIntValue
    , aipieName
    , aipieMultiValue

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

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** UsageReport
    , UsageReport
    , usageReport
    , uEtag
    , uKind
    , uDate
    , uParameters
    , uEntity

    -- ** UsageReportEntity
    , UsageReportEntity
    , usageReportEntity
    , ureProfileId
    , ureCustomerId
    , ureUserEmail
    , ureType

    -- ** UsageReportItemMsgValueItemParameters
    , UsageReportItemMsgValueItemParameters
    , usageReportItemMsgValueItemParameters

    -- ** UsageReportItemParameters
    , UsageReportItemParameters
    , usageReportItemParameters
    , uripDatetimeValue
    , uripBoolValue
    , uripIntValue
    , uripStringValue
    , uripName
    , uripMsgValue

    -- ** UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- ** UsageReportsItemDataItemWarnings
    , UsageReportsItemDataItemWarnings
    , usageReportsItemDataItemWarnings
    , uridiwValue
    , uridiwKey

    -- ** UsageReportsItemWarnings
    , UsageReportsItemWarnings
    , usageReportsItemWarnings
    , uriwData
    , uriwCode
    , uriwMessage
    ) where

import           Network.Google.Admin.Reports.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdminReports =
     ChannelsAPI :<|> ActivitiesAPI :<|>
       CustomerUsageReportsAPI
       :<|> UserUsageReportAPI

type ChannelsAPI = ChannelsStop

-- | Stop watching resources through this channel
type ChannelsStop =
     "admin" :>
       "reports" :>
         "v1" :>
           "admin" :>
             "reports_v1" :>
               "channels" :>
                 "stop" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] ()

type ActivitiesAPI =
     ActivitiesList :<|> ActivitiesWatch

-- | Retrieves a list of activities for a specific customer and application.
type ActivitiesList =
     "admin" :>
       "reports" :>
         "v1" :>
           "activity" :>
             "users" :>
               Capture "userKey" Text :>
                 "applications" :>
                   Capture "applicationName" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "startTime" Text :>
                           QueryParam "userIp" Text :>
                             QueryParam "filters" Text :>
                               QueryParam "customerId" Text :>
                                 QueryParam "actorIpAddress" Text :>
                                   QueryParam "key" Text :>
                                     QueryParam "endTime" Text :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam "oauth_token" Text :>
                                           QueryParam "eventName" Text :>
                                             QueryParam "maxResults" Natural :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "alt" Text :>
                                                   Get '[JSON] Activities

-- | Push changes to activities
type ActivitiesWatch =
     "admin" :>
       "reports" :>
         "v1" :>
           "activity" :>
             "users" :>
               Capture "userKey" Text :>
                 "applications" :>
                   Capture "applicationName" Text :>
                     "watch" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "startTime" Text :>
                             QueryParam "userIp" Text :>
                               QueryParam "filters" Text :>
                                 QueryParam "customerId" Text :>
                                   QueryParam "actorIpAddress" Text :>
                                     QueryParam "key" Text :>
                                       QueryParam "endTime" Text :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "oauth_token" Text :>
                                             QueryParam "eventName" Text :>
                                               QueryParam "maxResults" Natural
                                                 :>
                                                 QueryParam "fields" Text :>
                                                   QueryParam "alt" Text :>
                                                     Post '[JSON] Channel

type CustomerUsageReportsAPI =
     CustomerUsageReportsGet

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a specific customer.
type CustomerUsageReportsGet =
     "admin" :>
       "reports" :>
         "v1" :>
           "usage" :>
             "dates" :>
               Capture "date" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "customerId" Text :>
                         QueryParam "key" Text :>
                           QueryParam "parameters" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] UsageReports

type UserUsageReportAPI = UserUsageReportGet

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a set of users.
type UserUsageReportGet =
     "admin" :>
       "reports" :>
         "v1" :>
           "usage" :>
             "users" :>
               Capture "userKey" Text :>
                 "dates" :>
                   Capture "date" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "filters" Text :>
                             QueryParam "customerId" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "parameters" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "oauth_token" Text :>
                                       QueryParam "maxResults" Word32 :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Text :>
                                             Get '[JSON] UsageReports
