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
-- Module      : Network.Google.FusionTables.Column.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name or type of an existing column. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.patch@.
module Network.Google.FusionTables.Column.Patch
  ( -- * Resource
    FusionTablesColumnPatchResource,

    -- ** Constructing a Request
    newFusionTablesColumnPatch,
    FusionTablesColumnPatch,
  )
where

import Network.Google.FusionTables.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fusiontables.column.patch@ method which the
-- 'FusionTablesColumnPatch' request conforms to.
type FusionTablesColumnPatchResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "columns"
    Core.:> Core.Capture "columnId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Column
    Core.:> Core.Patch '[Core.JSON] Column

-- | Updates the name or type of an existing column. This method supports patch semantics.
--
-- /See:/ 'newFusionTablesColumnPatch' smart constructor.
data FusionTablesColumnPatch = FusionTablesColumnPatch
  { -- | Name or identifier for the column that is being updated.
    columnId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Column,
    -- | Table for which the column is being updated.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesColumnPatch' with the minimum fields required to make a request.
newFusionTablesColumnPatch ::
  -- |  Name or identifier for the column that is being updated. See 'columnId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Column ->
  -- |  Table for which the column is being updated. See 'tableId'.
  Core.Text ->
  FusionTablesColumnPatch
newFusionTablesColumnPatch columnId payload tableId =
  FusionTablesColumnPatch
    { columnId = columnId,
      payload = payload,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesColumnPatch where
  type Rs FusionTablesColumnPatch = Column
  type
    Scopes FusionTablesColumnPatch =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesColumnPatch {..} =
    go
      tableId
      columnId
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesColumnPatchResource
          )
          Core.mempty