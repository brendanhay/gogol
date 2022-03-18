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
-- Module      : Network.Google.DoubleClickSearch.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.DoubleClickSearch.Internal.Product
  ( -- * Availability
    Availability (..),
    newAvailability,

    -- * Conversion
    Conversion (..),
    newConversion,

    -- * ConversionList
    ConversionList (..),
    newConversionList,

    -- * CustomDimension
    CustomDimension (..),
    newCustomDimension,

    -- * CustomMetric
    CustomMetric (..),
    newCustomMetric,

    -- * Report
    Report (..),
    newReport,

    -- * Report_FilesItem
    Report_FilesItem (..),
    newReport_FilesItem,

    -- * ReportApiColumnSpec
    ReportApiColumnSpec (..),
    newReportApiColumnSpec,

    -- * ReportRequest
    ReportRequest (..),
    newReportRequest,

    -- * ReportRequest_FiltersItem
    ReportRequest_FiltersItem (..),
    newReportRequest_FiltersItem,

    -- * ReportRequest_OrderByItem
    ReportRequest_OrderByItem (..),
    newReportRequest_OrderByItem,

    -- * ReportRequest_ReportScope
    ReportRequest_ReportScope (..),
    newReportRequest_ReportScope,

    -- * ReportRequest_TimeRange
    ReportRequest_TimeRange (..),
    newReportRequest_TimeRange,

    -- * ReportRow
    ReportRow (..),
    newReportRow,

    -- * SavedColumn
    SavedColumn (..),
    newSavedColumn,

    -- * SavedColumnList
    SavedColumnList (..),
    newSavedColumnList,

    -- * UpdateAvailabilityRequest
    UpdateAvailabilityRequest (..),
    newUpdateAvailabilityRequest,

    -- * UpdateAvailabilityResponse
    UpdateAvailabilityResponse (..),
    newUpdateAvailabilityResponse,
  )
where

import Network.Google.DoubleClickSearch.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | A message containing availability data relevant to DoubleClick Search.
--
-- /See:/ 'newAvailability' smart constructor.
data Availability = Availability
  { -- | DS advertiser ID.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | DS agency ID.
    agencyId :: (Core.Maybe Core.Int64),
    -- | The time by which all conversions have been uploaded, in epoch millis UTC.
    availabilityTimestamp :: (Core.Maybe Core.Int64),
    -- | The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID).
    segmentationId :: (Core.Maybe Core.Int64),
    -- | The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name).
    segmentationName :: (Core.Maybe Core.Text),
    -- | The segmentation type that this availability is for (its default value is @FLOODLIGHT@).
    segmentationType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Availability' with the minimum fields required to make a request.
newAvailability ::
  Availability
newAvailability =
  Availability
    { advertiserId = Core.Nothing,
      agencyId = Core.Nothing,
      availabilityTimestamp = Core.Nothing,
      segmentationId = Core.Nothing,
      segmentationName = Core.Nothing,
      segmentationType = Core.Nothing
    }

instance Core.FromJSON Availability where
  parseJSON =
    Core.withObject
      "Availability"
      ( \o ->
          Availability
            Core.<$> (o Core..:? "advertiserId")
            Core.<*> (o Core..:? "agencyId")
            Core.<*> (o Core..:? "availabilityTimestamp")
            Core.<*> (o Core..:? "segmentationId")
            Core.<*> (o Core..:? "segmentationName")
            Core.<*> (o Core..:? "segmentationType")
      )

instance Core.ToJSON Availability where
  toJSON Availability {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertiserId" Core..=) Core.. Core.AsText
              Core.<$> advertiserId,
            ("agencyId" Core..=) Core.. Core.AsText
              Core.<$> agencyId,
            ("availabilityTimestamp" Core..=) Core.. Core.AsText
              Core.<$> availabilityTimestamp,
            ("segmentationId" Core..=) Core.. Core.AsText
              Core.<$> segmentationId,
            ("segmentationName" Core..=)
              Core.<$> segmentationName,
            ("segmentationType" Core..=)
              Core.<$> segmentationType
          ]
      )

