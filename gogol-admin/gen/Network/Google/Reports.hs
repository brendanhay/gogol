-- |
-- Module      : Network.Google.Reports
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the administrators of Google Apps customers to fetch reports about the usage, collaboration, security and risk for their users.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference>
module Network.Google.Reports
    (
    -- * API Definition
      Reports



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

import           Network.Google.Reports.Types

{- $resources
TODO
-}

type Reports = ()

reports :: Proxy Reports
reports = Proxy




