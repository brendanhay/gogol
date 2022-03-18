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
-- Module      : Network.Google.AbusiveExperienceReport
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views Abusive Experience Report data, and gets a list of sites that have a significant number of abusive experiences.
--
-- /See:/ <https://developers.google.com/abusive-experience-report/ Abusive Experience Report API Reference>
module Network.Google.AbusiveExperienceReport
  ( -- * Configuration
    abusiveExperienceReportService,

    -- * Resources

    -- ** abusiveexperiencereport.sites.get
    AbusiveExperienceReportSitesGetResource,
    newAbusiveExperienceReportSitesGet,
    AbusiveExperienceReportSitesGet,

    -- ** abusiveexperiencereport.violatingSites.list
    AbusiveExperienceReportViolatingSitesListResource,
    newAbusiveExperienceReportViolatingSitesList,
    AbusiveExperienceReportViolatingSitesList,

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

import Network.Google.AbusiveExperienceReport.Sites.Get
import Network.Google.AbusiveExperienceReport.Types
import Network.Google.AbusiveExperienceReport.ViolatingSites.List
