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
-- Module      : Gogol.Books.Layers.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the layer summary for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.get@.
module Gogol.Books.Layers.Get
  ( -- * Resource
    BooksLayersGetResource,

    -- ** Constructing a Request
    BooksLayersGet (..),
    newBooksLayersGet,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.layers.get@ method which the
-- 'BooksLayersGet' request conforms to.
type BooksLayersGetResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> Core.Capture "volumeId" Core.Text
    Core.:> "layersummary"
    Core.:> Core.Capture "summaryId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "contentVersion" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Layersummary

-- | Gets the layer summary for a volume.
--
-- /See:/ 'newBooksLayersGet' smart constructor.
data BooksLayersGet = BooksLayersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The content version for the requested volume.
    contentVersion :: (Core.Maybe Core.Text),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | The ID for the layer to get the summary for.
    summaryId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume to retrieve layers for.
    volumeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksLayersGet' with the minimum fields required to make a request.
newBooksLayersGet ::
  -- |  The ID for the layer to get the summary for. See 'summaryId'.
  Core.Text ->
  -- |  The volume to retrieve layers for. See 'volumeId'.
  Core.Text ->
  BooksLayersGet
newBooksLayersGet summaryId volumeId =
  BooksLayersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      contentVersion = Core.Nothing,
      source = Core.Nothing,
      summaryId = summaryId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId
    }

instance Core.GoogleRequest BooksLayersGet where
  type Rs BooksLayersGet = Layersummary
  type Scopes BooksLayersGet = '[Books'FullControl]
  requestClient BooksLayersGet {..} =
    go
      volumeId
      summaryId
      xgafv
      accessToken
      callback
      contentVersion
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksLayersGetResource)
          Core.mempty
