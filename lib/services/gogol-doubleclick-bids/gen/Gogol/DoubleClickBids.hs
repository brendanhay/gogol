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
-- Module      : Gogol.DoubleClickBids
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DoubleClick Bid Manager API allows users to manage and create campaigns and reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Gogol.DoubleClickBids
    (
    -- * Configuration
      doubleClickBidsService

    -- * OAuth Scopes
    , Doubleclickbidmanager'FullControl

    -- * Resources

    -- ** doubleclickbidmanager.queries.create
    , DoubleclickbidmanagerQueriesCreateResource
    , DoubleclickbidmanagerQueriesCreate (..)
    , newDoubleclickbidmanagerQueriesCreate

    -- ** doubleclickbidmanager.queries.delete
    , DoubleclickbidmanagerQueriesDeleteResource
    , DoubleclickbidmanagerQueriesDelete (..)
    , newDoubleclickbidmanagerQueriesDelete

    -- ** doubleclickbidmanager.queries.get
    , DoubleclickbidmanagerQueriesGetResource
    , DoubleclickbidmanagerQueriesGet (..)
    , newDoubleclickbidmanagerQueriesGet

    -- ** doubleclickbidmanager.queries.list
    , DoubleclickbidmanagerQueriesListResource
    , DoubleclickbidmanagerQueriesList (..)
    , newDoubleclickbidmanagerQueriesList

    -- ** doubleclickbidmanager.queries.reports.get
    , DoubleclickbidmanagerQueriesReportsGetResource
    , DoubleclickbidmanagerQueriesReportsGet (..)
    , newDoubleclickbidmanagerQueriesReportsGet

    -- ** doubleclickbidmanager.queries.reports.list
    , DoubleclickbidmanagerQueriesReportsListResource
    , DoubleclickbidmanagerQueriesReportsList (..)
    , newDoubleclickbidmanagerQueriesReportsList

    -- ** doubleclickbidmanager.queries.run
    , DoubleclickbidmanagerQueriesRunResource
    , DoubleclickbidmanagerQueriesRun (..)
    , newDoubleclickbidmanagerQueriesRun

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

import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Create
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Delete
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Get
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.List
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Reports.Get
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Reports.List
import Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Run
import Gogol.DoubleClickBids.Types
