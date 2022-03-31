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
-- Module      : Gogol.Sheets.Spreadsheets.Values.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a range of values from a spreadsheet. The caller must specify the spreadsheet ID and a range.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.get@.
module Gogol.Sheets.Spreadsheets.Values.Get
  ( -- * Resource
    SheetsSpreadsheetsValuesGetResource,

    -- ** Constructing a Request
    newSheetsSpreadsheetsValuesGet,
    SheetsSpreadsheetsValuesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.get@ method which the
-- 'SheetsSpreadsheetsValuesGet' request conforms to.
type SheetsSpreadsheetsValuesGetResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "values"
    Core.:> Core.Capture "range" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "dateTimeRenderOption"
              SpreadsheetsValuesGetDateTimeRenderOption
    Core.:> Core.QueryParam
              "majorDimension"
              SpreadsheetsValuesGetMajorDimension
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "valueRenderOption"
              SpreadsheetsValuesGetValueRenderOption
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ValueRange

-- | Returns a range of values from a spreadsheet. The caller must specify the spreadsheet ID and a range.
--
-- /See:/ 'newSheetsSpreadsheetsValuesGet' smart constructor.
data SheetsSpreadsheetsValuesGet = SheetsSpreadsheetsValuesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | How dates, times, and durations should be represented in the output. This is ignored if value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL/NUMBER.
    dateTimeRenderOption :: (Core.Maybe SpreadsheetsValuesGetDateTimeRenderOption),
    -- | The major dimension that results should use. For example, if the spreadsheet data is: @A1=1,B1=2,A2=3,B2=4@, then requesting @range=A1:B2,majorDimension=ROWS@ returns @[[1,2],[3,4]]@, whereas requesting @range=A1:B2,majorDimension=COLUMNS@ returns @[[1,3],[2,4]]@.
    majorDimension :: (Core.Maybe SpreadsheetsValuesGetMajorDimension),
    -- | The </sheets/api/guides/concepts#cell A1 notation or R1C1 notation> of the range to retrieve values from.
    range :: Core.Text,
    -- | The ID of the spreadsheet to retrieve data from.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | How values should be represented in the output. The default render option is FORMATTED_VALUE.
    valueRenderOption :: (Core.Maybe SpreadsheetsValuesGetValueRenderOption)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesGet' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesGet ::
  -- |  The </sheets/api/guides/concepts#cell A1 notation or R1C1 notation> of the range to retrieve values from. See 'range'.
  Core.Text ->
  -- |  The ID of the spreadsheet to retrieve data from. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsValuesGet
newSheetsSpreadsheetsValuesGet range spreadsheetId =
  SheetsSpreadsheetsValuesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dateTimeRenderOption = Core.Nothing,
      majorDimension = Core.Nothing,
      range = range,
      spreadsheetId = spreadsheetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      valueRenderOption = Core.Nothing
    }

instance
  Core.GoogleRequest
    SheetsSpreadsheetsValuesGet
  where
  type Rs SheetsSpreadsheetsValuesGet = ValueRange
  type
    Scopes SheetsSpreadsheetsValuesGet =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Readonly,
         Spreadsheets'FullControl,
         Spreadsheets'Readonly
       ]
  requestClient SheetsSpreadsheetsValuesGet {..} =
    go
      spreadsheetId
      range
      xgafv
      accessToken
      callback
      dateTimeRenderOption
      majorDimension
      uploadType
      uploadProtocol
      valueRenderOption
      (Core.Just Core.AltJSON)
      sheetsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SheetsSpreadsheetsValuesGetResource
          )
          Core.mempty
