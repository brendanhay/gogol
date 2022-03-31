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
-- Module      : Gogol.FusionTables.Style.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing style. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.patch@.
module Gogol.FusionTables.Style.Patch
  ( -- * Resource
    FusionTablesStylePatchResource,

    -- ** Constructing a Request
    newFusionTablesStylePatch,
    FusionTablesStylePatch,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.style.patch@ method which the
-- 'FusionTablesStylePatch' request conforms to.
type FusionTablesStylePatchResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "styles"
    Core.:> Core.Capture "styleId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StyleSetting
    Core.:> Core.Patch '[Core.JSON] StyleSetting

-- | Updates an existing style. This method supports patch semantics.
--
-- /See:/ 'newFusionTablesStylePatch' smart constructor.
data FusionTablesStylePatch = FusionTablesStylePatch
  { -- | Multipart request metadata.
    payload :: StyleSetting,
    -- | Identifier (within a table) for the style being updated.
    styleId :: Core.Int32,
    -- | Table whose style is being updated.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesStylePatch' with the minimum fields required to make a request.
newFusionTablesStylePatch ::
  -- |  Multipart request metadata. See 'payload'.
  StyleSetting ->
  -- |  Identifier (within a table) for the style being updated. See 'styleId'.
  Core.Int32 ->
  -- |  Table whose style is being updated. See 'tableId'.
  Core.Text ->
  FusionTablesStylePatch
newFusionTablesStylePatch payload styleId tableId =
  FusionTablesStylePatch
    { payload = payload,
      styleId = styleId,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesStylePatch where
  type Rs FusionTablesStylePatch = StyleSetting
  type
    Scopes FusionTablesStylePatch =
      '[Fusiontables'FullControl]
  requestClient FusionTablesStylePatch {..} =
    go
      tableId
      styleId
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesStylePatchResource
          )
          Core.mempty