-- | A conversion containing data relevant to DoubleClick Search.
--
-- /See:/ 'newConversion' smart constructor.
data Conversion = Conversion
  { -- | DS ad group ID.
    adGroupId :: (Core.Maybe Core.Int64),
    -- | DS ad ID.
    adId :: (Core.Maybe Core.Int64),
    -- | DS advertiser ID.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | DS agency ID.
    agencyId :: (Core.Maybe Core.Int64),
    -- | Available to advertisers only after contacting DoubleClick Search customer support.
    attributionModel :: (Core.Maybe Core.Text),
    -- | DS campaign ID.
    campaignId :: (Core.Maybe Core.Int64),
    -- | Sales channel for the product. Acceptable values are: - \"@local@\": a physical store - \"@online@\": an online store
    channel :: (Core.Maybe Core.Text),
    -- | DS click ID for the conversion.
    clickId :: (Core.Maybe Core.Text),
    -- | For offline conversions, advertisers provide this ID. Advertisers can specify any ID that is meaningful to them. Each conversion in a request must specify a unique ID, and the combination of ID and timestamp must be unique amongst all conversions within the advertiser. For online conversions, DS copies the @dsConversionId@ or @floodlightOrderId@ into this property depending on the advertiser\'s Floodlight instructions.
    conversionId :: (Core.Maybe Core.Text),
    -- | The time at which the conversion was last modified, in epoch millis UTC.
    conversionModifiedTimestamp :: (Core.Maybe Core.Int64),
    -- | The time at which the conversion took place, in epoch millis UTC.
    conversionTimestamp :: (Core.Maybe Core.Text),
    -- | Available to advertisers only after contacting DoubleClick Search customer support.
    countMillis :: (Core.Maybe Core.Int64),
    -- | DS criterion (keyword) ID.
    criterionId :: (Core.Maybe Core.Int64),
    -- | The currency code for the conversion\'s revenue. Should be in ISO 4217 alphabetic (3-char) format.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Custom dimensions for the conversion, which can be used to filter data in a report.
    customDimension :: (Core.Maybe [CustomDimension]),
    -- | Custom metrics for the conversion.
    customMetric :: (Core.Maybe [CustomMetric]),
    -- | The type of device on which the conversion occurred.
    deviceType :: (Core.Maybe Core.Text),
    -- | ID that DoubleClick Search generates for each conversion.
    dsConversionId :: (Core.Maybe Core.Int64),
    -- | DS engine account ID.
    engineAccountId :: (Core.Maybe Core.Int64),
    -- | The Floodlight order ID provided by the advertiser for the conversion.
    floodlightOrderId :: (Core.Maybe Core.Text),
    -- | ID that DS generates and uses to uniquely identify the inventory account that contains the product.
    inventoryAccountId :: (Core.Maybe Core.Int64),
    -- | The country registered for the Merchant Center feed that contains the product. Use an ISO 3166 code to specify a country.
    productCountry :: (Core.Maybe Core.Text),
    -- | DS product group ID.
    productGroupId :: (Core.Maybe Core.Int64),
    -- | The product ID (SKU).
    productId :: (Core.Maybe Core.Text),
    -- | The language registered for the Merchant Center feed that contains the product. Use an ISO 639 code to specify a language.
    productLanguage :: (Core.Maybe Core.Text),
    -- | The quantity of this conversion, in millis.
    quantityMillis :: (Core.Maybe Core.Int64),
    -- | The revenue amount of this @TRANSACTION@ conversion, in micros (value multiplied by 1000000, no decimal). For example, to specify a revenue value of \"10\" enter \"10000000\" (10 million) in your request.
    revenueMicros :: (Core.Maybe Core.Text),
    -- | The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID).
    segmentationId :: (Core.Maybe Core.Int64),
    -- | The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name).
    segmentationName :: (Core.Maybe Core.Text),
    -- | The segmentation type of this conversion (for example, @FLOODLIGHT@).
    segmentationType :: (Core.Maybe Core.Text),
    -- | The state of the conversion, that is, either @ACTIVE@ or @REMOVED@. Note: state DELETED is deprecated.
    state :: (Core.Maybe Core.Text),
    -- | The ID of the local store for which the product was advertised. Applicable only when the channel is \"@local@\".
    storeId :: (Core.Maybe Core.Text),
    -- | The type of the conversion, that is, either @ACTION@ or @TRANSACTION@. An @ACTION@ conversion is an action by the user that has no monetarily quantifiable value, while a @TRANSACTION@ conversion is an action that does have a monetarily quantifiable value. Examples are email list signups (@ACTION@) versus ecommerce purchases (@TRANSACTION@).
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Conversion' with the minimum fields required to make a request.
newConversion ::
  Conversion
