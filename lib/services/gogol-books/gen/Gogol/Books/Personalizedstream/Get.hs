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
-- Module      : Gogol.Books.Personalizedstream.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a stream of personalized book clusters
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.personalizedstream.get@.
module Gogol.Books.Personalizedstream.Get
  ( -- * Resource
    BooksPersonalizedstreamGetResource,

    -- ** Constructing a Request
    newBooksPersonalizedstreamGet,
    BooksPersonalizedstreamGet,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.personalizedstream.get@ method which the
-- 'BooksPersonalizedstreamGet' request conforms to.
type BooksPersonalizedstreamGetResource =
  "books"
    Core.:> "v1"
    Core.:> "personalizedstream"
    Core.:> "get"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam
              "maxAllowedMaturityRating"
              PersonalizedstreamGetMaxAllowedMaturityRating
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Discoveryclusters

-- | Returns a stream of personalized book clusters
--
-- /See:/ 'newBooksPersonalizedstreamGet' smart constructor.
data BooksPersonalizedstreamGet = BooksPersonalizedstreamGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for generating recommendations.
    locale :: (Core.Maybe Core.Text),
    -- | The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    maxAllowedMaturityRating :: (Core.Maybe PersonalizedstreamGetMaxAllowedMaturityRating),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksPersonalizedstreamGet' with the minimum fields required to make a request.
newBooksPersonalizedstreamGet ::
  BooksPersonalizedstreamGet
newBooksPersonalizedstreamGet =
  BooksPersonalizedstreamGet
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
    BooksPersonalizedstreamGet
  where
  type
    Rs BooksPersonalizedstreamGet =
      Discoveryclusters
  type
    Scopes BooksPersonalizedstreamGet =
      '[Books'FullControl]
  requestClient BooksPersonalizedstreamGet {..} =
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
              Core.Proxy BooksPersonalizedstreamGetResource
          )
          Core.mempty
