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
-- | Allows the administrators of Google Apps customers to fetch reports
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

    -- ** UsageReportParametersItem
    , UsageReportParametersItem
    , usageReportParametersItem
    , urpiDatetimeValue
    , urpiBoolValue
    , urpiIntValue
    , urpiStringValue
    , urpiName
    , urpiMsgValue

    -- ** MsgValueItem
    , MsgValueItem
    , msgValueItem

    -- ** EventsItem
    , EventsItem
    , eventsItem
    , eiName
    , eiParameters
    , eiType

    -- ** EventsItemParametersItem
    , EventsItemParametersItem
    , eventsItemParametersItem
    , eipiBoolValue
    , eipiIntValue
    , eipiValue
    , eipiMultiIntValue
    , eipiName
    , eipiMultiValue

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

    -- ** Actor
    , Actor
    , actor
    , aEmail
    , aCallerType
    , aProfileId
    , aKey

    -- ** Params
    , Params
    , params

    -- ** WarningsItem
    , WarningsItem
    , warningsItem
    , wiData
    , wiCode
    , wiMessage

    -- ** DataItem
    , DataItem
    , dataItem
    , diValue
    , diKey

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

    -- ** Entity
    , Entity
    , entity
    , eProfileId
    , eCustomerId
    , eUserEmail
    , eType
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