newConversion =
  Conversion
    { adGroupId = Core.Nothing,
      adId = Core.Nothing,
      advertiserId = Core.Nothing,
      agencyId = Core.Nothing,
      attributionModel = Core.Nothing,
      campaignId = Core.Nothing,
      channel = Core.Nothing,
      clickId = Core.Nothing,
      conversionId = Core.Nothing,
      conversionModifiedTimestamp = Core.Nothing,
      conversionTimestamp = Core.Nothing,
      countMillis = Core.Nothing,
      criterionId = Core.Nothing,
      currencyCode = Core.Nothing,
      customDimension = Core.Nothing,
      customMetric = Core.Nothing,
      deviceType = Core.Nothing,
      dsConversionId = Core.Nothing,
      engineAccountId = Core.Nothing,
      floodlightOrderId = Core.Nothing,
      inventoryAccountId = Core.Nothing,
      productCountry = Core.Nothing,
      productGroupId = Core.Nothing,
      productId = Core.Nothing,
      productLanguage = Core.Nothing,
      quantityMillis = Core.Nothing,
      revenueMicros = Core.Nothing,
      segmentationId = Core.Nothing,
      segmentationName = Core.Nothing,
      segmentationType = Core.Nothing,
      state = Core.Nothing,
      storeId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Conversion where
  parseJSON =
    Core.withObject
      "Conversion"
      ( \o ->
          Conversion
            Core.<$> (o Core..:? "adGroupId")
            Core.<*> (o Core..:? "adId")
            Core.<*> (o Core..:? "advertiserId")
            Core.<*> (o Core..:? "agencyId")
            Core.<*> (o Core..:? "attributionModel")
            Core.<*> (o Core..:? "campaignId")
            Core.<*> (o Core..:? "channel")
            Core.<*> (o Core..:? "clickId")
            Core.<*> (o Core..:? "conversionId")
            Core.<*> (o Core..:? "conversionModifiedTimestamp")
            Core.<*> (o Core..:? "conversionTimestamp")
            Core.<*> (o Core..:? "countMillis")
            Core.<*> (o Core..:? "criterionId")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "customDimension" Core..!= Core.mempty)
            Core.<*> (o Core..:? "customMetric" Core..!= Core.mempty)
            Core.<*> (o Core..:? "deviceType")
            Core.<*> (o Core..:? "dsConversionId")
            Core.<*> (o Core..:? "engineAccountId")
            Core.<*> (o Core..:? "floodlightOrderId")
            Core.<*> (o Core..:? "inventoryAccountId")
            Core.<*> (o Core..:? "productCountry")
            Core.<*> (o Core..:? "productGroupId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "productLanguage")
            Core.<*> (o Core..:? "quantityMillis")
            Core.<*> (o Core..:? "revenueMicros")
            Core.<*> (o Core..:? "segmentationId")
            Core.<*> (o Core..:? "segmentationName")
            Core.<*> (o Core..:? "segmentationType")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "storeId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Conversion where
  toJSON Conversion {..} =
    Core.object
      ( Core.catMaybes
          [ ("adGroupId" Core..=) Core.. Core.AsText
              Core.<$> adGroupId,
            ("adId" Core..=) Core.. Core.AsText Core.<$> adId,
            ("advertiserId" Core..=) Core.. Core.AsText
              Core.<$> advertiserId,
            ("agencyId" Core..=) Core.. Core.AsText
              Core.<$> agencyId,
            ("attributionModel" Core..=)
              Core.<$> attributionModel,
            ("campaignId" Core..=) Core.. Core.AsText
              Core.<$> campaignId,
            ("channel" Core..=) Core.<$> channel,
            ("clickId" Core..=) Core.<$> clickId,
            ("conversionId" Core..=) Core.<$> conversionId,
            ("conversionModifiedTimestamp" Core..=)
              Core.. Core.AsText
              Core.<$> conversionModifiedTimestamp,
            ("conversionTimestamp" Core..=)
              Core.<$> conversionTimestamp,
            ("countMillis" Core..=) Core.. Core.AsText
              Core.<$> countMillis,
            ("criterionId" Core..=) Core.. Core.AsText
              Core.<$> criterionId,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("customDimension" Core..=) Core.<$> customDimension,
            ("customMetric" Core..=) Core.<$> customMetric,
            ("deviceType" Core..=) Core.<$> deviceType,
            ("dsConversionId" Core..=) Core.. Core.AsText
              Core.<$> dsConversionId,
            ("engineAccountId" Core..=) Core.. Core.AsText
              Core.<$> engineAccountId,
            ("floodlightOrderId" Core..=)
              Core.<$> floodlightOrderId,
            ("inventoryAccountId" Core..=) Core.. Core.AsText
              Core.<$> inventoryAccountId,
            ("productCountry" Core..=) Core.<$> productCountry,
            ("productGroupId" Core..=) Core.. Core.AsText
              Core.<$> productGroupId,
            ("productId" Core..=) Core.<$> productId,
            ("productLanguage" Core..=) Core.<$> productLanguage,
            ("quantityMillis" Core..=) Core.. Core.AsText
              Core.<$> quantityMillis,
            ("revenueMicros" Core..=) Core.<$> revenueMicros,
            ("segmentationId" Core..=) Core.. Core.AsText
              Core.<$> segmentationId,
            ("segmentationName" Core..=)
              Core.<$> segmentationName,
            ("segmentationType" Core..=)
              Core.<$> segmentationType,
            ("state" Core..=) Core.<$> state,
            ("storeId" Core..=) Core.<$> storeId,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A list of conversions.
--
-- /See:/ 'newConversionList' smart constructor.
data ConversionList = ConversionList
  { -- | The conversions being requested.
    conversion :: (Core.Maybe [Conversion]),
    -- | Identifies this as a ConversionList resource. Value: the fixed string doubleclicksearch#conversionList.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConversionList' with the minimum fields required to make a request.
newConversionList ::
  ConversionList
newConversionList =
  ConversionList {conversion = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON ConversionList where
  parseJSON =
    Core.withObject
      "ConversionList"
      ( \o ->
          ConversionList
            Core.<$> (o Core..:? "conversion" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ConversionList where
  toJSON ConversionList {..} =
    Core.object
      ( Core.catMaybes
          [ ("conversion" Core..=) Core.<$> conversion,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A message containing the custom dimension.
--
-- /See:/ 'newCustomDimension' smart constructor.
data CustomDimension = CustomDimension
  { -- | Custom dimension name.
    name :: (Core.Maybe Core.Text),
    -- | Custom dimension value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDimension' with the minimum fields required to make a request.
newCustomDimension ::
  CustomDimension
newCustomDimension = CustomDimension {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON CustomDimension where
  parseJSON =
    Core.withObject
      "CustomDimension"
      ( \o ->
          CustomDimension
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON CustomDimension where
  toJSON CustomDimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A message containing the custom metric.
--
-- /See:/ 'newCustomMetric' smart constructor.
data CustomMetric = CustomMetric
  { -- | Custom metric name.
    name :: (Core.Maybe Core.Text),
    -- | Custom metric numeric value.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomMetric' with the minimum fields required to make a request.
newCustomMetric ::
  CustomMetric
newCustomMetric = CustomMetric {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON CustomMetric where
  parseJSON =
    Core.withObject
      "CustomMetric"
      ( \o ->
          CustomMetric
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON CustomMetric where
  toJSON CustomMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A DoubleClick Search report. This object contains the report request, some report metadata such as currency code, and the generated report rows or report files.
--
-- /See:/ 'newReport' smart constructor.
data Report = Report
  { -- | Asynchronous report only. Contains a list of generated report files once the report has successfully completed.
    files :: (Core.Maybe [Report_FilesItem]),
    -- | Asynchronous report only. Id of the report.
    id :: (Core.Maybe Core.Text),
    -- | Asynchronous report only. True if and only if the report has completed successfully and the report files are ready to be downloaded.
    isReportReady :: (Core.Maybe Core.Bool),
    -- | Identifies this as a Report resource. Value: the fixed string @doubleclicksearch#report@.
    kind :: (Core.Maybe Core.Text),
    -- | The request that created the report. Optional fields not specified in the original request are filled with default values.
    request' :: (Core.Maybe ReportRequest),
    -- | The number of report rows generated by the report, not including headers.
    rowCount :: (Core.Maybe Core.Int32),
    -- | Synchronous report only. Generated report rows.
    rows :: (Core.Maybe [ReportRow]),
    -- | The currency code of all monetary values produced in the report, including values that are set by users (e.g., keyword bid settings) and metrics (e.g., cost and revenue). The currency code of a report is determined by the @statisticsCurrency@ field of the report request.
    statisticsCurrencyCode :: (Core.Maybe Core.Text),
    -- | If all statistics of the report are sourced from the same time zone, this would be it. Otherwise the field is unset.
    statisticsTimeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport ::
  Report
newReport =
  Report
    { files = Core.Nothing,
      id = Core.Nothing,
      isReportReady = Core.Nothing,
      kind = Core.Nothing,
      request' = Core.Nothing,
      rowCount = Core.Nothing,
      rows = Core.Nothing,
      statisticsCurrencyCode = Core.Nothing,
      statisticsTimeZone = Core.Nothing
    }

instance Core.FromJSON Report where
  parseJSON =
    Core.withObject
      "Report"
      ( \o ->
          Report
            Core.<$> (o Core..:? "files" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isReportReady")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "request")
            Core.<*> (o Core..:? "rowCount")
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
            Core.<*> (o Core..:? "statisticsCurrencyCode")
            Core.<*> (o Core..:? "statisticsTimeZone")
      )

instance Core.ToJSON Report where
  toJSON Report {..} =
    Core.object
      ( Core.catMaybes
          [ ("files" Core..=) Core.<$> files,
            ("id" Core..=) Core.<$> id,
            ("isReportReady" Core..=) Core.<$> isReportReady,
            ("kind" Core..=) Core.<$> kind,
            ("request" Core..=) Core.<$> request',
            ("rowCount" Core..=) Core.<$> rowCount,
            ("rows" Core..=) Core.<$> rows,
            ("statisticsCurrencyCode" Core..=)
              Core.<$> statisticsCurrencyCode,
            ("statisticsTimeZone" Core..=)
              Core.<$> statisticsTimeZone
          ]
      )

--
-- /See:/ 'newReport_FilesItem' smart constructor.
data Report_FilesItem = Report_FilesItem
  { -- | The size of this report file in bytes.
    byteCount :: (Core.Maybe Core.Int64),
    -- | Use this url to download the report file.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_FilesItem' with the minimum fields required to make a request.
newReport_FilesItem ::
  Report_FilesItem
newReport_FilesItem =
  Report_FilesItem {byteCount = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON Report_FilesItem where
  parseJSON =
    Core.withObject
      "Report_FilesItem"
      ( \o ->
          Report_FilesItem
            Core.<$> (o Core..:? "byteCount") Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Report_FilesItem where
  toJSON Report_FilesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteCount" Core..=) Core.. Core.AsText
              Core.<$> byteCount,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A request object used to create a DoubleClick Search report.
--
-- /See:/ 'newReportApiColumnSpec' smart constructor.
data ReportApiColumnSpec = ReportApiColumnSpec
  { -- | Name of a DoubleClick Search column to include in the report.
    columnName :: (Core.Maybe Core.Text),
    -- | Segments a report by a custom dimension. The report must be scoped to an advertiser or lower, and the custom dimension must already be set up in DoubleClick Search. The custom dimension name, which appears in DoubleClick Search, is case sensitive.\\ If used in a conversion report, returns the value of the specified custom dimension for the given conversion, if set. This column does not segment the conversion report.
    customDimensionName :: (Core.Maybe Core.Text),
    -- | Name of a custom metric to include in the report. The report must be scoped to an advertiser or lower, and the custom metric must already be set up in DoubleClick Search. The custom metric name, which appears in DoubleClick Search, is case sensitive.
    customMetricName :: (Core.Maybe Core.Text),
    -- | Inclusive day in YYYY-MM-DD format. When provided, this overrides the overall time range of the report for this column only. Must be provided together with @startDate@.
    endDate :: (Core.Maybe Core.Text),
    -- | Synchronous report only. Set to @true@ to group by this column. Defaults to @false@.
    groupByColumn :: (Core.Maybe Core.Bool),
    -- | Text used to identify this column in the report output; defaults to @columnName@ or @savedColumnName@ when not specified. This can be used to prevent collisions between DoubleClick Search columns and saved columns with the same name.
    headerText :: (Core.Maybe Core.Text),
    -- | The platform that is used to provide data for the custom dimension. Acceptable values are \"floodlight\".
    platformSource :: (Core.Maybe Core.Text),
    -- | Returns metrics only for a specific type of product activity. Accepted values are: - \"@sold@\": returns metrics only for products that were sold - \"@advertised@\": returns metrics only for products that were advertised in a Shopping campaign, and that might or might not have been sold
    productReportPerspective :: (Core.Maybe Core.Text),
    -- | Name of a saved column to include in the report. The report must be scoped at advertiser or lower, and this saved column must already be created in the DoubleClick Search UI.
    savedColumnName :: (Core.Maybe Core.Text),
    -- | Inclusive date in YYYY-MM-DD format. When provided, this overrides the overall time range of the report for this column only. Must be provided together with @endDate@.
    startDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportApiColumnSpec' with the minimum fields required to make a request.
newReportApiColumnSpec ::
  ReportApiColumnSpec
newReportApiColumnSpec =
  ReportApiColumnSpec
    { columnName = Core.Nothing,
      customDimensionName = Core.Nothing,
      customMetricName = Core.Nothing,
      endDate = Core.Nothing,
      groupByColumn = Core.Nothing,
      headerText = Core.Nothing,
      platformSource = Core.Nothing,
      productReportPerspective = Core.Nothing,
      savedColumnName = Core.Nothing,
      startDate = Core.Nothing
    }

instance Core.FromJSON ReportApiColumnSpec where
  parseJSON =
    Core.withObject
      "ReportApiColumnSpec"
      ( \o ->
          ReportApiColumnSpec
            Core.<$> (o Core..:? "columnName")
            Core.<*> (o Core..:? "customDimensionName")
            Core.<*> (o Core..:? "customMetricName")
            Core.<*> (o Core..:? "endDate")
            Core.<*> (o Core..:? "groupByColumn")
            Core.<*> (o Core..:? "headerText")
            Core.<*> (o Core..:? "platformSource")
            Core.<*> (o Core..:? "productReportPerspective")
            Core.<*> (o Core..:? "savedColumnName")
            Core.<*> (o Core..:? "startDate")
      )

instance Core.ToJSON ReportApiColumnSpec where
  toJSON ReportApiColumnSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnName" Core..=) Core.<$> columnName,
            ("customDimensionName" Core..=)
              Core.<$> customDimensionName,
            ("customMetricName" Core..=)
              Core.<$> customMetricName,
            ("endDate" Core..=) Core.<$> endDate,
            ("groupByColumn" Core..=) Core.<$> groupByColumn,
            ("headerText" Core..=) Core.<$> headerText,
            ("platformSource" Core..=) Core.<$> platformSource,
            ("productReportPerspective" Core..=)
              Core.<$> productReportPerspective,
            ("savedColumnName" Core..=) Core.<$> savedColumnName,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

-- | A request object used to create a DoubleClick Search report.
--
-- /See:/ 'newReportRequest' smart constructor.
data ReportRequest = ReportRequest
  { -- | The columns to include in the report. This includes both DoubleClick Search columns and saved columns. For DoubleClick Search columns, only the @columnName@ parameter is required. For saved columns only the @savedColumnName@ parameter is required. Both @columnName@ and @savedColumnName@ cannot be set in the same stanza.\\ The maximum number of columns per request is 300.
    columns :: (Core.Maybe [ReportApiColumnSpec]),
    -- | Format that the report should be returned in. Currently @csv@ or @tsv@ is supported.
    downloadFormat :: (Core.Maybe Core.Text),
    -- | A list of filters to be applied to the report.\\ The maximum number of filters per request is 300.
    filters :: (Core.Maybe [ReportRequest_FiltersItem]),
    -- | Determines if removed entities should be included in the report. Defaults to @false@. Deprecated, please use @includeRemovedEntities@ instead.
    includeDeletedEntities :: (Core.Maybe Core.Bool),
    -- | Determines if removed entities should be included in the report. Defaults to @false@.
    includeRemovedEntities :: (Core.Maybe Core.Bool),
    -- | Asynchronous report only. The maximum number of rows per report file. A large report is split into many files based on this field. Acceptable values are @1000000@ to @100000000@, inclusive.
    maxRowsPerFile :: (Core.Maybe Core.Int32),
    -- | Synchronous report only. A list of columns and directions defining sorting to be performed on the report rows.\\ The maximum number of orderings per request is 300.
    orderBy :: (Core.Maybe [ReportRequest_OrderByItem]),
    -- | The reportScope is a set of IDs that are used to determine which subset of entities will be returned in the report. The full lineage of IDs from the lowest scoped level desired up through agency is required.
    reportScope :: (Core.Maybe ReportRequest_ReportScope),
    -- | Determines the type of rows that are returned in the report. For example, if you specify @reportType: keyword@, each row in the report will contain data about a keyword. See the </search-ads/v2/report-types/ Types of Reports> reference for the columns that are available for each type.
    reportType :: (Core.Maybe Core.Text),
    -- | Synchronous report only. The maximum number of rows to return; additional rows are dropped. Acceptable values are @0@ to @10000@, inclusive. Defaults to @10000@.
    rowCount :: (Core.Maybe Core.Int32),
    -- | Synchronous report only. Zero-based index of the first row to return. Acceptable values are @0@ to @50000@, inclusive. Defaults to @0@.
    startRow :: (Core.Maybe Core.Int32),
    -- | Specifies the currency in which monetary will be returned. Possible values are: @usd@, @agency@ (valid if the report is scoped to agency or lower), @advertiser@ (valid if the report is scoped to * advertiser or lower), or @account@ (valid if the report is scoped to engine account or lower).
    statisticsCurrency :: (Core.Maybe Core.Text),
    -- | If metrics are requested in a report, this argument will be used to restrict the metrics to a specific time range.
    timeRange :: (Core.Maybe ReportRequest_TimeRange),
    -- | If @true@, the report would only be created if all the requested stat data are sourced from a single timezone. Defaults to @false@.
    verifySingleTimeZone :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRequest' with the minimum fields required to make a request.
newReportRequest ::
  ReportRequest
newReportRequest =
  ReportRequest
    { columns = Core.Nothing,
      downloadFormat = Core.Nothing,
      filters = Core.Nothing,
      includeDeletedEntities = Core.Nothing,
      includeRemovedEntities = Core.Nothing,
      maxRowsPerFile = Core.Nothing,
      orderBy = Core.Nothing,
      reportScope = Core.Nothing,
      reportType = Core.Nothing,
      rowCount = Core.Nothing,
      startRow = Core.Nothing,
      statisticsCurrency = Core.Nothing,
      timeRange = Core.Nothing,
      verifySingleTimeZone = Core.Nothing
    }

instance Core.FromJSON ReportRequest where
  parseJSON =
    Core.withObject
      "ReportRequest"
      ( \o ->
          ReportRequest
            Core.<$> (o Core..:? "columns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "downloadFormat")
            Core.<*> (o Core..:? "filters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "includeDeletedEntities")
            Core.<*> (o Core..:? "includeRemovedEntities")
            Core.<*> (o Core..:? "maxRowsPerFile")
            Core.<*> (o Core..:? "orderBy" Core..!= Core.mempty)
            Core.<*> (o Core..:? "reportScope")
            Core.<*> (o Core..:? "reportType")
            Core.<*> (o Core..:? "rowCount")
            Core.<*> (o Core..:? "startRow")
            Core.<*> (o Core..:? "statisticsCurrency")
            Core.<*> (o Core..:? "timeRange")
            Core.<*> (o Core..:? "verifySingleTimeZone")
      )

instance Core.ToJSON ReportRequest where
  toJSON ReportRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("downloadFormat" Core..=) Core.<$> downloadFormat,
            ("filters" Core..=) Core.<$> filters,
            ("includeDeletedEntities" Core..=)
              Core.<$> includeDeletedEntities,
            ("includeRemovedEntities" Core..=)
              Core.<$> includeRemovedEntities,
            ("maxRowsPerFile" Core..=) Core.<$> maxRowsPerFile,
            ("orderBy" Core..=) Core.<$> orderBy,
            ("reportScope" Core..=) Core.<$> reportScope,
            ("reportType" Core..=) Core.<$> reportType,
            ("rowCount" Core..=) Core.<$> rowCount,
            ("startRow" Core..=) Core.<$> startRow,
            ("statisticsCurrency" Core..=)
              Core.<$> statisticsCurrency,
            ("timeRange" Core..=) Core.<$> timeRange,
            ("verifySingleTimeZone" Core..=)
              Core.<$> verifySingleTimeZone
          ]
      )

--
-- /See:/ 'newReportRequest_FiltersItem' smart constructor.
data ReportRequest_FiltersItem = ReportRequest_FiltersItem
  { -- | Column to perform the filter on. This can be a DoubleClick Search column or a saved column.
    column :: (Core.Maybe ReportApiColumnSpec),
    -- | Operator to use in the filter. See the filter reference for a list of available operators.
    operator :: (Core.Maybe Core.Text),
    -- | A list of values to filter the column value against.\\ The maximum number of filter values per request is 300.
    values :: (Core.Maybe [Core.Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRequest_FiltersItem' with the minimum fields required to make a request.
newReportRequest_FiltersItem ::
  ReportRequest_FiltersItem
newReportRequest_FiltersItem =
  ReportRequest_FiltersItem
    { column = Core.Nothing,
      operator = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON ReportRequest_FiltersItem where
  parseJSON =
    Core.withObject
      "ReportRequest_FiltersItem"
      ( \o ->
          ReportRequest_FiltersItem
            Core.<$> (o Core..:? "column")
            Core.<*> (o Core..:? "operator")
            Core.<*> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON ReportRequest_FiltersItem where
  toJSON ReportRequest_FiltersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("column" Core..=) Core.<$> column,
            ("operator" Core..=) Core.<$> operator,
            ("values" Core..=) Core.<$> values
          ]
      )

--
-- /See:/ 'newReportRequest_OrderByItem' smart constructor.
data ReportRequest_OrderByItem = ReportRequest_OrderByItem
  { -- | Column to perform the sort on. This can be a DoubleClick Search-defined column or a saved column.
    column :: (Core.Maybe ReportApiColumnSpec),
    -- | The sort direction, which is either @ascending@ or @descending@.
    sortOrder :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRequest_OrderByItem' with the minimum fields required to make a request.
newReportRequest_OrderByItem ::
  ReportRequest_OrderByItem
newReportRequest_OrderByItem =
  ReportRequest_OrderByItem {column = Core.Nothing, sortOrder = Core.Nothing}

instance Core.FromJSON ReportRequest_OrderByItem where
  parseJSON =
    Core.withObject
      "ReportRequest_OrderByItem"
      ( \o ->
          ReportRequest_OrderByItem
            Core.<$> (o Core..:? "column")
            Core.<*> (o Core..:? "sortOrder")
      )

instance Core.ToJSON ReportRequest_OrderByItem where
  toJSON ReportRequest_OrderByItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("column" Core..=) Core.<$> column,
            ("sortOrder" Core..=) Core.<$> sortOrder
          ]
      )

-- | The reportScope is a set of IDs that are used to determine which subset of entities will be returned in the report. The full lineage of IDs from the lowest scoped level desired up through agency is required.
--
-- /See:/ 'newReportRequest_ReportScope' smart constructor.
data ReportRequest_ReportScope = ReportRequest_ReportScope
  { -- | DS ad group ID.
    adGroupId :: (Core.Maybe Core.Int64),
    -- | DS ad ID.
    adId :: (Core.Maybe Core.Int64),
    -- | DS advertiser ID.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | DS agency ID.
    agencyId :: (Core.Maybe Core.Int64),
    -- | DS campaign ID.
    campaignId :: (Core.Maybe Core.Int64),
    -- | DS engine account ID.
    engineAccountId :: (Core.Maybe Core.Int64),
    -- | DS keyword ID.
    keywordId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRequest_ReportScope' with the minimum fields required to make a request.
newReportRequest_ReportScope ::
  ReportRequest_ReportScope
newReportRequest_ReportScope =
  ReportRequest_ReportScope
    { adGroupId = Core.Nothing,
      adId = Core.Nothing,
      advertiserId = Core.Nothing,
      agencyId = Core.Nothing,
      campaignId = Core.Nothing,
      engineAccountId = Core.Nothing,
      keywordId = Core.Nothing
    }

instance Core.FromJSON ReportRequest_ReportScope where
  parseJSON =
    Core.withObject
      "ReportRequest_ReportScope"
      ( \o ->
          ReportRequest_ReportScope
            Core.<$> (o Core..:? "adGroupId")
            Core.<*> (o Core..:? "adId")
            Core.<*> (o Core..:? "advertiserId")
            Core.<*> (o Core..:? "agencyId")
            Core.<*> (o Core..:? "campaignId")
            Core.<*> (o Core..:? "engineAccountId")
            Core.<*> (o Core..:? "keywordId")
      )

instance Core.ToJSON ReportRequest_ReportScope where
  toJSON ReportRequest_ReportScope {..} =
    Core.object
      ( Core.catMaybes
          [ ("adGroupId" Core..=) Core.. Core.AsText
              Core.<$> adGroupId,
            ("adId" Core..=) Core.. Core.AsText Core.<$> adId,
            ("advertiserId" Core..=) Core.. Core.AsText
              Core.<$> advertiserId,
            ("agencyId" Core..=) Core.. Core.AsText
              Core.<$> agencyId,
            ("campaignId" Core..=) Core.. Core.AsText
              Core.<$> campaignId,
            ("engineAccountId" Core..=) Core.. Core.AsText
              Core.<$> engineAccountId,
            ("keywordId" Core..=) Core.. Core.AsText
              Core.<$> keywordId
          ]
      )

-- | If metrics are requested in a report, this argument will be used to restrict the metrics to a specific time range.
--
-- /See:/ 'newReportRequest_TimeRange' smart constructor.
data ReportRequest_TimeRange = ReportRequest_TimeRange
  { -- | Inclusive UTC timestamp in RFC format, e.g., @2013-07-16T10:16:23.555Z@. See additional references on how changed attribute reports work.
    changedAttributesSinceTimestamp :: (Core.Maybe Core.Text),
    -- | Inclusive UTC timestamp in RFC format, e.g., @2013-07-16T10:16:23.555Z@. See additional references on how changed metrics reports work.
    changedMetricsSinceTimestamp :: (Core.Maybe Core.Text),
    -- | Inclusive date in YYYY-MM-DD format.
    endDate :: (Core.Maybe Core.Text),
    -- | Inclusive date in YYYY-MM-DD format.
    startDate :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRequest_TimeRange' with the minimum fields required to make a request.
newReportRequest_TimeRange ::
  ReportRequest_TimeRange
newReportRequest_TimeRange =
  ReportRequest_TimeRange
    { changedAttributesSinceTimestamp = Core.Nothing,
      changedMetricsSinceTimestamp = Core.Nothing,
      endDate = Core.Nothing,
      startDate = Core.Nothing
    }

instance Core.FromJSON ReportRequest_TimeRange where
  parseJSON =
    Core.withObject
      "ReportRequest_TimeRange"
      ( \o ->
          ReportRequest_TimeRange
            Core.<$> (o Core..:? "changedAttributesSinceTimestamp")
            Core.<*> (o Core..:? "changedMetricsSinceTimestamp")
            Core.<*> (o Core..:? "endDate")
            Core.<*> (o Core..:? "startDate")
      )

instance Core.ToJSON ReportRequest_TimeRange where
  toJSON ReportRequest_TimeRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("changedAttributesSinceTimestamp" Core..=)
              Core.<$> changedAttributesSinceTimestamp,
            ("changedMetricsSinceTimestamp" Core..=)
              Core.<$> changedMetricsSinceTimestamp,
            ("endDate" Core..=) Core.<$> endDate,
            ("startDate" Core..=) Core.<$> startDate
          ]
      )

-- | A row in a DoubleClick Search report.
--
-- /See:/ 'newReportRow' smart constructor.
newtype ReportRow = ReportRow
  { -- | Indicates the columns that are represented in this row. That is, each key corresponds to a column with a non-empty cell in this row.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportRow' with the minimum fields required to make a request.
newReportRow ::
  -- |  Indicates the columns that are represented in this row. That is, each key corresponds to a column with a non-empty cell in this row. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  ReportRow
newReportRow addtional = ReportRow {addtional = addtional}

instance Core.FromJSON ReportRow where
  parseJSON =
    Core.withObject
      "ReportRow"
      (\o -> ReportRow Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ReportRow where
  toJSON ReportRow {..} = Core.toJSON addtional

-- | A saved column
--
-- /See:/ 'newSavedColumn' smart constructor.
data SavedColumn = SavedColumn
  { -- | Identifies this as a SavedColumn resource. Value: the fixed string doubleclicksearch#savedColumn.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the saved column.
    savedColumnName :: (Core.Maybe Core.Text),
    -- | The type of data this saved column will produce.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SavedColumn' with the minimum fields required to make a request.
newSavedColumn ::
  SavedColumn
newSavedColumn =
  SavedColumn
    { kind = Core.Nothing,
      savedColumnName = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SavedColumn where
  parseJSON =
    Core.withObject
      "SavedColumn"
      ( \o ->
          SavedColumn
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "savedColumnName")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SavedColumn where
  toJSON SavedColumn {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("savedColumnName" Core..=) Core.<$> savedColumnName,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A list of saved columns. Advertisers create saved columns to report on Floodlight activities, Google Analytics goals, or custom KPIs. To request reports with saved columns, you\'ll need the saved column names that are available from this list.
--
-- /See:/ 'newSavedColumnList' smart constructor.
data SavedColumnList = SavedColumnList
  { -- | The saved columns being requested.
    items :: (Core.Maybe [SavedColumn]),
    -- | Identifies this as a SavedColumnList resource. Value: the fixed string doubleclicksearch#savedColumnList.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SavedColumnList' with the minimum fields required to make a request.
newSavedColumnList ::
  SavedColumnList
newSavedColumnList = SavedColumnList {items = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON SavedColumnList where
  parseJSON =
    Core.withObject
      "SavedColumnList"
      ( \o ->
          SavedColumnList
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON SavedColumnList where
  toJSON SavedColumnList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | The request to update availability.
--
-- /See:/ 'newUpdateAvailabilityRequest' smart constructor.
newtype UpdateAvailabilityRequest = UpdateAvailabilityRequest
  { -- | The availabilities being requested.
    availabilities :: (Core.Maybe [Availability])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateAvailabilityRequest' with the minimum fields required to make a request.
newUpdateAvailabilityRequest ::
  UpdateAvailabilityRequest
newUpdateAvailabilityRequest =
  UpdateAvailabilityRequest {availabilities = Core.Nothing}

instance Core.FromJSON UpdateAvailabilityRequest where
  parseJSON =
    Core.withObject
      "UpdateAvailabilityRequest"
      ( \o ->
          UpdateAvailabilityRequest
            Core.<$> (o Core..:? "availabilities" Core..!= Core.mempty)
      )

instance Core.ToJSON UpdateAvailabilityRequest where
  toJSON UpdateAvailabilityRequest {..} =
    Core.object
      ( Core.catMaybes
          [("availabilities" Core..=) Core.<$> availabilities]
      )

-- | The response to a update availability request.
--
-- /See:/ 'newUpdateAvailabilityResponse' smart constructor.
newtype UpdateAvailabilityResponse = UpdateAvailabilityResponse
  { -- | The availabilities being returned.
    availabilities :: (Core.Maybe [Availability])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateAvailabilityResponse' with the minimum fields required to make a request.
newUpdateAvailabilityResponse ::
  UpdateAvailabilityResponse
newUpdateAvailabilityResponse =
  UpdateAvailabilityResponse {availabilities = Core.Nothing}

instance Core.FromJSON UpdateAvailabilityResponse where
  parseJSON =
    Core.withObject
      "UpdateAvailabilityResponse"
      ( \o ->
          UpdateAvailabilityResponse
            Core.<$> (o Core..:? "availabilities" Core..!= Core.mempty)
      )

instance Core.ToJSON UpdateAvailabilityResponse where
  toJSON UpdateAvailabilityResponse {..} =
    Core.object
      ( Core.catMaybes
          [("availabilities" Core..=) Core.<$> availabilities]
      )
