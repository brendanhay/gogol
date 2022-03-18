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
-- Module      : Gogol.FusionTables.Table.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.delete@.
module Gogol.FusionTables.Table.Delete
  ( -- * Resource
    FusionTablesTableDeleteResource,

    -- ** Constructing a Request
    newFusionTablesTableDelete,
    FusionTablesTableDelete,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.table.delete@ method which the
-- 'FusionTablesTableDelete' request conforms to.
type FusionTablesTableDeleteResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a table.
--
-- /See:/ 'newFusionTablesTableDelete' smart constructor.
newtype FusionTablesTableDelete = FusionTablesTableDelete
  { -- | ID of the table to be deleted.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableDelete' with the minimum fields required to make a request.
newFusionTablesTableDelete ::
  -- |  ID of the table to be deleted. See 'tableId'.
  Core.Text ->
  FusionTablesTableDelete
newFusionTablesTableDelete tableId = FusionTablesTableDelete {tableId = tableId}

instance Core.GoogleRequest FusionTablesTableDelete where
  type Rs FusionTablesTableDelete = ()
  type
    Scopes FusionTablesTableDelete =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesTableDelete {..} =
    go
      tableId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTableDeleteResource
          )
          Core.mempty
