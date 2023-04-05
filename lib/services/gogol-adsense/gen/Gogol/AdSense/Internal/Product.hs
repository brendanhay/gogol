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
-- Module      : Gogol.AdSense.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdSense.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * AdBlockingRecoveryTag
    AdBlockingRecoveryTag (..),
    newAdBlockingRecoveryTag,

    -- * AdClient
    AdClient (..),
    newAdClient,

    -- * AdClientAdCode
    AdClientAdCode (..),
    newAdClientAdCode,

    -- * AdUnit
    AdUnit (..),
    newAdUnit,

    -- * AdUnitAdCode
    AdUnitAdCode (..),
    newAdUnitAdCode,

    -- * Alert
    Alert (..),
    newAlert,

    -- * Cell
    Cell (..),
    newCell,

    -- * ContentAdsSettings
    ContentAdsSettings (..),
    newContentAdsSettings,

    -- * CustomChannel
    CustomChannel (..),
    newCustomChannel,

    -- * Date
    Date (..),
    newDate,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Header
    Header (..),
    newHeader,

    -- * HttpBody
    HttpBody (..),
    newHttpBody,

    -- * HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- * ListAccountsResponse
    ListAccountsResponse (..),
    newListAccountsResponse,

    -- * ListAdClientsResponse
    ListAdClientsResponse (..),
    newListAdClientsResponse,

    -- * ListAdUnitsResponse
    ListAdUnitsResponse (..),
    newListAdUnitsResponse,

    -- * ListAlertsResponse
    ListAlertsResponse (..),
    newListAlertsResponse,

    -- * ListChildAccountsResponse
    ListChildAccountsResponse (..),
    newListChildAccountsResponse,

    -- * ListCustomChannelsResponse
    ListCustomChannelsResponse (..),
    newListCustomChannelsResponse,

    -- * ListLinkedAdUnitsResponse
    ListLinkedAdUnitsResponse (..),
    newListLinkedAdUnitsResponse,

    -- * ListLinkedCustomChannelsResponse
    ListLinkedCustomChannelsResponse (..),
    newListLinkedCustomChannelsResponse,

    -- * ListPaymentsResponse
    ListPaymentsResponse (..),
    newListPaymentsResponse,

    -- * ListSavedReportsResponse
    ListSavedReportsResponse (..),
    newListSavedReportsResponse,

    -- * ListSitesResponse
    ListSitesResponse (..),
    newListSitesResponse,

    -- * ListUrlChannelsResponse
    ListUrlChannelsResponse (..),
    newListUrlChannelsResponse,

    -- * Payment
    Payment (..),
    newPayment,

    -- * ReportResult
    ReportResult (..),
    newReportResult,

    -- * Row
    Row (..),
    newRow,

    -- * SavedReport
    SavedReport (..),
    newSavedReport,

    -- * Site
    Site (..),
    newSite,

    -- * TimeZone
    TimeZone (..),
    newTimeZone,

    -- * UrlChannel
    UrlChannel (..),
    newUrlChannel,
  )
where

