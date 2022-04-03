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
-- Module      : Gogol.URLShortener.Url.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of URLs shortened by a user.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @urlshortener.url.list@.
module Gogol.URLShortener.Url.List
  ( -- * Resource
    URLShortenerUrlListResource,

    -- ** Constructing a Request
    URLShortenerUrlList (..),
    newURLShortenerUrlList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.URLShortener.Types

-- | A resource alias for @urlshortener.url.list@ method which the
-- 'URLShortenerUrlList' request conforms to.
type URLShortenerUrlListResource =
  "urlshortener"
    Core.:> "v1"
    Core.:> "url"
    Core.:> "history"
    Core.:> Core.QueryParam "projection" UrlListProjection
    Core.:> Core.QueryParam "start-token" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UrlHistory

-- | Retrieves a list of URLs shortened by a user.
--
-- /See:/ 'newURLShortenerUrlList' smart constructor.
data URLShortenerUrlList = URLShortenerUrlList
  { -- | Additional information to return.
    projection :: (Core.Maybe UrlListProjection),
    -- | Token for requesting successive pages of results.
    startToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'URLShortenerUrlList' with the minimum fields required to make a request.
newURLShortenerUrlList ::
  URLShortenerUrlList
newURLShortenerUrlList =
  URLShortenerUrlList {projection = Core.Nothing, startToken = Core.Nothing}

instance Core.GoogleRequest URLShortenerUrlList where
  type Rs URLShortenerUrlList = UrlHistory
  type
    Scopes URLShortenerUrlList =
      '[Urlshortener'FullControl]
  requestClient URLShortenerUrlList {..} =
    go
      projection
      startToken
      (Core.Just Core.AltJSON)
      uRLShortenerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy URLShortenerUrlListResource
          )
          Core.mempty
