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
-- Module      : Gogol.FusionTables.Template.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new template for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.insert@.
module Gogol.FusionTables.Template.Insert
  ( -- * Resource
    FusionTablesTemplateInsertResource,

    -- ** Constructing a Request
    FusionTablesTemplateInsert (..),
    newFusionTablesTemplateInsert,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.template.insert@ method which the
-- 'FusionTablesTemplateInsert' request conforms to.
type FusionTablesTemplateInsertResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "templates"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Template
    Core.:> Core.Post '[Core.JSON] Template

-- | Creates a new template for the table.
--
-- /See:/ 'newFusionTablesTemplateInsert' smart constructor.
data FusionTablesTemplateInsert = FusionTablesTemplateInsert
  { -- | Multipart request metadata.
    payload :: Template,
    -- | Table for which a new template is being created
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTemplateInsert' with the minimum fields required to make a request.
newFusionTablesTemplateInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Template ->
  -- |  Table for which a new template is being created See 'tableId'.
  Core.Text ->
  FusionTablesTemplateInsert
newFusionTablesTemplateInsert payload tableId =
  FusionTablesTemplateInsert {payload = payload, tableId = tableId}

instance Core.GoogleRequest FusionTablesTemplateInsert where
  type Rs FusionTablesTemplateInsert = Template
  type
    Scopes FusionTablesTemplateInsert =
      '[Fusiontables'FullControl]
  requestClient FusionTablesTemplateInsert {..} =
    go tableId (Core.Just Core.AltJSON) payload fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesTemplateInsertResource)
          Core.mempty
