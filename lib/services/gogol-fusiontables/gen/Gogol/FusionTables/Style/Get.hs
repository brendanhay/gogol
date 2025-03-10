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
-- Module      : Gogol.FusionTables.Style.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.get@.
module Gogol.FusionTables.Style.Get
  ( -- * Resource
    FusionTablesStyleGetResource,

    -- ** Constructing a Request
    FusionTablesStyleGet (..),
    newFusionTablesStyleGet,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.style.get@ method which the
-- 'FusionTablesStyleGet' request conforms to.
type FusionTablesStyleGetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "styles"
    Core.:> Core.Capture "styleId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StyleSetting

-- | Gets a specific style.
--
-- /See:/ 'newFusionTablesStyleGet' smart constructor.
data FusionTablesStyleGet = FusionTablesStyleGet
  { -- | Identifier (integer) for a specific style in a table
    styleId :: Core.Int32,
    -- | Table to which the requested style belongs
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesStyleGet' with the minimum fields required to make a request.
newFusionTablesStyleGet ::
  -- |  Identifier (integer) for a specific style in a table See 'styleId'.
  Core.Int32 ->
  -- |  Table to which the requested style belongs See 'tableId'.
  Core.Text ->
  FusionTablesStyleGet
newFusionTablesStyleGet styleId tableId =
  FusionTablesStyleGet {styleId = styleId, tableId = tableId}

instance Core.GoogleRequest FusionTablesStyleGet where
  type Rs FusionTablesStyleGet = StyleSetting
  type
    Scopes FusionTablesStyleGet =
      '[Fusiontables'FullControl, Fusiontables'Readonly]
  requestClient FusionTablesStyleGet {..} =
    go tableId styleId (Core.Just Core.AltJSON) fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesStyleGetResource)
          Core.mempty
