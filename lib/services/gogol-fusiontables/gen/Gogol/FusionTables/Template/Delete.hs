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
-- Module      : Gogol.FusionTables.Template.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.delete@.
module Gogol.FusionTables.Template.Delete
    (
    -- * Resource
      FusionTablesTemplateDeleteResource

    -- ** Constructing a Request
    , newFusionTablesTemplateDelete
    , FusionTablesTemplateDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FusionTables.Types

-- | A resource alias for @fusiontables.template.delete@ method which the
-- 'FusionTablesTemplateDelete' request conforms to.
type FusionTablesTemplateDeleteResource =
     "fusiontables" Core.:>
       "v2" Core.:>
         "tables" Core.:>
           Core.Capture "tableId" Core.Text Core.:>
             "templates" Core.:>
               Core.Capture "templateId" Core.Int32 Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Delete '[Core.JSON] ()

-- | Deletes a template
--
-- /See:/ 'newFusionTablesTemplateDelete' smart constructor.
data FusionTablesTemplateDelete = FusionTablesTemplateDelete
    {
      -- | Table from which the template is being deleted
      tableId :: Core.Text
      -- | Identifier for the template which is being deleted
    , templateId :: Core.Int32
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTemplateDelete' with the minimum fields required to make a request.
newFusionTablesTemplateDelete 
    ::  Core.Text
       -- ^  Table from which the template is being deleted See 'tableId'.
    -> Core.Int32
       -- ^  Identifier for the template which is being deleted See 'templateId'.
    -> FusionTablesTemplateDelete
newFusionTablesTemplateDelete tableId templateId =
  FusionTablesTemplateDelete {tableId = tableId, templateId = templateId}

instance Core.GoogleRequest
           FusionTablesTemplateDelete
         where
        type Rs FusionTablesTemplateDelete = ()
        type Scopes FusionTablesTemplateDelete =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient FusionTablesTemplateDelete{..}
          = go tableId templateId (Core.Just Core.AltJSON)
              fusionTablesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FusionTablesTemplateDeleteResource)
                      Core.mempty

