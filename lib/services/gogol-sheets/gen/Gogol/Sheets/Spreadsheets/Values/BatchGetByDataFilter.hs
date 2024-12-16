{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Sheets.Spreadsheets.Values.BatchGetByDataFilter
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns one or more ranges of values that match the specified data filters. The caller must specify the spreadsheet ID and one or more DataFilters. Ranges that match any of the data filters in the request will be returned.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.batchGetByDataFilter@.
module Gogol.Sheets.Spreadsheets.Values.BatchGetByDataFilter
    (
    -- * Resource
      SheetsSpreadsheetsValuesBatchGetByDataFilterResource

    -- ** Constructing a Request
    , SheetsSpreadsheetsValuesBatchGetByDataFilter (..)
    , newSheetsSpreadsheetsValuesBatchGetByDataFilter
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.batchGetByDataFilter@ method which the
-- 'SheetsSpreadsheetsValuesBatchGetByDataFilter' request conforms to.
type SheetsSpreadsheetsValuesBatchGetByDataFilterResource
     =
     "v4" Core.:>
       "spreadsheets" Core.:>
         Core.Capture "spreadsheetId" Core.Text Core.:>
           "values:batchGetByDataFilter" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON]
                           BatchGetValuesByDataFilterRequest
                           Core.:>
                           Core.Post '[Core.JSON]
                             BatchGetValuesByDataFilterResponse

-- | Returns one or more ranges of values that match the specified data filters. The caller must specify the spreadsheet ID and one or more DataFilters. Ranges that match any of the data filters in the request will be returned.
--
-- /See:/ 'newSheetsSpreadsheetsValuesBatchGetByDataFilter' smart constructor.
data SheetsSpreadsheetsValuesBatchGetByDataFilter = SheetsSpreadsheetsValuesBatchGetByDataFilter
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BatchGetValuesByDataFilterRequest
      -- | The ID of the spreadsheet to retrieve data from.
    , spreadsheetId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsValuesBatchGetByDataFilter' with the minimum fields required to make a request.
newSheetsSpreadsheetsValuesBatchGetByDataFilter 
    ::  BatchGetValuesByDataFilterRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The ID of the spreadsheet to retrieve data from. See 'spreadsheetId'.
    -> SheetsSpreadsheetsValuesBatchGetByDataFilter
newSheetsSpreadsheetsValuesBatchGetByDataFilter payload spreadsheetId =
  SheetsSpreadsheetsValuesBatchGetByDataFilter
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , spreadsheetId = spreadsheetId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SheetsSpreadsheetsValuesBatchGetByDataFilter
         where
        type Rs SheetsSpreadsheetsValuesBatchGetByDataFilter
             = BatchGetValuesByDataFilterResponse
        type Scopes
               SheetsSpreadsheetsValuesBatchGetByDataFilter
             =
             '[Drive'FullControl, Drive'File,
               Spreadsheets'FullControl]
        requestClient
          SheetsSpreadsheetsValuesBatchGetByDataFilter{..}
          = go spreadsheetId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              sheetsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SheetsSpreadsheetsValuesBatchGetByDataFilterResource)
                      Core.mempty

