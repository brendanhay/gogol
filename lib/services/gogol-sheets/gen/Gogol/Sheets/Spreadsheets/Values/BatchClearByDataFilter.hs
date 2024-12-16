{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Sheets.Spreadsheets.Values.BatchClearByDataFilter
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more DataFilters. Ranges matching any of the specified data filters will be cleared. Only values are cleared -- all other properties of the cell (such as formatting, data validation, etc..) are kept.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchClearByDataFilter@.
module Gogol.Sheets.Spreadsheets.Values.BatchClearByDataFilter
    (
    -- * Resource
      SheetsSpreadsheetsValuesBatchClearByDataFilterResource

    -- ** Constructing a Request
    , SheetsSpreadsheetsValuesBatchClearByDataFilter (..)
    , newSheetsSpreadsheetsValuesBatchClearByDataFilter
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchClearByDataFilter@ method which the
-- 'SheetsSpreadsheetsValuesBatchClearByDataFilter' request conforms to.
type SheetsSpreadsheetsValuesBatchClearByDataFilterResource
     =
     "v4" Core.:>
       "spreadsheets" Core.:>
         Core.Capture "spreadsheetId" Core.Text Core.:>
           "values:batchClearByDataFilter" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON]
                           BatchClearValuesByDataFilterRequest
                           Core.:>
                           Core.Post '[Core.JSON]
                             BatchClearValuesByDataFilterResponse

-- | Clears one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more DataFilters. Ranges matching any of the specified data filters will be cleared. Only values are cleared -- all other properties of the cell (such as formatting, data validation, etc..) are kept.
--
-- /See:/ 'newSheetsSpreadsheetsValuesBatchClearByDataFilter' smart constructor.
data SheetsSpreadsheetsValuesBatchClearByDataFilter = SheetsSpreadsheetsValuesBatchClearByDataFilter
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BatchClearValuesByDataFilterRequest
      -- | The ID of the spreadsheet to update.
    , spreadsheetId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesBatchClearByDataFilter' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesBatchClearByDataFilter 
    ::  BatchClearValuesByDataFilterRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The ID of the spreadsheet to update. See 'spreadsheetId'.
    -> SheetsSpreadsheetsValuesBatchClearByDataFilter
newSheetsSpreadsheetsValuesBatchClearByDataFilter payload spreadsheetId =
  SheetsSpreadsheetsValuesBatchClearByDataFilter
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , spreadsheetId = spreadsheetId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SheetsSpreadsheetsValuesBatchClearByDataFilter
         where
        type Rs
               SheetsSpreadsheetsValuesBatchClearByDataFilter
             = BatchClearValuesByDataFilterResponse
        type Scopes
               SheetsSpreadsheetsValuesBatchClearByDataFilter
             =
             '[Drive'FullControl, Drive'File,
               Spreadsheets'FullControl]
        requestClient
          SheetsSpreadsheetsValuesBatchClearByDataFilter{..}
          = go spreadsheetId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sheetsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SheetsSpreadsheetsValuesBatchClearByDataFilterResource)
                      Core.mempty

