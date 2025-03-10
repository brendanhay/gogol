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
-- Module      : Gogol.ToolResults.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ToolResults.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * NonSdkApi_List
    NonSdkApi_List
      ( NonSdkApi_List_None,
        NonSdkApi_List_White,
        NonSdkApi_List_Black,
        NonSdkApi_List_Grey,
        NonSdkApi_List_GREYMAXO,
        NonSdkApi_List_GREYMAXP,
        NonSdkApi_List_GREYMAXQ,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | Which list this API appears on
newtype NonSdkApi_List = NonSdkApi_List {fromNonSdkApi_List :: Core.Text}
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

pattern NonSdkApi_List_None :: NonSdkApi_List
pattern NonSdkApi_List_None = NonSdkApi_List "NONE"

pattern NonSdkApi_List_White :: NonSdkApi_List
pattern NonSdkApi_List_White = NonSdkApi_List "WHITE"

pattern NonSdkApi_List_Black :: NonSdkApi_List
pattern NonSdkApi_List_Black = NonSdkApi_List "BLACK"

pattern NonSdkApi_List_Grey :: NonSdkApi_List
pattern NonSdkApi_List_Grey = NonSdkApi_List "GREY"

pattern NonSdkApi_List_GREYMAXO :: NonSdkApi_List
pattern NonSdkApi_List_GREYMAXO = NonSdkApi_List "GREY_MAX_O"

pattern NonSdkApi_List_GREYMAXP :: NonSdkApi_List
pattern NonSdkApi_List_GREYMAXP = NonSdkApi_List "GREY_MAX_P"

pattern NonSdkApi_List_GREYMAXQ :: NonSdkApi_List
pattern NonSdkApi_List_GREYMAXQ = NonSdkApi_List "GREY_MAX_Q"

{-# COMPLETE
  NonSdkApi_List_None,
  NonSdkApi_List_White,
  NonSdkApi_List_Black,
  NonSdkApi_List_Grey,
  NonSdkApi_List_GREYMAXO,
  NonSdkApi_List_GREYMAXP,
  NonSdkApi_List_GREYMAXQ,
  NonSdkApi_List
  #-}
