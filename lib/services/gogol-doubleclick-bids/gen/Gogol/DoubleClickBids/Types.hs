{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
    , Doubleclickbidmanager'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** DataRange
    , DataRange (..)
    , newDataRange

    -- ** DataRange_Range
    , DataRange_Range (..)

    -- ** Date
    , Date (..)
    , newDate

    -- ** FilterPair
    , FilterPair (..)
    , newFilterPair

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

    -- ** Parameters_Type
    , Parameters_Type (..)

    -- ** Query
    , Query (..)
    , newQuery

    -- ** QueryMetadata
    , QueryMetadata (..)
    , newQueryMetadata

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

    -- ** RunQueryRequest
    , RunQueryRequest (..)
    , newRunQueryRequest
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DoubleClickBids.Internal.Product
import Gogol.DoubleClickBids.Internal.Sum

-- | Default request referring to version @v2@ of the DoubleClick Bid Manager API. This contains the host and root path used as a starting point for constructing service requests.
doubleClickBidsService :: Core.ServiceConfig
doubleClickBidsService
  = Core.defaultService
      (Core.ServiceId "doubleclickbidmanager:v2")
      "doubleclickbidmanager.googleapis.com"

-- | View and manage your reports in DoubleClick Bid Manager
type Doubleclickbidmanager'FullControl = "https://www.googleapis.com/auth/doubleclickbidmanager"
