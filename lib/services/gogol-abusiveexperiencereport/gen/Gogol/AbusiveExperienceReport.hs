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
-- Module      : Gogol.AbusiveExperienceReport
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views Abusive Experience Report data, and gets a list of sites that have a significant number of abusive experiences.
--
-- /See:/ <https://developers.google.com/abusive-experience-report/ Abusive Experience Report API Reference>
module Gogol.AbusiveExperienceReport
  ( -- * Configuration
    abusiveExperienceReportService,

    -- * Resources

    -- ** abusiveexperiencereport.sites.get
    AbusiveExperienceReportSitesGetResource,
    AbusiveExperienceReportSitesGet (..),
    newAbusiveExperienceReportSitesGet,

    -- ** abusiveexperiencereport.violatingSites.list
    AbusiveExperienceReportViolatingSitesListResource,
    AbusiveExperienceReportViolatingSitesList (..),
    newAbusiveExperienceReportViolatingSitesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** SiteSummaryResponse
    SiteSummaryResponse (..),
    newSiteSummaryResponse,

    -- ** SiteSummaryResponse_AbusiveStatus
    SiteSummaryResponse_AbusiveStatus (..),

    -- ** SiteSummaryResponse_FilterStatus
    SiteSummaryResponse_FilterStatus (..),

    -- ** ViolatingSitesResponse
    ViolatingSitesResponse (..),
    newViolatingSitesResponse,
  )
where

import Gogol.AbusiveExperienceReport.Sites.Get
import Gogol.AbusiveExperienceReport.Types
import Gogol.AbusiveExperienceReport.ViolatingSites.List
