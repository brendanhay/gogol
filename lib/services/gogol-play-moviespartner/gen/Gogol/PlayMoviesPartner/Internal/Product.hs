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
-- Module      : Gogol.PlayMoviesPartner.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PlayMoviesPartner.Internal.Product
  ( -- * Avail
    Avail (..),
    newAvail,

    -- * ListAvailsResponse
    ListAvailsResponse (..),
    newListAvailsResponse,

    -- * ListOrdersResponse
    ListOrdersResponse (..),
    newListOrdersResponse,

    -- * ListStoreInfosResponse
    ListStoreInfosResponse (..),
    newListStoreInfosResponse,

    -- * Order
    Order (..),
    newOrder,

    -- * StoreInfo
    StoreInfo (..),
    newStoreInfo,
  )
where

import Gogol.PlayMoviesPartner.Internal.Sum
import Gogol.Prelude qualified as Core

-- | An Avail describes the Availability Window of a specific Edit in a given country, which means the period Google is allowed to sell or rent the Edit.
--
-- Avails are exposed in EMA format Version 1.6b (available at http:\/\/www.movielabs.com\/md\/avails\/)
--
-- Studios can see the Avails for the Titles they own. Post-production houses cannot see any Avails.
--
-- /See:/ 'newAvail' smart constructor.
data Avail = Avail
  { -- | Other identifier referring to the Edit, as defined by partner. Example: \"GOOGLER_2006\"
    altId :: (Core.Maybe Core.Text),
    -- | ID internally generated by Google to uniquely identify an Avail. Not part of EMA Specs.
    availId :: (Core.Maybe Core.Text),
    -- | Communicating an exempt category as defined by FCC regulations. It is not required for non-US Avails. Example: \"1\"
    captionExemption :: (Core.Maybe Core.Text),
    -- | Communicating if caption file will be delivered.
    captionIncluded :: (Core.Maybe Core.Bool),
    -- | Title Identifier. This should be the Title Level EIDR. Example: \"10.5240\/1489-49A2-3956-4B2D-FE16-5\".
    contentId :: (Core.Maybe Core.Text),
    -- | The name of the studio that owns the Edit referred in the Avail. This is the equivalent of @studio_name@ in other resources, but it follows the EMA nomenclature. Example: \"Google Films\".
    displayName :: (Core.Maybe Core.Text),
    -- | Manifestation Identifier. This should be the Manifestation Level EIDR. Example: \"10.2340\/1489-49A2-3956-4B2D-FE16-7\"
    encodeId :: (Core.Maybe Core.Text),
    -- | End of term in YYYY-MM-DD format in the timezone of the country of the Avail. \"Open\" if no end date is available. Example: \"2019-02-17\"
    end :: (Core.Maybe Core.Text),
    -- | Other identifier referring to the episode, as defined by partner. Only available on TV avails. Example: \"rs/googlers/s1_3\".
    episodeAltId :: (Core.Maybe Core.Text),
    -- | The number assigned to the episode within a season. Only available on TV Avails. Example: \"3\".
    episodeNumber :: (Core.Maybe Core.Text),
    -- | OPTIONAL.TV Only. Title used by involved parties to refer to this episode. Only available on TV Avails. Example: \"Coding at Google\".
    episodeTitleInternalAlias :: (Core.Maybe Core.Text),
    -- | Indicates the format profile covered by the transaction.
    formatProfile :: (Core.Maybe Avail_FormatProfile),
    -- | Type of transaction.
    licenseType :: (Core.Maybe Avail_LicenseType),
    -- | Name of the post-production houses that manage the Avail. Not part of EMA Specs.
    pphNames :: (Core.Maybe [Core.Text]),
    -- | Type of pricing that should be applied to this Avail based on how the partner classify them. Example: \"Tier\", \"WSP\", \"SRP\", or \"Category\".
    priceType :: (Core.Maybe Core.Text),
    -- | Value to be applied to the pricing type. Example: \"4\" or \"2.99\"
    priceValue :: (Core.Maybe Core.Text),
    -- | Edit Identifier. This should be the Edit Level EIDR. Example: \"10.2340\/1489-49A2-3956-4B2D-FE16-6\"
    productId :: (Core.Maybe Core.Text),
    -- | Value representing the rating reason. Rating reasons should be formatted as per <http://www.movielabs.com/md/ratings/ EMA ratings spec> and comma-separated for inclusion of multiple reasons. Example: \"L, S, V\"
    ratingReason :: (Core.Maybe Core.Text),
    -- | Rating system applied to the version of title within territory of Avail. Rating systems should be formatted as per <http://www.movielabs.com/md/ratings/ EMA ratings spec> Example: \"MPAA\"
    ratingSystem :: (Core.Maybe Core.Text),
    -- | Value representing the rating. Ratings should be formatted as per http:\/\/www.movielabs.com\/md\/ratings\/ Example: \"PG\"
    ratingValue :: (Core.Maybe Core.Text),
    -- | Release date of the Title in earliest released territory. Typically it is just the year, but it is free-form as per EMA spec. Examples: \"1979\", \"Oct 2014\"
    releaseDate :: (Core.Maybe Core.Text),
    -- | Other identifier referring to the season, as defined by partner. Only available on TV avails. Example: \"rs/googlers/s1\".
    seasonAltId :: (Core.Maybe Core.Text),
    -- | The number assigned to the season within a series. Only available on TV Avails. Example: \"1\".
    seasonNumber :: (Core.Maybe Core.Text),
    -- | Title used by involved parties to refer to this season. Only available on TV Avails. Example: \"Googlers, The\".
    seasonTitleInternalAlias :: (Core.Maybe Core.Text),
    -- | Other identifier referring to the series, as defined by partner. Only available on TV avails. Example: \"rs_googlers\".
    seriesAltId :: (Core.Maybe Core.Text),
    -- | Title used by involved parties to refer to this series. Only available on TV Avails. Example: \"Googlers, The\".
    seriesTitleInternalAlias :: (Core.Maybe Core.Text),
    -- | Start of term in YYYY-MM-DD format in the timezone of the country of the Avail. Example: \"2013-05-14\".
    start :: (Core.Maybe Core.Text),
    -- | Spoken language of the intended audience. Language shall be encoded in accordance with RFC 5646. Example: \"fr\".
    storeLanguage :: (Core.Maybe Core.Text),
    -- | First date an Edit could be publically announced as becoming available at a specific future date in territory of Avail. /Not/ the Avail start date or pre-order start date. Format is YYYY-MM-DD. Only available for pre-orders. Example: \"2012-12-10\"
    suppressionLiftDate :: (Core.Maybe Core.Text),
    -- | ISO 3166-1 alpha-2 country code for the country or territory of this Avail. For Avails, we use Territory in lieu of Country to comply with EMA specifications. But please note that Territory and Country identify the same thing. Example: \"US\".
    territory :: (Core.Maybe Core.Text),
    -- | Title used by involved parties to refer to this content. Example: \"Googlers, The\". Only available on Movie Avails.
    titleInternalAlias :: (Core.Maybe Core.Text),
    -- | Google-generated ID identifying the video linked to this Avail, once delivered. Not part of EMA Specs. Example: \'gtry456_xc\'
    videoId :: (Core.Maybe Core.Text),
    -- | Work type as enumerated in EMA.
    workType :: (Core.Maybe Avail_WorkType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Avail' with the minimum fields required to make a request.
newAvail ::
  Avail
newAvail =
  Avail
    { altId = Core.Nothing,
      availId = Core.Nothing,
      captionExemption = Core.Nothing,
      captionIncluded = Core.Nothing,
      contentId = Core.Nothing,
      displayName = Core.Nothing,
      encodeId = Core.Nothing,
      end = Core.Nothing,
      episodeAltId = Core.Nothing,
      episodeNumber = Core.Nothing,
      episodeTitleInternalAlias = Core.Nothing,
      formatProfile = Core.Nothing,
      licenseType = Core.Nothing,
      pphNames = Core.Nothing,
      priceType = Core.Nothing,
      priceValue = Core.Nothing,
      productId = Core.Nothing,
      ratingReason = Core.Nothing,
      ratingSystem = Core.Nothing,
      ratingValue = Core.Nothing,
      releaseDate = Core.Nothing,
      seasonAltId = Core.Nothing,
      seasonNumber = Core.Nothing,
      seasonTitleInternalAlias = Core.Nothing,
      seriesAltId = Core.Nothing,
      seriesTitleInternalAlias = Core.Nothing,
      start = Core.Nothing,
      storeLanguage = Core.Nothing,
      suppressionLiftDate = Core.Nothing,
      territory = Core.Nothing,
      titleInternalAlias = Core.Nothing,
      videoId = Core.Nothing,
      workType = Core.Nothing
    }

instance Core.FromJSON Avail where
  parseJSON =
    Core.withObject
      "Avail"
      ( \o ->
          Avail
            Core.<$> (o Core..:? "altId")
            Core.<*> (o Core..:? "availId")
            Core.<*> (o Core..:? "captionExemption")
            Core.<*> (o Core..:? "captionIncluded")
            Core.<*> (o Core..:? "contentId")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "encodeId")
            Core.<*> (o Core..:? "end")
            Core.<*> (o Core..:? "episodeAltId")
            Core.<*> (o Core..:? "episodeNumber")
            Core.<*> (o Core..:? "episodeTitleInternalAlias")
            Core.<*> (o Core..:? "formatProfile")
            Core.<*> (o Core..:? "licenseType")
            Core.<*> (o Core..:? "pphNames")
            Core.<*> (o Core..:? "priceType")
            Core.<*> (o Core..:? "priceValue")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "ratingReason")
            Core.<*> (o Core..:? "ratingSystem")
            Core.<*> (o Core..:? "ratingValue")
            Core.<*> (o Core..:? "releaseDate")
            Core.<*> (o Core..:? "seasonAltId")
            Core.<*> (o Core..:? "seasonNumber")
            Core.<*> (o Core..:? "seasonTitleInternalAlias")
            Core.<*> (o Core..:? "seriesAltId")
            Core.<*> (o Core..:? "seriesTitleInternalAlias")
            Core.<*> (o Core..:? "start")
            Core.<*> (o Core..:? "storeLanguage")
            Core.<*> (o Core..:? "suppressionLiftDate")
            Core.<*> (o Core..:? "territory")
            Core.<*> (o Core..:? "titleInternalAlias")
            Core.<*> (o Core..:? "videoId")
            Core.<*> (o Core..:? "workType")
      )

