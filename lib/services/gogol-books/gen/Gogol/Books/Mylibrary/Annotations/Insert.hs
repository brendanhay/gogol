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
-- Module      : Gogol.Books.Mylibrary.Annotations.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.insert@.
module Gogol.Books.Mylibrary.Annotations.Insert
  ( -- * Resource
    BooksMylibraryAnnotationsInsertResource,

    -- ** Constructing a Request
    BooksMylibraryAnnotationsInsert (..),
    newBooksMylibraryAnnotationsInsert,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.mylibrary.annotations.insert@ method which the
-- 'BooksMylibraryAnnotationsInsert' request conforms to.
type BooksMylibraryAnnotationsInsertResource =
  "books"
    Core.:> "v1"
    Core.:> "mylibrary"
    Core.:> "annotations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "annotationId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "showOnlySummaryInResponse" Core.Bool
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Annotation
    Core.:> Core.Post '[Core.JSON] Annotation

-- | Inserts a new annotation.
--
-- /See:/ 'newBooksMylibraryAnnotationsInsert' smart constructor.
data BooksMylibraryAnnotationsInsert = BooksMylibraryAnnotationsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID for the annotation to insert.
    annotationId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-3166-1 code to override the IP-based location.
    country :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Annotation,
    -- | Requests that only the summary of the specified layer be provided in the response.
    showOnlySummaryInResponse :: (Core.Maybe Core.Bool),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryAnnotationsInsert' with the minimum fields required to make a request.
newBooksMylibraryAnnotationsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Annotation ->
  BooksMylibraryAnnotationsInsert
newBooksMylibraryAnnotationsInsert payload =
  BooksMylibraryAnnotationsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      annotationId = Core.Nothing,
      callback = Core.Nothing,
      country = Core.Nothing,
      payload = payload,
      showOnlySummaryInResponse = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksMylibraryAnnotationsInsert
  where
  type Rs BooksMylibraryAnnotationsInsert = Annotation
  type
    Scopes BooksMylibraryAnnotationsInsert =
      '[Books'FullControl]
  requestClient BooksMylibraryAnnotationsInsert {..} =
    go
      xgafv
      accessToken
      annotationId
      callback
      country
      showOnlySummaryInResponse
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksMylibraryAnnotationsInsertResource
          )
          Core.mempty
