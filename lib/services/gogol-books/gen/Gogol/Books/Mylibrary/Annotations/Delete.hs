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
-- Module      : Gogol.Books.Mylibrary.Annotations.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.delete@.
module Gogol.Books.Mylibrary.Annotations.Delete
  ( -- * Resource
    BooksMylibraryAnnotationsDeleteResource,

    -- ** Constructing a Request
    BooksMylibraryAnnotationsDelete (..),
    newBooksMylibraryAnnotationsDelete,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.mylibrary.annotations.delete@ method which the
-- 'BooksMylibraryAnnotationsDelete' request conforms to.
type BooksMylibraryAnnotationsDeleteResource =
  "books"
    Core.:> "v1"
    Core.:> "mylibrary"
    Core.:> "annotations"
    Core.:> Core.Capture "annotationId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an annotation.
--
-- /See:/ 'newBooksMylibraryAnnotationsDelete' smart constructor.
data BooksMylibraryAnnotationsDelete = BooksMylibraryAnnotationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID for the annotation to delete.
    annotationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryAnnotationsDelete' with the minimum fields required to make a request.
newBooksMylibraryAnnotationsDelete ::
  -- |  The ID for the annotation to delete. See 'annotationId'.
  Core.Text ->
  BooksMylibraryAnnotationsDelete
newBooksMylibraryAnnotationsDelete annotationId =
  BooksMylibraryAnnotationsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      annotationId = annotationId,
      callback = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksMylibraryAnnotationsDelete where
  type Rs BooksMylibraryAnnotationsDelete = Empty
  type Scopes BooksMylibraryAnnotationsDelete = '[Books'FullControl]
  requestClient BooksMylibraryAnnotationsDelete {..} =
    go
      annotationId
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
          (Core.Proxy :: Core.Proxy BooksMylibraryAnnotationsDeleteResource)
          Core.mempty
