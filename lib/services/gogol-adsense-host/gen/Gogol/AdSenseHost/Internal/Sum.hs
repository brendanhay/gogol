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
-- Module      : Gogol.AdSenseHost.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AdSenseHost.Internal.Sum
  ( -- * AssociationsessionsStartProductCode
    AssociationsessionsStartProductCode
      ( AssociationsessionsStartProductCode_Afc,
        AssociationsessionsStartProductCode_Afg,
        AssociationsessionsStartProductCode_Afmc,
        AssociationsessionsStartProductCode_Afs,
        AssociationsessionsStartProductCode_Afv,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | Products to associate with the user.
newtype AssociationsessionsStartProductCode = AssociationsessionsStartProductCode {fromAssociationsessionsStartProductCode :: Core.Text}
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

-- | AdSense For Content
pattern AssociationsessionsStartProductCode_Afc :: AssociationsessionsStartProductCode
pattern AssociationsessionsStartProductCode_Afc = AssociationsessionsStartProductCode "AFC"

-- | AdSense For Games
pattern AssociationsessionsStartProductCode_Afg :: AssociationsessionsStartProductCode
pattern AssociationsessionsStartProductCode_Afg = AssociationsessionsStartProductCode "AFG"

-- | AdSense For Mobile Content - deprecated
pattern AssociationsessionsStartProductCode_Afmc :: AssociationsessionsStartProductCode
pattern AssociationsessionsStartProductCode_Afmc = AssociationsessionsStartProductCode "AFMC"

-- | AdSense For Search - deprecated
pattern AssociationsessionsStartProductCode_Afs :: AssociationsessionsStartProductCode
pattern AssociationsessionsStartProductCode_Afs = AssociationsessionsStartProductCode "AFS"

-- | AdSense For Video
pattern AssociationsessionsStartProductCode_Afv :: AssociationsessionsStartProductCode
pattern AssociationsessionsStartProductCode_Afv = AssociationsessionsStartProductCode "AFV"

{-# COMPLETE
  AssociationsessionsStartProductCode_Afc,
  AssociationsessionsStartProductCode_Afg,
  AssociationsessionsStartProductCode_Afmc,
  AssociationsessionsStartProductCode_Afs,
  AssociationsessionsStartProductCode_Afv,
  AssociationsessionsStartProductCode
  #-}
