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
-- Module      : Gogol.URLShortener.Url.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Expands a short URL or gets creation time and analytics.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @urlshortener.url.get@.
module Gogol.URLShortener.Url.Get
  ( -- * Resource
    URLShortenerUrlGetResource,

    -- ** Constructing a Request
    newURLShortenerUrlGet,
    URLShortenerUrlGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.URLShortener.Types

-- | A resource alias for @urlshortener.url.get@ method which the
-- 'URLShortenerUrlGet' request conforms to.
type URLShortenerUrlGetResource =
  "urlshortener"
    Core.:> "v1"
    Core.:> "url"
    Core.:> Core.QueryParam "shortUrl" Core.Text
    Core.:> Core.QueryParam "projection" UrlGetProjection
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Url

-- | Expands a short URL or gets creation time and analytics.
--
-- /See:/ 'newURLShortenerUrlGet' smart constructor.
data URLShortenerUrlGet = URLShortenerUrlGet
  { -- | Additional information to return.
    projection :: (Core.Maybe UrlGetProjection),
    -- | The short URL, including the protocol.
    shortUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'URLShortenerUrlGet' with the minimum fields required to make a request.
newURLShortenerUrlGet ::
  -- |  The short URL, including the protocol. See 'shortUrl'.
  Core.Text ->
  URLShortenerUrlGet
newURLShortenerUrlGet shortUrl =
  URLShortenerUrlGet {projection = Core.Nothing, shortUrl = shortUrl}

instance Core.GoogleRequest URLShortenerUrlGet where
  type Rs URLShortenerUrlGet = Url
  type
    Scopes URLShortenerUrlGet =
      '[Urlshortener'FullControl]
  requestClient URLShortenerUrlGet {..} =
    go
      (Core.Just shortUrl)
      projection
      (Core.Just Core.AltJSON)
      uRLShortenerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy URLShortenerUrlGetResource)
          Core.mempty
