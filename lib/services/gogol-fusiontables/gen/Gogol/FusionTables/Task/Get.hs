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
-- Module      : Gogol.FusionTables.Task.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific task by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.get@.
module Gogol.FusionTables.Task.Get
  ( -- * Resource
    FusionTablesTaskGetResource,

    -- ** Constructing a Request
    newFusionTablesTaskGet,
    FusionTablesTaskGet,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.task.get@ method which the
-- 'FusionTablesTaskGet' request conforms to.
type FusionTablesTaskGetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "tasks"
    Core.:> Core.Capture "taskId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Task

-- | Retrieves a specific task by its ID.
--
-- /See:/ 'newFusionTablesTaskGet' smart constructor.
data FusionTablesTaskGet = FusionTablesTaskGet
  { -- | Table to which the task belongs.
    tableId :: Core.Text,
    -- | The identifier of the task to get.
    taskId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTaskGet' with the minimum fields required to make a request.
newFusionTablesTaskGet ::
  -- |  Table to which the task belongs. See 'tableId'.
  Core.Text ->
  -- |  The identifier of the task to get. See 'taskId'.
  Core.Text ->
  FusionTablesTaskGet
newFusionTablesTaskGet tableId taskId =
  FusionTablesTaskGet {tableId = tableId, taskId = taskId}

instance Core.GoogleRequest FusionTablesTaskGet where
  type Rs FusionTablesTaskGet = Task
  type
    Scopes FusionTablesTaskGet =
      '[ "https://www.googleapis.com/auth/fusiontables",
         "https://www.googleapis.com/auth/fusiontables.readonly"
       ]
  requestClient FusionTablesTaskGet {..} =
    go
      tableId
      taskId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTaskGetResource
          )
          Core.mempty
