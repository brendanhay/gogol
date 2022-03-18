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
-- Module      : Gogol.Sheets.Spreadsheets.DeveloperMetadata.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the developer metadata with the specified ID. The caller must specify the spreadsheet ID and the developer metadata\'s unique metadataId.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.developerMetadata.get@.
module Gogol.Sheets.Spreadsheets.DeveloperMetadata.Get
    (
    -- * Resource
      SheetsSpreadsheetsDeveloperMetadataGetResource

    -- ** Constructing a Request
    , newSheetsSpreadsheetsDeveloperMetadataGet
    , SheetsSpreadsheetsDeveloperMetadataGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.developerMetadata.get@ method which the
-- 'SheetsSpreadsheetsDeveloperMetadataGet' request conforms to.
type SheetsSpreadsheetsDeveloperMetadataGetResource =
     "v4" Core.:>
       "spreadsheets" Core.:>
         Core.Capture "spreadsheetId" Core.Text Core.:>
           "developerMetadata" Core.:>
             Core.Capture "metadataId" Core.Int32 Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] DeveloperMetadata

-- | Returns the developer metadata with the specified ID. The caller must specify the spreadsheet ID and the developer metadata\'s unique metadataId.
--
-- /See:/ 'newSheetsSpreadsheetsDeveloperMetadataGet' smart constructor.
data SheetsSpreadsheetsDeveloperMetadataGet = SheetsSpreadsheetsDeveloperMetadataGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the developer metadata to retrieve.
    , metadataId :: Core.Int32
      -- | The ID of the spreadsheet to retrieve metadata from.
    , spreadsheetId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsDeveloperMetadataGet' with the minimum fields required to make a request.
newSheetsSpreadsheetsDeveloperMetadataGet 
    ::  Core.Int32
       -- ^  The ID of the developer metadata to retrieve. See 'metadataId'.
    -> Core.Text
       -- ^  The ID of the spreadsheet to retrieve metadata from. See 'spreadsheetId'.
    -> SheetsSpreadsheetsDeveloperMetadataGet
newSheetsSpreadsheetsDeveloperMetadataGet metadataId spreadsheetId =
  SheetsSpreadsheetsDeveloperMetadataGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , metadataId = metadataId
    , spreadsheetId = spreadsheetId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SheetsSpreadsheetsDeveloperMetadataGet
         where
        type Rs SheetsSpreadsheetsDeveloperMetadataGet =
             DeveloperMetadata
        type Scopes SheetsSpreadsheetsDeveloperMetadataGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient
          SheetsSpreadsheetsDeveloperMetadataGet{..}
          = go spreadsheetId metadataId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sheetsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SheetsSpreadsheetsDeveloperMetadataGetResource)
                      Core.mempty

