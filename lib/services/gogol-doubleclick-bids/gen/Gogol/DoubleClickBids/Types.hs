{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DoubleClickBids.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DoubleClickBids.Types
    (
    -- * Configuration
      doubleClickBidsService

    -- * OAuth Scopes
    , doubleclickbidManagerScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** ChannelGrouping
    , ChannelGrouping (..)
    , newChannelGrouping

    -- ** DisjunctiveMatchStatement
    , DisjunctiveMatchStatement (..)
    , newDisjunctiveMatchStatement

    -- ** EventFilter
    , EventFilter (..)
    , newEventFilter

    -- ** FilterPair
    , FilterPair (..)
    , newFilterPair

    -- ** FilterPair_Type
    , FilterPair_Type (..)

    -- ** ListQueriesResponse
    , ListQueriesResponse (..)
    , newListQueriesResponse

    -- ** ListReportsResponse
    , ListReportsResponse (..)
    , newListReportsResponse

    -- ** Options
    , Options (..)
    , newOptions

    -- ** Parameters
    , Parameters (..)
    , newParameters

    -- ** Parameters_GroupBysItem
    , Parameters_GroupBysItem (..)

    -- ** Parameters_MetricsItem
    , Parameters_MetricsItem (..)

    -- ** Parameters_Type
    , Parameters_Type (..)

    -- ** PathFilter
    , PathFilter (..)
    , newPathFilter

    -- ** PathFilter_PathMatchPosition
    , PathFilter_PathMatchPosition (..)

    -- ** PathQueryOptions
    , PathQueryOptions (..)
    , newPathQueryOptions

    -- ** PathQueryOptionsFilter
    , PathQueryOptionsFilter (..)
    , newPathQueryOptionsFilter

    -- ** PathQueryOptionsFilter_Filter
    , PathQueryOptionsFilter_Filter (..)

    -- ** PathQueryOptionsFilter_Match
    , PathQueryOptionsFilter_Match (..)

    -- ** Query
    , Query (..)
    , newQuery

    -- ** QueryMetadata
    , QueryMetadata (..)
    , newQueryMetadata

    -- ** QueryMetadata_DataRange
    , QueryMetadata_DataRange (..)

    -- ** QueryMetadata_Format
    , QueryMetadata_Format (..)

    -- ** QuerySchedule
    , QuerySchedule (..)
    , newQuerySchedule

    -- ** QuerySchedule_Frequency
    , QuerySchedule_Frequency (..)

    -- ** Report
    , Report (..)
    , newReport

    -- ** ReportFailure
    , ReportFailure (..)
    , newReportFailure

    -- ** ReportFailure_ErrorCode
    , ReportFailure_ErrorCode (..)

    -- ** ReportKey
    , ReportKey (..)
    , newReportKey

    -- ** ReportMetadata
    , ReportMetadata (..)
    , newReportMetadata

    -- ** ReportStatus
    , ReportStatus (..)
    , newReportStatus

    -- ** ReportStatus_Format
    , ReportStatus_Format (..)

    -- ** ReportStatus_State
    , ReportStatus_State (..)

    -- ** Rule
    , Rule (..)
    , newRule

    -- ** RunQueryRequest
    , RunQueryRequest (..)
    , newRunQueryRequest

    -- ** RunQueryRequest_DataRange
    , RunQueryRequest_DataRange (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DoubleClickBids.Internal.Product
import Gogol.DoubleClickBids.Internal.Sum

-- | Default request referring to version @v1.1@ of the DoubleClick Bid Manager API. This contains the host and root path used as a starting point for constructing service requests.
doubleClickBidsService :: Core.ServiceConfig
doubleClickBidsService
  = Core.defaultService
      (Core.ServiceId "doubleclickbidmanager:v1.1")
      "doubleclickbidmanager.googleapis.com"

-- | View and manage your reports in DoubleClick Bid Manager
doubleclickbidManagerScope :: Core.Proxy '["https://www.googleapis.com/auth/doubleclickbidmanager"]
doubleclickbidManagerScope = Core.Proxy
