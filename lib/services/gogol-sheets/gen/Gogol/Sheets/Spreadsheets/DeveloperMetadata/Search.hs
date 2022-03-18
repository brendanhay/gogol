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
-- Module      : Gogol.Sheets.Spreadsheets.DeveloperMetadata.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all developer metadata matching the specified DataFilter. If the provided DataFilter represents a DeveloperMetadataLookup object, this will return all DeveloperMetadata entries selected by it. If the DataFilter represents a location in a spreadsheet, this will return all developer metadata associated with locations intersecting that region.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.developerMetadata.search@.
module Gogol.Sheets.Spreadsheets.DeveloperMetadata.Search
  ( -- * Resource
    SheetsSpreadsheetsDeveloperMetadataSearchResource,

    -- ** Constructing a Request
    newSheetsSpreadsheetsDeveloperMetadataSearch,
    SheetsSpreadsheetsDeveloperMetadataSearch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.developerMetadata.search@ method which the
-- 'SheetsSpreadsheetsDeveloperMetadataSearch' request conforms to.
type SheetsSpreadsheetsDeveloperMetadataSearchResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.Capture "spreadsheetId" Core.Text
    Core.:> "developerMetadata:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SearchDeveloperMetadataRequest
    Core.:> Core.Post
              '[Core.JSON]
              SearchDeveloperMetadataResponse

-- | Returns all developer metadata matching the specified DataFilter. If the provided DataFilter represents a DeveloperMetadataLookup object, this will return all DeveloperMetadata entries selected by it. If the DataFilter represents a location in a spreadsheet, this will return all developer metadata associated with locations intersecting that region.
--
-- /See:/ 'newSheetsSpreadsheetsDeveloperMetadataSearch' smart constructor.
data SheetsSpreadsheetsDeveloperMetadataSearch = SheetsSpreadsheetsDeveloperMetadataSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SearchDeveloperMetadataRequest,
    -- | The ID of the spreadsheet to retrieve metadata from.
    spreadsheetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsDeveloperMetadataSearch' with the minimum fields required to make a request.
newSheetsSpreadsheetsDeveloperMetadataSearch ::
  -- |  Multipart request metadata. See 'payload'.
  SearchDeveloperMetadataRequest ->
  -- |  The ID of the spreadsheet to retrieve metadata from. See 'spreadsheetId'.
  Core.Text ->
  SheetsSpreadsheetsDeveloperMetadataSearch
newSheetsSpreadsheetsDeveloperMetadataSearch payload spreadsheetId =
  SheetsSpreadsheetsDeveloperMetadataSearch
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
    SheetsSpreadsheetsDeveloperMetadataSearch
  where
  type
    Rs SheetsSpreadsheetsDeveloperMetadataSearch =
      SearchDeveloperMetadataResponse
  type
    Scopes SheetsSpreadsheetsDeveloperMetadataSearch =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/spreadsheets"
       ]
  requestClient
    SheetsSpreadsheetsDeveloperMetadataSearch {..} =
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
                  SheetsSpreadsheetsDeveloperMetadataSearchResource
            )
            Core.mempty
