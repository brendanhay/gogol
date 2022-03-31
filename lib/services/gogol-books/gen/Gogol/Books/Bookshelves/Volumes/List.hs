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
-- Module      : Gogol.Books.Bookshelves.Volumes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.bookshelves.volumes.list@.
module Gogol.Books.Bookshelves.Volumes.List
  ( -- * Resource
    BooksBookshelvesVolumesListResource,

    -- ** Constructing a Request
    newBooksBookshelvesVolumesList,
    BooksBookshelvesVolumesList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.bookshelves.volumes.list@ method which the
-- 'BooksBookshelvesVolumesList' request conforms to.
type BooksBookshelvesVolumesListResource =
  "books"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "bookshelves"
    Core.:> Core.Capture "shelf" Core.Text
    Core.:> "volumes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "showPreorders" Core.Bool
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Volumes

-- | Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ 'newBooksBookshelvesVolumesList' smart constructor.
data BooksBookshelvesVolumesList = BooksBookshelvesVolumesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | ID of bookshelf to retrieve volumes.
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
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | ID of user for whom to retrieve bookshelf volumes.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksBookshelvesVolumesList' with the minimum fields required to make a request.
newBooksBookshelvesVolumesList ::
  -- |  ID of bookshelf to retrieve volumes. See 'shelf'.
  Core.Text ->
  -- |  ID of user for whom to retrieve bookshelf volumes. See 'userId'.
  Core.Text ->
  BooksBookshelvesVolumesList
newBooksBookshelvesVolumesList shelf userId =
  BooksBookshelvesVolumesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      shelf = shelf,
      showPreorders = Core.Nothing,
      source = Core.Nothing,
      startIndex = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    BooksBookshelvesVolumesList
  where
  type Rs BooksBookshelvesVolumesList = Volumes
  type
    Scopes BooksBookshelvesVolumesList =
      '[Books'FullControl]
  requestClient BooksBookshelvesVolumesList {..} =
    go
      userId
      shelf
      xgafv
      accessToken
      callback
      maxResults
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
              Core.Proxy BooksBookshelvesVolumesListResource
          )
          Core.mempty
