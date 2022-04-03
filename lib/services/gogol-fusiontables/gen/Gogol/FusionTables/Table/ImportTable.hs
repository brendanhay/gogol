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
-- Module      : Gogol.FusionTables.Table.ImportTable
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a new table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.importTable@.
module Gogol.FusionTables.Table.ImportTable
  ( -- * Resource
    FusionTablesTableImportTableResource,

    -- ** Constructing a Request
    FusionTablesTableImportTable (..),
    newFusionTablesTableImportTable,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.table.importTable@ method which the
-- 'FusionTablesTableImportTable' request conforms to.
type FusionTablesTableImportTableResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> "import"
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "delimiter" Core.Text
    Core.:> Core.QueryParam "encoding" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Table
    Core.:<|> "upload"
      Core.:> "fusiontables"
      Core.:> "v2"
      Core.:> "tables"
      Core.:> "import"
      Core.:> Core.QueryParam "name" Core.Text
      Core.:> Core.QueryParam "delimiter" Core.Text
      Core.:> Core.QueryParam "encoding" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.AltMedia
      Core.:> Core.AltMedia
      Core.:> Core.Post '[Core.JSON] Table

-- | Imports a new table.
--
-- /See:/ 'newFusionTablesTableImportTable' smart constructor.
data FusionTablesTableImportTable = FusionTablesTableImportTable
  { -- | The delimiter used to separate cell values. This can only consist of a single character. Default is ,.
    delimiter :: (Core.Maybe Core.Text),
    -- | The encoding of the content. Default is UTF-8. Use auto-detect if you are unsure of the encoding.
    encoding :: (Core.Maybe Core.Text),
    -- | The name to be assigned to the new table.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableImportTable' with the minimum fields required to make a request.
newFusionTablesTableImportTable ::
  -- |  The name to be assigned to the new table. See 'name'.
  Core.Text ->
  FusionTablesTableImportTable
newFusionTablesTableImportTable name =
  FusionTablesTableImportTable
    { delimiter = Core.Nothing,
      encoding = Core.Nothing,
      name = name
    }

instance
  Core.GoogleRequest
    FusionTablesTableImportTable
  where
  type Rs FusionTablesTableImportTable = Table
  type
    Scopes FusionTablesTableImportTable =
      '[Fusiontables'FullControl]
  requestClient FusionTablesTableImportTable {..} =
    go
      (Core.Just name)
      delimiter
      encoding
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTableImportTableResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload FusionTablesTableImportTable)
  where
  type
    Rs
      (Core.MediaUpload FusionTablesTableImportTable) =
      Table
  type
    Scopes
      (Core.MediaUpload FusionTablesTableImportTable) =
      Core.Scopes FusionTablesTableImportTable
  requestClient
    ( Core.MediaUpload
        FusionTablesTableImportTable {..}
        body
      ) =
      go
        (Core.Just name)
        delimiter
        encoding
        (Core.Just Core.AltJSON)
        (Core.Just Core.AltMedia)
        body
        fusionTablesService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy FusionTablesTableImportTableResource
            )
            Core.mempty
