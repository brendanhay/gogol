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
-- Module      : Gogol.DoubleClickSearch.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DoubleClickSearch.Types
  ( -- * Configuration
    doubleClickSearchService,

    -- * OAuth Scopes
    Doubleclicksearch'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Availability
    Availability (..),
    newAvailability,

    -- ** Conversion
    Conversion (..),
    newConversion,

    -- ** Conversion_AdUserDataConsent
    Conversion_AdUserDataConsent (..),

    -- ** ConversionList
    ConversionList (..),
    newConversionList,

    -- ** CustomDimension
    CustomDimension (..),
    newCustomDimension,

    -- ** CustomMetric
    CustomMetric (..),
    newCustomMetric,

    -- ** IdMappingFile
    IdMappingFile (..),
    newIdMappingFile,

    -- ** Report
    Report (..),
    newReport,

    -- ** Report_FilesItem
    Report_FilesItem (..),
    newReport_FilesItem,

    -- ** ReportApiColumnSpec
    ReportApiColumnSpec (..),
    newReportApiColumnSpec,

    -- ** ReportRequest
    ReportRequest (..),
    newReportRequest,

    -- ** ReportRequest_FiltersItem
    ReportRequest_FiltersItem (..),
    newReportRequest_FiltersItem,

    -- ** ReportRequest_OrderByItem
    ReportRequest_OrderByItem (..),
    newReportRequest_OrderByItem,

    -- ** ReportRequest_ReportScope
    ReportRequest_ReportScope (..),
    newReportRequest_ReportScope,

    -- ** ReportRequest_TimeRange
    ReportRequest_TimeRange (..),
    newReportRequest_TimeRange,

    -- ** ReportRow
    ReportRow (..),
    newReportRow,

    -- ** SavedColumn
    SavedColumn (..),
    newSavedColumn,

    -- ** SavedColumnList
    SavedColumnList (..),
    newSavedColumnList,

    -- ** UpdateAvailabilityRequest
    UpdateAvailabilityRequest (..),
    newUpdateAvailabilityRequest,

    -- ** UpdateAvailabilityResponse
    UpdateAvailabilityResponse (..),
    newUpdateAvailabilityResponse,
  )
where

import Gogol.DoubleClickSearch.Internal.Product
import Gogol.DoubleClickSearch.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Search Ads 360 API. This contains the host and root path used as a starting point for constructing service requests.
doubleClickSearchService :: Core.ServiceConfig
doubleClickSearchService =
  Core.defaultService
    (Core.ServiceId "doubleclicksearch:v2")
    "doubleclicksearch.googleapis.com"

-- | View and manage your advertising data in DoubleClick Search
type Doubleclicksearch'FullControl =
  "https://www.googleapis.com/auth/doubleclicksearch"
