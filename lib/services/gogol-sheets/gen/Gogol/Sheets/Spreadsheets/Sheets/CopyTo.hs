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
-- Module      : Gogol.Sheets.Spreadsheets.Sheets.CopyTo
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a single sheet from a spreadsheet to another spreadsheet. Returns the properties of the newly created sheet.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.sheets.copyTo@.
module Gogol.Sheets.Spreadsheets.Sheets.CopyTo
  ( -- * Resource
    SheetsSpreadsheetsSheetsCopyToResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsSheetsCopyTo (..),
    newSheetsSpreadsheetsSheetsCopyTo,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.sheets.copyTo@ method which the
-- 'SheetsSpreadsheetsSheetsCopyTo' request conforms to.
type SheetsSpreadsheetsSheetsCopyToResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "sheets"
    Core.:> Core.CaptureMode "sheetId" "copyTo" Core.Int32
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CopySheetToAnotherSpreadsheetRequest
    Core.:> Core.Post '[Core.JSON] SheetProperties

-- | Copies a single sheet from a spreadsheet to another spreadsheet. Returns the properties of the newly created sheet.
--
-- /See:/ 'newSheetsSpreadsheetsSheetsCopyTo' smart constructor.
data SheetsSpreadsheetsSheetsCopyTo = SheetsSpreadsheetsSheetsCopyTo
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CopySheetToAnotherSpreadsheetRequest,
    -- | The ID of the sheet to copy.
    sheetId :: Core.Int32,
    -- | The ID of the spreadsheet containing the sheet to copy.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsSheetsCopyTo' with the minimum fields required to make a request.
newSheetsSpreadsheetsSheetsCopyTo ::
  -- |  Multipart request metadata. See 'payload'.
  CopySheetToAnotherSpreadsheetRequest ->
  -- |  The ID of the sheet to copy. See 'sheetId'.
  Core.Int32 ->
  -- |  The ID of the spreadsheet containing the sheet to copy. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsSheetsCopyTo
newSheetsSpreadsheetsSheetsCopyTo payload sheetId spreadsheetId =
  SheetsSpreadsheetsSheetsCopyTo
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      sheetId = sheetId,
      spreadsheetId = spreadsheetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SheetsSpreadsheetsSheetsCopyTo where
  type Rs SheetsSpreadsheetsSheetsCopyTo = SheetProperties
  type
    Scopes SheetsSpreadsheetsSheetsCopyTo =
      '[Drive'FullControl, Drive'File, Spreadsheets'FullControl]
  requestClient SheetsSpreadsheetsSheetsCopyTo {..} =
    go
      spreadsheetId
      sheetId
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
          (Core.Proxy :: Core.Proxy SheetsSpreadsheetsSheetsCopyToResource)
          Core.mempty
