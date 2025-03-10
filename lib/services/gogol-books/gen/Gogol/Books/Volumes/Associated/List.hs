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
-- Module      : Gogol.Books.Volumes.Associated.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of associated books.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.associated.list@.
module Gogol.Books.Volumes.Associated.List
  ( -- * Resource
    BooksVolumesAssociatedListResource,

    -- ** Constructing a Request
    BooksVolumesAssociatedList (..),
    newBooksVolumesAssociatedList,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.volumes.associated.list@ method which the
-- 'BooksVolumesAssociatedList' request conforms to.
type BooksVolumesAssociatedListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> Core.Capture "volumeId" Core.Text
    Core.:> "associated"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "association" VolumesAssociatedListAssociation
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam
              "maxAllowedMaturityRating"
              VolumesAssociatedListMaxAllowedMaturityRating
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Volumes

-- | Return a list of associated books.
--
-- /See:/ 'newBooksVolumesAssociatedList' smart constructor.
data BooksVolumesAssociatedList = BooksVolumesAssociatedList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Association type.
    association :: (Core.Maybe VolumesAssociatedListAssociation),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for generating recommendations.
    locale :: (Core.Maybe Core.Text),
    -- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    maxAllowedMaturityRating :: (Core.Maybe VolumesAssociatedListMaxAllowedMaturityRating),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | ID of the source volume.
    volumeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksVolumesAssociatedList' with the minimum fields required to make a request.
newBooksVolumesAssociatedList ::
  -- |  ID of the source volume. See 'volumeId'.
  Core.Text ->
  BooksVolumesAssociatedList
newBooksVolumesAssociatedList volumeId =
  BooksVolumesAssociatedList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      association = Core.Nothing,
      callback = Core.Nothing,
      locale = Core.Nothing,
      maxAllowedMaturityRating = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId
    }

instance Core.GoogleRequest BooksVolumesAssociatedList where
  type Rs BooksVolumesAssociatedList = Volumes
  type Scopes BooksVolumesAssociatedList = '[Books'FullControl]
  requestClient BooksVolumesAssociatedList {..} =
    go
      volumeId
      xgafv
      accessToken
      association
      callback
      locale
      maxAllowedMaturityRating
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksVolumesAssociatedListResource)
          Core.mempty
