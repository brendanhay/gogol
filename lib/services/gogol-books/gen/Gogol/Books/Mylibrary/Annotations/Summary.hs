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
-- Module      : Gogol.Books.Mylibrary.Annotations.Summary
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the summary of specified layers.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.summary@.
module Gogol.Books.Mylibrary.Annotations.Summary
  ( -- * Resource
    BooksMylibraryAnnotationsSummaryResource,

    -- ** Constructing a Request
    newBooksMylibraryAnnotationsSummary,
    BooksMylibraryAnnotationsSummary,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.mylibrary.annotations.summary@ method which the
-- 'BooksMylibraryAnnotationsSummary' request conforms to.
type BooksMylibraryAnnotationsSummaryResource =
  "books"
    Core.:> "v1"
    Core.:> "mylibrary"
    Core.:> "annotations"
    Core.:> "summary"
    Core.:> Core.QueryParams "layerIds" Core.Text
    Core.:> Core.QueryParam "volumeId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AnnotationsSummary

-- | Gets the summary of specified layers.
--
-- /See:/ 'newBooksMylibraryAnnotationsSummary' smart constructor.
data BooksMylibraryAnnotationsSummary = BooksMylibraryAnnotationsSummary
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Array of layer IDs to get the summary for.
    layerIds :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Volume id to get the summary for.
    volumeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryAnnotationsSummary' with the minimum fields required to make a request.
newBooksMylibraryAnnotationsSummary ::
  -- |  Array of layer IDs to get the summary for. See 'layerIds'.
  [Core.Text] ->
  -- |  Volume id to get the summary for. See 'volumeId'.
  Core.Text ->
  BooksMylibraryAnnotationsSummary
newBooksMylibraryAnnotationsSummary layerIds volumeId =
  BooksMylibraryAnnotationsSummary
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      layerIds = layerIds,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId
    }

instance
  Core.GoogleRequest
    BooksMylibraryAnnotationsSummary
  where
  type
    Rs BooksMylibraryAnnotationsSummary =
      AnnotationsSummary
  type
    Scopes BooksMylibraryAnnotationsSummary =
      '[Books'FullControl]
  requestClient BooksMylibraryAnnotationsSummary {..} =
    go
      layerIds
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
          ( Core.Proxy ::
              Core.Proxy BooksMylibraryAnnotationsSummaryResource
          )
          Core.mempty
