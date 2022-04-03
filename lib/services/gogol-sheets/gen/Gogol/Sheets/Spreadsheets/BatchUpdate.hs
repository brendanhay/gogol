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
-- Module      : Gogol.Sheets.Spreadsheets.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies one or more updates to the spreadsheet. Each request is validated before being applied. If any request is not valid then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. The replies will mirror the requests. For example, if you applied 4 updates and the 3rd one had a reply, then the response will have 2 empty replies, the actual reply, and another empty reply, in that order. Due to the collaborative nature of spreadsheets, it is not guaranteed that the spreadsheet will reflect exactly your changes after this completes, however it is guaranteed that the updates in the request will be applied together atomically. Your changes may be altered with respect to collaborator changes. If there are no collaborators, the spreadsheet should reflect your changes.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.batchUpdate@.
module Gogol.Sheets.Spreadsheets.BatchUpdate
  ( -- * Resource
    SheetsSpreadsheetsBatchUpdateResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsBatchUpdate (..),
    newSheetsSpreadsheetsBatchUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.batchUpdate@ method which the
-- 'SheetsSpreadsheetsBatchUpdate' request conforms to.
type SheetsSpreadsheetsBatchUpdateResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.CaptureMode
              "spreadsheetId"
              "batchUpdate"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BatchUpdateSpreadsheetRequest
    Core.:> Core.Post '[Core.JSON] BatchUpdateSpreadsheetResponse

-- | Applies one or more updates to the spreadsheet. Each request is validated before being applied. If any request is not valid then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. The replies will mirror the requests. For example, if you applied 4 updates and the 3rd one had a reply, then the response will have 2 empty replies, the actual reply, and another empty reply, in that order. Due to the collaborative nature of spreadsheets, it is not guaranteed that the spreadsheet will reflect exactly your changes after this completes, however it is guaranteed that the updates in the request will be applied together atomically. Your changes may be altered with respect to collaborator changes. If there are no collaborators, the spreadsheet should reflect your changes.
--
-- /See:/ 'newSheetsSpreadsheetsBatchUpdate' smart constructor.
data SheetsSpreadsheetsBatchUpdate = SheetsSpreadsheetsBatchUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchUpdateSpreadsheetRequest,
    -- | The spreadsheet to apply the updates to.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsBatchUpdate' with the minimum fields required to make a request.
newSheetsSpreadsheetsBatchUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  BatchUpdateSpreadsheetRequest ->
  -- |  The spreadsheet to apply the updates to. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsBatchUpdate
newSheetsSpreadsheetsBatchUpdate payload spreadsheetId =
  SheetsSpreadsheetsBatchUpdate
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
    SheetsSpreadsheetsBatchUpdate
  where
  type
    Rs SheetsSpreadsheetsBatchUpdate =
      BatchUpdateSpreadsheetResponse
  type
    Scopes SheetsSpreadsheetsBatchUpdate =
      '[ Drive'FullControl,
         Drive'File,
         Spreadsheets'FullControl
       ]
  requestClient SheetsSpreadsheetsBatchUpdate {..} =
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
              Core.Proxy SheetsSpreadsheetsBatchUpdateResource
          )
          Core.mempty
