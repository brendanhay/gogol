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
-- Module      : Network.Google.Books.Cloudloading.AddBook
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a user-upload volume and triggers processing.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.cloudloading.addBook@.
module Network.Google.Books.Cloudloading.AddBook
  ( -- * Resource
    BooksCloudloadingAddBookResource,

    -- ** Constructing a Request
    newBooksCloudloadingAddBook,
    BooksCloudloadingAddBook,
  )
where

import Network.Google.Books.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @books.cloudloading.addBook@ method which the
-- 'BooksCloudloadingAddBook' request conforms to.
type BooksCloudloadingAddBookResource =
  "books"
    Core.:> "v1"
    Core.:> "cloudloading"
    Core.:> "addBook"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "drive_document_id" Core.Text
    Core.:> Core.QueryParam "mime_type" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_client_token" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              BooksCloudloadingResource

-- | Add a user-upload volume and triggers processing.
--
-- /See:/ 'newBooksCloudloadingAddBook' smart constructor.
data BooksCloudloadingAddBook = BooksCloudloadingAddBook
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A drive document id. The upload/client/token must not be set.
    driveDocumentId :: (Core.Maybe Core.Text),
    -- | The document MIME type. It can be set only if the drive/document/id is set.
    mimeType :: (Core.Maybe Core.Text),
    -- | The document name. It can be set only if the drive/document/id is set.
    name :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Scotty upload token.
    uploadClientToken :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksCloudloadingAddBook' with the minimum fields required to make a request.
newBooksCloudloadingAddBook ::
  BooksCloudloadingAddBook
newBooksCloudloadingAddBook =
  BooksCloudloadingAddBook
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      driveDocumentId = Core.Nothing,
      mimeType = Core.Nothing,
      name = Core.Nothing,
      uploadType = Core.Nothing,
      uploadClientToken = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksCloudloadingAddBook where
  type
    Rs BooksCloudloadingAddBook =
      BooksCloudloadingResource
  type
    Scopes BooksCloudloadingAddBook =
      '["https://www.googleapis.com/auth/books"]
  requestClient BooksCloudloadingAddBook {..} =
    go
      xgafv
      accessToken
      callback
      driveDocumentId
      mimeType
      name
      uploadType
      uploadClientToken
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksCloudloadingAddBookResource
          )
          Core.mempty
