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
-- Module      : Gogol.FusionTables.Table.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing table. Unless explicitly requested, only the name, description, and attribution will be updated.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.update@.
module Gogol.FusionTables.Table.Update
  ( -- * Resource
    FusionTablesTableUpdateResource,

    -- ** Constructing a Request
    FusionTablesTableUpdate (..),
    newFusionTablesTableUpdate,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.table.update@ method which the
-- 'FusionTablesTableUpdate' request conforms to.
type FusionTablesTableUpdateResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> Core.QueryParam "replaceViewDefinition" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Table
    Core.:> Core.Put '[Core.JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name, description, and attribution will be updated.
--
-- /See:/ 'newFusionTablesTableUpdate' smart constructor.
data FusionTablesTableUpdate = FusionTablesTableUpdate
  { -- | Multipart request metadata.
    payload :: Table,
    -- | Whether the view definition is also updated. The specified view definition replaces the existing one. Only a view can be updated with a new definition.
    replaceViewDefinition :: (Core.Maybe Core.Bool),
    -- | ID of the table that is being updated.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableUpdate' with the minimum fields required to make a request.
newFusionTablesTableUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  Table ->
  -- |  ID of the table that is being updated. See 'tableId'.
  Core.Text ->
  FusionTablesTableUpdate
newFusionTablesTableUpdate payload tableId =
  FusionTablesTableUpdate
    { payload = payload,
      replaceViewDefinition = Core.Nothing,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesTableUpdate where
  type Rs FusionTablesTableUpdate = Table
  type Scopes FusionTablesTableUpdate = '[Fusiontables'FullControl]
  requestClient FusionTablesTableUpdate {..} =
    go
      tableId
      replaceViewDefinition
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesTableUpdateResource)
          Core.mempty
