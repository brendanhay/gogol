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
-- Module      : Network.Google.DoubleClickSearch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Search Ads 360 API allows developers to automate uploading conversions and downloading reports from Search Ads 360.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference>
module Network.Google.DoubleClickSearch
  ( -- * Configuration
    doubleClickSearchService,

    -- * OAuth Scopes
    doubleClickSearchScope,

    -- * Resources

    -- ** doubleclicksearch.conversion.get
    DoubleClickSearchConversionGetResource,
    newDoubleClickSearchConversionGet,
    DoubleClickSearchConversionGet,

    -- ** doubleclicksearch.conversion.insert
    DoubleClickSearchConversionInsertResource,
    newDoubleClickSearchConversionInsert,
    DoubleClickSearchConversionInsert,

    -- ** doubleclicksearch.conversion.update
    DoubleClickSearchConversionUpdateResource,
    newDoubleClickSearchConversionUpdate,
    DoubleClickSearchConversionUpdate,

    -- ** doubleclicksearch.conversion.updateAvailability
    DoubleClickSearchConversionUpdateAvailabilityResource,
    newDoubleClickSearchConversionUpdateAvailability,
    DoubleClickSearchConversionUpdateAvailability,

    -- ** doubleclicksearch.reports.generate
    DoubleClickSearchReportsGenerateResource,
    newDoubleClickSearchReportsGenerate,
    DoubleClickSearchReportsGenerate,

    -- ** doubleclicksearch.reports.get
    DoubleClickSearchReportsGetResource,
    newDoubleClickSearchReportsGet,
    DoubleClickSearchReportsGet,

    -- ** doubleclicksearch.reports.getFile
    DoubleClickSearchReportsGetFileResource,
    newDoubleClickSearchReportsGetFile,
    DoubleClickSearchReportsGetFile,

    -- ** doubleclicksearch.reports.request
    DoubleClickSearchReportsRequestResource,
    newDoubleClickSearchReportsRequest,
    DoubleClickSearchReportsRequest,

    -- ** doubleclicksearch.savedColumns.list
    DoubleClickSearchSavedColumnsListResource,
    newDoubleClickSearchSavedColumnsList,
    DoubleClickSearchSavedColumnsList,

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

import Network.Google.DoubleClickSearch.Conversion.Get
import Network.Google.DoubleClickSearch.Conversion.Insert
import Network.Google.DoubleClickSearch.Conversion.Update
import Network.Google.DoubleClickSearch.Conversion.UpdateAvailability
import Network.Google.DoubleClickSearch.Reports.Generate
import Network.Google.DoubleClickSearch.Reports.Get
import Network.Google.DoubleClickSearch.Reports.GetFile
import Network.Google.DoubleClickSearch.Reports.Request
import Network.Google.DoubleClickSearch.SavedColumns.List
import Network.Google.DoubleClickSearch.Types
