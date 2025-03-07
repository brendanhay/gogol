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
-- Module      : Gogol.FusionTables.Column.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name or type of an existing column.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.update@.
module Gogol.FusionTables.Column.Update
  ( -- * Resource
    FusionTablesColumnUpdateResource,

    -- ** Constructing a Request
    FusionTablesColumnUpdate (..),
    newFusionTablesColumnUpdate,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.column.update@ method which the
-- 'FusionTablesColumnUpdate' request conforms to.
type FusionTablesColumnUpdateResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "columns"
    Core.:> Core.Capture "columnId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Column
    Core.:> Core.Put '[Core.JSON] Column

-- | Updates the name or type of an existing column.
--
-- /See:/ 'newFusionTablesColumnUpdate' smart constructor.
data FusionTablesColumnUpdate = FusionTablesColumnUpdate
  { -- | Name or identifier for the column that is being updated.
    columnId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Column,
    -- | Table for which the column is being updated.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesColumnUpdate' with the minimum fields required to make a request.
newFusionTablesColumnUpdate ::
  -- |  Name or identifier for the column that is being updated. See 'columnId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Column ->
  -- |  Table for which the column is being updated. See 'tableId'.
  Core.Text ->
  FusionTablesColumnUpdate
newFusionTablesColumnUpdate columnId payload tableId =
  FusionTablesColumnUpdate
    { columnId = columnId,
      payload = payload,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesColumnUpdate where
  type Rs FusionTablesColumnUpdate = Column
  type Scopes FusionTablesColumnUpdate = '[Fusiontables'FullControl]
  requestClient FusionTablesColumnUpdate {..} =
    go
      tableId
      columnId
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesColumnUpdateResource)
          Core.mempty
