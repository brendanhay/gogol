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
-- Module      : Gogol.Sheets.Spreadsheets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. By default, data within grids will not be returned. You can include grid data one of two ways: * Specify a field mask listing your desired fields using the @fields@ URL parameter in HTTP * Set the includeGridData URL parameter to true. If a field mask is set, the @includeGridData@ parameter is ignored For large spreadsheets, it is recommended to retrieve only the specific fields of the spreadsheet that you want. To retrieve only subsets of the spreadsheet, use the ranges URL parameter. Multiple ranges can be specified. Limiting the range will return only the portions of the spreadsheet that intersect the requested ranges. Ranges are specified using A1 notation.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.get@.
module Gogol.Sheets.Spreadsheets.Get
    (
    -- * Resource
      SheetsSpreadsheetsGetResource

    -- ** Constructing a Request
    , newSheetsSpreadsheetsGet
    , SheetsSpreadsheetsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.get@ method which the
-- 'SheetsSpreadsheetsGet' request conforms to.
type SheetsSpreadsheetsGetResource =
     "v4" Core.:>
       "spreadsheets" Core.:>
         Core.Capture "spreadsheetId" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "includeGridData" Core.Bool Core.:>
                   Core.QueryParams "ranges" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Spreadsheet

-- | Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. By default, data within grids will not be returned. You can include grid data one of two ways: * Specify a field mask listing your desired fields using the @fields@ URL parameter in HTTP * Set the includeGridData URL parameter to true. If a field mask is set, the @includeGridData@ parameter is ignored For large spreadsheets, it is recommended to retrieve only the specific fields of the spreadsheet that you want. To retrieve only subsets of the spreadsheet, use the ranges URL parameter. Multiple ranges can be specified. Limiting the range will return only the portions of the spreadsheet that intersect the requested ranges. Ranges are specified using A1 notation.
--
-- /See:/ 'newSheetsSpreadsheetsGet' smart constructor.
data SheetsSpreadsheetsGet = SheetsSpreadsheetsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | True if grid data should be returned. This parameter is ignored if a field mask was set in the request.
    , includeGridData :: (Core.Maybe Core.Bool)
      -- | The ranges to retrieve from the spreadsheet.
    , ranges :: (Core.Maybe [Core.Text])
      -- | The spreadsheet to request.
    , spreadsheetId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsGet' with the minimum fields required to make a request.
newSheetsSpreadsheetsGet 
    ::  Core.Text
       -- ^  The spreadsheet to request. See 'spreadsheetId'.
    -> SheetsSpreadsheetsGet
newSheetsSpreadsheetsGet spreadsheetId =
  SheetsSpreadsheetsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , includeGridData = Core.Nothing
    , ranges = Core.Nothing
    , spreadsheetId = spreadsheetId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SheetsSpreadsheetsGet
         where
        type Rs SheetsSpreadsheetsGet = Spreadsheet
        type Scopes SheetsSpreadsheetsGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/spreadsheets",
               "https://www.googleapis.com/auth/spreadsheets.readonly"]
        requestClient SheetsSpreadsheetsGet{..}
          = go spreadsheetId xgafv accessToken callback
              includeGridData
              (ranges Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              sheetsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SheetsSpreadsheetsGetResource)
                      Core.mempty

