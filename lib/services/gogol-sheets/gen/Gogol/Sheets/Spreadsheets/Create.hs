{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Sheets.Spreadsheets.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a spreadsheet, returning the newly created spreadsheet.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.create@.
module Gogol.Sheets.Spreadsheets.Create
  ( -- * Resource
    SheetsSpreadsheetsCreateResource,

    -- ** Constructing a Request
    SheetsSpreadsheetsCreate (..),
    newSheetsSpreadsheetsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.create@ method which the
-- 'SheetsSpreadsheetsCreate' request conforms to.
type SheetsSpreadsheetsCreateResource =
  "v4"
    Core.:> "spreadsheets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Spreadsheet
    Core.:> Core.Post '[Core.JSON] Spreadsheet

-- | Creates a spreadsheet, returning the newly created spreadsheet.
--
-- /See:/ 'newSheetsSpreadsheetsCreate' smart constructor.
data SheetsSpreadsheetsCreate = SheetsSpreadsheetsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Spreadsheet,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsSpreadsheetsCreate' with the minimum fields required to make a request.
newSheetsSpreadsheetsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Spreadsheet ->
  SheetsSpreadsheetsCreate
newSheetsSpreadsheetsCreate payload =
  SheetsSpreadsheetsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SheetsSpreadsheetsCreate where
  type Rs SheetsSpreadsheetsCreate = Spreadsheet
  type
    Scopes SheetsSpreadsheetsCreate =
      '[Drive'FullControl, Drive'File, Spreadsheets'FullControl]
  requestClient SheetsSpreadsheetsCreate {..} =
    go
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
          (Core.Proxy :: Core.Proxy SheetsSpreadsheetsCreateResource)
          Core.mempty
