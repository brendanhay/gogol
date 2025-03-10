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
-- Module      : Gogol.Sheets.Spreadsheets.Values.BatchUpdateByDataFilter
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets values in one or more ranges of a spreadsheet. The caller must specify the spreadsheet ID, a valueInputOption, and one or more DataFilterValueRanges.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchUpdateByDataFilter@.
module Gogol.Sheets.Spreadsheets.Values.BatchUpdateByDataFilter
  ( -- * Resource
    SheetsSpreadsheetsValuesBatchUpdateByDataFilterResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsValuesBatchUpdateByDataFilter (..),
    newSheetsSpreadsheetsValuesBatchUpdateByDataFilter,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchUpdateByDataFilter@ method which the
-- 'SheetsSpreadsheetsValuesBatchUpdateByDataFilter' request conforms to.
type SheetsSpreadsheetsValuesBatchUpdateByDataFilterResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "values:batchUpdateByDataFilter"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchUpdateValuesByDataFilterRequest
    Core.:> Core.Post '[Core.JSON] BatchUpdateValuesByDataFilterResponse

-- | Sets values in one or more ranges of a spreadsheet. The caller must specify the spreadsheet ID, a valueInputOption, and one or more DataFilterValueRanges.
--
-- /See:/ 'newSheetsSpreadsheetsValuesBatchUpdateByDataFilter' smart constructor.
data SheetsSpreadsheetsValuesBatchUpdateByDataFilter = SheetsSpreadsheetsValuesBatchUpdateByDataFilter
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchUpdateValuesByDataFilterRequest,
    -- | The ID of the spreadsheet to update.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesBatchUpdateByDataFilter' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesBatchUpdateByDataFilter ::
  -- |  Multipart request metadata. See 'payload'.
  BatchUpdateValuesByDataFilterRequest ->
  -- |  The ID of the spreadsheet to update. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsValuesBatchUpdateByDataFilter
newSheetsSpreadsheetsValuesBatchUpdateByDataFilter
  payload
  spreadsheetId =
    SheetsSpreadsheetsValuesBatchUpdateByDataFilter
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        spreadsheetId = spreadsheetId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    SheetsSpreadsheetsValuesBatchUpdateByDataFilter
  where
  type
    Rs SheetsSpreadsheetsValuesBatchUpdateByDataFilter =
      BatchUpdateValuesByDataFilterResponse
  type
    Scopes SheetsSpreadsheetsValuesBatchUpdateByDataFilter =
      '[Drive'FullControl, Drive'File, Spreadsheets'FullControl]
  requestClient SheetsSpreadsheetsValuesBatchUpdateByDataFilter {..} =
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
              Core.Proxy SheetsSpreadsheetsValuesBatchUpdateByDataFilterResource
          )
          Core.mempty
