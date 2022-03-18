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
-- Module      : Gogol.FusionTables.Column.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified column.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.delete@.
module Gogol.FusionTables.Column.Delete
  ( -- * Resource
    FusionTablesColumnDeleteResource,

    -- ** Constructing a Request
    newFusionTablesColumnDelete,
    FusionTablesColumnDelete,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.column.delete@ method which the
-- 'FusionTablesColumnDelete' request conforms to.
type FusionTablesColumnDeleteResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "columns"
    Core.:> Core.Capture "columnId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes the specified column.
--
-- /See:/ 'newFusionTablesColumnDelete' smart constructor.
data FusionTablesColumnDelete = FusionTablesColumnDelete
  { -- | Name or identifier for the column being deleted.
    columnId :: Core.Text,
    -- | Table from which the column is being deleted.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesColumnDelete' with the minimum fields required to make a request.
newFusionTablesColumnDelete ::
  -- |  Name or identifier for the column being deleted. See 'columnId'.
  Core.Text ->
  -- |  Table from which the column is being deleted. See 'tableId'.
  Core.Text ->
  FusionTablesColumnDelete
newFusionTablesColumnDelete columnId tableId =
  FusionTablesColumnDelete {columnId = columnId, tableId = tableId}

instance Core.GoogleRequest FusionTablesColumnDelete where
  type Rs FusionTablesColumnDelete = ()
  type
    Scopes FusionTablesColumnDelete =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesColumnDelete {..} =
    go
      tableId
      columnId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesColumnDeleteResource
          )
          Core.mempty
