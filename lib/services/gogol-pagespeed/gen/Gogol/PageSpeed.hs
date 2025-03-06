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
-- Module      : Gogol.PageSpeed
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The PageSpeed Insights API lets you analyze the performance of your website with a simple API. It offers tailored suggestions for how you can optimize your site, and lets you easily integrate PageSpeed Insights analysis into your development tools and workflow.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v5/about PageSpeed Insights API Reference>
module Gogol.PageSpeed
  ( -- * Configuration
    pageSpeedService,

    -- * OAuth Scopes
    OAuth2'OpenID,

    -- * Resources

    -- ** pagespeedonline.pagespeedapi.runpagespeed
    PagespeedonlinePagespeedapiRunpagespeedResource,
    PagespeedonlinePagespeedapiRunpagespeed (..),
    newPagespeedonlinePagespeedapiRunpagespeed,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AuditRefs
    AuditRefs (..),
    newAuditRefs,

    -- ** Bucket
    Bucket (..),
    newBucket,

    -- ** Categories
    Categories (..),
    newCategories,

    -- ** CategoryGroupV5
    CategoryGroupV5 (..),
    newCategoryGroupV5,

    -- ** ConfigSettings
    ConfigSettings (..),
    newConfigSettings,

    -- ** Environment
    Environment (..),
    newEnvironment,

    -- ** Environment_Credits
    Environment_Credits (..),
    newEnvironment_Credits,

    -- ** I18n
    I18n (..),
    newI18n,

    -- ** LhrEntity
    LhrEntity (..),
    newLhrEntity,

    -- ** LighthouseAuditResultV5
    LighthouseAuditResultV5 (..),
    newLighthouseAuditResultV5,

    -- ** LighthouseAuditResultV5_Details
    LighthouseAuditResultV5_Details (..),
    newLighthouseAuditResultV5_Details,

    -- ** LighthouseCategoryV5
    LighthouseCategoryV5 (..),
    newLighthouseCategoryV5,

    -- ** LighthouseResultV5
    LighthouseResultV5 (..),
    newLighthouseResultV5,

    -- ** LighthouseResultV5_Audits
    LighthouseResultV5_Audits (..),
    newLighthouseResultV5_Audits,

    -- ** LighthouseResultV5_CategoryGroups
    LighthouseResultV5_CategoryGroups (..),
    newLighthouseResultV5_CategoryGroups,

    -- ** MetricSavings
    MetricSavings (..),
    newMetricSavings,

    -- ** PagespeedApiLoadingExperienceV5
    PagespeedApiLoadingExperienceV5 (..),
    newPagespeedApiLoadingExperienceV5,

    -- ** PagespeedApiLoadingExperienceV5_Metrics
    PagespeedApiLoadingExperienceV5_Metrics (..),
    newPagespeedApiLoadingExperienceV5_Metrics,

    -- ** PagespeedApiPagespeedResponseV5
    PagespeedApiPagespeedResponseV5 (..),
    newPagespeedApiPagespeedResponseV5,

    -- ** PagespeedVersion
    PagespeedVersion (..),
    newPagespeedVersion,

    -- ** RendererFormattedStrings
    RendererFormattedStrings (..),
    newRendererFormattedStrings,

    -- ** RuntimeError
    RuntimeError (..),
    newRuntimeError,

    -- ** StackPack
    StackPack (..),
    newStackPack,

    -- ** StackPack_Descriptions
    StackPack_Descriptions (..),
    newStackPack_Descriptions,

    -- ** Timing
    Timing (..),
    newTiming,

    -- ** UserPageLoadMetricV5
    UserPageLoadMetricV5 (..),
    newUserPageLoadMetricV5,

    -- ** PagespeedapiRunpagespeedCategory
    PagespeedapiRunpagespeedCategory (..),

    -- ** PagespeedapiRunpagespeedStrategy
    PagespeedapiRunpagespeedStrategy (..),
  )
where

import Gogol.PageSpeed.Pagespeedonline.Pagespeedapi.Runpagespeed
import Gogol.PageSpeed.Types
