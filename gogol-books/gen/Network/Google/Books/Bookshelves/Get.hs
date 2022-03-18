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
-- Module      : Network.Google.Books.Bookshelves.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.bookshelves.get@.
module Network.Google.Books.Bookshelves.Get
  ( -- * Resource
    BooksBookshelvesGetResource,

    -- ** Constructing a Request
    newBooksBookshelvesGet,
    BooksBookshelvesGet,
  )
where

import Network.Google.Books.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @books.bookshelves.get@ method which the
-- 'BooksBookshelvesGet' request conforms to.
type BooksBookshelvesGetResource =
  "books"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "bookshelves"
    Core.:> Core.Capture "shelf" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ 'newBooksBookshelvesGet' smart constructor.
data BooksBookshelvesGet = BooksBookshelvesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ID of bookshelf to retrieve.
    shelf :: Core.Text,
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | ID of user for whom to retrieve bookshelves.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksBookshelvesGet' with the minimum fields required to make a request.
newBooksBookshelvesGet ::
  -- |  ID of bookshelf to retrieve. See 'shelf'.
  Core.Text ->
  -- |  ID of user for whom to retrieve bookshelves. See 'userId'.
  Core.Text ->
  BooksBookshelvesGet
newBooksBookshelvesGet shelf userId =
  BooksBookshelvesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      shelf = shelf,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest BooksBookshelvesGet where
  type Rs BooksBookshelvesGet = Bookshelf
  type
    Scopes BooksBookshelvesGet =
      '["https://www.googleapis.com/auth/books"]
  requestClient BooksBookshelvesGet {..} =
    go
      userId
      shelf
      xgafv
      accessToken
      callback
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksBookshelvesGetResource
          )
          Core.mempty
