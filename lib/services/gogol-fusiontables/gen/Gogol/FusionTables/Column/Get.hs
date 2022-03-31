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
-- Module      : Gogol.FusionTables.Column.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific column by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.get@.
module Gogol.FusionTables.Column.Get
  ( -- * Resource
    FusionTablesColumnGetResource,

    -- ** Constructing a Request
    newFusionTablesColumnGet,
    FusionTablesColumnGet,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.column.get@ method which the
-- 'FusionTablesColumnGet' request conforms to.
type FusionTablesColumnGetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "columns"
    Core.:> Core.Capture "columnId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Column

-- | Retrieves a specific column by its ID.
--
-- /See:/ 'newFusionTablesColumnGet' smart constructor.
data FusionTablesColumnGet = FusionTablesColumnGet
  { -- | Name or identifier for the column that is being requested.
    columnId :: Core.Text,
    -- | Table to which the column belongs.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesColumnGet' with the minimum fields required to make a request.
newFusionTablesColumnGet ::
  -- |  Name or identifier for the column that is being requested. See 'columnId'.
  Core.Text ->
  -- |  Table to which the column belongs. See 'tableId'.
  Core.Text ->
  FusionTablesColumnGet
newFusionTablesColumnGet columnId tableId =
  FusionTablesColumnGet {columnId = columnId, tableId = tableId}

instance Core.GoogleRequest FusionTablesColumnGet where
  type Rs FusionTablesColumnGet = Column
  type
    Scopes FusionTablesColumnGet =
      '[Fusiontables'FullControl, Fusiontables'Readonly]
  requestClient FusionTablesColumnGet {..} =
    go
      tableId
      columnId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesColumnGetResource
          )
          Core.mempty
