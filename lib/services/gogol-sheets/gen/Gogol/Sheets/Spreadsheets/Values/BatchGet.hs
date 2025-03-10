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
-- Module      : Gogol.Sheets.Spreadsheets.Values.BatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more ranges.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchGet@.
module Gogol.Sheets.Spreadsheets.Values.BatchGet
  ( -- * Resource
    SheetsSpreadsheetsValuesBatchGetResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsValuesBatchGet (..),
    newSheetsSpreadsheetsValuesBatchGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchGet@ method which the
-- 'SheetsSpreadsheetsValuesBatchGet' request conforms to.
type SheetsSpreadsheetsValuesBatchGetResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "values:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "dateTimeRenderOption"
              SpreadsheetsValuesBatchGetDateTimeRenderOption
    Core.:> Core.QueryParam
              "majorDimension"
              SpreadsheetsValuesBatchGetMajorDimension
    Core.:> Core.QueryParams "ranges" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "valueRenderOption"
              SpreadsheetsValuesBatchGetValueRenderOption
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BatchGetValuesResponse

-- | Returns one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more ranges.
--
-- /See:/ 'newSheetsSpreadsheetsValuesBatchGet' smart constructor.
data SheetsSpreadsheetsValuesBatchGet = SheetsSpreadsheetsValuesBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | How dates, times, and durations should be represented in the output. This is ignored if value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL/NUMBER.
    dateTimeRenderOption :: (Core.Maybe SpreadsheetsValuesBatchGetDateTimeRenderOption),
    -- | The major dimension that results should use. For example, if the spreadsheet data is: @A1=1,B1=2,A2=3,B2=4@, then requesting @ranges=[\"A1:B2\"],majorDimension=ROWS@ returns @[[1,2],[3,4]]@, whereas requesting @ranges=[\"A1:B2\"],majorDimension=COLUMNS@ returns @[[1,3],[2,4]]@.
    majorDimension :: (Core.Maybe SpreadsheetsValuesBatchGetMajorDimension),
    -- | The </sheets/api/guides/concepts#cell A1 notation or R1C1 notation> of the range to retrieve values from.
    ranges :: (Core.Maybe [Core.Text]),
    -- | The ID of the spreadsheet to retrieve data from.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | How values should be represented in the output. The default render option is ValueRenderOption.FORMATTED_VALUE.
    valueRenderOption :: (Core.Maybe SpreadsheetsValuesBatchGetValueRenderOption)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesBatchGet' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesBatchGet ::
  -- |  The ID of the spreadsheet to retrieve data from. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsValuesBatchGet
newSheetsSpreadsheetsValuesBatchGet spreadsheetId =
  SheetsSpreadsheetsValuesBatchGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dateTimeRenderOption = Core.Nothing,
      majorDimension = Core.Nothing,
      ranges = Core.Nothing,
      spreadsheetId = spreadsheetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      valueRenderOption = Core.Nothing
    }

instance Core.GoogleRequest SheetsSpreadsheetsValuesBatchGet where
  type Rs SheetsSpreadsheetsValuesBatchGet = BatchGetValuesResponse
  type
    Scopes SheetsSpreadsheetsValuesBatchGet =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Readonly,
         Spreadsheets'FullControl,
         Spreadsheets'Readonly
       ]
  requestClient SheetsSpreadsheetsValuesBatchGet {..} =
    go
      spreadsheetId
      xgafv
      accessToken
      callback
      dateTimeRenderOption
      majorDimension
      (ranges Core.^. Core._Default)
      uploadType
      uploadProtocol
      valueRenderOption
      (Core.Just Core.AltJSON)
      sheetsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SheetsSpreadsheetsValuesBatchGetResource)
          Core.mempty
