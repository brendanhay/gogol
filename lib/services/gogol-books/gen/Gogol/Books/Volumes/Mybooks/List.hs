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
-- Module      : Gogol.Books.Volumes.Mybooks.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of books in My Library.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.mybooks.list@.
module Gogol.Books.Volumes.Mybooks.List
  ( -- * Resource
    BooksVolumesMybooksListResource,

    -- ** Constructing a Request
    BooksVolumesMybooksList (..),
    newBooksVolumesMybooksList,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.volumes.mybooks.list@ method which the
-- 'BooksVolumesMybooksList' request conforms to.
type BooksVolumesMybooksListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> "mybooks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "acquireMethod" VolumesMybooksListAcquireMethod
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParams
              "processingState"
              VolumesMybooksListProcessingState
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Volumes

-- | Return a list of books in My Library.
--
-- /See:/ 'newBooksVolumesMybooksList' smart constructor.
data BooksVolumesMybooksList = BooksVolumesMybooksList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | How the book was acquired
    acquireMethod :: (Core.Maybe [VolumesMybooksListAcquireMethod]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-3166-1 code to override the IP-based location.
    country :: (Core.Maybe Core.Text),
    -- | ISO-639-1 language and ISO-3166-1 country code. Ex:\'en_US\'. Used for generating recommendations.
    locale :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the acquireMethod.
    processingState :: (Core.Maybe [VolumesMybooksListProcessingState]),
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

-- | Creates a value of 'BooksVolumesMybooksList' with the minimum fields required to make a request.
newBooksVolumesMybooksList ::
  BooksVolumesMybooksList
newBooksVolumesMybooksList =
  BooksVolumesMybooksList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      acquireMethod = Core.Nothing,
      callback = Core.Nothing,
      country = Core.Nothing,
      locale = Core.Nothing,
      maxResults = Core.Nothing,
      processingState = Core.Nothing,
      source = Core.Nothing,
      startIndex = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksVolumesMybooksList where
  type Rs BooksVolumesMybooksList = Volumes
  type Scopes BooksVolumesMybooksList = '[Books'FullControl]
  requestClient BooksVolumesMybooksList {..} =
    go
      xgafv
      accessToken
      (acquireMethod Core.^. Core._Default)
      callback
      country
      locale
      maxResults
      (processingState Core.^. Core._Default)
      source
      startIndex
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksVolumesMybooksListResource)
          Core.mempty
