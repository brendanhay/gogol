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
-- Module      : Gogol.Books.Volumes.Useruploaded.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of books uploaded by the current user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.useruploaded.list@.
module Gogol.Books.Volumes.Useruploaded.List
  ( -- * Resource
    BooksVolumesUseruploadedListResource,

    -- ** Constructing a Request
    BooksVolumesUseruploadedList (..),
    newBooksVolumesUseruploadedList,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.volumes.useruploaded.list@ method which the
-- 'BooksVolumesUseruploadedList' request conforms to.
type BooksVolumesUseruploadedListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> "useruploaded"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParams
              "processingState"
              VolumesUseruploadedListProcessingState
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParams "volumeId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Volumes

-- | Return a list of books uploaded by the current user.
--
-- /See:/ 'newBooksVolumesUseruploadedList' smart constructor.
data BooksVolumesUseruploadedList = BooksVolumesUseruploadedList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for generating recommendations.
    locale :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The processing state of the user uploaded volumes to be returned.
    processingState :: (Core.Maybe [VolumesUseruploadedListProcessingState]),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Index of the first result to return (starts at 0)
    startIndex :: (Core.Maybe Core.Word32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ids of the volumes to be returned. If not specified all that match the processingState are returned.
    volumeId :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksVolumesUseruploadedList' with the minimum fields required to make a request.
newBooksVolumesUseruploadedList ::
  BooksVolumesUseruploadedList
newBooksVolumesUseruploadedList =
  BooksVolumesUseruploadedList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      locale = Core.Nothing,
      maxResults = Core.Nothing,
      processingState = Core.Nothing,
      source = Core.Nothing,
      startIndex = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.GoogleRequest BooksVolumesUseruploadedList where
  type Rs BooksVolumesUseruploadedList = Volumes
  type Scopes BooksVolumesUseruploadedList = '[Books'FullControl]
  requestClient BooksVolumesUseruploadedList {..} =
    go
      xgafv
      accessToken
      callback
      locale
      maxResults
      (processingState Core.^. Core._Default)
      source
      startIndex
      uploadType
      uploadProtocol
      (volumeId Core.^. Core._Default)
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksVolumesUseruploadedListResource)
          Core.mempty
