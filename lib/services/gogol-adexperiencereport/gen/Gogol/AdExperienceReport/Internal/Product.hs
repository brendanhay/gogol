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
-- Module      : Gogol.AdExperienceReport.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdExperienceReport.Internal.Product
  ( -- * PlatformSummary
    PlatformSummary (..),
    newPlatformSummary,

    -- * SiteSummaryResponse
    SiteSummaryResponse (..),
    newSiteSummaryResponse,

    -- * ViolatingSitesResponse
    ViolatingSitesResponse (..),
    newViolatingSitesResponse,
  )
where

import Gogol.AdExperienceReport.Internal.Sum
import Gogol.Prelude qualified as Core

-- | A site\'s Ad Experience Report summary on a single platform.
--
-- /See:/ 'newPlatformSummary' smart constructor.
data PlatformSummary = PlatformSummary
  { -- | The site\'s Ad Experience Report status on this platform.
    betterAdsStatus :: (Core.Maybe PlatformSummary_BetterAdsStatus),
    -- | The time at which <https://support.google.com/webtools/answer/7308033 enforcement> against the site began or will begin on this platform. Not set when the filter_status is OFF.
    enforcementTime :: (Core.Maybe Core.DateTime),
    -- | The site\'s <https://support.google.com/webtools/answer/7308033 enforcement status> on this platform.
    filterStatus :: (Core.Maybe PlatformSummary_FilterStatus),
    -- | The time at which the site\'s status last changed on this platform.
    lastChangeTime :: (Core.Maybe Core.DateTime),
    -- | The site\'s regions on this platform. No longer populated, because there is no longer any semantic difference between sites in different regions.
    region :: (Core.Maybe [PlatformSummary_RegionItem]),
    -- | A link to the full Ad Experience Report for the site on this platform.. Not set in ViolatingSitesResponse. Note that you must complete the <https://support.google.com/webmasters/answer/9008080 Search Console verification process> for the site before you can access the full report.
    reportUrl :: (Core.Maybe Core.Text),
    -- | Whether the site is currently under review on this platform.
    underReview :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlatformSummary' with the minimum fields required to make a request.
newPlatformSummary ::
  PlatformSummary
newPlatformSummary =
  PlatformSummary
    { betterAdsStatus = Core.Nothing,
      enforcementTime = Core.Nothing,
      filterStatus = Core.Nothing,
      lastChangeTime = Core.Nothing,
      region = Core.Nothing,
      reportUrl = Core.Nothing,
      underReview = Core.Nothing
    }

instance Core.FromJSON PlatformSummary where
  parseJSON =
    Core.withObject
      "PlatformSummary"
      ( \o ->
          PlatformSummary
            Core.<$> (o Core..:? "betterAdsStatus")
            Core.<*> (o Core..:? "enforcementTime")
            Core.<*> (o Core..:? "filterStatus")
            Core.<*> (o Core..:? "lastChangeTime")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "reportUrl")
            Core.<*> (o Core..:? "underReview")
      )

instance Core.ToJSON PlatformSummary where
  toJSON PlatformSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("betterAdsStatus" Core..=) Core.<$> betterAdsStatus,
            ("enforcementTime" Core..=) Core.<$> enforcementTime,
            ("filterStatus" Core..=) Core.<$> filterStatus,
            ("lastChangeTime" Core..=) Core.<$> lastChangeTime,
            ("region" Core..=) Core.<$> region,
            ("reportUrl" Core..=) Core.<$> reportUrl,
            ("underReview" Core..=) Core.<$> underReview
          ]
      )

-- | Response message for GetSiteSummary.
--
-- /See:/ 'newSiteSummaryResponse' smart constructor.
data SiteSummaryResponse = SiteSummaryResponse
  { -- | The site\'s Ad Experience Report summary on desktop.
    desktopSummary :: (Core.Maybe PlatformSummary),
    -- | The site\'s Ad Experience Report summary on mobile.
    mobileSummary :: (Core.Maybe PlatformSummary),
    -- | The name of the reviewed site, e.g. @google.com@.
    reviewedSite :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteSummaryResponse' with the minimum fields required to make a request.
newSiteSummaryResponse ::
  SiteSummaryResponse
newSiteSummaryResponse =
  SiteSummaryResponse
    { desktopSummary = Core.Nothing,
      mobileSummary = Core.Nothing,
      reviewedSite = Core.Nothing
    }

instance Core.FromJSON SiteSummaryResponse where
  parseJSON =
    Core.withObject
      "SiteSummaryResponse"
      ( \o ->
          SiteSummaryResponse
            Core.<$> (o Core..:? "desktopSummary")
            Core.<*> (o Core..:? "mobileSummary")
            Core.<*> (o Core..:? "reviewedSite")
      )

instance Core.ToJSON SiteSummaryResponse where
  toJSON SiteSummaryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("desktopSummary" Core..=) Core.<$> desktopSummary,
            ("mobileSummary" Core..=) Core.<$> mobileSummary,
            ("reviewedSite" Core..=) Core.<$> reviewedSite
          ]
      )

-- | Response message for ListViolatingSites.
--
-- /See:/ 'newViolatingSitesResponse' smart constructor.
newtype ViolatingSitesResponse = ViolatingSitesResponse
  { -- | The list of violating sites.
    violatingSites :: (Core.Maybe [SiteSummaryResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ViolatingSitesResponse' with the minimum fields required to make a request.
newViolatingSitesResponse ::
  ViolatingSitesResponse
newViolatingSitesResponse =
  ViolatingSitesResponse {violatingSites = Core.Nothing}

instance Core.FromJSON ViolatingSitesResponse where
  parseJSON =
    Core.withObject
      "ViolatingSitesResponse"
      ( \o ->
          ViolatingSitesResponse Core.<$> (o Core..:? "violatingSites")
      )

instance Core.ToJSON ViolatingSitesResponse where
  toJSON ViolatingSitesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("violatingSites" Core..=) Core.<$> violatingSites]
      )
