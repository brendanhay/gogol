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
-- Module      : Gogol.Sheets.Spreadsheets.Values.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets values in a range of a spreadsheet. The caller must specify the spreadsheet ID, range, and a valueInputOption.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.update@.
module Gogol.Sheets.Spreadsheets.Values.Update
  ( -- * Resource
    SheetsSpreadsheetsValuesUpdateResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsValuesUpdate (..),
    newSheetsSpreadsheetsValuesUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.update@ method which the
-- 'SheetsSpreadsheetsValuesUpdate' request conforms to.
type SheetsSpreadsheetsValuesUpdateResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "values"
    Core.:> Core.Capture "range" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeValuesInResponse" Core.Bool
    Core.:> Core.QueryParam
              "responseDateTimeRenderOption"
              SpreadsheetsValuesUpdateResponseDateTimeRenderOption
    Core.:> Core.QueryParam
              "responseValueRenderOption"
              SpreadsheetsValuesUpdateResponseValueRenderOption
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "valueInputOption"
              SpreadsheetsValuesUpdateValueInputOption
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ValueRange
    Core.:> Core.Put '[Core.JSON] UpdateValuesResponse

-- | Sets values in a range of a spreadsheet. The caller must specify the spreadsheet ID, range, and a valueInputOption.
--
-- /See:/ 'newSheetsSpreadsheetsValuesUpdate' smart constructor.
data SheetsSpreadsheetsValuesUpdate = SheetsSpreadsheetsValuesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. If the range to write was larger than the range actually written, the response includes all values in the requested range (excluding trailing empty rows and columns).
    includeValuesInResponse :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: ValueRange,
    -- | The </sheets/api/guides/concepts#cell A1 notation> of the values to update.
    range :: Core.Text,
    -- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
    responseDateTimeRenderOption :: (Core.Maybe SpreadsheetsValuesUpdateResponseDateTimeRenderOption),
    -- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
    responseValueRenderOption :: (Core.Maybe SpreadsheetsValuesUpdateResponseValueRenderOption),
    -- | The ID of the spreadsheet to update.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | How the input data should be interpreted.
    valueInputOption :: (Core.Maybe SpreadsheetsValuesUpdateValueInputOption)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesUpdate' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  ValueRange ->
  -- |  The </sheets/api/guides/concepts#cell A1 notation> of the values to update. See 'range'.
  Core.Text ->
  -- |  The ID of the spreadsheet to update. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsValuesUpdate
newSheetsSpreadsheetsValuesUpdate payload range spreadsheetId =
  SheetsSpreadsheetsValuesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeValuesInResponse = Core.Nothing,
      payload = payload,
      range = range,
      responseDateTimeRenderOption = Core.Nothing,
      responseValueRenderOption = Core.Nothing,
      spreadsheetId = spreadsheetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      valueInputOption = Core.Nothing
    }

instance Core.GoogleRequest SheetsSpreadsheetsValuesUpdate where
  type Rs SheetsSpreadsheetsValuesUpdate = UpdateValuesResponse
  type
    Scopes SheetsSpreadsheetsValuesUpdate =
      '[Drive'FullControl, Drive'File, Spreadsheets'FullControl]
  requestClient SheetsSpreadsheetsValuesUpdate {..} =
    go
      spreadsheetId
      range
      xgafv
      accessToken
      callback
      includeValuesInResponse
      responseDateTimeRenderOption
      responseValueRenderOption
      uploadType
      uploadProtocol
      valueInputOption
      (Core.Just Core.AltJSON)
      payload
      sheetsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SheetsSpreadsheetsValuesUpdateResource)
          Core.mempty
