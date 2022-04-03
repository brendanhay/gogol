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
-- Module      : Gogol.Books.Myconfig.SyncVolumeLicenses
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request downloaded content access for specified volumes on the My eBooks shelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.syncVolumeLicenses@.
module Gogol.Books.Myconfig.SyncVolumeLicenses
  ( -- * Resource
    BooksMyconfigSyncVolumeLicensesResource,

    -- ** Constructing a Request
    BooksMyconfigSyncVolumeLicenses (..),
    newBooksMyconfigSyncVolumeLicenses,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.myconfig.syncVolumeLicenses@ method which the
-- 'BooksMyconfigSyncVolumeLicenses' request conforms to.
type BooksMyconfigSyncVolumeLicensesResource =
  "books"
    Core.:> "v1"
    Core.:> "myconfig"
    Core.:> "syncVolumeLicenses"
    Core.:> Core.QueryParam "cpksver" Core.Text
    Core.:> Core.QueryParam "nonce" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "features"
              MyconfigSyncVolumeLicensesFeatures
    Core.:> Core.QueryParam "includeNonComicsSeries" Core.Bool
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "showPreorders" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParams "volumeIds" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Volumes

-- | Request downloaded content access for specified volumes on the My eBooks shelf.
--
-- /See:/ 'newBooksMyconfigSyncVolumeLicenses' smart constructor.
data BooksMyconfigSyncVolumeLicenses = BooksMyconfigSyncVolumeLicenses
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The device\/version ID from which to release the restriction.
    cpksver :: Core.Text,
    -- | List of features supported by the client, i.e., \'RENTALS\'
    features :: (Core.Maybe [MyconfigSyncVolumeLicensesFeatures]),
    -- | Set to true to include non-comics series. Defaults to false.
    includeNonComicsSeries :: (Core.Maybe Core.Bool),
    -- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
    locale :: (Core.Maybe Core.Text),
    -- | The client nonce value.
    nonce :: Core.Text,
    -- | Set to true to show pre-ordered books. Defaults to false.
    showPreorders :: (Core.Maybe Core.Bool),
    -- | String to identify the originator of this request.
    source :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume(s) to request download restrictions for.
    volumeIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMyconfigSyncVolumeLicenses' with the minimum fields required to make a request.
newBooksMyconfigSyncVolumeLicenses ::
  -- |  The device\/version ID from which to release the restriction. See 'cpksver'.
  Core.Text ->
  -- |  The client nonce value. See 'nonce'.
  Core.Text ->
  -- |  String to identify the originator of this request. See 'source'.
  Core.Text ->
  BooksMyconfigSyncVolumeLicenses
newBooksMyconfigSyncVolumeLicenses cpksver nonce source =
  BooksMyconfigSyncVolumeLicenses
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      cpksver = cpksver,
      features = Core.Nothing,
      includeNonComicsSeries = Core.Nothing,
      locale = Core.Nothing,
      nonce = nonce,
      showPreorders = Core.Nothing,
      source = source,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeIds = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksMyconfigSyncVolumeLicenses
  where
  type Rs BooksMyconfigSyncVolumeLicenses = Volumes
  type
    Scopes BooksMyconfigSyncVolumeLicenses =
      '[Books'FullControl]
  requestClient BooksMyconfigSyncVolumeLicenses {..} =
    go
      (Core.Just cpksver)
      (Core.Just nonce)
      (Core.Just source)
      xgafv
      accessToken
      callback
      (features Core.^. Core._Default)
      includeNonComicsSeries
      locale
      showPreorders
      uploadType
      uploadProtocol
      (volumeIds Core.^. Core._Default)
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksMyconfigSyncVolumeLicensesResource
          )
          Core.mempty
