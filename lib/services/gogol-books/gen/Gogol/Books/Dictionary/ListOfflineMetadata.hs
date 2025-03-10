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
-- Module      : Gogol.Books.Dictionary.ListOfflineMetadata
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of offline dictionary metadata available
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.dictionary.listOfflineMetadata@.
module Gogol.Books.Dictionary.ListOfflineMetadata
  ( -- * Resource
    BooksDictionaryListOfflineMetadataResource,

    -- ** Constructing a Request
    BooksDictionaryListOfflineMetadata (..),
    newBooksDictionaryListOfflineMetadata,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.dictionary.listOfflineMetadata@ method which the
-- 'BooksDictionaryListOfflineMetadata' request conforms to.
type BooksDictionaryListOfflineMetadataResource =
  "books"
    Core.:> "v1"
    Core.:> "dictionary"
    Core.:> "listOfflineMetadata"
    Core.:> Core.QueryParam "cpksver" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Metadata

-- | Returns a list of offline dictionary metadata available
--
-- /See:/ 'newBooksDictionaryListOfflineMetadata' smart constructor.
data BooksDictionaryListOfflineMetadata = BooksDictionaryListOfflineMetadata
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The device\/version ID from which to request the data.
    cpksver :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksDictionaryListOfflineMetadata' with the minimum fields required to make a request.
newBooksDictionaryListOfflineMetadata ::
  -- |  The device\/version ID from which to request the data. See 'cpksver'.
  Core.Text ->
  BooksDictionaryListOfflineMetadata
newBooksDictionaryListOfflineMetadata cpksver =
  BooksDictionaryListOfflineMetadata
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      cpksver = cpksver,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksDictionaryListOfflineMetadata where
  type Rs BooksDictionaryListOfflineMetadata = Metadata
  type
    Scopes BooksDictionaryListOfflineMetadata =
      '[Books'FullControl]
  requestClient BooksDictionaryListOfflineMetadata {..} =
    go
      (Core.Just cpksver)
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
              Core.Proxy BooksDictionaryListOfflineMetadataResource
          )
          Core.mempty
