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
-- Module      : Network.Google.Fonts.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Fonts.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * WebfontsListSort
    WebfontsListSort
      ( WebfontsListSort_SORTUNDEFINED,
        WebfontsListSort_Alpha,
        WebfontsListSort_Date,
        WebfontsListSort_Popularity,
        WebfontsListSort_Style,
        WebfontsListSort_Trending,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

-- | Enables sorting of the list.
newtype WebfontsListSort = WebfontsListSort {fromWebfontsListSort :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No sorting specified, use the default sorting method.
pattern WebfontsListSort_SORTUNDEFINED :: WebfontsListSort
pattern WebfontsListSort_SORTUNDEFINED = WebfontsListSort "SORT_UNDEFINED"

-- | Sort alphabetically
pattern WebfontsListSort_Alpha :: WebfontsListSort
pattern WebfontsListSort_Alpha = WebfontsListSort "ALPHA"

-- | Sort by date added
pattern WebfontsListSort_Date :: WebfontsListSort
pattern WebfontsListSort_Date = WebfontsListSort "DATE"

-- | Sort by popularity
pattern WebfontsListSort_Popularity :: WebfontsListSort
pattern WebfontsListSort_Popularity = WebfontsListSort "POPULARITY"

-- | Sort by number of styles
pattern WebfontsListSort_Style :: WebfontsListSort
pattern WebfontsListSort_Style = WebfontsListSort "STYLE"

-- | Sort by trending
pattern WebfontsListSort_Trending :: WebfontsListSort
pattern WebfontsListSort_Trending = WebfontsListSort "TRENDING"

{-# COMPLETE
  WebfontsListSort_SORTUNDEFINED,
  WebfontsListSort_Alpha,
  WebfontsListSort_Date,
  WebfontsListSort_Popularity,
  WebfontsListSort_Style,
  WebfontsListSort_Trending,
  WebfontsListSort
  #-}