instance Core.ToJSON Avail where
  toJSON Avail {..} =
    Core.object
      ( Core.catMaybes
          [ ("altId" Core..=) Core.<$> altId,
            ("availId" Core..=) Core.<$> availId,
            ("captionExemption" Core..=) Core.<$> captionExemption,
            ("captionIncluded" Core..=) Core.<$> captionIncluded,
            ("contentId" Core..=) Core.<$> contentId,
            ("displayName" Core..=) Core.<$> displayName,
            ("encodeId" Core..=) Core.<$> encodeId,
            ("end" Core..=) Core.<$> end,
            ("episodeAltId" Core..=) Core.<$> episodeAltId,
            ("episodeNumber" Core..=) Core.<$> episodeNumber,
            ("episodeTitleInternalAlias" Core..=)
              Core.<$> episodeTitleInternalAlias,
            ("formatProfile" Core..=) Core.<$> formatProfile,
            ("licenseType" Core..=) Core.<$> licenseType,
            ("pphNames" Core..=) Core.<$> pphNames,
            ("priceType" Core..=) Core.<$> priceType,
            ("priceValue" Core..=) Core.<$> priceValue,
            ("productId" Core..=) Core.<$> productId,
            ("ratingReason" Core..=) Core.<$> ratingReason,
            ("ratingSystem" Core..=) Core.<$> ratingSystem,
            ("ratingValue" Core..=) Core.<$> ratingValue,
            ("releaseDate" Core..=) Core.<$> releaseDate,
            ("seasonAltId" Core..=) Core.<$> seasonAltId,
            ("seasonNumber" Core..=) Core.<$> seasonNumber,
            ("seasonTitleInternalAlias" Core..=)
              Core.<$> seasonTitleInternalAlias,
            ("seriesAltId" Core..=) Core.<$> seriesAltId,
            ("seriesTitleInternalAlias" Core..=)
              Core.<$> seriesTitleInternalAlias,
            ("start" Core..=) Core.<$> start,
            ("storeLanguage" Core..=) Core.<$> storeLanguage,
            ("suppressionLiftDate" Core..=) Core.<$> suppressionLiftDate,
            ("territory" Core..=) Core.<$> territory,
            ("titleInternalAlias" Core..=) Core.<$> titleInternalAlias,
            ("videoId" Core..=) Core.<$> videoId,
            ("workType" Core..=) Core.<$> workType
          ]
      )

