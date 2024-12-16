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
-- Module      : Gogol.Sheets.Spreadsheets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. By default, data within grids is not returned. You can include grid data in one of 2 ways: * Specify a <https://developers.google.com/sheets/api/guides/field-masks field mask> listing your desired fields using the @fields@ URL parameter in HTTP * Set the includeGridData URL parameter to true. If a field mask is set, the @includeGridData@ parameter is ignored For large spreadsheets, as a best practice, retrieve only the specific spreadsheet fields that you want. To retrieve only subsets of spreadsheet data, use the ranges URL parameter. Ranges are specified using </sheets/api/guides/concepts#cell A1 notation>. You can define a single cell (for example, @A1@) or multiple cells (for example, @A1:D5@). You can also get cells from other sheets within the same spreadsheet (for example, @Sheet2!A1:C4@) or retrieve multiple ranges at once (for example, @?ranges=A1:D5&ranges=Sheet2!A1:C4@). Limiting the range returns only the portions
-- of the spreadsheet that intersect the requested ranges.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.get@.
module Gogol.Sheets.Spreadsheets.Get
    (
    -- * Resource
      SheetsSpreadsheetsGetResource

    -- ** Constructing a Request
    , SheetsSpreadsheetsGet (..)
    , newSheetsSpreadsheetsGet
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

-- | Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. By default, data within grids is not returned. You can include grid data in one of 2 ways: * Specify a <https://developers.google.com/sheets/api/guides/field-masks field mask> listing your desired fields using the @fields@ URL parameter in HTTP * Set the includeGridData URL parameter to true. If a field mask is set, the @includeGridData@ parameter is ignored For large spreadsheets, as a best practice, retrieve only the specific spreadsheet fields that you want. To retrieve only subsets of spreadsheet data, use the ranges URL parameter. Ranges are specified using </sheets/api/guides/concepts#cell A1 notation>. You can define a single cell (for example, @A1@) or multiple cells (for example, @A1:D5@). You can also get cells from other sheets within the same spreadsheet (for example, @Sheet2!A1:C4@) or retrieve multiple ranges at once (for example, @?ranges=A1:D5&ranges=Sheet2!A1:C4@). Limiting the range returns only the portions
-- of the spreadsheet that intersect the requested ranges.
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
             '[Drive'FullControl, Drive'File, Drive'Readonly,
               Spreadsheets'FullControl, Spreadsheets'Readonly]
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

