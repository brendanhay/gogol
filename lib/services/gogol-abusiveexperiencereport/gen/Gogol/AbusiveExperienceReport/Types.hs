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
-- Module      : Gogol.AbusiveExperienceReport.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AbusiveExperienceReport.Types
    (
    -- * Configuration
      abusiveExperienceReportService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** SiteSummaryResponse
    , SiteSummaryResponse (..)
    , newSiteSummaryResponse

    -- ** SiteSummaryResponse_AbusiveStatus
    , SiteSummaryResponse_AbusiveStatus (..)

    -- ** SiteSummaryResponse_FilterStatus
    , SiteSummaryResponse_FilterStatus (..)

    -- ** ViolatingSitesResponse
    , ViolatingSitesResponse (..)
    , newViolatingSitesResponse
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AbusiveExperienceReport.Internal.Product
import Gogol.AbusiveExperienceReport.Internal.Sum

-- | Default request referring to version @v1@ of the Abusive Experience Report API. This contains the host and root path used as a starting point for constructing service requests.
abusiveExperienceReportService :: Core.ServiceConfig
abusiveExperienceReportService
  = Core.defaultService
      (Core.ServiceId "abusiveexperiencereport:v1")
      "abusiveexperiencereport.googleapis.com"
