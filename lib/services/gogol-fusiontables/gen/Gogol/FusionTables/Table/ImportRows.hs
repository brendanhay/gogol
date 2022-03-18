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
-- Module      : Gogol.FusionTables.Table.ImportRows
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports more rows into a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.importRows@.
module Gogol.FusionTables.Table.ImportRows
    (
    -- * Resource
      FusionTablesTableImportRowsResource

    -- ** Constructing a Request
    , newFusionTablesTableImportRows
    , FusionTablesTableImportRows
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FusionTables.Types

-- | A resource alias for @fusiontables.table.importRows@ method which the
-- 'FusionTablesTableImportRows' request conforms to.
type FusionTablesTableImportRowsResource =
     "fusiontables" Core.:>
       "v2" Core.:>
         "tables" Core.:>
           Core.Capture "tableId" Core.Text Core.:>
             "import" Core.:>
               Core.QueryParam "delimiter" Core.Text Core.:>
                 Core.QueryParam "encoding" Core.Text Core.:>
                   Core.QueryParam "endLine" Core.Int32 Core.:>
                     Core.QueryParam "isStrict" Core.Bool Core.:>
                       Core.QueryParam "startLine" Core.Int32 Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON] Import
       Core.:<|>
       "upload" Core.:>
         "fusiontables" Core.:>
           "v2" Core.:>
             "tables" Core.:>
               Core.Capture "tableId" Core.Text Core.:>
                 "import" Core.:>
                   Core.QueryParam "delimiter" Core.Text Core.:>
                     Core.QueryParam "encoding" Core.Text Core.:>
                       Core.QueryParam "endLine" Core.Int32 Core.:>
                         Core.QueryParam "isStrict" Core.Bool Core.:>
                           Core.QueryParam "startLine" Core.Int32 Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.QueryParam "uploadType" Core.AltMedia
                                 Core.:>
                                 Core.AltMedia Core.:>
                                   Core.Post '[Core.JSON] Import

-- | Imports more rows into a table.
--
-- /See:/ 'newFusionTablesTableImportRows' smart constructor.
data FusionTablesTableImportRows = FusionTablesTableImportRows
    {
      -- | The delimiter used to separate cell values. This can only consist of a single character. Default is ,.
      delimiter :: (Core.Maybe Core.Text)
      -- | The encoding of the content. Default is UTF-8. Use auto-detect if you are unsure of the encoding.
    , encoding :: (Core.Maybe Core.Text)
      -- | The index of the line up to which data will be imported. Default is to import the entire file. If endLine is negative, it is an offset from the end of the file; the imported content will exclude the last endLine lines.
    , endLine :: (Core.Maybe Core.Int32)
      -- | Whether the imported CSV must have the same number of values for each row. If false, rows with fewer values will be padded with empty values. Default is true.
    , isStrict :: (Core.Maybe Core.Bool)
      -- | The index of the first line from which to start importing, inclusive. Default is 0.
    , startLine :: (Core.Maybe Core.Int32)
      -- | The table into which new rows are being imported.
    , tableId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableImportRows' with the minimum fields required to make a request.
newFusionTablesTableImportRows 
    ::  Core.Text
       -- ^  The table into which new rows are being imported. See 'tableId'.
    -> FusionTablesTableImportRows
newFusionTablesTableImportRows tableId =
  FusionTablesTableImportRows
    { delimiter = Core.Nothing
    , encoding = Core.Nothing
    , endLine = Core.Nothing
    , isStrict = Core.Nothing
    , startLine = Core.Nothing
    , tableId = tableId
    }

instance Core.GoogleRequest
           FusionTablesTableImportRows
         where
        type Rs FusionTablesTableImportRows = Import
        type Scopes FusionTablesTableImportRows =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient FusionTablesTableImportRows{..}
          = go tableId delimiter encoding endLine isStrict
              startLine
              (Core.Just Core.AltJSON)
              fusionTablesService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FusionTablesTableImportRowsResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload FusionTablesTableImportRows)
         where
        type Rs
               (Core.MediaUpload FusionTablesTableImportRows)
             = Import
        type Scopes
               (Core.MediaUpload FusionTablesTableImportRows)
             = Core.Scopes FusionTablesTableImportRows
        requestClient
          (Core.MediaUpload FusionTablesTableImportRows{..}
             body)
          = go tableId delimiter encoding endLine isStrict
              startLine
              (Core.Just Core.AltJSON)
              (Core.Just Core.AltMedia)
              body
              fusionTablesService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FusionTablesTableImportRowsResource)
                      Core.mempty

