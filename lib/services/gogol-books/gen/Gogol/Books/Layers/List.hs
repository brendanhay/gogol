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
-- Module      : Gogol.Books.Layers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the layer summaries for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.list@.
module Gogol.Books.Layers.List
  ( -- * Resource
    BooksLayersListResource,

    -- ** Constructing a Request
    newBooksLayersList,
    BooksLayersList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.layers.list@ method which the
-- 'BooksLayersList' request conforms to.
type BooksLayersListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> Core.Capture "volumeId" Core.Text
    Core.:> "layersummary"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "contentVersion" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Layersummaries

-- | List the layer summaries for a volume.
--
-- /See:/ 'newBooksLayersList' smart constructor.
data BooksLayersList = BooksLayersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The content version for the requested volume.
    contentVersion :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | The value of the nextToken from the previous page.
    pageToken :: (Core.Maybe Core.Text),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume to retrieve layers for.
    volumeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksLayersList' with the minimum fields required to make a request.
newBooksLayersList ::
  -- |  The volume to retrieve layers for. See 'volumeId'.
  Core.Text ->
  BooksLayersList
newBooksLayersList volumeId =
  BooksLayersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      contentVersion = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId
    }

instance Core.GoogleRequest BooksLayersList where
  type Rs BooksLayersList = Layersummaries
  type Scopes BooksLayersList = '[Books'FullControl]
  requestClient BooksLayersList {..} =
    go
      volumeId
      xgafv
      accessToken
      callback
      contentVersion
      maxResults
      pageToken
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksLayersListResource)
          Core.mempty
