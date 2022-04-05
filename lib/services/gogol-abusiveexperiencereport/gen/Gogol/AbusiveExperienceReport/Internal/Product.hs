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
-- Module      : Gogol.AbusiveExperienceReport.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AbusiveExperienceReport.Internal.Product
  ( -- * SiteSummaryResponse
    SiteSummaryResponse (..),
    newSiteSummaryResponse,

    -- * ViolatingSitesResponse
    ViolatingSitesResponse (..),
    newViolatingSitesResponse,
  )
where

import Gogol.AbusiveExperienceReport.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Response message for GetSiteSummary.
--
-- /See:/ 'newSiteSummaryResponse' smart constructor.
data SiteSummaryResponse = SiteSummaryResponse
  { -- | The site\'s Abusive Experience Report status.
    abusiveStatus :: (Core.Maybe SiteSummaryResponse_AbusiveStatus),
    -- | The time at which <https://support.google.com/webtools/answer/7538608 enforcement> against the site began or will begin. Not set when the filter_status is OFF.
    enforcementTime :: (Core.Maybe Core.DateTime),
    -- | The site\'s <https://support.google.com/webtools/answer/7538608 enforcement status>.
    filterStatus :: (Core.Maybe SiteSummaryResponse_FilterStatus),
    -- | The time at which the site\'s status last changed.
    lastChangeTime :: (Core.Maybe Core.DateTime),
    -- | A link to the full Abusive Experience Report for the site. Not set in ViolatingSitesResponse. Note that you must complete the <https://support.google.com/webmasters/answer/9008080 Search Console verification process> for the site before you can access the full report.
    reportUrl :: (Core.Maybe Core.Text),
    -- | The name of the reviewed site, e.g. @google.com@.
    reviewedSite :: (Core.Maybe Core.Text),
    -- | Whether the site is currently under review.
    underReview :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteSummaryResponse' with the minimum fields required to make a request.
newSiteSummaryResponse ::
  SiteSummaryResponse
newSiteSummaryResponse =
  SiteSummaryResponse
    { abusiveStatus = Core.Nothing,
      enforcementTime = Core.Nothing,
      filterStatus = Core.Nothing,
      lastChangeTime = Core.Nothing,
      reportUrl = Core.Nothing,
      reviewedSite = Core.Nothing,
      underReview = Core.Nothing
    }

instance Core.FromJSON SiteSummaryResponse where
  parseJSON =
    Core.withObject
      "SiteSummaryResponse"
      ( \o ->
          SiteSummaryResponse
            Core.<$> (o Core..:? "abusiveStatus")
            Core.<*> (o Core..:? "enforcementTime")
            Core.<*> (o Core..:? "filterStatus")
            Core.<*> (o Core..:? "lastChangeTime")
            Core.<*> (o Core..:? "reportUrl")
            Core.<*> (o Core..:? "reviewedSite")
            Core.<*> (o Core..:? "underReview")
      )

instance Core.ToJSON SiteSummaryResponse where
  toJSON SiteSummaryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("abusiveStatus" Core..=) Core.<$> abusiveStatus,
            ("enforcementTime" Core..=) Core.<$> enforcementTime,
            ("filterStatus" Core..=) Core.<$> filterStatus,
            ("lastChangeTime" Core..=) Core.<$> lastChangeTime,
            ("reportUrl" Core..=) Core.<$> reportUrl,
            ("reviewedSite" Core..=) Core.<$> reviewedSite,
            ("underReview" Core..=) Core.<$> underReview
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
          ViolatingSitesResponse
            Core.<$> (o Core..:? "violatingSites")
      )

instance Core.ToJSON ViolatingSitesResponse where
  toJSON ViolatingSitesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("violatingSites" Core..=) Core.<$> violatingSites]
      )
