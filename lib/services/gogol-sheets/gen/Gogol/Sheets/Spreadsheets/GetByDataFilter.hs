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
-- Module      : Gogol.Sheets.Spreadsheets.GetByDataFilter
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. This method differs from GetSpreadsheet in that it allows selecting which subsets of spreadsheet data to return by specifying a dataFilters parameter. Multiple DataFilters can be specified. Specifying one or more data filters will return the portions of the spreadsheet that intersect ranges matched by any of the filters. By default, data within grids will not be returned. You can include grid data one of two ways: * Specify a field mask listing your desired fields using the @fields@ URL parameter in HTTP * Set the includeGridData parameter to true. If a field mask is set, the @includeGridData@ parameter is ignored For large spreadsheets, it is recommended to retrieve only the specific fields of the spreadsheet that you want.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.getByDataFilter@.
module Gogol.Sheets.Spreadsheets.GetByDataFilter
  ( -- * Resource
    SheetsSpreadsheetsGetByDataFilterResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsGetByDataFilter (..),
    newSheetsSpreadsheetsGetByDataFilter,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.getByDataFilter@ method which the
-- 'SheetsSpreadsheetsGetByDataFilter' request conforms to.
type SheetsSpreadsheetsGetByDataFilterResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.CaptureMode
              "spreadsheetId"
              "getByDataFilter"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GetSpreadsheetByDataFilterRequest
    Core.:> Core.Post '[Core.JSON] Spreadsheet

-- | Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. This method differs from GetSpreadsheet in that it allows selecting which subsets of spreadsheet data to return by specifying a dataFilters parameter. Multiple DataFilters can be specified. Specifying one or more data filters will return the portions of the spreadsheet that intersect ranges matched by any of the filters. By default, data within grids will not be returned. You can include grid data one of two ways: * Specify a field mask listing your desired fields using the @fields@ URL parameter in HTTP * Set the includeGridData parameter to true. If a field mask is set, the @includeGridData@ parameter is ignored For large spreadsheets, it is recommended to retrieve only the specific fields of the spreadsheet that you want.
--
-- /See:/ 'newSheetsSpreadsheetsGetByDataFilter' smart constructor.
data SheetsSpreadsheetsGetByDataFilter = SheetsSpreadsheetsGetByDataFilter
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GetSpreadsheetByDataFilterRequest,
    -- | The spreadsheet to request.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsGetByDataFilter' with the minimum fields required to make a request.
newSheetsSpreadsheetsGetByDataFilter ::
  -- |  Multipart request metadata. See 'payload'.
  GetSpreadsheetByDataFilterRequest ->
  -- |  The spreadsheet to request. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsGetByDataFilter
newSheetsSpreadsheetsGetByDataFilter payload spreadsheetId =
  SheetsSpreadsheetsGetByDataFilter
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      spreadsheetId = spreadsheetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SheetsSpreadsheetsGetByDataFilter
  where
  type
    Rs SheetsSpreadsheetsGetByDataFilter =
      Spreadsheet
  type
    Scopes SheetsSpreadsheetsGetByDataFilter =
      '[ Drive'FullControl,
         Drive'File,
         Spreadsheets'FullControl
       ]
  requestClient SheetsSpreadsheetsGetByDataFilter {..} =
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
              Core.Proxy SheetsSpreadsheetsGetByDataFilterResource
          )
          Core.mempty
