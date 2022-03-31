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
-- Module      : Gogol.AndroidPublisher.Edits.Listings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.get@.
module Gogol.AndroidPublisher.Edits.Listings.Get
  ( -- * Resource
    AndroidPublisherEditsListingsGetResource,

    -- ** Constructing a Request
    newAndroidPublisherEditsListingsGet,
    AndroidPublisherEditsListingsGet,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.edits.listings.get@ method which the
-- 'AndroidPublisherEditsListingsGet' request conforms to.
type AndroidPublisherEditsListingsGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "listings"
    Core.:> Core.Capture "language" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Listing

-- | Gets a localized store listing.
--
-- /See:/ 'newAndroidPublisherEditsListingsGet' smart constructor.
data AndroidPublisherEditsListingsGet = AndroidPublisherEditsListingsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    language :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsListingsGet' with the minimum fields required to make a request.
newAndroidPublisherEditsListingsGet ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). See 'language'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsListingsGet
newAndroidPublisherEditsListingsGet editId language packageName =
  AndroidPublisherEditsListingsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      editId = editId,
      language = language,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsListingsGet
  where
  type Rs AndroidPublisherEditsListingsGet = Listing
  type
    Scopes AndroidPublisherEditsListingsGet =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsListingsGet {..} =
    go
      packageName
      editId
      language
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherEditsListingsGetResource
          )
          Core.mempty
