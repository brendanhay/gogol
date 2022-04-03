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
-- Module      : Gogol.AndroidPublisher.Edits.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new edit for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.insert@.
module Gogol.AndroidPublisher.Edits.Insert
  ( -- * Resource
    AndroidPublisherEditsInsertResource,

    -- ** Constructing a Request
    AndroidPublisherEditsInsert (..),
    newAndroidPublisherEditsInsert,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.edits.insert@ method which the
-- 'AndroidPublisherEditsInsert' request conforms to.
type AndroidPublisherEditsInsertResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AppEdit
    Core.:> Core.Post '[Core.JSON] AppEdit

-- | Creates a new edit for an app.
--
-- /See:/ 'newAndroidPublisherEditsInsert' smart constructor.
data AndroidPublisherEditsInsert = AndroidPublisherEditsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: AppEdit,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsInsert' with the minimum fields required to make a request.
newAndroidPublisherEditsInsert ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AppEdit ->
  AndroidPublisherEditsInsert
newAndroidPublisherEditsInsert packageName payload =
  AndroidPublisherEditsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsInsert
  where
  type Rs AndroidPublisherEditsInsert = AppEdit
  type
    Scopes AndroidPublisherEditsInsert =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsInsert {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherEditsInsertResource
          )
          Core.mempty
