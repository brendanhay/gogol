{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AdExchangeSeller.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdExchangeSeller.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * Accounts
    Accounts (..),
    newAccounts,

    -- * AdClient
    AdClient (..),
    newAdClient,

    -- * AdClients
    AdClients (..),
    newAdClients,

    -- * Alert
    Alert (..),
    newAlert,

    -- * Alerts
    Alerts (..),
    newAlerts,

    -- * CustomChannel
    CustomChannel (..),
    newCustomChannel,

    -- * CustomChannel_TargetingInfo
    CustomChannel_TargetingInfo (..),
    newCustomChannel_TargetingInfo,

    -- * CustomChannels
    CustomChannels (..),
    newCustomChannels,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * PreferredDeal
    PreferredDeal (..),
    newPreferredDeal,

    -- * PreferredDeals
    PreferredDeals (..),
    newPreferredDeals,

    -- * Report
    Report (..),
    newReport,

    -- * Report_HeadersItem
    Report_HeadersItem (..),
    newReport_HeadersItem,

    -- * ReportingMetadataEntry
    ReportingMetadataEntry (..),
    newReportingMetadataEntry,

    -- * SavedReport
    SavedReport (..),
    newSavedReport,

    -- * SavedReports
    SavedReports (..),
    newSavedReports,

    -- * UrlChannel
    UrlChannel (..),
    newUrlChannel,

    -- * UrlChannels
    UrlChannels (..),
    newUrlChannels,
  )
where

import Gogol.AdExchangeSeller.Internal.Sum
import Gogol.Prelude qualified as Core