-- | Response to the \'ListAvails\' method.
--
-- /See:/ 'newListAvailsResponse' smart constructor.
data ListAvailsResponse = ListAvailsResponse
  { -- | List of Avails that match the request criteria.
    avails :: (Core.Maybe [Avail]),
    -- | See /List methods rules/ for info about this field.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | See /List methods rules/ for more information about this field.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAvailsResponse' with the minimum fields required to make a request.
newListAvailsResponse ::
  ListAvailsResponse
newListAvailsResponse =
  ListAvailsResponse
    { avails = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListAvailsResponse where
  parseJSON =
    Core.withObject
      "ListAvailsResponse"
      ( \o ->
          ListAvailsResponse
            Core.<$> (o Core..:? "avails")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListAvailsResponse where
  toJSON ListAvailsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("avails" Core..=) Core.<$> avails,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response to the \'ListOrders\' method.
--
-- /See:/ 'newListOrdersResponse' smart constructor.
data ListOrdersResponse = ListOrdersResponse
  { -- | See /List methods rules/ for info about this field.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of Orders that match the request criteria.
    orders :: (Core.Maybe [Order]),
    -- | See /List methods rules/ for more information about this field.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOrdersResponse' with the minimum fields required to make a request.
newListOrdersResponse ::
  ListOrdersResponse
newListOrdersResponse =
  ListOrdersResponse
    { nextPageToken = Core.Nothing,
      orders = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListOrdersResponse where
  parseJSON =
    Core.withObject
      "ListOrdersResponse"
      ( \o ->
          ListOrdersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "orders")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListOrdersResponse where
  toJSON ListOrdersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("orders" Core..=) Core.<$> orders,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response to the \'ListStoreInfos\' method.
--
-- /See:/ 'newListStoreInfosResponse' smart constructor.
data ListStoreInfosResponse = ListStoreInfosResponse
  { -- | See \'List methods rules\' for info about this field.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of StoreInfos that match the request criteria.
    storeInfos :: (Core.Maybe [StoreInfo]),
    -- | See /List methods rules/ for more information about this field.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListStoreInfosResponse' with the minimum fields required to make a request.
newListStoreInfosResponse ::
  ListStoreInfosResponse
newListStoreInfosResponse =
  ListStoreInfosResponse
    { nextPageToken = Core.Nothing,
      storeInfos = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListStoreInfosResponse where
  parseJSON =
    Core.withObject
      "ListStoreInfosResponse"
      ( \o ->
          ListStoreInfosResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "storeInfos")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListStoreInfosResponse where
  toJSON ListStoreInfosResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("storeInfos" Core..=) Core.<$> storeInfos,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | An Order tracks the fulfillment of an Edit when delivered using the legacy, non-component-based delivery.
--
-- Each Order is uniquely identified by an @order_id@, which is generated by Google.
--
-- Externally, Orders can also be identified by partners using its @custom_id@ (when provided).
--
-- /See:/ 'newOrder' smart constructor.
data Order = Order
  { -- | Timestamp when the Order was approved.
    approvedTime :: (Core.Maybe Core.DateTime),
    -- | YouTube Channel ID that should be used to fulfill the Order. Example: \"UCRG64darCZhb\".
    channelId :: (Core.Maybe Core.Text),
    -- | YouTube Channel Name that should be used to fulfill the Order. Example: \"Google_channel\".
    channelName :: (Core.Maybe Core.Text),
    -- | Countries where the Order is available, using the \"ISO 3166-1 alpha-2\" format (example: \"US\").
    countries :: (Core.Maybe [Core.Text]),
    -- | ID that can be used to externally identify an Order. This ID is provided by partners when submitting the Avails. Example: \'GOOGLER_2006\'
    customId :: (Core.Maybe Core.Text),
    -- | Timestamp of the earliest start date of the Avails linked to this Order.
    earliestAvailStartTime :: (Core.Maybe Core.DateTime),
    -- | Default Episode name, usually in the language of the country of origin. Only available for TV Edits Example: \"Googlers, The - Pilot\".
    episodeName :: (Core.Maybe Core.Text),
    -- | Legacy Order priority, as defined by Google. Example: \'P0\'
    legacyPriority :: (Core.Maybe Core.Text),
    -- | Default Edit name, usually in the language of the country of origin. Example: \"Googlers, The\".
    name :: (Core.Maybe Core.Text),
    -- | A simpler representation of the priority.
    normalizedPriority :: (Core.Maybe Order_NormalizedPriority),
    -- | ID internally generated by Google to uniquely identify an Order. Example: \'abcde12_x\'
    orderId :: (Core.Maybe Core.Text),
    -- | Timestamp when the Order was created.
    orderedTime :: (Core.Maybe Core.DateTime),
    -- | Name of the post-production house that manages the Edit ordered.
    pphName :: (Core.Maybe Core.Text),
    -- | Order priority, as defined by Google. The higher the value, the higher the priority. Example: 90
    priority :: (Core.Maybe Core.Double),
    -- | Timestamp when the Order was fulfilled.
    receivedTime :: (Core.Maybe Core.DateTime),
    -- | Field explaining why an Order has been rejected. Example: \"Trailer audio is 2ch mono, please re-deliver in stereo\".
    rejectionNote :: (Core.Maybe Core.Text),
    -- | Default Season name, usually in the language of the country of origin. Only available for TV Edits Example: \"Googlers, The - A Brave New World\".
    seasonName :: (Core.Maybe Core.Text),
    -- | Default Show name, usually in the language of the country of origin. Only available for TV Edits Example: \"Googlers, The\".
    showName :: (Core.Maybe Core.Text),
    -- | High-level status of the order.
    status :: (Core.Maybe Order_Status),
    -- | Detailed status of the order
    statusDetail :: (Core.Maybe Order_StatusDetail),
    -- | Name of the studio that owns the Edit ordered.
    studioName :: (Core.Maybe Core.Text),
    -- | Type of the Edit linked to the Order.
    type' :: (Core.Maybe Order_Type),
    -- | Google-generated ID identifying the video linked to this Order, once delivered. Example: \'gtry456_xc\'.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
newOrder ::
  Order
newOrder =
  Order
    { approvedTime = Core.Nothing,
      channelId = Core.Nothing,
      channelName = Core.Nothing,
      countries = Core.Nothing,
      customId = Core.Nothing,
      earliestAvailStartTime = Core.Nothing,
      episodeName = Core.Nothing,
      legacyPriority = Core.Nothing,
      name = Core.Nothing,
      normalizedPriority = Core.Nothing,
      orderId = Core.Nothing,
      orderedTime = Core.Nothing,
      pphName = Core.Nothing,
      priority = Core.Nothing,
      receivedTime = Core.Nothing,
      rejectionNote = Core.Nothing,
      seasonName = Core.Nothing,
      showName = Core.Nothing,
      status = Core.Nothing,
      statusDetail = Core.Nothing,
      studioName = Core.Nothing,
      type' = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.FromJSON Order where
  parseJSON =
    Core.withObject
      "Order"
      ( \o ->
          Order
            Core.<$> (o Core..:? "approvedTime")
            Core.<*> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelName")
            Core.<*> (o Core..:? "countries")
            Core.<*> (o Core..:? "customId")
            Core.<*> (o Core..:? "earliestAvailStartTime")
            Core.<*> (o Core..:? "episodeName")
            Core.<*> (o Core..:? "legacyPriority")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "normalizedPriority")
            Core.<*> (o Core..:? "orderId")
            Core.<*> (o Core..:? "orderedTime")
            Core.<*> (o Core..:? "pphName")
            Core.<*> (o Core..:? "priority")
            Core.<*> (o Core..:? "receivedTime")
            Core.<*> (o Core..:? "rejectionNote")
            Core.<*> (o Core..:? "seasonName")
            Core.<*> (o Core..:? "showName")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "studioName")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON Order where
  toJSON Order {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvedTime" Core..=) Core.<$> approvedTime,
            ("channelId" Core..=) Core.<$> channelId,
            ("channelName" Core..=) Core.<$> channelName,
            ("countries" Core..=) Core.<$> countries,
            ("customId" Core..=) Core.<$> customId,
            ("earliestAvailStartTime" Core..=) Core.<$> earliestAvailStartTime,
            ("episodeName" Core..=) Core.<$> episodeName,
            ("legacyPriority" Core..=) Core.<$> legacyPriority,
            ("name" Core..=) Core.<$> name,
            ("normalizedPriority" Core..=) Core.<$> normalizedPriority,
            ("orderId" Core..=) Core.<$> orderId,
            ("orderedTime" Core..=) Core.<$> orderedTime,
            ("pphName" Core..=) Core.<$> pphName,
            ("priority" Core..=) Core.<$> priority,
            ("receivedTime" Core..=) Core.<$> receivedTime,
            ("rejectionNote" Core..=) Core.<$> rejectionNote,
            ("seasonName" Core..=) Core.<$> seasonName,
            ("showName" Core..=) Core.<$> showName,
            ("status" Core..=) Core.<$> status,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("studioName" Core..=) Core.<$> studioName,
            ("type" Core..=) Core.<$> type',
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

-- | Information about a playable sequence (video) associated with an Edit and available at the Google Play Store.
--
-- Internally, each StoreInfo is uniquely identified by a @video_id@ and @country@.
--
-- Externally, Title-level EIDR or Edit-level EIDR, if provided, can also be used to identify a specific title or edit in a country.
--
-- /See:/ 'newStoreInfo' smart constructor.
data StoreInfo = StoreInfo
  { -- | Audio tracks available for this Edit.
    audioTracks :: (Core.Maybe [Core.Text]),
    -- | Country where Edit is available in ISO 3166-1 alpha-2 country code. Example: \"US\".
    country :: (Core.Maybe Core.Text),
    -- | Edit-level EIDR ID. Example: \"10.5240\/1489-49A2-3956-4B2D-FE16-6\".
    editLevelEidr :: (Core.Maybe Core.Text),
    -- | The number assigned to the episode within a season. Only available on TV Edits. Example: \"1\".
    episodeNumber :: (Core.Maybe Core.Text),
    -- | Whether the Edit has a 5.1 channel audio track.
    hasAudio51 :: (Core.Maybe Core.Bool),
    -- | Whether the Edit has a EST offer.
    hasEstOffer :: (Core.Maybe Core.Bool),
    -- | Whether the Edit has a HD offer.
    hasHdOffer :: (Core.Maybe Core.Bool),
    -- | Whether the Edit has info cards.
    hasInfoCards :: (Core.Maybe Core.Bool),
    -- | Whether the Edit has a SD offer.
    hasSdOffer :: (Core.Maybe Core.Bool),
    -- | Whether the Edit has a VOD offer.
    hasVodOffer :: (Core.Maybe Core.Bool),
    -- | Timestamp when the Edit went live on the Store.
    liveTime :: (Core.Maybe Core.DateTime),
    -- | Knowledge Graph ID associated to this Edit, if available. This ID links the Edit to its knowledge entity, externally accessible at http:\/\/freebase.com. In the absense of Title EIDR or Edit EIDR, this ID helps link together multiple Edits across countries. Example: \'\/m\/0ffx29\'
    mid :: (Core.Maybe Core.Text),
    -- | Default Edit name, usually in the language of the country of origin. Example: \"Googlers, The\".
    name :: (Core.Maybe Core.Text),
    -- | Name of the post-production houses that manage the Edit.
    pphNames :: (Core.Maybe [Core.Text]),
    -- | Google-generated ID identifying the season linked to the Edit. Only available for TV Edits. Example: \'ster23ex\'
    seasonId :: (Core.Maybe Core.Text),
    -- | Default Season name, usually in the language of the country of origin. Only available for TV Edits Example: \"Googlers, The - A Brave New World\".
    seasonName :: (Core.Maybe Core.Text),
    -- | The number assigned to the season within a show. Only available on TV Edits. Example: \"1\".
    seasonNumber :: (Core.Maybe Core.Text),
    -- | Google-generated ID identifying the show linked to the Edit. Only available for TV Edits. Example: \'et2hsue_x\'
    showId :: (Core.Maybe Core.Text),
    -- | Default Show name, usually in the language of the country of origin. Only available for TV Edits Example: \"Googlers, The\".
    showName :: (Core.Maybe Core.Text),
    -- | Name of the studio that owns the Edit ordered.
    studioName :: (Core.Maybe Core.Text),
    -- | Subtitles available for this Edit.
    subtitles :: (Core.Maybe [Core.Text]),
    -- | Title-level EIDR ID. Example: \"10.5240\/1489-49A2-3956-4B2D-FE16-5\".
    titleLevelEidr :: (Core.Maybe Core.Text),
    -- | Google-generated ID identifying the trailer linked to the Edit. Example: \'bhd/4e/cx\'
    trailerId :: (Core.Maybe Core.Text),
    -- | Edit type, like Movie, Episode or Season.
    type' :: (Core.Maybe StoreInfo_Type),
    -- | Google-generated ID identifying the video linked to the Edit. Example: \'gtry456_xc\'
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StoreInfo' with the minimum fields required to make a request.
newStoreInfo ::
  StoreInfo
newStoreInfo =
  StoreInfo
    { audioTracks = Core.Nothing,
      country = Core.Nothing,
      editLevelEidr = Core.Nothing,
      episodeNumber = Core.Nothing,
      hasAudio51 = Core.Nothing,
      hasEstOffer = Core.Nothing,
      hasHdOffer = Core.Nothing,
      hasInfoCards = Core.Nothing,
      hasSdOffer = Core.Nothing,
      hasVodOffer = Core.Nothing,
      liveTime = Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      pphNames = Core.Nothing,
      seasonId = Core.Nothing,
      seasonName = Core.Nothing,
      seasonNumber = Core.Nothing,
      showId = Core.Nothing,
      showName = Core.Nothing,
      studioName = Core.Nothing,
      subtitles = Core.Nothing,
      titleLevelEidr = Core.Nothing,
      trailerId = Core.Nothing,
      type' = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.FromJSON StoreInfo where
  parseJSON =
    Core.withObject
      "StoreInfo"
      ( \o ->
          StoreInfo
            Core.<$> (o Core..:? "audioTracks")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "editLevelEidr")
            Core.<*> (o Core..:? "episodeNumber")
            Core.<*> (o Core..:? "hasAudio51")
            Core.<*> (o Core..:? "hasEstOffer")
            Core.<*> (o Core..:? "hasHdOffer")
            Core.<*> (o Core..:? "hasInfoCards")
            Core.<*> (o Core..:? "hasSdOffer")
            Core.<*> (o Core..:? "hasVodOffer")
            Core.<*> (o Core..:? "liveTime")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pphNames")
            Core.<*> (o Core..:? "seasonId")
            Core.<*> (o Core..:? "seasonName")
            Core.<*> (o Core..:? "seasonNumber")
            Core.<*> (o Core..:? "showId")
            Core.<*> (o Core..:? "showName")
            Core.<*> (o Core..:? "studioName")
            Core.<*> (o Core..:? "subtitles")
            Core.<*> (o Core..:? "titleLevelEidr")
            Core.<*> (o Core..:? "trailerId")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON StoreInfo where
  toJSON StoreInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("audioTracks" Core..=) Core.<$> audioTracks,
            ("country" Core..=) Core.<$> country,
            ("editLevelEidr" Core..=) Core.<$> editLevelEidr,
            ("episodeNumber" Core..=) Core.<$> episodeNumber,
            ("hasAudio51" Core..=) Core.<$> hasAudio51,
            ("hasEstOffer" Core..=) Core.<$> hasEstOffer,
            ("hasHdOffer" Core..=) Core.<$> hasHdOffer,
            ("hasInfoCards" Core..=) Core.<$> hasInfoCards,
            ("hasSdOffer" Core..=) Core.<$> hasSdOffer,
            ("hasVodOffer" Core..=) Core.<$> hasVodOffer,
            ("liveTime" Core..=) Core.<$> liveTime,
            ("mid" Core..=) Core.<$> mid,
            ("name" Core..=) Core.<$> name,
            ("pphNames" Core..=) Core.<$> pphNames,
            ("seasonId" Core..=) Core.<$> seasonId,
            ("seasonName" Core..=) Core.<$> seasonName,
            ("seasonNumber" Core..=) Core.<$> seasonNumber,
            ("showId" Core..=) Core.<$> showId,
            ("showName" Core..=) Core.<$> showName,
            ("studioName" Core..=) Core.<$> studioName,
            ("subtitles" Core..=) Core.<$> subtitles,
            ("titleLevelEidr" Core..=) Core.<$> titleLevelEidr,
            ("trailerId" Core..=) Core.<$> trailerId,
            ("type" Core..=) Core.<$> type',
            ("videoId" Core..=) Core.<$> videoId
          ]
      )
