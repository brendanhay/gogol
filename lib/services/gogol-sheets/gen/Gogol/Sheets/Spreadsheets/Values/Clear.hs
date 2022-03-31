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
-- Module      : Gogol.Sheets.Spreadsheets.Values.Clear
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears values from a spreadsheet. The caller must specify the spreadsheet ID and range. Only values are cleared -- all other properties of the cell (such as formatting, data validation, etc..) are kept.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.clear@.
module Gogol.Sheets.Spreadsheets.Values.Clear
  ( -- * Resource
    SheetsSpreadsheetsValuesClearResource,

    -- ** Constructing a Request
    newSheetsSpreadsheetsValuesClear,
    SheetsSpreadsheetsValuesClear,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.clear@ method which the
-- 'SheetsSpreadsheetsValuesClear' request conforms to.
type SheetsSpreadsheetsValuesClearResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "values"
    Core.:> Core.CaptureMode "range" "clear" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ClearValuesRequest
    Core.:> Core.Post '[Core.JSON] ClearValuesResponse

-- | Clears values from a spreadsheet. The caller must specify the spreadsheet ID and range. Only values are cleared -- all other properties of the cell (such as formatting, data validation, etc..) are kept.
--
-- /See:/ 'newSheetsSpreadsheetsValuesClear' smart constructor.
data SheetsSpreadsheetsValuesClear = SheetsSpreadsheetsValuesClear
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ClearValuesRequest,
    -- | The </sheets/api/guides/concepts#cell A1 notation or R1C1 notation> of the values to clear.
    range :: Core.Text,
    -- | The ID of the spreadsheet to update.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesClear' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesClear ::
  -- |  Multipart request metadata. See 'payload'.
  ClearValuesRequest ->
  -- |  The </sheets/api/guides/concepts#cell A1 notation or R1C1 notation> of the values to clear. See 'range'.
  Core.Text ->
  -- |  The ID of the spreadsheet to update. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsValuesClear
newSheetsSpreadsheetsValuesClear payload range spreadsheetId =
  SheetsSpreadsheetsValuesClear
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      range = range,
      spreadsheetId = spreadsheetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SheetsSpreadsheetsValuesClear
  where
  type
    Rs SheetsSpreadsheetsValuesClear =
      ClearValuesResponse
  type
    Scopes SheetsSpreadsheetsValuesClear =
      '[ Drive'FullControl,
         Drive'File,
         Spreadsheets'FullControl
       ]
  requestClient SheetsSpreadsheetsValuesClear {..} =
    go
      spreadsheetId
      range
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
              Core.Proxy SheetsSpreadsheetsValuesClearResource
          )
          Core.mempty
