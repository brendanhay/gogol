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
-- Module      : Gogol.Sheets.Spreadsheets.Values.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets values in one or more ranges of a spreadsheet. The caller must specify the spreadsheet ID, a valueInputOption, and one or more ValueRanges.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchUpdate@.
module Gogol.Sheets.Spreadsheets.Values.BatchUpdate
  ( -- * Resource
    SheetsSpreadsheetsValuesBatchUpdateResource,

    -- ** Constructing a Request
    newSheetsSpreadsheetsValuesBatchUpdate,
    SheetsSpreadsheetsValuesBatchUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchUpdate@ method which the
-- 'SheetsSpreadsheetsValuesBatchUpdate' request conforms to.
type SheetsSpreadsheetsValuesBatchUpdateResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "values:batchUpdate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchUpdateValuesRequest
    Core.:> Core.Post '[Core.JSON] BatchUpdateValuesResponse

-- | Sets values in one or more ranges of a spreadsheet. The caller must specify the spreadsheet ID, a valueInputOption, and one or more ValueRanges.
--
-- /See:/ 'newSheetsSpreadsheetsValuesBatchUpdate' smart constructor.
data SheetsSpreadsheetsValuesBatchUpdate = SheetsSpreadsheetsValuesBatchUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchUpdateValuesRequest,
    -- | The ID of the spreadsheet to update.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesBatchUpdate' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesBatchUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  BatchUpdateValuesRequest ->
  -- |  The ID of the spreadsheet to update. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsValuesBatchUpdate
newSheetsSpreadsheetsValuesBatchUpdate payload spreadsheetId =
  SheetsSpreadsheetsValuesBatchUpdate
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
    SheetsSpreadsheetsValuesBatchUpdate
  where
  type
    Rs SheetsSpreadsheetsValuesBatchUpdate =
      BatchUpdateValuesResponse
  type
    Scopes SheetsSpreadsheetsValuesBatchUpdate =
      '[ Drive'FullControl,
         Drive'File,
         Spreadsheets'FullControl
       ]
  requestClient SheetsSpreadsheetsValuesBatchUpdate {..} =
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
              Core.Proxy
                SheetsSpreadsheetsValuesBatchUpdateResource
          )
          Core.mempty
