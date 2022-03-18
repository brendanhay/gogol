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
-- Module      : Gogol.Books.Myconfig.ReleaseDownloadAccess
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Release downloaded content access restriction.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.releaseDownloadAccess@.
module Gogol.Books.Myconfig.ReleaseDownloadAccess
  ( -- * Resource
    BooksMyconfigReleaseDownloadAccessResource,

    -- ** Constructing a Request
    newBooksMyconfigReleaseDownloadAccess,
    BooksMyconfigReleaseDownloadAccess,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.myconfig.releaseDownloadAccess@ method which the
-- 'BooksMyconfigReleaseDownloadAccess' request conforms to.
type BooksMyconfigReleaseDownloadAccessResource =
  "books"
    Core.:> "v1"
    Core.:> "myconfig"
    Core.:> "releaseDownloadAccess"
    Core.:> Core.QueryParam "cpksver" Core.Text
    Core.:> Core.QueryParams "volumeIds" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] DownloadAccesses

-- | Release downloaded content access restriction.
--
-- /See:/ 'newBooksMyconfigReleaseDownloadAccess' smart constructor.
data BooksMyconfigReleaseDownloadAccess = BooksMyconfigReleaseDownloadAccess
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The device\/version ID from which to release the restriction.
    cpksver :: Core.Text,
    -- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
    locale :: (Core.Maybe Core.Text),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume(s) to release restrictions for.
    volumeIds :: [Core.Text]
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMyconfigReleaseDownloadAccess' with the minimum fields required to make a request.
newBooksMyconfigReleaseDownloadAccess ::
  -- |  The device\/version ID from which to release the restriction. See 'cpksver'.
  Core.Text ->
  -- |  The volume(s) to release restrictions for. See 'volumeIds'.
  [Core.Text] ->
  BooksMyconfigReleaseDownloadAccess
newBooksMyconfigReleaseDownloadAccess cpksver volumeIds =
  BooksMyconfigReleaseDownloadAccess
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      cpksver = cpksver,
      locale = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeIds = volumeIds
    }

instance
  Core.GoogleRequest
    BooksMyconfigReleaseDownloadAccess
  where
  type
    Rs BooksMyconfigReleaseDownloadAccess =
      DownloadAccesses
  type
    Scopes BooksMyconfigReleaseDownloadAccess =
      '["https://www.googleapis.com/auth/books"]
  requestClient BooksMyconfigReleaseDownloadAccess {..} =
    go
      (Core.Just cpksver)
      volumeIds
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
              Core.Proxy
                BooksMyconfigReleaseDownloadAccessResource
          )
          Core.mempty
