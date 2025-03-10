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
-- Module      : Gogol.AndroidPublisher.Apprecovery.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all app recovery action resources associated with a particular package name and app version.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.apprecovery.list@.
module Gogol.AndroidPublisher.Apprecovery.List
  ( -- * Resource
    AndroidPublisherApprecoveryListResource,

    -- ** Constructing a Request
    AndroidPublisherApprecoveryList (..),
    newAndroidPublisherApprecoveryList,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.apprecovery.list@ method which the
-- 'AndroidPublisherApprecoveryList' request conforms to.
type AndroidPublisherApprecoveryListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "appRecoveries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "versionCode" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAppRecoveriesResponse

-- | List all app recovery action resources associated with a particular package name and app version.
--
-- /See:/ 'newAndroidPublisherApprecoveryList' smart constructor.
data AndroidPublisherApprecoveryList = AndroidPublisherApprecoveryList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Package name of the app for which list of recovery actions is requested.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. Version code targeted by the list of recovery actions.
    versionCode :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApprecoveryList' with the minimum fields required to make a request.
newAndroidPublisherApprecoveryList ::
  -- |  Required. Package name of the app for which list of recovery actions is requested. See 'packageName'.
  Core.Text ->
  AndroidPublisherApprecoveryList
newAndroidPublisherApprecoveryList packageName =
  AndroidPublisherApprecoveryList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionCode = Core.Nothing
    }

instance Core.GoogleRequest AndroidPublisherApprecoveryList where
  type Rs AndroidPublisherApprecoveryList = ListAppRecoveriesResponse
  type
    Scopes AndroidPublisherApprecoveryList =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherApprecoveryList {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      versionCode
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AndroidPublisherApprecoveryListResource)
          Core.mempty
