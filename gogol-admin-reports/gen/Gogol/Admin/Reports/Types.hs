{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Reports.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Admin.Reports.Types
  ( -- * Configuration
    adminReportsService,

    -- * OAuth Scopes
    adminReportsAuditReadOnlyScope,
    adminReportsUsageReadOnlyScope,

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

import Gogol.Admin.Reports.Internal.Product
import Gogol.Admin.Reports.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @reports_v1@ of the Admin SDK API. This contains the host and root path used as a starting point for constructing service requests.
adminReportsService :: Core.ServiceConfig
adminReportsService =
  Core.defaultService
    (Core.ServiceId "admin:reports_v1")
    "admin.googleapis.com"

-- | View audit reports for your G Suite domain
adminReportsAuditReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
adminReportsAuditReadOnlyScope = Core.Proxy

-- | View usage reports for your G Suite domain
adminReportsUsageReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
adminReportsUsageReadOnlyScope = Core.Proxy
