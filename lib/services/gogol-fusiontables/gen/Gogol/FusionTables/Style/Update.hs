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
-- Module      : Gogol.FusionTables.Style.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.update@.
module Gogol.FusionTables.Style.Update
  ( -- * Resource
    FusionTablesStyleUpdateResource,

    -- ** Constructing a Request
    FusionTablesStyleUpdate (..),
    newFusionTablesStyleUpdate,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.style.update@ method which the
-- 'FusionTablesStyleUpdate' request conforms to.
type FusionTablesStyleUpdateResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "styles"
    Core.:> Core.Capture "styleId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StyleSetting
    Core.:> Core.Put '[Core.JSON] StyleSetting

-- | Updates an existing style.
--
-- /See:/ 'newFusionTablesStyleUpdate' smart constructor.
data FusionTablesStyleUpdate = FusionTablesStyleUpdate
  { -- | Multipart request metadata.
    payload :: StyleSetting,
    -- | Identifier (within a table) for the style being updated.
    styleId :: Core.Int32,
    -- | Table whose style is being updated.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesStyleUpdate' with the minimum fields required to make a request.
newFusionTablesStyleUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  StyleSetting ->
  -- |  Identifier (within a table) for the style being updated. See 'styleId'.
  Core.Int32 ->
  -- |  Table whose style is being updated. See 'tableId'.
  Core.Text ->
  FusionTablesStyleUpdate
newFusionTablesStyleUpdate payload styleId tableId =
  FusionTablesStyleUpdate
    { payload = payload,
      styleId = styleId,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesStyleUpdate where
  type Rs FusionTablesStyleUpdate = StyleSetting
  type
    Scopes FusionTablesStyleUpdate =
      '[Fusiontables'FullControl]
  requestClient FusionTablesStyleUpdate {..} =
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
              Core.Proxy FusionTablesStyleUpdateResource
          )
          Core.mempty
