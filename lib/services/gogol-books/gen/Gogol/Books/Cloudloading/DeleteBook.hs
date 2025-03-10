{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Books.Cloudloading.DeleteBook
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the book and its contents
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.cloudloading.deleteBook@.
module Gogol.Books.Cloudloading.DeleteBook
  ( -- * Resource
    BooksCloudloadingDeleteBookResource,

    -- ** Constructing a Request
    BooksCloudloadingDeleteBook (..),
    newBooksCloudloadingDeleteBook,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.cloudloading.deleteBook@ method which the
-- 'BooksCloudloadingDeleteBook' request conforms to.
type BooksCloudloadingDeleteBookResource =
  "books"
    Core.:> "v1"
    Core.:> "cloudloading"
    Core.:> "deleteBook"
    Core.:> Core.QueryParam "volumeId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Empty

-- | Remove the book and its contents
--
-- /See:/ 'newBooksCloudloadingDeleteBook' smart constructor.
data BooksCloudloadingDeleteBook = BooksCloudloadingDeleteBook
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The id of the book to be removed.
    volumeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksCloudloadingDeleteBook' with the minimum fields required to make a request.
newBooksCloudloadingDeleteBook ::
  -- |  The id of the book to be removed. See 'volumeId'.
  Core.Text ->
  BooksCloudloadingDeleteBook
newBooksCloudloadingDeleteBook volumeId =
  BooksCloudloadingDeleteBook
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId
    }

instance Core.GoogleRequest BooksCloudloadingDeleteBook where
  type Rs BooksCloudloadingDeleteBook = Empty
  type Scopes BooksCloudloadingDeleteBook = '[Books'FullControl]
  requestClient BooksCloudloadingDeleteBook {..} =
    go
      (Core.Just volumeId)
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksCloudloadingDeleteBookResource)
          Core.mempty
