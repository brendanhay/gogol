{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FusionTables.Template.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing template. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.patch@.
module Gogol.FusionTables.Template.Patch
    (
    -- * Resource
      FusionTablesTemplatePatchResource

    -- ** Constructing a Request
    , newFusionTablesTemplatePatch
    , FusionTablesTemplatePatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FusionTables.Types

-- | A resource alias for @fusiontables.template.patch@ method which the
-- 'FusionTablesTemplatePatch' request conforms to.
type FusionTablesTemplatePatchResource =
     "fusiontables" Core.:>
       "v2" Core.:>
         "tables" Core.:>
           Core.Capture "tableId" Core.Text Core.:>
             "templates" Core.:>
               Core.Capture "templateId" Core.Int32 Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.ReqBody '[Core.JSON] Template Core.:>
                     Core.Patch '[Core.JSON] Template

-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ 'newFusionTablesTemplatePatch' smart constructor.
data FusionTablesTemplatePatch = FusionTablesTemplatePatch
    {
      -- | Multipart request metadata.
      payload :: Template
      -- | Table to which the updated template belongs
    , tableId :: Core.Text
      -- | Identifier for the template that is being updated
    , templateId :: Core.Int32
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTemplatePatch' with the minimum fields required to make a request.
newFusionTablesTemplatePatch 
    ::  Template
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Table to which the updated template belongs See 'tableId'.
    -> Core.Int32
       -- ^  Identifier for the template that is being updated See 'templateId'.
    -> FusionTablesTemplatePatch
newFusionTablesTemplatePatch payload tableId templateId =
  FusionTablesTemplatePatch
    {payload = payload, tableId = tableId, templateId = templateId}

instance Core.GoogleRequest FusionTablesTemplatePatch
         where
        type Rs FusionTablesTemplatePatch = Template
        type Scopes FusionTablesTemplatePatch =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient FusionTablesTemplatePatch{..}
          = go tableId templateId (Core.Just Core.AltJSON)
              payload
              fusionTablesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FusionTablesTemplatePatchResource)
                      Core.mempty

