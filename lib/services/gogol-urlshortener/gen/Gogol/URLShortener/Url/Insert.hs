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
-- Module      : Gogol.URLShortener.Url.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new short URL.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @urlshortener.url.insert@.
module Gogol.URLShortener.Url.Insert
  ( -- * Resource
    URLShortenerUrlInsertResource,

    -- ** Constructing a Request
    URLShortenerUrlInsert (..),
    newURLShortenerUrlInsert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.URLShortener.Types

-- | A resource alias for @urlshortener.url.insert@ method which the
-- 'URLShortenerUrlInsert' request conforms to.
type URLShortenerUrlInsertResource =
  "urlshortener"
    Core.:> "v1"
    Core.:> "url"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Url
    Core.:> Core.Post '[Core.JSON] Url

-- | Creates a new short URL.
--
-- /See:/ 'newURLShortenerUrlInsert' smart constructor.
newtype URLShortenerUrlInsert = URLShortenerUrlInsert
  { -- | Multipart request metadata.
    payload :: Url
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'URLShortenerUrlInsert' with the minimum fields required to make a request.
newURLShortenerUrlInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Url ->
  URLShortenerUrlInsert
newURLShortenerUrlInsert payload = URLShortenerUrlInsert {payload = payload}

instance Core.GoogleRequest URLShortenerUrlInsert where
  type Rs URLShortenerUrlInsert = Url
  type
    Scopes URLShortenerUrlInsert =
      '[Urlshortener'FullControl]
  requestClient URLShortenerUrlInsert {..} =
    go
      (Core.Just Core.AltJSON)
      payload
      uRLShortenerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy URLShortenerUrlInsertResource
          )
          Core.mempty
