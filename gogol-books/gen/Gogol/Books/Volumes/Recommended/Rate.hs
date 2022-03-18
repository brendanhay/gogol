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
-- Module      : Gogol.Books.Volumes.Recommended.Rate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rate a recommended book for the current user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.recommended.rate@.
module Gogol.Books.Volumes.Recommended.Rate
  ( -- * Resource
    BooksVolumesRecommendedRateResource,

    -- ** Constructing a Request
    newBooksVolumesRecommendedRate,
    BooksVolumesRecommendedRate,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.volumes.recommended.rate@ method which the
-- 'BooksVolumesRecommendedRate' request conforms to.
type BooksVolumesRecommendedRateResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> "recommended"
    Core.:> "rate"
    Core.:> Core.QueryParam "rating" VolumesRecommendedRateRating
    Core.:> Core.QueryParam "volumeId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              BooksVolumesRecommendedRateResponse

-- | Rate a recommended book for the current user.
--
-- /See:/ 'newBooksVolumesRecommendedRate' smart constructor.
data BooksVolumesRecommendedRate = BooksVolumesRecommendedRate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for generating recommendations.
    locale :: (Core.Maybe Core.Text),
    -- | Rating to be given to the volume.
    rating :: VolumesRecommendedRateRating,
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

-- | Creates a value of 'BooksVolumesRecommendedRate' with the minimum fields required to make a request.
newBooksVolumesRecommendedRate ::
  -- |  Rating to be given to the volume. See 'rating'.
  VolumesRecommendedRateRating ->
  -- |  ID of the source volume. See 'volumeId'.
  Core.Text ->
  BooksVolumesRecommendedRate
newBooksVolumesRecommendedRate rating volumeId =
  BooksVolumesRecommendedRate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      locale = Core.Nothing,
      rating = rating,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId
    }

instance
  Core.GoogleRequest
    BooksVolumesRecommendedRate
  where
  type
    Rs BooksVolumesRecommendedRate =
      BooksVolumesRecommendedRateResponse
  type
    Scopes BooksVolumesRecommendedRate =
      '["https://www.googleapis.com/auth/books"]
  requestClient BooksVolumesRecommendedRate {..} =
    go
      (Core.Just rating)
      (Core.Just volumeId)
      xgafv
      accessToken
      callback
      locale
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksVolumesRecommendedRateResource
          )
          Core.mempty
