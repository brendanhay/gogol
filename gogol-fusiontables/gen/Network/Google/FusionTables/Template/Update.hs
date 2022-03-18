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
-- Module      : Network.Google.FusionTables.Template.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.update@.
module Network.Google.FusionTables.Template.Update
  ( -- * Resource
    FusionTablesTemplateUpdateResource,

    -- ** Constructing a Request
    newFusionTablesTemplateUpdate,
    FusionTablesTemplateUpdate,
  )
where

import Network.Google.FusionTables.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fusiontables.template.update@ method which the
-- 'FusionTablesTemplateUpdate' request conforms to.
type FusionTablesTemplateUpdateResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "templates"
    Core.:> Core.Capture "templateId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Template
    Core.:> Core.Put '[Core.JSON] Template

-- | Updates an existing template
--
-- /See:/ 'newFusionTablesTemplateUpdate' smart constructor.
data FusionTablesTemplateUpdate = FusionTablesTemplateUpdate
  { -- | Multipart request metadata.
    payload :: Template,
    -- | Table to which the updated template belongs
    tableId :: Core.Text,
    -- | Identifier for the template that is being updated
    templateId :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTemplateUpdate' with the minimum fields required to make a request.
newFusionTablesTemplateUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  Template ->
  -- |  Table to which the updated template belongs See 'tableId'.
  Core.Text ->
  -- |  Identifier for the template that is being updated See 'templateId'.
  Core.Int32 ->
  FusionTablesTemplateUpdate
newFusionTablesTemplateUpdate payload tableId templateId =
  FusionTablesTemplateUpdate
    { payload = payload,
      tableId = tableId,
      templateId = templateId
    }

instance
  Core.GoogleRequest
    FusionTablesTemplateUpdate
  where
  type Rs FusionTablesTemplateUpdate = Template
  type
    Scopes FusionTablesTemplateUpdate =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesTemplateUpdate {..} =
    go
      tableId
      templateId
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTemplateUpdateResource
          )
          Core.mempty
