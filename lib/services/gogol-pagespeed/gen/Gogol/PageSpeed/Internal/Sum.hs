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
-- Module      : Gogol.PageSpeed.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.PageSpeed.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * PagespeedapiRunpagespeedCategory
    PagespeedapiRunpagespeedCategory
      (
        PagespeedapiRunpagespeedCategory_CATEGORYUNSPECIFIED,
        PagespeedapiRunpagespeedCategory_Accessibility,
        PagespeedapiRunpagespeedCategory_BESTPRACTICES,
        PagespeedapiRunpagespeedCategory_Performance,
        PagespeedapiRunpagespeedCategory_Pwa,
        PagespeedapiRunpagespeedCategory_Seo,
        ..
      ),

    -- * PagespeedapiRunpagespeedStrategy
    PagespeedapiRunpagespeedStrategy
      (
        PagespeedapiRunpagespeedStrategy_STRATEGYUNSPECIFIED,
        PagespeedapiRunpagespeedStrategy_Desktop,
        PagespeedapiRunpagespeedStrategy_Mobile,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | A Lighthouse category to run; if none are given, only Performance category will be run
newtype PagespeedapiRunpagespeedCategory = PagespeedapiRunpagespeedCategory { fromPagespeedapiRunpagespeedCategory :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default UNDEFINED category.
pattern PagespeedapiRunpagespeedCategory_CATEGORYUNSPECIFIED :: PagespeedapiRunpagespeedCategory
pattern PagespeedapiRunpagespeedCategory_CATEGORYUNSPECIFIED = PagespeedapiRunpagespeedCategory "CATEGORY_UNSPECIFIED"

-- | Accessibility (a11y), category pertaining to a website\'s capacity to be accessible to all users.
pattern PagespeedapiRunpagespeedCategory_Accessibility :: PagespeedapiRunpagespeedCategory
pattern PagespeedapiRunpagespeedCategory_Accessibility = PagespeedapiRunpagespeedCategory "ACCESSIBILITY"

-- | Best Practices, category pertaining to a website\'s conformance to web best practice.
pattern PagespeedapiRunpagespeedCategory_BESTPRACTICES :: PagespeedapiRunpagespeedCategory
pattern PagespeedapiRunpagespeedCategory_BESTPRACTICES = PagespeedapiRunpagespeedCategory "BEST_PRACTICES"

-- | Performance, category pertaining to a website\'s performance.
pattern PagespeedapiRunpagespeedCategory_Performance :: PagespeedapiRunpagespeedCategory
pattern PagespeedapiRunpagespeedCategory_Performance = PagespeedapiRunpagespeedCategory "PERFORMANCE"

-- | Progressive Web App (PWA), category pertaining to a website\'s ability to be run as a PWA.
pattern PagespeedapiRunpagespeedCategory_Pwa :: PagespeedapiRunpagespeedCategory
pattern PagespeedapiRunpagespeedCategory_Pwa = PagespeedapiRunpagespeedCategory "PWA"

-- | Search Engine Optimization (SEO), category pertaining to a website\'s ability to be indexed by search engines.
pattern PagespeedapiRunpagespeedCategory_Seo :: PagespeedapiRunpagespeedCategory
pattern PagespeedapiRunpagespeedCategory_Seo = PagespeedapiRunpagespeedCategory "SEO"

{-# COMPLETE
  PagespeedapiRunpagespeedCategory_CATEGORYUNSPECIFIED,
  PagespeedapiRunpagespeedCategory_Accessibility,
  PagespeedapiRunpagespeedCategory_BESTPRACTICES,
  PagespeedapiRunpagespeedCategory_Performance,
  PagespeedapiRunpagespeedCategory_Pwa,
  PagespeedapiRunpagespeedCategory_Seo,
  PagespeedapiRunpagespeedCategory #-}

-- | The analysis strategy (desktop or mobile) to use, and desktop is the default
newtype PagespeedapiRunpagespeedStrategy = PagespeedapiRunpagespeedStrategy { fromPagespeedapiRunpagespeedStrategy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | UNDEFINED.
pattern PagespeedapiRunpagespeedStrategy_STRATEGYUNSPECIFIED :: PagespeedapiRunpagespeedStrategy
pattern PagespeedapiRunpagespeedStrategy_STRATEGYUNSPECIFIED = PagespeedapiRunpagespeedStrategy "STRATEGY_UNSPECIFIED"

-- | Fetch and analyze the URL for desktop browsers.
pattern PagespeedapiRunpagespeedStrategy_Desktop :: PagespeedapiRunpagespeedStrategy
pattern PagespeedapiRunpagespeedStrategy_Desktop = PagespeedapiRunpagespeedStrategy "DESKTOP"

-- | Fetch and analyze the URL for mobile devices.
pattern PagespeedapiRunpagespeedStrategy_Mobile :: PagespeedapiRunpagespeedStrategy
pattern PagespeedapiRunpagespeedStrategy_Mobile = PagespeedapiRunpagespeedStrategy "MOBILE"

{-# COMPLETE
  PagespeedapiRunpagespeedStrategy_STRATEGYUNSPECIFIED,
  PagespeedapiRunpagespeedStrategy_Desktop,
  PagespeedapiRunpagespeedStrategy_Mobile,
  PagespeedapiRunpagespeedStrategy #-}