--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- | Unique identifier of this account.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adexchangeseller#account.
    kind :: Core.Text,
    -- | Name of this account.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount =
  Account
    { id = Core.Nothing,
      kind = "adexchangeseller#account",
      name = Core.Nothing
    }

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      ( \o ->
          Account
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#account")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newAccounts' smart constructor.
data Accounts = Accounts
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The accounts returned in this list response.
    items :: (Core.Maybe [Account]),
    -- | Kind of list this is, in this case adexchangeseller#accounts.
    kind :: Core.Text,
    -- | Continuation token used to page through accounts. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Accounts' with the minimum fields required to make a request.
newAccounts ::
  Accounts
newAccounts =
  Accounts
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adexchangeseller#accounts",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Accounts where
  parseJSON =
    Core.withObject
      "Accounts"
      ( \o ->
          Accounts
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#accounts")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Accounts where
  toJSON Accounts {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newAdClient' smart constructor.
data AdClient = AdClient
  { -- | Whether this ad client is opted in to ARC.
    arcOptIn :: (Core.Maybe Core.Bool),
    -- | Unique identifier of this ad client.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adexchangeseller#adClient.
    kind :: Core.Text,
    -- | This ad client\'s product code, which corresponds to the PRODUCT_CODE report dimension.
    productCode :: (Core.Maybe Core.Text),
    -- | Whether this ad client supports being reported on.
    supportsReporting :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdClient' with the minimum fields required to make a request.
newAdClient ::
  AdClient
newAdClient =
  AdClient
    { arcOptIn = Core.Nothing,
      id = Core.Nothing,
      kind = "adexchangeseller#adClient",
      productCode = Core.Nothing,
      supportsReporting = Core.Nothing
    }

instance Core.FromJSON AdClient where
  parseJSON =
    Core.withObject
      "AdClient"
      ( \o ->
          AdClient
            Core.<$> (o Core..:? "arcOptIn")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#adClient")
            Core.<*> (o Core..:? "productCode")
            Core.<*> (o Core..:? "supportsReporting")
      )

instance Core.ToJSON AdClient where
  toJSON AdClient {..} =
    Core.object
      ( Core.catMaybes
          [ ("arcOptIn" Core..=) Core.<$> arcOptIn,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("productCode" Core..=) Core.<$> productCode,
            ("supportsReporting" Core..=) Core.<$> supportsReporting
          ]
      )

--
-- /See:/ 'newAdClients' smart constructor.
data AdClients = AdClients
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The ad clients returned in this list response.
    items :: (Core.Maybe [AdClient]),
    -- | Kind of list this is, in this case adexchangeseller#adClients.
    kind :: Core.Text,
    -- | Continuation token used to page through ad clients. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdClients' with the minimum fields required to make a request.
newAdClients ::
  AdClients
newAdClients =
  AdClients
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adexchangeseller#adClients",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON AdClients where
  parseJSON =
    Core.withObject
      "AdClients"
      ( \o ->
          AdClients
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#adClients")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON AdClients where
  toJSON AdClients {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newAlert' smart constructor.
data Alert = Alert
  { -- | Unique identifier of this alert. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adexchangeseller#alert.
    kind :: Core.Text,
    -- | The localized alert message.
    message :: (Core.Maybe Core.Text),
    -- | Severity of this alert. Possible values: INFO, WARNING, SEVERE.
    severity :: (Core.Maybe Core.Text),
    -- | Type of this alert. Possible values: SELF/HOLD, MIGRATED/TO/BILLING3, ADDRESS/PIN/VERIFICATION, PHONE/PIN/VERIFICATION, CORPORATE/ENTITY, GRAYLISTED/PUBLISHER, API/HOLD.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Alert' with the minimum fields required to make a request.
newAlert ::
  Alert
newAlert =
  Alert
    { id = Core.Nothing,
      kind = "adexchangeseller#alert",
      message = Core.Nothing,
      severity = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Alert where
  parseJSON =
    Core.withObject
      "Alert"
      ( \o ->
          Alert
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#alert")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Alert where
  toJSON Alert {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newAlerts' smart constructor.
data Alerts = Alerts
  { -- | The alerts returned in this list response.
    items :: (Core.Maybe [Alert]),
    -- | Kind of list this is, in this case adexchangeseller#alerts.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Alerts' with the minimum fields required to make a request.
newAlerts ::
  Alerts
newAlerts =
  Alerts {items = Core.Nothing, kind = "adexchangeseller#alerts"}

instance Core.FromJSON Alerts where
  parseJSON =
    Core.withObject
      "Alerts"
      ( \o ->
          Alerts
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#alerts")
      )

instance Core.ToJSON Alerts where
  toJSON Alerts {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newCustomChannel' smart constructor.
data CustomChannel = CustomChannel
  { -- | Code of this custom channel, not necessarily unique across ad clients.
    code :: (Core.Maybe Core.Text),
    -- | Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adexchangeseller#customChannel.
    kind :: Core.Text,
    -- | Name of this custom channel.
    name :: (Core.Maybe Core.Text),
    -- | The targeting information of this custom channel, if activated.
    targetingInfo :: (Core.Maybe CustomChannel_TargetingInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
newCustomChannel ::
  CustomChannel
newCustomChannel =
  CustomChannel
    { code = Core.Nothing,
      id = Core.Nothing,
      kind = "adexchangeseller#customChannel",
      name = Core.Nothing,
      targetingInfo = Core.Nothing
    }

instance Core.FromJSON CustomChannel where
  parseJSON =
    Core.withObject
      "CustomChannel"
      ( \o ->
          CustomChannel
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#customChannel")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "targetingInfo")
      )

instance Core.ToJSON CustomChannel where
  toJSON CustomChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("targetingInfo" Core..=) Core.<$> targetingInfo
          ]
      )

-- | The targeting information of this custom channel, if activated.
--
-- /See:/ 'newCustomChannel_TargetingInfo' smart constructor.
data CustomChannel_TargetingInfo = CustomChannel_TargetingInfo
  { -- | The name used to describe this channel externally.
    adsAppearOn :: (Core.Maybe Core.Text),
    -- | The external description of the channel.
    description :: (Core.Maybe Core.Text),
    -- | The locations in which ads appear. (Only valid for content and mobile content ads). Acceptable values for content ads are: TOP/LEFT, TOP/CENTER, TOP/RIGHT, MIDDLE/LEFT, MIDDLE/CENTER, MIDDLE/RIGHT, BOTTOM/LEFT, BOTTOM/CENTER, BOTTOM/RIGHT, MULTIPLE/LOCATIONS. Acceptable values for mobile content ads are: TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS.
    location :: (Core.Maybe Core.Text),
    -- | The language of the sites ads will be displayed on.
    siteLanguage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomChannel_TargetingInfo' with the minimum fields required to make a request.
newCustomChannel_TargetingInfo ::
  CustomChannel_TargetingInfo
newCustomChannel_TargetingInfo =
  CustomChannel_TargetingInfo
    { adsAppearOn = Core.Nothing,
      description = Core.Nothing,
      location = Core.Nothing,
      siteLanguage = Core.Nothing
    }

instance Core.FromJSON CustomChannel_TargetingInfo where
  parseJSON =
    Core.withObject
      "CustomChannel_TargetingInfo"
      ( \o ->
          CustomChannel_TargetingInfo
            Core.<$> (o Core..:? "adsAppearOn")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "siteLanguage")
      )

instance Core.ToJSON CustomChannel_TargetingInfo where
  toJSON CustomChannel_TargetingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("adsAppearOn" Core..=) Core.<$> adsAppearOn,
            ("description" Core..=) Core.<$> description,
            ("location" Core..=) Core.<$> location,
            ("siteLanguage" Core..=) Core.<$> siteLanguage
          ]
      )

--
-- /See:/ 'newCustomChannels' smart constructor.
data CustomChannels = CustomChannels
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The custom channels returned in this list response.
    items :: (Core.Maybe [CustomChannel]),
    -- | Kind of list this is, in this case adexchangeseller#customChannels.
    kind :: Core.Text,
    -- | Continuation token used to page through custom channels. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomChannels' with the minimum fields required to make a request.
newCustomChannels ::
  CustomChannels
newCustomChannels =
  CustomChannels
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adexchangeseller#customChannels",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CustomChannels where
  parseJSON =
    Core.withObject
      "CustomChannels"
      ( \o ->
          CustomChannels
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#customChannels")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CustomChannels where
  toJSON CustomChannels {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
  { items :: (Core.Maybe [ReportingMetadataEntry]),
    -- | Kind of list this is, in this case adexchangeseller#metadata.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata ::
  Metadata
newMetadata =
  Metadata
    { items = Core.Nothing,
      kind = "adexchangeseller#metadata"
    }

instance Core.FromJSON Metadata where
  parseJSON =
    Core.withObject
      "Metadata"
      ( \o ->
          Metadata
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#metadata")
      )

instance Core.ToJSON Metadata where
  toJSON Metadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newPreferredDeal' smart constructor.
data PreferredDeal = PreferredDeal
  { -- | The name of the advertiser this deal is for.
    advertiserName :: (Core.Maybe Core.Text),
    -- | The name of the buyer network this deal is for.
    buyerNetworkName :: (Core.Maybe Core.Text),
    -- | The currency code that applies to the fixed_cpm value. If not set then assumed to be USD.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Time when this deal stops being active in seconds since the epoch (GMT). If not set then this deal is valid until manually disabled by the publisher.
    endTime :: (Core.Maybe Core.Word64),
    -- | The fixed price for this preferred deal. In cpm micros of currency according to currencyCode. If set, then this preferred deal is eligible for the fixed price tier of buying (highest priority, pay exactly the configured fixed price).
    fixedCpm :: (Core.Maybe Core.Int64),
    -- | Unique identifier of this preferred deal.
    id :: (Core.Maybe Core.Int64),
    -- | Kind of resource this is, in this case adexchangeseller#preferredDeal.
    kind :: Core.Text,
    -- | Time when this deal becomes active in seconds since the epoch (GMT). If not set then this deal is active immediately upon creation.
    startTime :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PreferredDeal' with the minimum fields required to make a request.
newPreferredDeal ::
  PreferredDeal
newPreferredDeal =
  PreferredDeal
    { advertiserName = Core.Nothing,
      buyerNetworkName = Core.Nothing,
      currencyCode = Core.Nothing,
      endTime = Core.Nothing,
      fixedCpm = Core.Nothing,
      id = Core.Nothing,
      kind = "adexchangeseller#preferredDeal",
      startTime = Core.Nothing
    }

instance Core.FromJSON PreferredDeal where
  parseJSON =
    Core.withObject
      "PreferredDeal"
      ( \o ->
          PreferredDeal
            Core.<$> (o Core..:? "advertiserName")
            Core.<*> (o Core..:? "buyerNetworkName")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "endTime" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "fixedCpm" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#preferredDeal")
            Core.<*> (o Core..:? "startTime" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON PreferredDeal where
  toJSON PreferredDeal {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertiserName" Core..=) Core.<$> advertiserName,
            ("buyerNetworkName" Core..=) Core.<$> buyerNetworkName,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("endTime" Core..=) Core.. Core.AsText Core.<$> endTime,
            ("fixedCpm" Core..=) Core.. Core.AsText Core.<$> fixedCpm,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("startTime" Core..=) Core.. Core.AsText Core.<$> startTime
          ]
      )

--
-- /See:/ 'newPreferredDeals' smart constructor.
data PreferredDeals = PreferredDeals
  { -- | The preferred deals returned in this list response.
    items :: (Core.Maybe [PreferredDeal]),
    -- | Kind of list this is, in this case adexchangeseller#preferredDeals.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PreferredDeals' with the minimum fields required to make a request.
newPreferredDeals ::
  PreferredDeals
newPreferredDeals =
  PreferredDeals
    { items = Core.Nothing,
      kind = "adexchangeseller#preferredDeals"
    }

instance Core.FromJSON PreferredDeals where
  parseJSON =
    Core.withObject
      "PreferredDeals"
      ( \o ->
          PreferredDeals
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#preferredDeals")
      )

instance Core.ToJSON PreferredDeals where
  toJSON PreferredDeals {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newReport' smart constructor.
data Report = Report
  { -- | The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
    averages :: (Core.Maybe [Core.Text]),
    -- | The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request.
    headers :: (Core.Maybe [Report_HeadersItem]),
    -- | Kind this is, in this case adexchangeseller#report.
    kind :: Core.Text,
    -- | The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request. The dimension cells contain strings, and the metric cells contain numbers.
    rows :: (Core.Maybe [[Core.Text]]),
    -- | The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit.
    totalMatchedRows :: (Core.Maybe Core.Int64),
    -- | The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
    totals :: (Core.Maybe [Core.Text]),
    -- | Any warnings associated with generation of the report.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport ::
  Report
newReport =
  Report
    { averages = Core.Nothing,
      headers = Core.Nothing,
      kind = "adexchangeseller#report",
      rows = Core.Nothing,
      totalMatchedRows = Core.Nothing,
      totals = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON Report where
  parseJSON =
    Core.withObject
      "Report"
      ( \o ->
          Report
            Core.<$> (o Core..:? "averages")
            Core.<*> (o Core..:? "headers")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#report")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "totalMatchedRows" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totals")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON Report where
  toJSON Report {..} =
    Core.object
      ( Core.catMaybes
          [ ("averages" Core..=) Core.<$> averages,
            ("headers" Core..=) Core.<$> headers,
            Core.Just ("kind" Core..= kind),
            ("rows" Core..=) Core.<$> rows,
            ("totalMatchedRows" Core..=)
              Core.. Core.AsText
              Core.<$> totalMatchedRows,
            ("totals" Core..=) Core.<$> totals,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

--
-- /See:/ 'newReport_HeadersItem' smart constructor.
data Report_HeadersItem = Report_HeadersItem
  { -- | The currency of this column. Only present if the header type is METRIC_CURRENCY.
    currency :: (Core.Maybe Core.Text),
    -- | The name of the header.
    name :: (Core.Maybe Core.Text),
    -- | The type of the header; one of DIMENSION, METRIC/TALLY, METRIC/RATIO, or METRIC_CURRENCY.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_HeadersItem' with the minimum fields required to make a request.
newReport_HeadersItem ::
  Report_HeadersItem
newReport_HeadersItem =
  Report_HeadersItem
    { currency = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Report_HeadersItem where
  parseJSON =
    Core.withObject
      "Report_HeadersItem"
      ( \o ->
          Report_HeadersItem
            Core.<$> (o Core..:? "currency")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Report_HeadersItem where
  toJSON Report_HeadersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("currency" Core..=) Core.<$> currency,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newReportingMetadataEntry' smart constructor.
data ReportingMetadataEntry = ReportingMetadataEntry
  { -- | For metrics this is a list of dimension IDs which the metric is compatible with, for dimensions it is a list of compatibility groups the dimension belongs to.
    compatibleDimensions :: (Core.Maybe [Core.Text]),
    -- | The names of the metrics the dimension or metric this reporting metadata entry describes is compatible with.
    compatibleMetrics :: (Core.Maybe [Core.Text]),
    -- | Unique identifier of this reporting metadata entry, corresponding to the name of the appropriate dimension or metric.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adexchangeseller#reportingMetadataEntry.
    kind :: Core.Text,
    -- | The names of the dimensions which the dimension or metric this reporting metadata entry describes requires to also be present in order for the report to be valid. Omitting these will not cause an error or warning, but may result in data which cannot be correctly interpreted.
    requiredDimensions :: (Core.Maybe [Core.Text]),
    -- | The names of the metrics which the dimension or metric this reporting metadata entry describes requires to also be present in order for the report to be valid. Omitting these will not cause an error or warning, but may result in data which cannot be correctly interpreted.
    requiredMetrics :: (Core.Maybe [Core.Text]),
    -- | The codes of the projects supported by the dimension or metric this reporting metadata entry describes.
    supportedProducts :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportingMetadataEntry' with the minimum fields required to make a request.
newReportingMetadataEntry ::
  ReportingMetadataEntry
newReportingMetadataEntry =
  ReportingMetadataEntry
    { compatibleDimensions = Core.Nothing,
      compatibleMetrics = Core.Nothing,
      id = Core.Nothing,
      kind = "adexchangeseller#reportingMetadataEntry",
      requiredDimensions = Core.Nothing,
      requiredMetrics = Core.Nothing,
      supportedProducts = Core.Nothing
    }

instance Core.FromJSON ReportingMetadataEntry where
  parseJSON =
    Core.withObject
      "ReportingMetadataEntry"
      ( \o ->
          ReportingMetadataEntry
            Core.<$> (o Core..:? "compatibleDimensions")
            Core.<*> (o Core..:? "compatibleMetrics")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o
                         Core..:? "kind"
                         Core..!= "adexchangeseller#reportingMetadataEntry"
                     )
            Core.<*> (o Core..:? "requiredDimensions")
            Core.<*> (o Core..:? "requiredMetrics")
            Core.<*> (o Core..:? "supportedProducts")
      )

instance Core.ToJSON ReportingMetadataEntry where
  toJSON ReportingMetadataEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("compatibleDimensions" Core..=) Core.<$> compatibleDimensions,
            ("compatibleMetrics" Core..=) Core.<$> compatibleMetrics,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("requiredDimensions" Core..=) Core.<$> requiredDimensions,
            ("requiredMetrics" Core..=) Core.<$> requiredMetrics,
            ("supportedProducts" Core..=) Core.<$> supportedProducts
          ]
      )

--
-- /See:/ 'newSavedReport' smart constructor.
data SavedReport = SavedReport
  { -- | Unique identifier of this saved report.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adexchangeseller#savedReport.
    kind :: Core.Text,
    -- | This saved report\'s name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SavedReport' with the minimum fields required to make a request.
newSavedReport ::
  SavedReport
newSavedReport =
  SavedReport
    { id = Core.Nothing,
      kind = "adexchangeseller#savedReport",
      name = Core.Nothing
    }

instance Core.FromJSON SavedReport where
  parseJSON =
    Core.withObject
      "SavedReport"
      ( \o ->
          SavedReport
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#savedReport")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON SavedReport where
  toJSON SavedReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newSavedReports' smart constructor.
data SavedReports = SavedReports
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The saved reports returned in this list response.
    items :: (Core.Maybe [SavedReport]),
    -- | Kind of list this is, in this case adexchangeseller#savedReports.
    kind :: Core.Text,
    -- | Continuation token used to page through saved reports. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SavedReports' with the minimum fields required to make a request.
newSavedReports ::
  SavedReports
newSavedReports =
  SavedReports
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adexchangeseller#savedReports",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON SavedReports where
  parseJSON =
    Core.withObject
      "SavedReports"
      ( \o ->
          SavedReports
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#savedReports")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON SavedReports where
  toJSON SavedReports {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newUrlChannel' smart constructor.
data UrlChannel = UrlChannel
  { -- | Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adexchangeseller#urlChannel.
    kind :: Core.Text,
    -- | URL Pattern of this URL channel. Does not include \"http:\/\/\" or \"https:\/\/\". Example: www.example.com\/home
    urlPattern :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlChannel' with the minimum fields required to make a request.
newUrlChannel ::
  UrlChannel
newUrlChannel =
  UrlChannel
    { id = Core.Nothing,
      kind = "adexchangeseller#urlChannel",
      urlPattern = Core.Nothing
    }

instance Core.FromJSON UrlChannel where
  parseJSON =
    Core.withObject
      "UrlChannel"
      ( \o ->
          UrlChannel
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#urlChannel")
            Core.<*> (o Core..:? "urlPattern")
      )

instance Core.ToJSON UrlChannel where
  toJSON UrlChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("urlPattern" Core..=) Core.<$> urlPattern
          ]
      )

--
-- /See:/ 'newUrlChannels' smart constructor.
data UrlChannels = UrlChannels
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The URL channels returned in this list response.
    items :: (Core.Maybe [UrlChannel]),
    -- | Kind of list this is, in this case adexchangeseller#urlChannels.
    kind :: Core.Text,
    -- | Continuation token used to page through URL channels. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlChannels' with the minimum fields required to make a request.
newUrlChannels ::
  UrlChannels
newUrlChannels =
  UrlChannels
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adexchangeseller#urlChannels",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON UrlChannels where
  parseJSON =
    Core.withObject
      "UrlChannels"
      ( \o ->
          UrlChannels
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "adexchangeseller#urlChannels")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON UrlChannels where
  toJSON UrlChannels {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )
