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
-- Module      : Gogol.URLShortener.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.URLShortener.Internal.Product
  (

    -- * AnalyticsSnapshot
    AnalyticsSnapshot (..),
    newAnalyticsSnapshot,

    -- * AnalyticsSummary
    AnalyticsSummary (..),
    newAnalyticsSummary,

    -- * StringCount
    StringCount (..),
    newStringCount,

    -- * Url
    Url (..),
    newUrl,

    -- * UrlHistory
    UrlHistory (..),
    newUrlHistory,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.URLShortener.Internal.Sum

--
-- /See:/ 'newAnalyticsSnapshot' smart constructor.
data AnalyticsSnapshot = AnalyticsSnapshot
    {
      -- | Top browsers, e.g. \"Chrome\"; sorted by (descending) click counts. Only present if this data is available.
      browsers :: (Core.Maybe [StringCount])
      -- | Top countries (expressed as country codes), e.g. \"US\" or \"DE\"; sorted by (descending) click counts. Only present if this data is available.
    , countries :: (Core.Maybe [StringCount])
      -- | Number of clicks on all goo.gl short URLs pointing to this long URL.
    , longUrlClicks :: (Core.Maybe Core.Int64)
      -- | Top platforms or OSes, e.g. \"Windows\"; sorted by (descending) click counts. Only present if this data is available.
    , platforms :: (Core.Maybe [StringCount])
      -- | Top referring hosts, e.g. \"www.google.com\"; sorted by (descending) click counts. Only present if this data is available.
    , referrers :: (Core.Maybe [StringCount])
      -- | Number of clicks on this short URL.
    , shortUrlClicks :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsSnapshot' with the minimum fields required to make a request.
newAnalyticsSnapshot 
    ::  AnalyticsSnapshot
newAnalyticsSnapshot =
  AnalyticsSnapshot
    { browsers = Core.Nothing
    , countries = Core.Nothing
    , longUrlClicks = Core.Nothing
    , platforms = Core.Nothing
    , referrers = Core.Nothing
    , shortUrlClicks = Core.Nothing
    }

instance Core.FromJSON AnalyticsSnapshot where
        parseJSON
          = Core.withObject "AnalyticsSnapshot"
              (\ o ->
                 AnalyticsSnapshot Core.<$>
                   (o Core..:? "browsers" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "countries" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "longUrlClicks")
                     Core.<*>
                     (o Core..:? "platforms" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "referrers" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "shortUrlClicks"))

instance Core.ToJSON AnalyticsSnapshot where
        toJSON AnalyticsSnapshot{..}
          = Core.object
              (Core.catMaybes
                 [("browsers" Core..=) Core.<$> browsers,
                  ("countries" Core..=) Core.<$> countries,
                  ("longUrlClicks" Core..=) Core.. Core.AsText Core.<$>
                    longUrlClicks,
                  ("platforms" Core..=) Core.<$> platforms,
                  ("referrers" Core..=) Core.<$> referrers,
                  ("shortUrlClicks" Core..=) Core.. Core.AsText
                    Core.<$> shortUrlClicks])


--
-- /See:/ 'newAnalyticsSummary' smart constructor.
data AnalyticsSummary = AnalyticsSummary
    {
      -- | Click analytics over all time.
      allTime :: (Core.Maybe AnalyticsSnapshot)
      -- | Click analytics over the last day.
    , day :: (Core.Maybe AnalyticsSnapshot)
      -- | Click analytics over the last month.
    , month :: (Core.Maybe AnalyticsSnapshot)
      -- | Click analytics over the last two hours.
    , twoHours :: (Core.Maybe AnalyticsSnapshot)
      -- | Click analytics over the last week.
    , week :: (Core.Maybe AnalyticsSnapshot)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsSummary' with the minimum fields required to make a request.
newAnalyticsSummary 
    ::  AnalyticsSummary
newAnalyticsSummary =
  AnalyticsSummary
    { allTime = Core.Nothing
    , day = Core.Nothing
    , month = Core.Nothing
    , twoHours = Core.Nothing
    , week = Core.Nothing
    }

instance Core.FromJSON AnalyticsSummary where
        parseJSON
          = Core.withObject "AnalyticsSummary"
              (\ o ->
                 AnalyticsSummary Core.<$>
                   (o Core..:? "allTime") Core.<*> (o Core..:? "day")
                     Core.<*> (o Core..:? "month")
                     Core.<*> (o Core..:? "twoHours")
                     Core.<*> (o Core..:? "week"))

instance Core.ToJSON AnalyticsSummary where
        toJSON AnalyticsSummary{..}
          = Core.object
              (Core.catMaybes
                 [("allTime" Core..=) Core.<$> allTime,
                  ("day" Core..=) Core.<$> day,
                  ("month" Core..=) Core.<$> month,
                  ("twoHours" Core..=) Core.<$> twoHours,
                  ("week" Core..=) Core.<$> week])


--
-- /See:/ 'newStringCount' smart constructor.
data StringCount = StringCount
    {
      -- | Number of clicks for this top entry, e.g. for this particular country or browser.
      count :: (Core.Maybe Core.Int64)
      -- | Label assigned to this top entry, e.g. \"US\" or \"Chrome\".
    , id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StringCount' with the minimum fields required to make a request.
newStringCount 
    ::  StringCount
newStringCount = StringCount {count = Core.Nothing, id = Core.Nothing}

instance Core.FromJSON StringCount where
        parseJSON
          = Core.withObject "StringCount"
              (\ o ->
                 StringCount Core.<$>
                   (o Core..:? "count") Core.<*> (o Core..:? "id"))

instance Core.ToJSON StringCount where
        toJSON StringCount{..}
          = Core.object
              (Core.catMaybes
                 [("count" Core..=) Core.. Core.AsText Core.<$> count,
                  ("id" Core..=) Core.<$> id])


--
-- /See:/ 'newUrl' smart constructor.
data Url = Url
    {
      -- | A summary of the click analytics for the short and long URL. Might not be present if not requested or currently unavailable.
      analytics :: (Core.Maybe AnalyticsSummary)
      -- | Time the short URL was created; ISO 8601 representation using the yyyy-MM-dd\'T\'HH:mm:ss.SSSZZ format, e.g. \"2010-10-14T19:01:24.944+00:00\".
    , created :: (Core.Maybe Core.Text)
      -- | Short URL, e.g. \"http:\/\/goo.gl\/l6MS\".
    , id :: (Core.Maybe Core.Text)
      -- | The fixed string \"urlshortener#url\".
    , kind :: Core.Text
      -- | Long URL, e.g. \"http:\/\/www.google.com\/\". Might not be present if the status is \"REMOVED\".
    , longUrl :: (Core.Maybe Core.Text)
      -- | Status of the target URL. Possible values: \"OK\", \"MALWARE\", \"PHISHING\", or \"REMOVED\". A URL might be marked \"REMOVED\" if it was flagged as spam, for example.
    , status :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Url' with the minimum fields required to make a request.
newUrl 
    ::  Url
newUrl =
  Url
    { analytics = Core.Nothing
    , created = Core.Nothing
    , id = Core.Nothing
    , kind = "urlshortener#url"
    , longUrl = Core.Nothing
    , status = Core.Nothing
    }

instance Core.FromJSON Url where
        parseJSON
          = Core.withObject "Url"
              (\ o ->
                 Url Core.<$>
                   (o Core..:? "analytics") Core.<*>
                     (o Core..:? "created")
                     Core.<*> (o Core..:? "id")
                     Core.<*>
                     (o Core..:? "kind" Core..!= "urlshortener#url")
                     Core.<*> (o Core..:? "longUrl")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON Url where
        toJSON Url{..}
          = Core.object
              (Core.catMaybes
                 [("analytics" Core..=) Core.<$> analytics,
                  ("created" Core..=) Core.<$> created,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("longUrl" Core..=) Core.<$> longUrl,
                  ("status" Core..=) Core.<$> status])


--
-- /See:/ 'newUrlHistory' smart constructor.
data UrlHistory = UrlHistory
    {
      -- | A list of URL resources.
      items :: (Core.Maybe [Url])
      -- | Number of items returned with each full \"page\" of results. Note that the last page could have fewer items than the \"itemsPerPage\" value.
    , itemsPerPage :: (Core.Maybe Core.Int32)
      -- | The fixed string \"urlshortener#urlHistory\".
    , kind :: Core.Text
      -- | A token to provide to get the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Total number of short URLs associated with this user (may be approximate).
    , totalItems :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlHistory' with the minimum fields required to make a request.
newUrlHistory 
    ::  UrlHistory
newUrlHistory =
  UrlHistory
    { items = Core.Nothing
    , itemsPerPage = Core.Nothing
    , kind = "urlshortener#urlHistory"
    , nextPageToken = Core.Nothing
    , totalItems = Core.Nothing
    }

instance Core.FromJSON UrlHistory where
        parseJSON
          = Core.withObject "UrlHistory"
              (\ o ->
                 UrlHistory Core.<$>
                   (o Core..:? "items" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "itemsPerPage")
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "urlshortener#urlHistory")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "totalItems"))

instance Core.ToJSON UrlHistory where
        toJSON UrlHistory{..}
          = Core.object
              (Core.catMaybes
                 [("items" Core..=) Core.<$> items,
                  ("itemsPerPage" Core..=) Core.<$> itemsPerPage,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("totalItems" Core..=) Core.<$> totalItems])

