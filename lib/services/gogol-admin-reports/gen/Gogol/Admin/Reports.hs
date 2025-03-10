{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Reports
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Admin SDK lets administrators of enterprise domains to view and manage resources like user, groups etc. It also provides audit and usage reports of domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference>
module Gogol.Admin.Reports
  ( -- * Configuration
    adminReportsService,

    -- * OAuth Scopes
    Admin'Reports'Audit'Readonly,
    Admin'Reports'Usage'Readonly,

    -- * Resources

    -- ** admin.channels.stop
    AdminChannelsStopResource,
    AdminChannelsStop (..),
    newAdminChannelsStop,

    -- ** reports.activities.list
    ReportsActivitiesListResource,
    ReportsActivitiesList (..),
    newReportsActivitiesList,

    -- ** reports.activities.watch
    ReportsActivitiesWatchResource,
    ReportsActivitiesWatch (..),
    newReportsActivitiesWatch,

    -- ** reports.customerUsageReports.get
    ReportsCustomerUsageReportsGetResource,
    ReportsCustomerUsageReportsGet (..),
    newReportsCustomerUsageReportsGet,

    -- ** reports.entityUsageReports.get
    ReportsEntityUsageReportsGetResource,
    ReportsEntityUsageReportsGet (..),
    newReportsEntityUsageReportsGet,

    -- ** reports.userUsageReport.get
    ReportsUserUsageReportGetResource,
    ReportsUserUsageReportGet (..),
    newReportsUserUsageReportGet,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Activities
    Activities (..),
    newActivities,

    -- ** Activity
    Activity (..),
    newActivity,

    -- ** Activity_Actor
    Activity_Actor (..),
    newActivity_Actor,

    -- ** Activity_EventsItem
    Activity_EventsItem (..),
    newActivity_EventsItem,

    -- ** Activity_EventsItem_ParametersItem
    Activity_EventsItem_ParametersItem (..),
    newActivity_EventsItem_ParametersItem,

    -- ** Activity_EventsItem_ParametersItem_MessageValue
    Activity_EventsItem_ParametersItem_MessageValue (..),
    newActivity_EventsItem_ParametersItem_MessageValue,

    -- ** Activity_EventsItem_ParametersItem_MultiMessageValueItem
    Activity_EventsItem_ParametersItem_MultiMessageValueItem (..),
    newActivity_EventsItem_ParametersItem_MultiMessageValueItem,

    -- ** Activity_Id
    Activity_Id (..),
    newActivity_Id,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- ** NestedParameter
    NestedParameter (..),
    newNestedParameter,

    -- ** UsageReport
    UsageReport (..),
    newUsageReport,

    -- ** UsageReport_Entity
    UsageReport_Entity (..),
    newUsageReport_Entity,

    -- ** UsageReport_ParametersItem
    UsageReport_ParametersItem (..),
    newUsageReport_ParametersItem,

    -- ** UsageReport_ParametersItem_MsgValueItem
    UsageReport_ParametersItem_MsgValueItem (..),
    newUsageReport_ParametersItem_MsgValueItem,

    -- ** UsageReports
    UsageReports (..),
    newUsageReports,

    -- ** UsageReports_WarningsItem
    UsageReports_WarningsItem (..),
    newUsageReports_WarningsItem,

    -- ** UsageReports_WarningsItem_DataItem
    UsageReports_WarningsItem_DataItem (..),
    newUsageReports_WarningsItem_DataItem,

    -- ** ActivitiesListApplicationName
    ActivitiesListApplicationName (..),

    -- ** ActivitiesWatchApplicationName
    ActivitiesWatchApplicationName (..),

    -- ** EntityUsageReportsGetEntityType
    EntityUsageReportsGetEntityType (..),
  )
where

import Gogol.Admin.Reports.Activities.List
import Gogol.Admin.Reports.Activities.Watch
import Gogol.Admin.Reports.Admin.Channels.Stop
import Gogol.Admin.Reports.CustomerUsageReports.Get
import Gogol.Admin.Reports.EntityUsageReports.Get
import Gogol.Admin.Reports.Types
import Gogol.Admin.Reports.UserUsageReport.Get
