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
-- Module      : Gogol.Books.Mylibrary.Annotations.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.update@.
module Gogol.Books.Mylibrary.Annotations.Update
  ( -- * Resource
    BooksMylibraryAnnotationsUpdateResource,

    -- ** Constructing a Request
    BooksMylibraryAnnotationsUpdate (..),
    newBooksMylibraryAnnotationsUpdate,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.mylibrary.annotations.update@ method which the
-- 'BooksMylibraryAnnotationsUpdate' request conforms to.
type BooksMylibraryAnnotationsUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Annotation
    Core.:> Core.Put '[Core.JSON] Annotation

-- | Updates an existing annotation.
--
-- /See:/ 'newBooksMylibraryAnnotationsUpdate' smart constructor.
data BooksMylibraryAnnotationsUpdate = BooksMylibraryAnnotationsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID for the annotation to update.
    annotationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Annotation,
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryAnnotationsUpdate' with the minimum fields required to make a request.
newBooksMylibraryAnnotationsUpdate ::
  -- |  The ID for the annotation to update. See 'annotationId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Annotation ->
  BooksMylibraryAnnotationsUpdate
newBooksMylibraryAnnotationsUpdate annotationId payload =
  BooksMylibraryAnnotationsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      annotationId = annotationId,
      callback = Core.Nothing,
      payload = payload,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksMylibraryAnnotationsUpdate where
  type Rs BooksMylibraryAnnotationsUpdate = Annotation
  type Scopes BooksMylibraryAnnotationsUpdate = '[Books'FullControl]
  requestClient BooksMylibraryAnnotationsUpdate {..} =
    go
      annotationId
      xgafv
      accessToken
      callback
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksMylibraryAnnotationsUpdateResource)
          Core.mempty
