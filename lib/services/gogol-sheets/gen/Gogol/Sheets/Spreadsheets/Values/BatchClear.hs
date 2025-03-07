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
-- Module      : Gogol.Sheets.Spreadsheets.Values.BatchClear
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more ranges. Only values are cleared -- all other properties of the cell (such as formatting and data validation) are kept.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchClear@.
module Gogol.Sheets.Spreadsheets.Values.BatchClear
  ( -- * Resource
    SheetsSpreadsheetsValuesBatchClearResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsValuesBatchClear (..),
    newSheetsSpreadsheetsValuesBatchClear,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchClear@ method which the
-- 'SheetsSpreadsheetsValuesBatchClear' request conforms to.
type SheetsSpreadsheetsValuesBatchClearResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "values:batchClear"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchClearValuesRequest
    Core.:> Core.Post '[Core.JSON] BatchClearValuesResponse

-- | Clears one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more ranges. Only values are cleared -- all other properties of the cell (such as formatting and data validation) are kept.
--
-- /See:/ 'newSheetsSpreadsheetsValuesBatchClear' smart constructor.
data SheetsSpreadsheetsValuesBatchClear = SheetsSpreadsheetsValuesBatchClear
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchClearValuesRequest,
    -- | The ID of the spreadsheet to update.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesBatchClear' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesBatchClear ::
  -- |  Multipart request metadata. See 'payload'.
  BatchClearValuesRequest ->
  -- |  The ID of the spreadsheet to update. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsValuesBatchClear
newSheetsSpreadsheetsValuesBatchClear payload spreadsheetId =
  SheetsSpreadsheetsValuesBatchClear
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      spreadsheetId = spreadsheetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SheetsSpreadsheetsValuesBatchClear where
  type
    Rs SheetsSpreadsheetsValuesBatchClear =
      BatchClearValuesResponse
  type
    Scopes SheetsSpreadsheetsValuesBatchClear =
      '[Drive'FullControl, Drive'File, Spreadsheets'FullControl]
  requestClient SheetsSpreadsheetsValuesBatchClear {..} =
    go
      spreadsheetId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      sheetsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SheetsSpreadsheetsValuesBatchClearResource
          )
          Core.mempty
