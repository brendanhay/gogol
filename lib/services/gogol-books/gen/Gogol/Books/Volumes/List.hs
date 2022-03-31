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
-- Module      : Gogol.Books.Volumes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs a book search.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.list@.
module Gogol.Books.Volumes.List
  ( -- * Resource
    BooksVolumesListResource,

    -- ** Constructing a Request
    newBooksVolumesList,
    BooksVolumesList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.volumes.list@ method which the
-- 'BooksVolumesList' request conforms to.
type BooksVolumesListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "download" VolumesListDownload
    Core.:> Core.QueryParam "filter" VolumesListFilter
    Core.:> Core.QueryParam "langRestrict" Core.Text
    Core.:> Core.QueryParam
              "libraryRestrict"
              VolumesListLibraryRestrict
    Core.:> Core.QueryParam
              "maxAllowedMaturityRating"
              VolumesListMaxAllowedMaturityRating
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "orderBy" VolumesListOrderBy
    Core.:> Core.QueryParam "partner" Core.Text
    Core.:> Core.QueryParam
              "printType"
              VolumesListPrintType
    Core.:> Core.QueryParam
              "projection"
              VolumesListProjection
    Core.:> Core.QueryParam "showPreorders" Core.Bool
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam
              "startIndex"
              Core.Word32
    Core.:> Core.QueryParam
              "uploadType"
              Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Volumes

-- | Performs a book search.
--
-- /See:/ 'newBooksVolumesList' smart constructor.
data BooksVolumesList = BooksVolumesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Restrict to volumes by download availability.
    download :: (Core.Maybe VolumesListDownload),
    -- | Filter search results.
    filter :: (Core.Maybe VolumesListFilter),
    -- | Restrict results to books with this language code.
    langRestrict :: (Core.Maybe Core.Text),
    -- | Restrict search to this user\'s library.
    libraryRestrict :: (Core.Maybe VolumesListLibraryRestrict),
    -- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    maxAllowedMaturityRating :: (Core.Maybe VolumesListMaxAllowedMaturityRating),
    -- | Maximum number of results to return.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Sort search results.
    orderBy :: (Core.Maybe VolumesListOrderBy),
    -- | Restrict and brand results for partner ID.
    partner :: (Core.Maybe Core.Text),
    -- | Restrict to books or magazines.
    printType :: (Core.Maybe VolumesListPrintType),
    -- | Restrict information returned to a set of selected fields.
    projection :: (Core.Maybe VolumesListProjection),
    -- | Full-text search query string.
    q :: Core.Text,
    -- | Set to true to show books available for preorder. Defaults to false.
    showPreorders :: (Core.Maybe Core.Bool),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Index of the first result to return (starts at 0)
    startIndex :: (Core.Maybe Core.Word32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksVolumesList' with the minimum fields required to make a request.
newBooksVolumesList ::
  -- |  Full-text search query string. See 'q'.
  Core.Text ->
  BooksVolumesList
newBooksVolumesList q =
  BooksVolumesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      download = Core.Nothing,
      filter = Core.Nothing,
      langRestrict = Core.Nothing,
      libraryRestrict = Core.Nothing,
      maxAllowedMaturityRating = Core.Nothing,
      maxResults = Core.Nothing,
      orderBy = Core.Nothing,
      partner = Core.Nothing,
      printType = Core.Nothing,
      projection = Core.Nothing,
      q = q,
      showPreorders = Core.Nothing,
      source = Core.Nothing,
      startIndex = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksVolumesList where
  type Rs BooksVolumesList = Volumes
  type Scopes BooksVolumesList = '[Books'FullControl]
  requestClient BooksVolumesList {..} =
    go
      (Core.Just q)
      xgafv
      accessToken
      callback
      download
      filter
      langRestrict
      libraryRestrict
      maxAllowedMaturityRating
      maxResults
      orderBy
      partner
      printType
      projection
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
          (Core.Proxy :: Core.Proxy BooksVolumesListResource)
          Core.mempty
