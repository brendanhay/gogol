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
-- Module      : Gogol.Books.Mylibrary.Bookshelves.Volumes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets volume information for volumes on a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.volumes.list@.
module Gogol.Books.Mylibrary.Bookshelves.Volumes.List
  ( -- * Resource
    BooksMylibraryBookshelvesVolumesListResource,

    -- ** Constructing a Request
    newBooksMylibraryBookshelvesVolumesList,
    BooksMylibraryBookshelvesVolumesList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.mylibrary.bookshelves.volumes.list@ method which the
-- 'BooksMylibraryBookshelvesVolumesList' request conforms to.
type BooksMylibraryBookshelvesVolumesListResource =
  "books"
    Core.:> "v1"
    Core.:> "mylibrary"
    Core.:> "bookshelves"
    Core.:> Core.Capture "shelf" Core.Text
    Core.:> "volumes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam
              "projection"
              MylibraryBookshelvesVolumesListProjection
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "showPreorders" Core.Bool
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Volumes

-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ 'newBooksMylibraryBookshelvesVolumesList' smart constructor.
data BooksMylibraryBookshelvesVolumesList = BooksMylibraryBookshelvesVolumesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-3166-1 code to override the IP-based location.
    country :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | Restrict information returned to a set of selected fields.
    projection :: (Core.Maybe MylibraryBookshelvesVolumesListProjection),
    -- | Full-text search query string in this bookshelf.
    q :: (Core.Maybe Core.Text),
    -- | The bookshelf ID or name retrieve volumes for.
    shelf :: Core.Text,
    -- | Set to true to show pre-ordered books. Defaults to false.
    showPreorders :: (Core.Maybe Core.Bool),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Index of the first element to return (starts at 0)
    startIndex :: (Core.Maybe Core.Word32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryBookshelvesVolumesList' with the minimum fields required to make a request.
newBooksMylibraryBookshelvesVolumesList ::
  -- |  The bookshelf ID or name retrieve volumes for. See 'shelf'.
  Core.Text ->
  BooksMylibraryBookshelvesVolumesList
newBooksMylibraryBookshelvesVolumesList shelf =
  BooksMylibraryBookshelvesVolumesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      country = Core.Nothing,
      maxResults = Core.Nothing,
      projection = Core.Nothing,
      q = Core.Nothing,
      shelf = shelf,
      showPreorders = Core.Nothing,
      source = Core.Nothing,
      startIndex = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksMylibraryBookshelvesVolumesList
  where
  type
    Rs BooksMylibraryBookshelvesVolumesList =
      Volumes
  type
    Scopes BooksMylibraryBookshelvesVolumesList =
      '[Books'FullControl]
  requestClient
    BooksMylibraryBookshelvesVolumesList {..} =
      go
        shelf
        xgafv
        accessToken
        callback
        country
        maxResults
        projection
        q
        showPreorders
        source
        startIndex
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        booksService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BooksMylibraryBookshelvesVolumesListResource
            )
            Core.mempty
