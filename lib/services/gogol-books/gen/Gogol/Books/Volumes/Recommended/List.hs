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
-- Module      : Gogol.Books.Volumes.Recommended.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of recommended books for the current user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.recommended.list@.
module Gogol.Books.Volumes.Recommended.List
  ( -- * Resource
    BooksVolumesRecommendedListResource,

    -- ** Constructing a Request
    BooksVolumesRecommendedList (..),
    newBooksVolumesRecommendedList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.volumes.recommended.list@ method which the
-- 'BooksVolumesRecommendedList' request conforms to.
type BooksVolumesRecommendedListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> "recommended"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam
              "maxAllowedMaturityRating"
              VolumesRecommendedListMaxAllowedMaturityRating
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Volumes

-- | Return a list of recommended books for the current user.
--
-- /See:/ 'newBooksVolumesRecommendedList' smart constructor.
data BooksVolumesRecommendedList = BooksVolumesRecommendedList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for generating recommendations.
    locale :: (Core.Maybe Core.Text),
    -- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    maxAllowedMaturityRating :: (Core.Maybe VolumesRecommendedListMaxAllowedMaturityRating),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksVolumesRecommendedList' with the minimum fields required to make a request.
newBooksVolumesRecommendedList ::
  BooksVolumesRecommendedList
newBooksVolumesRecommendedList =
  BooksVolumesRecommendedList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      locale = Core.Nothing,
      maxAllowedMaturityRating = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksVolumesRecommendedList
  where
  type Rs BooksVolumesRecommendedList = Volumes
  type
    Scopes BooksVolumesRecommendedList =
      '[Books'FullControl]
  requestClient BooksVolumesRecommendedList {..} =
    go
      xgafv
      accessToken
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
          ( Core.Proxy ::
              Core.Proxy BooksVolumesRecommendedListResource
          )
          Core.mempty
