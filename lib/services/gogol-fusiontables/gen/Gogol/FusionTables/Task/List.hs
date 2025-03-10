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
-- Module      : Gogol.FusionTables.Task.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of tasks.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.list@.
module Gogol.FusionTables.Task.List
  ( -- * Resource
    FusionTablesTaskListResource,

    -- ** Constructing a Request
    FusionTablesTaskList (..),
    newFusionTablesTaskList,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.task.list@ method which the
-- 'FusionTablesTaskList' request conforms to.
type FusionTablesTaskListResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "tasks"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TaskList

-- | Retrieves a list of tasks.
--
-- /See:/ 'newFusionTablesTaskList' smart constructor.
data FusionTablesTaskList = FusionTablesTaskList
  { -- | Maximum number of tasks to return. Default is 5.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Continuation token specifying which result page to return.
    pageToken :: (Core.Maybe Core.Text),
    -- | Index of the first result returned in the current page.
    startIndex :: (Core.Maybe Core.Word32),
    -- | Table whose tasks are being listed.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTaskList' with the minimum fields required to make a request.
newFusionTablesTaskList ::
  -- |  Table whose tasks are being listed. See 'tableId'.
  Core.Text ->
  FusionTablesTaskList
newFusionTablesTaskList tableId =
  FusionTablesTaskList
    { maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      startIndex = Core.Nothing,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesTaskList where
  type Rs FusionTablesTaskList = TaskList
  type
    Scopes FusionTablesTaskList =
      '[Fusiontables'FullControl, Fusiontables'Readonly]
  requestClient FusionTablesTaskList {..} =
    go
      tableId
      maxResults
      pageToken
      startIndex
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesTaskListResource)
          Core.mempty
