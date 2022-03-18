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
-- Module      : Gogol.Sheets.Spreadsheets.Values.Append
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Appends values to a spreadsheet. The input range is used to search for existing data and find a \"table\" within that range. Values will be appended to the next row of the table, starting with the first column of the table. See the </sheets/api/guides/values#appending_values guide> and </sheets/api/samples/writing#append_values sample code> for specific details of how tables are detected and data is appended. The caller must specify the spreadsheet ID, range, and a valueInputOption. The @valueInputOption@ only controls how the input data will be added to the sheet (column-wise or row-wise), it does not influence what cell the data starts being written to.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.append@.
module Gogol.Sheets.Spreadsheets.Values.Append
    (
    -- * Resource
      SheetsSpreadsheetsValuesAppendResource

    -- ** Constructing a Request
    , newSheetsSpreadsheetsValuesAppend
    , SheetsSpreadsheetsValuesAppend
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.append@ method which the
-- 'SheetsSpreadsheetsValuesAppend' request conforms to.
type SheetsSpreadsheetsValuesAppendResource =
     "v4" Core.:>
       "spreadsheets" Core.:>
         Core.Capture "spreadsheetId" Core.Text Core.:>
           "values" Core.:>
             Core.CaptureMode "range" "append" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "includeValuesInResponse" Core.Bool
                       Core.:>
                       Core.QueryParam "insertDataOption"
                         SpreadsheetsValuesAppendInsertDataOption
                         Core.:>
                         Core.QueryParam "responseDateTimeRenderOption"
                           SpreadsheetsValuesAppendResponseDateTimeRenderOption
                           Core.:>
                           Core.QueryParam "responseValueRenderOption"
                             SpreadsheetsValuesAppendResponseValueRenderOption
                             Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "valueInputOption"
                                   SpreadsheetsValuesAppendValueInputOption
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] ValueRange
                                       Core.:>
                                       Core.Post '[Core.JSON]
                                         AppendValuesResponse

-- | Appends values to a spreadsheet. The input range is used to search for existing data and find a \"table\" within that range. Values will be appended to the next row of the table, starting with the first column of the table. See the </sheets/api/guides/values#appending_values guide> and </sheets/api/samples/writing#append_values sample code> for specific details of how tables are detected and data is appended. The caller must specify the spreadsheet ID, range, and a valueInputOption. The @valueInputOption@ only controls how the input data will be added to the sheet (column-wise or row-wise), it does not influence what cell the data starts being written to.
--
-- /See:/ 'newSheetsSpreadsheetsValuesAppend' smart constructor.
data SheetsSpreadsheetsValuesAppend = SheetsSpreadsheetsValuesAppend
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Determines if the update response should include the values of the cells that were appended. By default, responses do not include the updated values.
    , includeValuesInResponse :: (Core.Maybe Core.Bool)
      -- | How the input data should be inserted.
    , insertDataOption :: (Core.Maybe SpreadsheetsValuesAppendInsertDataOption)
      -- | Multipart request metadata.
    , payload :: ValueRange
      -- | The </sheets/api/guides/concepts#cell A1 notation> of a range to search for a logical table of data. Values are appended after the last row of the table.
    , range :: Core.Text
      -- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
    , responseDateTimeRenderOption :: (Core.Maybe SpreadsheetsValuesAppendResponseDateTimeRenderOption)
      -- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
    , responseValueRenderOption :: (Core.Maybe SpreadsheetsValuesAppendResponseValueRenderOption)
      -- | The ID of the spreadsheet to update.
    , spreadsheetId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | How the input data should be interpreted.
    , valueInputOption :: (Core.Maybe SpreadsheetsValuesAppendValueInputOption)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesAppend' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesAppend 
    ::  ValueRange
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The </sheets/api/guides/concepts#cell A1 notation> of a range to search for a logical table of data. Values are appended after the last row of the table. See 'range'.
    -> Core.Text
       -- ^  The ID of the spreadsheet to update. See 'spreadsheetId'.
    -> SheetsSpreadsheetsValuesAppend
newSheetsSpreadsheetsValuesAppend payload range spreadsheetId =
  SheetsSpreadsheetsValuesAppend
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , includeValuesInResponse = Core.Nothing
    , insertDataOption = Core.Nothing
    , payload = payload
    , range = range
    , responseDateTimeRenderOption = Core.Nothing
    , responseValueRenderOption = Core.Nothing
    , spreadsheetId = spreadsheetId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , valueInputOption = Core.Nothing
    }

instance Core.GoogleRequest
           SheetsSpreadsheetsValuesAppend
         where
        type Rs SheetsSpreadsheetsValuesAppend =
             AppendValuesResponse
        type Scopes SheetsSpreadsheetsValuesAppend =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SheetsSpreadsheetsValuesAppend{..}
          = go spreadsheetId range xgafv accessToken callback
              includeValuesInResponse
              insertDataOption
              responseDateTimeRenderOption
              responseValueRenderOption
              uploadType
              uploadProtocol
              valueInputOption
              (Core.Just Core.AltJSON)
              payload
              sheetsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SheetsSpreadsheetsValuesAppendResource)
                      Core.mempty

