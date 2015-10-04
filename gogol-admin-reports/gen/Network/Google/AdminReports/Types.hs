{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminReports.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminReports.Types
    (
    -- * Service URL
      adminReportsURL

    -- * UsageReportParametersItem
    , UsageReportParametersItem
    , usageReportParametersItem
    , urpiDatetimeValue
    , urpiBoolValue
    , urpiIntValue
    , urpiStringValue
    , urpiName
    , urpiMsgValue

    -- * MsgValueItem
    , MsgValueItem
    , msgValueItem

    -- * EventsItem
    , EventsItem
    , eventsItem
    , eiName
    , eiParameters
    , eiType

    -- * EventsItemParametersItem
    , EventsItemParametersItem
    , eventsItemParametersItem
    , eipiBoolValue
    , eipiIntValue
    , eipiValue
    , eipiMultiIntValue
    , eipiName
    , eipiMultiValue

    -- * UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

    -- * ActivityId
    , ActivityId
    , activityId
    , aiTime
    , aiUniqueQualifier
    , aiCustomerId
    , aiApplicationName

    -- * Activities
    , Activities
    , activities
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

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

    -- * Actor
    , Actor
    , actor
    , aEmail
    , aCallerType
    , aProfileId
    , aKey

    -- * Params
    , Params
    , params

    -- * WarningsItem
    , WarningsItem
    , warningsItem
    , wiData
    , wiCode
    , wiMessage

    -- * DataItem
    , DataItem
    , dataItem
    , diValue
    , diKey

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

    -- * Entity
    , Entity
    , entity
    , eProfileId
    , eCustomerId
    , eUserEmail
    , eType
    ) where

import           Network.Google.AdminReports.Types.Product
import           Network.Google.AdminReports.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'reports_v1' of the Admin Reports API.
adminReportsURL :: BaseUrl
adminReportsURL
  = BaseUrl Https
      "https://www.googleapis.com/admin/reports/v1/"
      443
