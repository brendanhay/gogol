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
-- Module      : Gogol.FusionTables.Template.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of templates.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.list@.
module Gogol.FusionTables.Template.List
  ( -- * Resource
    FusionTablesTemplateListResource,

    -- ** Constructing a Request
    newFusionTablesTemplateList,
    FusionTablesTemplateList,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.template.list@ method which the
-- 'FusionTablesTemplateList' request conforms to.
type FusionTablesTemplateListResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "templates"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TemplateList

-- | Retrieves a list of templates.
--
-- /See:/ 'newFusionTablesTemplateList' smart constructor.
data FusionTablesTemplateList = FusionTablesTemplateList
  { -- | Maximum number of templates to return. Optional. Default is 5.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Continuation token specifying which results page to return. Optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | Identifier for the table whose templates are being requested
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTemplateList' with the minimum fields required to make a request.
newFusionTablesTemplateList ::
  -- |  Identifier for the table whose templates are being requested See 'tableId'.
  Core.Text ->
  FusionTablesTemplateList
newFusionTablesTemplateList tableId =
  FusionTablesTemplateList
    { maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesTemplateList where
  type Rs FusionTablesTemplateList = TemplateList
  type
    Scopes FusionTablesTemplateList =
      '[ "https://www.googleapis.com/auth/fusiontables",
         "https://www.googleapis.com/auth/fusiontables.readonly"
       ]
  requestClient FusionTablesTemplateList {..} =
    go
      tableId
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTemplateListResource
          )
          Core.mempty
