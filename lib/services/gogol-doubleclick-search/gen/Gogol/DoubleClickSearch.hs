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
-- Module      : Gogol.DoubleClickSearch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Search Ads 360 API allows developers to automate uploading conversions and downloading reports from Search Ads 360.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference>
module Gogol.DoubleClickSearch
  ( -- * Configuration
    doubleClickSearchService,

    -- * OAuth Scopes
    Doubleclicksearch'FullControl,

    -- * Resources

    -- ** doubleclicksearch.conversion.get
    DoubleClickSearchConversionGetResource,
    DoubleClickSearchConversionGet (..),
    newDoubleClickSearchConversionGet,

    -- ** doubleclicksearch.conversion.insert
    DoubleClickSearchConversionInsertResource,
    DoubleClickSearchConversionInsert (..),
    newDoubleClickSearchConversionInsert,

    -- ** doubleclicksearch.conversion.update
    DoubleClickSearchConversionUpdateResource,
    DoubleClickSearchConversionUpdate (..),
    newDoubleClickSearchConversionUpdate,

    -- ** doubleclicksearch.conversion.updateAvailability
    DoubleClickSearchConversionUpdateAvailabilityResource,
    DoubleClickSearchConversionUpdateAvailability (..),
    newDoubleClickSearchConversionUpdateAvailability,

    -- ** doubleclicksearch.reports.generate
    DoubleClickSearchReportsGenerateResource,
    DoubleClickSearchReportsGenerate (..),
    newDoubleClickSearchReportsGenerate,

    -- ** doubleclicksearch.reports.get
    DoubleClickSearchReportsGetResource,
    DoubleClickSearchReportsGet (..),
    newDoubleClickSearchReportsGet,

    -- ** doubleclicksearch.reports.getFile
    DoubleClickSearchReportsGetFileResource,
    DoubleClickSearchReportsGetFile (..),
    newDoubleClickSearchReportsGetFile,

    -- ** doubleclicksearch.reports.request
    DoubleClickSearchReportsRequestResource,
    DoubleClickSearchReportsRequest (..),
    newDoubleClickSearchReportsRequest,

    -- ** doubleclicksearch.savedColumns.list
    DoubleClickSearchSavedColumnsListResource,
    DoubleClickSearchSavedColumnsList (..),
    newDoubleClickSearchSavedColumnsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Availability
    Availability (..),
    newAvailability,

    -- ** Conversion
    Conversion (..),
    newConversion,

    -- ** ConversionList
    ConversionList (..),
    newConversionList,

    -- ** CustomDimension
    CustomDimension (..),
    newCustomDimension,

    -- ** CustomMetric
    CustomMetric (..),
    newCustomMetric,

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

import Gogol.DoubleClickSearch.Conversion.Get
import Gogol.DoubleClickSearch.Conversion.Insert
import Gogol.DoubleClickSearch.Conversion.Update
import Gogol.DoubleClickSearch.Conversion.UpdateAvailability
import Gogol.DoubleClickSearch.Reports.Generate
import Gogol.DoubleClickSearch.Reports.Get
import Gogol.DoubleClickSearch.Reports.GetFile
import Gogol.DoubleClickSearch.Reports.Request
import Gogol.DoubleClickSearch.SavedColumns.List
import Gogol.DoubleClickSearch.Types
