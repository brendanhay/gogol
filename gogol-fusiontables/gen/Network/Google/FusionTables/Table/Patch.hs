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
-- Module      : Network.Google.FusionTables.Table.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing table. Unless explicitly requested, only the name, description, and attribution will be updated. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.patch@.
module Network.Google.FusionTables.Table.Patch
  ( -- * Resource
    FusionTablesTablePatchResource,

    -- ** Constructing a Request
    newFusionTablesTablePatch,
    FusionTablesTablePatch,
  )
where

import Network.Google.FusionTables.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fusiontables.table.patch@ method which the
-- 'FusionTablesTablePatch' request conforms to.
type FusionTablesTablePatchResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> Core.QueryParam "replaceViewDefinition" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Table
    Core.:> Core.Patch '[Core.JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name, description, and attribution will be updated. This method supports patch semantics.
--
-- /See:/ 'newFusionTablesTablePatch' smart constructor.
data FusionTablesTablePatch = FusionTablesTablePatch
  { -- | Multipart request metadata.
    payload :: Table,
    -- | Whether the view definition is also updated. The specified view definition replaces the existing one. Only a view can be updated with a new definition.
    replaceViewDefinition :: (Core.Maybe Core.Bool),
    -- | ID of the table that is being updated.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTablePatch' with the minimum fields required to make a request.
newFusionTablesTablePatch ::
  -- |  Multipart request metadata. See 'payload'.
  Table ->
  -- |  ID of the table that is being updated. See 'tableId'.
  Core.Text ->
  FusionTablesTablePatch
newFusionTablesTablePatch payload tableId =
  FusionTablesTablePatch
    { payload = payload,
      replaceViewDefinition = Core.Nothing,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesTablePatch where
  type Rs FusionTablesTablePatch = Table
  type
    Scopes FusionTablesTablePatch =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesTablePatch {..} =
    go
      tableId
      replaceViewDefinition
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTablePatchResource
          )
          Core.mempty