import Gogol.AdSense.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Representation of an account.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- | Output only. Creation time of the account.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Display name of this account.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of the account. Format: accounts\/pub-[0-9]+
    name :: (Core.Maybe Core.Text),
    -- | Output only. Outstanding tasks that need to be completed as part of the sign-up process for a new account. e.g. \"billing-profile-creation\", \"phone-pin-verification\".
    pendingTasks :: (Core.Maybe [Core.Text]),
    -- | Output only. Whether this account is premium.
    premium :: (Core.Maybe Core.Bool),
    -- | Output only. State of the account.
    state :: (Core.Maybe Account_State),
    -- | The account time zone, as used by reporting. For more information, see <https://support.google.com/adsense/answer/9830725 changing the time zone of your reports>.
    timeZone :: (Core.Maybe TimeZone)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount =
  Account
    { createTime = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      pendingTasks = Core.Nothing,
      premium = Core.Nothing,
      state = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      ( \o ->
          Account
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pendingTasks")
            Core.<*> (o Core..:? "premium")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("pendingTasks" Core..=) Core.<$> pendingTasks,
            ("premium" Core..=) Core.<$> premium,
            ("state" Core..=) Core.<$> state,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

-- | Representation of an ad blocking recovery tag. See https:\/\/support.google.com\/adsense\/answer\/11575177.
--
-- /See:/ 'newAdBlockingRecoveryTag' smart constructor.
data AdBlockingRecoveryTag = AdBlockingRecoveryTag
  { -- | Error protection code that can be used in conjunction with the tag. It\'ll display a message to users if an <https://support.google.com/adsense/answer/11575480 ad blocking extension blocks their access to your site>.
    errorProtectionCode :: (Core.Maybe Core.Text),
    -- | The ad blocking recovery tag. Note that the message generated by the tag can be blocked by an ad blocking extension. If this is not your desired outcome, then you\'ll need to use it in conjunction with the error protection code.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdBlockingRecoveryTag' with the minimum fields required to make a request.
newAdBlockingRecoveryTag ::
  AdBlockingRecoveryTag
newAdBlockingRecoveryTag =
  AdBlockingRecoveryTag {errorProtectionCode = Core.Nothing, tag = Core.Nothing}

instance Core.FromJSON AdBlockingRecoveryTag where
  parseJSON =
    Core.withObject
      "AdBlockingRecoveryTag"
      ( \o ->
          AdBlockingRecoveryTag
            Core.<$> (o Core..:? "errorProtectionCode")
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON AdBlockingRecoveryTag where
  toJSON AdBlockingRecoveryTag {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorProtectionCode" Core..=)
              Core.<$> errorProtectionCode,
            ("tag" Core..=) Core.<$> tag
          ]
      )

-- | Representation of an ad client. An ad client represents a user\'s subscription with a specific AdSense product.
--
-- /See:/ 'newAdClient' smart constructor.
data AdClient = AdClient
  { -- | Output only. Resource name of the ad client. Format: accounts\/{account}\/adclients\/{adclient}
    name :: (Core.Maybe Core.Text),
    -- | Output only. Reporting product code of the ad client. For example, \"AFC\" for AdSense for Content. Corresponds to the @PRODUCT_CODE@ dimension, and present only if the ad client supports reporting.
    productCode :: (Core.Maybe Core.Text),
    -- | Output only. Unique ID of the ad client as used in the @AD_CLIENT_ID@ reporting dimension. Present only if the ad client supports reporting.
    reportingDimensionId :: (Core.Maybe Core.Text),
    -- | Output only. State of the ad client.
    state :: (Core.Maybe AdClient_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdClient' with the minimum fields required to make a request.
newAdClient ::
  AdClient
newAdClient =
  AdClient
    { name = Core.Nothing,
      productCode = Core.Nothing,
      reportingDimensionId = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON AdClient where
  parseJSON =
    Core.withObject
      "AdClient"
      ( \o ->
          AdClient
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "productCode")
            Core.<*> (o Core..:? "reportingDimensionId")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON AdClient where
  toJSON AdClient {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("productCode" Core..=) Core.<$> productCode,
            ("reportingDimensionId" Core..=)
              Core.<$> reportingDimensionId,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Representation of the AdSense code for a given ad client. For more information, see <https://support.google.com/adsense/answer/9274634 About the AdSense code>.
--
-- /See:/ 'newAdClientAdCode' smart constructor.
data AdClientAdCode = AdClientAdCode
  { -- | Output only. The AdSense code snippet to add to the head of an HTML page.
    adCode :: (Core.Maybe Core.Text),
    -- | Output only. The AdSense code snippet to add to the body of an AMP page.
    ampBody :: (Core.Maybe Core.Text),
    -- | Output only. The AdSense code snippet to add to the head of an AMP page.
    ampHead :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdClientAdCode' with the minimum fields required to make a request.
newAdClientAdCode ::
  AdClientAdCode
newAdClientAdCode =
  AdClientAdCode
    { adCode = Core.Nothing,
      ampBody = Core.Nothing,
      ampHead = Core.Nothing
    }

instance Core.FromJSON AdClientAdCode where
  parseJSON =
    Core.withObject
      "AdClientAdCode"
      ( \o ->
          AdClientAdCode
            Core.<$> (o Core..:? "adCode")
            Core.<*> (o Core..:? "ampBody")
            Core.<*> (o Core..:? "ampHead")
      )

instance Core.ToJSON AdClientAdCode where
  toJSON AdClientAdCode {..} =
    Core.object
      ( Core.catMaybes
          [ ("adCode" Core..=) Core.<$> adCode,
            ("ampBody" Core..=) Core.<$> ampBody,
            ("ampHead" Core..=) Core.<$> ampHead
          ]
      )

-- | Representation of an ad unit. An ad unit represents a saved ad unit with a specific set of ad settings that have been customized within an account.
--
-- /See:/ 'newAdUnit' smart constructor.
data AdUnit = AdUnit
  { -- | Required. Settings specific to content ads (AFC).
    contentAdsSettings :: (Core.Maybe ContentAdsSettings),
    -- | Required. Display name of the ad unit, as provided when the ad unit was created.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of the ad unit. Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit}
    name :: (Core.Maybe Core.Text),
    -- | Output only. Unique ID of the ad unit as used in the @AD_UNIT_ID@ reporting dimension.
    reportingDimensionId :: (Core.Maybe Core.Text),
    -- | State of the ad unit.
    state :: (Core.Maybe AdUnit_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdUnit' with the minimum fields required to make a request.
newAdUnit ::
  AdUnit
newAdUnit =
  AdUnit
    { contentAdsSettings = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      reportingDimensionId = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON AdUnit where
  parseJSON =
    Core.withObject
      "AdUnit"
      ( \o ->
          AdUnit
            Core.<$> (o Core..:? "contentAdsSettings")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "reportingDimensionId")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON AdUnit where
  toJSON AdUnit {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentAdsSettings" Core..=)
              Core.<$> contentAdsSettings,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("reportingDimensionId" Core..=)
              Core.<$> reportingDimensionId,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Representation of the ad unit code for a given ad unit. For more information, see <https://support.google.com/adsense/answer/9274634 About the AdSense code> and <https://support.google.com/adsense/answer/9190028 Where to place the ad code in your HTML>.
--
-- /See:/ 'newAdUnitAdCode' smart constructor.
newtype AdUnitAdCode = AdUnitAdCode
  { -- | Output only. The code snippet to add to the body of an HTML page.
    adCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdUnitAdCode' with the minimum fields required to make a request.
newAdUnitAdCode ::
  AdUnitAdCode
newAdUnitAdCode = AdUnitAdCode {adCode = Core.Nothing}

instance Core.FromJSON AdUnitAdCode where
  parseJSON =
    Core.withObject
      "AdUnitAdCode"
      (\o -> AdUnitAdCode Core.<$> (o Core..:? "adCode"))

instance Core.ToJSON AdUnitAdCode where
  toJSON AdUnitAdCode {..} =
    Core.object
      (Core.catMaybes [("adCode" Core..=) Core.<$> adCode])

-- | Representation of an alert.
--
-- /See:/ 'newAlert' smart constructor.
data Alert = Alert
  { -- | Output only. The localized alert message. This may contain HTML markup, such as phrase elements or links.
    message :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of the alert. Format: accounts\/{account}\/alerts\/{alert}
    name :: (Core.Maybe Core.Text),
    -- | Output only. Severity of this alert.
    severity :: (Core.Maybe Alert_Severity),
    -- | Output only. Type of alert. This identifies the broad type of this alert, and provides a stable machine-readable identifier that will not be translated. For example, \"payment-hold\".
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Alert' with the minimum fields required to make a request.
newAlert ::
  Alert
newAlert =
  Alert
    { message = Core.Nothing,
      name = Core.Nothing,
      severity = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Alert where
  parseJSON =
    Core.withObject
      "Alert"
      ( \o ->
          Alert
            Core.<$> (o Core..:? "message")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Alert where
  toJSON Alert {..} =
    Core.object
      ( Core.catMaybes
          [ ("message" Core..=) Core.<$> message,
            ("name" Core..=) Core.<$> name,
            ("severity" Core..=) Core.<$> severity,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Cell representation.
--
-- /See:/ 'newCell' smart constructor.
newtype Cell = Cell
  { -- | Value in the cell. The dimension cells contain strings, and the metric cells contain numbers.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cell' with the minimum fields required to make a request.
newCell ::
  Cell
newCell = Cell {value = Core.Nothing}

instance Core.FromJSON Cell where
  parseJSON =
    Core.withObject
      "Cell"
      (\o -> Cell Core.<$> (o Core..:? "value"))

instance Core.ToJSON Cell where
  toJSON Cell {..} =
    Core.object
      (Core.catMaybes [("value" Core..=) Core.<$> value])

-- | Settings specific to content ads (AFC).
--
-- /See:/ 'newContentAdsSettings' smart constructor.
data ContentAdsSettings = ContentAdsSettings
  { -- | Required. Size of the ad unit. e.g. \"728x90\", \"1x3\" (for responsive ad units).
    size :: (Core.Maybe Core.Text),
    -- | Required. Type of the ad unit.
    type' :: (Core.Maybe ContentAdsSettings_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAdsSettings' with the minimum fields required to make a request.
newContentAdsSettings ::
  ContentAdsSettings
newContentAdsSettings =
  ContentAdsSettings {size = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON ContentAdsSettings where
  parseJSON =
    Core.withObject
      "ContentAdsSettings"
      ( \o ->
          ContentAdsSettings
            Core.<$> (o Core..:? "size") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ContentAdsSettings where
  toJSON ContentAdsSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("size" Core..=) Core.<$> size,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Representation of a custom channel.
--
-- /See:/ 'newCustomChannel' smart constructor.
data CustomChannel = CustomChannel
  { -- | Whether the custom channel is active and collecting data. See https:\/\/support.google.com\/adsense\/answer\/10077192.
    active :: (Core.Maybe Core.Bool),
    -- | Required. Display name of the custom channel.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of the custom channel. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
    name :: (Core.Maybe Core.Text),
    -- | Output only. Unique ID of the custom channel as used in the @CUSTOM_CHANNEL_ID@ reporting dimension.
    reportingDimensionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
newCustomChannel ::
  CustomChannel
newCustomChannel =
  CustomChannel
    { active = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      reportingDimensionId = Core.Nothing
    }

instance Core.FromJSON CustomChannel where
  parseJSON =
    Core.withObject
      "CustomChannel"
      ( \o ->
          CustomChannel
            Core.<$> (o Core..:? "active")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "reportingDimensionId")
      )

instance Core.ToJSON CustomChannel where
  toJSON CustomChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("active" Core..=) Core.<$> active,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("reportingDimensionId" Core..=)
              Core.<$> reportingDimensionId
          ]
      )

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | The header information of the columns requested in the report.
--
-- /See:/ 'newHeader' smart constructor.
data Header = Header
  { -- | The <https://en.wikipedia.org/wiki/ISO_4217 ISO-4217 currency code> of this column. Only present if the header type is METRIC_CURRENCY.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Required. Name of the header.
    name :: (Core.Maybe Core.Text),
    -- | Required. Type of the header.
    type' :: (Core.Maybe Header_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Header' with the minimum fields required to make a request.
newHeader ::
  Header
newHeader =
  Header
    { currencyCode = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Header where
  parseJSON =
    Core.withObject
      "Header"
      ( \o ->
          Header
            Core.<$> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Header where
  toJSON Header {..} =
    Core.object
      ( Core.catMaybes
          [ ("currencyCode" Core..=) Core.<$> currencyCode,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Message that represents an arbitrary HTTP body. It should only be used for payload formats that can\'t be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { \/\/ A unique request id. string request/id = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody http/body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.
--
-- /See:/ 'newHttpBody' smart constructor.
data HttpBody = HttpBody
  { -- | The HTTP Content-Type header value specifying the content type of the body.
    contentType :: (Core.Maybe Core.Text),
    -- | The HTTP request\/response body as raw binary.
    data' :: (Core.Maybe Core.Base64),
    -- | Application specific response metadata. Must be set in the first response for streaming APIs.
    extensions :: (Core.Maybe [HttpBody_ExtensionsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody' with the minimum fields required to make a request.
newHttpBody ::
  HttpBody
newHttpBody =
  HttpBody
    { contentType = Core.Nothing,
      data' = Core.Nothing,
      extensions = Core.Nothing
    }

instance Core.FromJSON HttpBody where
  parseJSON =
    Core.withObject
      "HttpBody"
      ( \o ->
          HttpBody
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "extensions")
      )

instance Core.ToJSON HttpBody where
  toJSON HttpBody {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("data" Core..=) Core.<$> data',
            ("extensions" Core..=) Core.<$> extensions
          ]
      )

--
-- /See:/ 'newHttpBody_ExtensionsItem' smart constructor.
newtype HttpBody_ExtensionsItem = HttpBody_ExtensionsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody_ExtensionsItem' with the minimum fields required to make a request.
newHttpBody_ExtensionsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  HttpBody_ExtensionsItem
newHttpBody_ExtensionsItem additional =
  HttpBody_ExtensionsItem {additional = additional}

instance Core.FromJSON HttpBody_ExtensionsItem where
  parseJSON =
    Core.withObject
      "HttpBody_ExtensionsItem"
      ( \o ->
          HttpBody_ExtensionsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HttpBody_ExtensionsItem where
  toJSON HttpBody_ExtensionsItem {..} =
    Core.toJSON additional

-- | Response definition for the account list rpc.
--
-- /See:/ 'newListAccountsResponse' smart constructor.
data ListAccountsResponse = ListAccountsResponse
  { -- | The accounts returned in this list response.
    accounts :: (Core.Maybe [Account]),
    -- | Continuation token used to page through accounts. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccountsResponse' with the minimum fields required to make a request.
newListAccountsResponse ::
  ListAccountsResponse
newListAccountsResponse =
  ListAccountsResponse {accounts = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAccountsResponse where
  parseJSON =
    Core.withObject
      "ListAccountsResponse"
      ( \o ->
          ListAccountsResponse
            Core.<$> (o Core..:? "accounts")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAccountsResponse where
  toJSON ListAccountsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accounts" Core..=) Core.<$> accounts,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response definition for the ad client list rpc.
--
-- /See:/ 'newListAdClientsResponse' smart constructor.
data ListAdClientsResponse = ListAdClientsResponse
  { -- | The ad clients returned in this list response.
    adClients :: (Core.Maybe [AdClient]),
    -- | Continuation token used to page through ad clients. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAdClientsResponse' with the minimum fields required to make a request.
newListAdClientsResponse ::
  ListAdClientsResponse
newListAdClientsResponse =
  ListAdClientsResponse {adClients = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAdClientsResponse where
  parseJSON =
    Core.withObject
      "ListAdClientsResponse"
      ( \o ->
          ListAdClientsResponse
            Core.<$> (o Core..:? "adClients")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAdClientsResponse where
  toJSON ListAdClientsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("adClients" Core..=) Core.<$> adClients,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response definition for the adunit list rpc.
--
-- /See:/ 'newListAdUnitsResponse' smart constructor.
data ListAdUnitsResponse = ListAdUnitsResponse
  { -- | The ad units returned in the list response.
    adUnits :: (Core.Maybe [AdUnit]),
    -- | Continuation token used to page through ad units. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAdUnitsResponse' with the minimum fields required to make a request.
newListAdUnitsResponse ::
  ListAdUnitsResponse
newListAdUnitsResponse =
  ListAdUnitsResponse {adUnits = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAdUnitsResponse where
  parseJSON =
    Core.withObject
      "ListAdUnitsResponse"
      ( \o ->
          ListAdUnitsResponse
            Core.<$> (o Core..:? "adUnits")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAdUnitsResponse where
  toJSON ListAdUnitsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("adUnits" Core..=) Core.<$> adUnits,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response definition for the alerts list rpc.
--
-- /See:/ 'newListAlertsResponse' smart constructor.
newtype ListAlertsResponse = ListAlertsResponse
  { -- | The alerts returned in this list response.
    alerts :: (Core.Maybe [Alert])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAlertsResponse' with the minimum fields required to make a request.
newListAlertsResponse ::
  ListAlertsResponse
newListAlertsResponse = ListAlertsResponse {alerts = Core.Nothing}

instance Core.FromJSON ListAlertsResponse where
  parseJSON =
    Core.withObject
      "ListAlertsResponse"
      ( \o ->
          ListAlertsResponse Core.<$> (o Core..:? "alerts")
      )

instance Core.ToJSON ListAlertsResponse where
  toJSON ListAlertsResponse {..} =
    Core.object
      (Core.catMaybes [("alerts" Core..=) Core.<$> alerts])

-- | Response definition for the child account list rpc.
--
-- /See:/ 'newListChildAccountsResponse' smart constructor.
data ListChildAccountsResponse = ListChildAccountsResponse
  { -- | The accounts returned in this list response.
    accounts :: (Core.Maybe [Account]),
    -- | Continuation token used to page through accounts. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListChildAccountsResponse' with the minimum fields required to make a request.
newListChildAccountsResponse ::
  ListChildAccountsResponse
newListChildAccountsResponse =
  ListChildAccountsResponse
    { accounts = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListChildAccountsResponse where
  parseJSON =
    Core.withObject
      "ListChildAccountsResponse"
      ( \o ->
          ListChildAccountsResponse
            Core.<$> (o Core..:? "accounts")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListChildAccountsResponse where
  toJSON ListChildAccountsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accounts" Core..=) Core.<$> accounts,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response definition for the custom channel list rpc.
--
-- /See:/ 'newListCustomChannelsResponse' smart constructor.
data ListCustomChannelsResponse = ListCustomChannelsResponse
  { -- | The custom channels returned in this list response.
    customChannels :: (Core.Maybe [CustomChannel]),
    -- | Continuation token used to page through alerts. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCustomChannelsResponse' with the minimum fields required to make a request.
newListCustomChannelsResponse ::
  ListCustomChannelsResponse
newListCustomChannelsResponse =
  ListCustomChannelsResponse
    { customChannels = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListCustomChannelsResponse where
  parseJSON =
    Core.withObject
      "ListCustomChannelsResponse"
      ( \o ->
          ListCustomChannelsResponse
            Core.<$> (o Core..:? "customChannels")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListCustomChannelsResponse where
  toJSON ListCustomChannelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("customChannels" Core..=) Core.<$> customChannels,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response definition for the ad units linked to a custom channel list rpc.
--
-- /See:/ 'newListLinkedAdUnitsResponse' smart constructor.
data ListLinkedAdUnitsResponse = ListLinkedAdUnitsResponse
  { -- | The ad units returned in the list response.
    adUnits :: (Core.Maybe [AdUnit]),
    -- | Continuation token used to page through ad units. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLinkedAdUnitsResponse' with the minimum fields required to make a request.
newListLinkedAdUnitsResponse ::
  ListLinkedAdUnitsResponse
newListLinkedAdUnitsResponse =
  ListLinkedAdUnitsResponse
    { adUnits = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListLinkedAdUnitsResponse where
  parseJSON =
    Core.withObject
      "ListLinkedAdUnitsResponse"
      ( \o ->
          ListLinkedAdUnitsResponse
            Core.<$> (o Core..:? "adUnits")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLinkedAdUnitsResponse where
  toJSON ListLinkedAdUnitsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("adUnits" Core..=) Core.<$> adUnits,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response definition for the custom channels linked to an adunit list rpc.
--
-- /See:/ 'newListLinkedCustomChannelsResponse' smart constructor.
data ListLinkedCustomChannelsResponse = ListLinkedCustomChannelsResponse
  { -- | The custom channels returned in this list response.
    customChannels :: (Core.Maybe [CustomChannel]),
    -- | Continuation token used to page through alerts. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLinkedCustomChannelsResponse' with the minimum fields required to make a request.
newListLinkedCustomChannelsResponse ::
  ListLinkedCustomChannelsResponse
newListLinkedCustomChannelsResponse =
  ListLinkedCustomChannelsResponse
    { customChannels = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListLinkedCustomChannelsResponse
  where
  parseJSON =
    Core.withObject
      "ListLinkedCustomChannelsResponse"
      ( \o ->
          ListLinkedCustomChannelsResponse
            Core.<$> (o Core..:? "customChannels")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLinkedCustomChannelsResponse where
  toJSON ListLinkedCustomChannelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("customChannels" Core..=) Core.<$> customChannels,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response definition for the payments list rpc.
--
-- /See:/ 'newListPaymentsResponse' smart constructor.
newtype ListPaymentsResponse = ListPaymentsResponse
  { -- | The payments returned in this list response.
    payments :: (Core.Maybe [Payment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPaymentsResponse' with the minimum fields required to make a request.
newListPaymentsResponse ::
  ListPaymentsResponse
newListPaymentsResponse = ListPaymentsResponse {payments = Core.Nothing}

instance Core.FromJSON ListPaymentsResponse where
  parseJSON =
    Core.withObject
      "ListPaymentsResponse"
      ( \o ->
          ListPaymentsResponse
            Core.<$> (o Core..:? "payments")
      )

instance Core.ToJSON ListPaymentsResponse where
  toJSON ListPaymentsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("payments" Core..=) Core.<$> payments]
      )

-- | Response definition for the saved reports list rpc.
--
-- /See:/ 'newListSavedReportsResponse' smart constructor.
data ListSavedReportsResponse = ListSavedReportsResponse
  { -- | Continuation token used to page through reports. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The reports returned in this list response.
    savedReports :: (Core.Maybe [SavedReport])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSavedReportsResponse' with the minimum fields required to make a request.
newListSavedReportsResponse ::
  ListSavedReportsResponse
newListSavedReportsResponse =
  ListSavedReportsResponse
    { nextPageToken = Core.Nothing,
      savedReports = Core.Nothing
    }

instance Core.FromJSON ListSavedReportsResponse where
  parseJSON =
    Core.withObject
      "ListSavedReportsResponse"
      ( \o ->
          ListSavedReportsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "savedReports")
      )

instance Core.ToJSON ListSavedReportsResponse where
  toJSON ListSavedReportsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("savedReports" Core..=) Core.<$> savedReports
          ]
      )

-- | Response definition for the sites list rpc.
--
-- /See:/ 'newListSitesResponse' smart constructor.
data ListSitesResponse = ListSitesResponse
  { -- | Continuation token used to page through sites. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The sites returned in this list response.
    sites :: (Core.Maybe [Site])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSitesResponse' with the minimum fields required to make a request.
newListSitesResponse ::
  ListSitesResponse
newListSitesResponse =
  ListSitesResponse {nextPageToken = Core.Nothing, sites = Core.Nothing}

instance Core.FromJSON ListSitesResponse where
  parseJSON =
    Core.withObject
      "ListSitesResponse"
      ( \o ->
          ListSitesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sites")
      )

instance Core.ToJSON ListSitesResponse where
  toJSON ListSitesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sites" Core..=) Core.<$> sites
          ]
      )

-- | Response definition for the url channels list rpc.
--
-- /See:/ 'newListUrlChannelsResponse' smart constructor.
data ListUrlChannelsResponse = ListUrlChannelsResponse
  { -- | Continuation token used to page through url channels. To retrieve the next page of the results, set the next request\'s \"page_token\" value to this.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The url channels returned in this list response.
    urlChannels :: (Core.Maybe [UrlChannel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUrlChannelsResponse' with the minimum fields required to make a request.
newListUrlChannelsResponse ::
  ListUrlChannelsResponse
newListUrlChannelsResponse =
  ListUrlChannelsResponse
    { nextPageToken = Core.Nothing,
      urlChannels = Core.Nothing
    }

instance Core.FromJSON ListUrlChannelsResponse where
  parseJSON =
    Core.withObject
      "ListUrlChannelsResponse"
      ( \o ->
          ListUrlChannelsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "urlChannels")
      )

instance Core.ToJSON ListUrlChannelsResponse where
  toJSON ListUrlChannelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("urlChannels" Core..=) Core.<$> urlChannels
          ]
      )

-- | Representation of an unpaid or paid payment. See <https://support.google.com/adsense/answer/7164703 Payment timelines for AdSense> for more information about payments and the <https://support.google.com/adsense/answer/11622510 YouTube homepage and payments account> article for information about dedicated payments accounts for YouTube.
--
-- /See:/ 'newPayment' smart constructor.
data Payment = Payment
  { -- | Output only. The amount of unpaid or paid earnings, as a formatted string, including the currency. E.g. \"¥1,235 JPY\", \"$1,234.57\", \"£87.65\".
    amount :: (Core.Maybe Core.Text),
    -- | Output only. For paid earnings, the date that the payment was credited. For unpaid earnings, this field is empty. Payment dates are always returned in the billing timezone (America\/Los_Angeles).
    date :: (Core.Maybe Date),
    -- | Output only. Resource name of the payment. Format: - accounts\/{account}\/payments\/unpaid for unpaid (current) AdSense earnings. - accounts\/{account}\/payments\/youtube-unpaid for unpaid (current) YouTube earnings. - accounts\/{account}\/payments\/yyyy-MM-dd for paid AdSense earnings. - accounts\/{account}\/payments\/youtube-yyyy-MM-dd for paid YouTube earnings.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Payment' with the minimum fields required to make a request.
newPayment ::
  Payment
newPayment =
  Payment {amount = Core.Nothing, date = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Payment where
  parseJSON =
    Core.withObject
      "Payment"
      ( \o ->
          Payment
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Payment where
  toJSON Payment {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("date" Core..=) Core.<$> date,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Result of a generated report.
--
-- /See:/ 'newReportResult' smart constructor.
data ReportResult = ReportResult
  { -- | The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
    averages :: (Core.Maybe Row),
    -- | Required. End date of the range (inclusive).
    endDate :: (Core.Maybe Date),
    -- | The header information; one for each dimension in the request, followed by one for each metric in the request.
    headers :: (Core.Maybe [Header]),
    -- | The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request.
    rows :: (Core.Maybe [Row]),
    -- | Required. Start date of the range (inclusive).
    startDate :: (Core.Maybe Date),
    -- | The total number of rows matched by the report request.
    totalMatchedRows :: (Core.Maybe Core.Int64),
    -- | The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
    totals :: (Core.Maybe Row),
    -- | Any warnings associated with generation of the report. These warnings are always returned in English.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportResult' with the minimum fields required to make a request.
newReportResult ::
  ReportResult
newReportResult =
  ReportResult
    { averages = Core.Nothing,
      endDate = Core.Nothing,
      headers = Core.Nothing,
      rows = Core.Nothing,
      startDate = Core.Nothing,
      totalMatchedRows = Core.Nothing,
      totals = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON ReportResult where
  parseJSON =
    Core.withObject
      "ReportResult"
      ( \o ->
          ReportResult
            Core.<$> (o Core..:? "averages")
            Core.<*> (o Core..:? "endDate")
            Core.<*> (o Core..:? "headers")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "startDate")
            Core.<*> ( o Core..:? "totalMatchedRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "totals")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON ReportResult where
  toJSON ReportResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("averages" Core..=) Core.<$> averages,
            ("endDate" Core..=) Core.<$> endDate,
            ("headers" Core..=) Core.<$> headers,
            ("rows" Core..=) Core.<$> rows,
            ("startDate" Core..=) Core.<$> startDate,
            ("totalMatchedRows" Core..=) Core.. Core.AsText
              Core.<$> totalMatchedRows,
            ("totals" Core..=) Core.<$> totals,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Row representation.
--
-- /See:/ 'newRow' smart constructor.
newtype Row = Row
  { -- | Cells in the row.
    cells :: (Core.Maybe [Cell])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Row' with the minimum fields required to make a request.
newRow ::
  Row
newRow = Row {cells = Core.Nothing}

instance Core.FromJSON Row where
  parseJSON =
    Core.withObject
      "Row"
      (\o -> Row Core.<$> (o Core..:? "cells"))

instance Core.ToJSON Row where
  toJSON Row {..} =
    Core.object
      (Core.catMaybes [("cells" Core..=) Core.<$> cells])

-- | Representation of a saved report.
--
-- /See:/ 'newSavedReport' smart constructor.
data SavedReport = SavedReport
  { -- | Output only. Resource name of the report. Format: accounts\/{account}\/reports\/{report}
    name :: (Core.Maybe Core.Text),
    -- | Report title as specified by publisher.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SavedReport' with the minimum fields required to make a request.
newSavedReport ::
  SavedReport
newSavedReport = SavedReport {name = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON SavedReport where
  parseJSON =
    Core.withObject
      "SavedReport"
      ( \o ->
          SavedReport
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SavedReport where
  toJSON SavedReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Representation of a Site.
--
-- /See:/ 'newSite' smart constructor.
data Site = Site
  { -- | Whether auto ads is turned on for the site.
    autoAdsEnabled :: (Core.Maybe Core.Bool),
    -- | Domain (or subdomain) of the site, e.g. \"example.com\" or \"www.example.com\". This is used in the @OWNED_SITE_DOMAIN_NAME@ reporting dimension.
    domain :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of a site. Format: accounts\/{account}\/sites\/{site}
    name :: (Core.Maybe Core.Text),
    -- | Output only. Unique ID of the site as used in the @OWNED_SITE_ID@ reporting dimension.
    reportingDimensionId :: (Core.Maybe Core.Text),
    -- | Output only. State of a site.
    state :: (Core.Maybe Site_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Site' with the minimum fields required to make a request.
newSite ::
  Site
newSite =
  Site
    { autoAdsEnabled = Core.Nothing,
      domain = Core.Nothing,
      name = Core.Nothing,
      reportingDimensionId = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Site where
  parseJSON =
    Core.withObject
      "Site"
      ( \o ->
          Site
            Core.<$> (o Core..:? "autoAdsEnabled")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "reportingDimensionId")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Site where
  toJSON Site {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoAdsEnabled" Core..=) Core.<$> autoAdsEnabled,
            ("domain" Core..=) Core.<$> domain,
            ("name" Core..=) Core.<$> name,
            ("reportingDimensionId" Core..=)
              Core.<$> reportingDimensionId,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Represents a time zone from the <https://www.iana.org/time-zones IANA Time Zone Database>.
--
-- /See:/ 'newTimeZone' smart constructor.
data TimeZone = TimeZone
  { -- | IANA Time Zone Database time zone, e.g. \"America\/New_York\".
    id :: (Core.Maybe Core.Text),
    -- | Optional. IANA Time Zone Database version number, e.g. \"2019a\".
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeZone' with the minimum fields required to make a request.
newTimeZone ::
  TimeZone
newTimeZone = TimeZone {id = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON TimeZone where
  parseJSON =
    Core.withObject
      "TimeZone"
      ( \o ->
          TimeZone
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON TimeZone where
  toJSON TimeZone {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Representation of a URL channel. URL channels allow you to track the performance of particular pages in your site; see <https://support.google.com/adsense/answer/2923836 URL channels> for more information.
--
-- /See:/ 'newUrlChannel' smart constructor.
data UrlChannel = UrlChannel
  { -- | Output only. Resource name of the URL channel. Format: accounts\/{account}\/adclients\/{adclient}\/urlchannels\/{urlchannel}
    name :: (Core.Maybe Core.Text),
    -- | Output only. Unique ID of the custom channel as used in the @URL_CHANNEL_ID@ reporting dimension.
    reportingDimensionId :: (Core.Maybe Core.Text),
    -- | URI pattern of the channel. Does not include \"http:\/\/\" or \"https:\/\/\". Example: www.example.com\/home
    uriPattern :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlChannel' with the minimum fields required to make a request.
newUrlChannel ::
  UrlChannel
newUrlChannel =
  UrlChannel
    { name = Core.Nothing,
      reportingDimensionId = Core.Nothing,
      uriPattern = Core.Nothing
    }

instance Core.FromJSON UrlChannel where
  parseJSON =
    Core.withObject
      "UrlChannel"
      ( \o ->
          UrlChannel
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "reportingDimensionId")
            Core.<*> (o Core..:? "uriPattern")
      )

instance Core.ToJSON UrlChannel where
  toJSON UrlChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("reportingDimensionId" Core..=)
              Core.<$> reportingDimensionId,
            ("uriPattern" Core..=) Core.<$> uriPattern
          ]
      )
