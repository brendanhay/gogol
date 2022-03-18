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
-- Module      : Gogol.URLShortener.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.URLShortener.Internal.Sum
  (

    -- * UrlGetProjection
    UrlGetProjection
      (
        UrlGetProjection_ANALYTICSCLICKS,
        UrlGetProjection_ANALYTICSTOPSTRINGS,
        UrlGetProjection_Full,
        ..
      ),

    -- * UrlListProjection
    UrlListProjection
      (
        UrlListProjection_ANALYTICSCLICKS,
        UrlListProjection_Full,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | Additional information to return.
newtype UrlGetProjection = UrlGetProjection { fromUrlGetProjection :: Core.Text }
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

-- | Returns only click counts.
pattern UrlGetProjection_ANALYTICSCLICKS :: UrlGetProjection
pattern UrlGetProjection_ANALYTICSCLICKS = UrlGetProjection "ANALYTICS_CLICKS"

-- | Returns only top string counts.
pattern UrlGetProjection_ANALYTICSTOPSTRINGS :: UrlGetProjection
pattern UrlGetProjection_ANALYTICSTOPSTRINGS = UrlGetProjection "ANALYTICS_TOP_STRINGS"

-- | Returns the creation timestamp and all available analytics.
pattern UrlGetProjection_Full :: UrlGetProjection
pattern UrlGetProjection_Full = UrlGetProjection "FULL"

{-# COMPLETE
  UrlGetProjection_ANALYTICSCLICKS,
  UrlGetProjection_ANALYTICSTOPSTRINGS,
  UrlGetProjection_Full,
  UrlGetProjection #-}

-- | Additional information to return.
newtype UrlListProjection = UrlListProjection { fromUrlListProjection :: Core.Text }
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

-- | Returns short URL click counts.
pattern UrlListProjection_ANALYTICSCLICKS :: UrlListProjection
pattern UrlListProjection_ANALYTICSCLICKS = UrlListProjection "ANALYTICS_CLICKS"

-- | Returns short URL click counts.
pattern UrlListProjection_Full :: UrlListProjection
pattern UrlListProjection_Full = UrlListProjection "FULL"

{-# COMPLETE
  UrlListProjection_ANALYTICSCLICKS,
  UrlListProjection_Full,
  UrlListProjection #-}
