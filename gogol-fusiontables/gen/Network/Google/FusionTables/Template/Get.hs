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
-- Module      : Network.Google.FusionTables.Template.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific template by its id
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.get@.
module Network.Google.FusionTables.Template.Get
  ( -- * Resource
    FusionTablesTemplateGetResource,

    -- ** Constructing a Request
    newFusionTablesTemplateGet,
    FusionTablesTemplateGet,
  )
where

import Network.Google.FusionTables.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fusiontables.template.get@ method which the
-- 'FusionTablesTemplateGet' request conforms to.
type FusionTablesTemplateGetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "templates"
    Core.:> Core.Capture "templateId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Template

-- | Retrieves a specific template by its id
--
-- /See:/ 'newFusionTablesTemplateGet' smart constructor.
data FusionTablesTemplateGet = FusionTablesTemplateGet
  { -- | Table to which the template belongs
    tableId :: Core.Text,
    -- | Identifier for the template that is being requested
    templateId :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTemplateGet' with the minimum fields required to make a request.
newFusionTablesTemplateGet ::
  -- |  Table to which the template belongs See 'tableId'.
  Core.Text ->
  -- |  Identifier for the template that is being requested See 'templateId'.
  Core.Int32 ->
  FusionTablesTemplateGet
newFusionTablesTemplateGet tableId templateId =
  FusionTablesTemplateGet {tableId = tableId, templateId = templateId}

instance Core.GoogleRequest FusionTablesTemplateGet where
  type Rs FusionTablesTemplateGet = Template
  type
    Scopes FusionTablesTemplateGet =
      '[ "https://www.googleapis.com/auth/fusiontables",
         "https://www.googleapis.com/auth/fusiontables.readonly"
       ]
  requestClient FusionTablesTemplateGet {..} =
    go
      tableId
      templateId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTemplateGetResource
          )
          Core.mempty
