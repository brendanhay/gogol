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
    , module Admin.Channels.Stop

    -- ** ReportsActivitiesList
    , module Reports.Activities.List

    -- ** ReportsActivitiesWatch
    , module Reports.Activities.Watch

    -- ** ReportsCustomerUsageReportsGet
    , module Reports.CustomerUsageReports.Get

    -- ** ReportsUserUsageReportGet
    , module Reports.UserUsageReport.Get

    -- * Types

    -- ** UsageReports
    , UsageReports
    , usageReports
    , urEtag
    , urNextPageToken
    , urUsageReports
    , urKind
    , urWarnings

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
     Channels :<|> Activities :<|> CustomerUsageReports
       :<|> UserUsageReport

adminReportsAPI :: Proxy AdminReportsAPI
adminReportsAPI = Proxy
