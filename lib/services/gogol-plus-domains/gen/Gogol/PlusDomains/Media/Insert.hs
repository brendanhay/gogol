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
-- Module      : Gogol.PlusDomains.Media.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.media.insert@.
module Gogol.PlusDomains.Media.Insert
  ( -- * Resource
    PlusDomainsMediaInsertResource,

    -- ** Constructing a Request
    PlusDomainsMediaInsert (..),
    newPlusDomainsMediaInsert,
  )
where

import Gogol.PlusDomains.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @plusDomains.media.insert@ method which the
-- 'PlusDomainsMediaInsert' request conforms to.
type PlusDomainsMediaInsertResource =
  "plusDomains"
    Core.:> "v1"
    Core.:> "people"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "media"
    Core.:> Core.Capture "collection" MediaInsertCollection
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Media
    Core.:> Core.Post '[Core.JSON] Media
    Core.:<|> "upload"
    Core.:> "plusDomains"
    Core.:> "v1"
    Core.:> "people"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "media"
    Core.:> Core.Capture "collection" MediaInsertCollection
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] Media
    Core.:> Core.Post '[Core.JSON] Media

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusDomainsMediaInsert' smart constructor.
data PlusDomainsMediaInsert = PlusDomainsMediaInsert
  { collection :: MediaInsertCollection,
    -- | Multipart request metadata.
    payload :: Media,
    -- | The ID of the user to create the activity on behalf of.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusDomainsMediaInsert' with the minimum fields required to make a request.
newPlusDomainsMediaInsert ::
  -- |  See 'collection'.
  MediaInsertCollection ->
  -- |  Multipart request metadata. See 'payload'.
  Media ->
  -- |  The ID of the user to create the activity on behalf of. See 'userId'.
  Core.Text ->
  PlusDomainsMediaInsert
newPlusDomainsMediaInsert collection payload userId =
  PlusDomainsMediaInsert
    { collection = collection,
      payload = payload,
      userId = userId
    }

instance Core.GoogleRequest PlusDomainsMediaInsert where
  type Rs PlusDomainsMediaInsert = Media
  type
    Scopes PlusDomainsMediaInsert =
      '[Plus'Login, Plus'Me, Plus'Media'Upload]
  requestClient PlusDomainsMediaInsert {..} =
    go
      userId
      collection
      (Core.Just Core.AltJSON)
      payload
      plusDomainsService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusDomainsMediaInsertResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload PlusDomainsMediaInsert)
  where
  type Rs (Core.MediaUpload PlusDomainsMediaInsert) = Media
  type
    Scopes (Core.MediaUpload PlusDomainsMediaInsert) =
      Core.Scopes PlusDomainsMediaInsert
  requestClient (Core.MediaUpload PlusDomainsMediaInsert {..} body) =
    go
      userId
      collection
      (Core.Just Core.AltJSON)
      (Core.Just Core.Multipart)
      payload
      body
      plusDomainsService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusDomainsMediaInsertResource)
          Core.mempty
