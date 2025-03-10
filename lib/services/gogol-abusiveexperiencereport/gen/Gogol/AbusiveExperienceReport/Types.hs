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
-- Module      : Gogol.AbusiveExperienceReport.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AbusiveExperienceReport.Types
  ( -- * Configuration
    abusiveExperienceReportService,

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

import Gogol.AbusiveExperienceReport.Internal.Product
import Gogol.AbusiveExperienceReport.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Abusive Experience Report API. This contains the host and root path used as a starting point for constructing service requests.
abusiveExperienceReportService :: Core.ServiceConfig
abusiveExperienceReportService =
  Core.defaultService
    (Core.ServiceId "abusiveexperiencereport:v1")
    "abusiveexperiencereport.googleapis.com"
