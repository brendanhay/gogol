{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Admin.Reports.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Admin.Reports.Types
    (
    -- * Service URL
      adminReportsURL

    -- * ActivityItemEvents
    , ActivityItemEvents
    , activityItemEvents
    , aieName
    , aieParameters
    , aieType

    -- * UsageReportItemParameters
    , UsageReportItemParameters
    , usageReportItemParameters
    , uripDatetimeValue
    , uripBoolValue
    , uripIntValue
    , uripStringValue
    , uripName
    , uripMsgValue

    -- * UsageReportsItemWarnings
    , UsageReportsItemWarnings
    , usageReportsItemWarnings
    , uriwData
    , uriwCode
    , uriwMessage

    -- * UsageReportsItemDataItemWarnings
    , UsageReportsItemDataItemWarnings
    , usageReportsItemDataItemWarnings
    , uridiwValue
    , uridiwKey

    -- * Alt
    , Alt (..)

    -- * Activity
    , Activity
    , activity
    , aEtag
    , aIpAddress
    , aKind
    , aActor
    , aOwnerDomain
    , aEvents
    , aId

    -- * ActivityActor
    , ActivityActor
    , activityActor
    , aaEmail
    , aaCallerType
    , aaProfileId
    , aaKey

    -- * UsageReportItemMsgValueItemParameters
    , UsageReportItemMsgValueItemParameters
    , usageReportItemMsgValueItemParameters

    -- * ActivityItemParametersItemEvents
    , ActivityItemParametersItemEvents
    , activityItemParametersItemEvents
    , aipieBoolValue
    , aipieIntValue
    , aipieValue
    , aipieMultiIntValue
    , aipieName
    , aipieMultiValue

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- * UsageReportEntity
    , UsageReportEntity
    , usageReportEntity
    , ureProfileId
    , ureCustomerId
    , ureUserEmail
    , ureType

    -- * ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- * UsageReport
    , UsageReport
    , usageReport
    , uEtag
    , uKind
    , uDate
    , uParameters
    , uEntity

    -- * Channel
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

    -- * Activities
    , Activities
    , activities
    , actEtag
    , actNextPageToken
    , actKind
    , actItems
    ) where

import           Network.Google.Admin.Reports.Types.Product
import           Network.Google.Admin.Reports.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'reports_v1' of the Admin Reports API.
adminReportsURL :: BaseUrl
adminReportsURL
  = BaseUrl Https
      "https://www.googleapis.com/admin/reports/v1/"
      443
