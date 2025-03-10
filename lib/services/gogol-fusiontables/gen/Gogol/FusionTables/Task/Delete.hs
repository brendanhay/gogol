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
-- Module      : Gogol.FusionTables.Task.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific task by its ID, unless that task has already started running.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.delete@.
module Gogol.FusionTables.Task.Delete
  ( -- * Resource
    FusionTablesTaskDeleteResource,

    -- ** Constructing a Request
    FusionTablesTaskDelete (..),
    newFusionTablesTaskDelete,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.task.delete@ method which the
-- 'FusionTablesTaskDelete' request conforms to.
type FusionTablesTaskDeleteResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "tasks"
    Core.:> Core.Capture "taskId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a specific task by its ID, unless that task has already started running.
--
-- /See:/ 'newFusionTablesTaskDelete' smart constructor.
data FusionTablesTaskDelete = FusionTablesTaskDelete
  { -- | Table from which the task is being deleted.
    tableId :: Core.Text,
    -- | The identifier of the task to delete.
    taskId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTaskDelete' with the minimum fields required to make a request.
newFusionTablesTaskDelete ::
  -- |  Table from which the task is being deleted. See 'tableId'.
  Core.Text ->
  -- |  The identifier of the task to delete. See 'taskId'.
  Core.Text ->
  FusionTablesTaskDelete
newFusionTablesTaskDelete tableId taskId =
  FusionTablesTaskDelete {tableId = tableId, taskId = taskId}

instance Core.GoogleRequest FusionTablesTaskDelete where
  type Rs FusionTablesTaskDelete = ()
  type Scopes FusionTablesTaskDelete = '[Fusiontables'FullControl]
  requestClient FusionTablesTaskDelete {..} =
    go tableId taskId (Core.Just Core.AltJSON) fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesTaskDeleteResource)
          Core.mempty
