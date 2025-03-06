{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.FusionTables.Template.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.delete@.
module Gogol.FusionTables.Template.Delete
  ( -- * Resource
    FusionTablesTemplateDeleteResource,

    -- ** Constructing a Request
    FusionTablesTemplateDelete (..),
    newFusionTablesTemplateDelete,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.template.delete@ method which the
-- 'FusionTablesTemplateDelete' request conforms to.
type FusionTablesTemplateDeleteResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "templates"
    Core.:> Core.Capture "templateId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a template
--
-- /See:/ 'newFusionTablesTemplateDelete' smart constructor.
data FusionTablesTemplateDelete = FusionTablesTemplateDelete
  { -- | Table from which the template is being deleted
    tableId :: Core.Text,
    -- | Identifier for the template which is being deleted
    templateId :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTemplateDelete' with the minimum fields required to make a request.
newFusionTablesTemplateDelete ::
  -- |  Table from which the template is being deleted See 'tableId'.
  Core.Text ->
  -- |  Identifier for the template which is being deleted See 'templateId'.
  Core.Int32 ->
  FusionTablesTemplateDelete
newFusionTablesTemplateDelete tableId templateId =
  FusionTablesTemplateDelete
    { tableId = tableId,
      templateId = templateId
    }

instance Core.GoogleRequest FusionTablesTemplateDelete where
  type Rs FusionTablesTemplateDelete = ()
  type
    Scopes FusionTablesTemplateDelete =
      '[Fusiontables'FullControl]
  requestClient FusionTablesTemplateDelete {..} =
    go
      tableId
      templateId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesTemplateDeleteResource)
          Core.mempty
