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
-- Module      : Gogol.Books.Mylibrary.Annotations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of annotations, possibly filtered.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.annotations.list@.
module Gogol.Books.Mylibrary.Annotations.List
  ( -- * Resource
    BooksMylibraryAnnotationsListResource,

    -- ** Constructing a Request
    BooksMylibraryAnnotationsList (..),
    newBooksMylibraryAnnotationsList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.mylibrary.annotations.list@ method which the
-- 'BooksMylibraryAnnotationsList' request conforms to.
type BooksMylibraryAnnotationsListResource =
  "books"
    Core.:> "v1"
    Core.:> "mylibrary"
    Core.:> "annotations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "contentVersion" Core.Text
    Core.:> Core.QueryParam "layerId" Core.Text
    Core.:> Core.QueryParams "layerIds" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "updatedMax" Core.Text
    Core.:> Core.QueryParam "updatedMin" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "volumeId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Annotations

-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ 'newBooksMylibraryAnnotationsList' smart constructor.
data BooksMylibraryAnnotationsList = BooksMylibraryAnnotationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The content version for the requested volume.
    contentVersion :: (Core.Maybe Core.Text),
    -- | The layer ID to limit annotation by.
    layerId :: (Core.Maybe Core.Text),
    -- | The layer ID(s) to limit annotation by.
    layerIds :: (Core.Maybe [Core.Text]),
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | The value of the nextToken from the previous page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).
    updatedMax :: (Core.Maybe Core.Text),
    -- | RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).
    updatedMin :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume to restrict annotations to.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryAnnotationsList' with the minimum fields required to make a request.
newBooksMylibraryAnnotationsList ::
  BooksMylibraryAnnotationsList
newBooksMylibraryAnnotationsList =
  BooksMylibraryAnnotationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      contentVersion = Core.Nothing,
      layerId = Core.Nothing,
      layerIds = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      showDeleted = Core.Nothing,
      source = Core.Nothing,
      updatedMax = Core.Nothing,
      updatedMin = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksMylibraryAnnotationsList
  where
  type Rs BooksMylibraryAnnotationsList = Annotations
  type
    Scopes BooksMylibraryAnnotationsList =
      '[Books'FullControl]
  requestClient BooksMylibraryAnnotationsList {..} =
    go
      xgafv
      accessToken
      callback
      contentVersion
      layerId
      (layerIds Core.^. Core._Default)
      maxResults
      pageToken
      showDeleted
      source
      updatedMax
      updatedMin
      uploadType
      uploadProtocol
      volumeId
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksMylibraryAnnotationsListResource
          )
          Core.mempty
