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
-- Module      : Gogol.AndroidPublisher.Grants.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates access for the user to the given package.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.grants.patch@.
module Gogol.AndroidPublisher.Grants.Patch
  ( -- * Resource
    AndroidPublisherGrantsPatchResource,

    -- ** Constructing a Request
    newAndroidPublisherGrantsPatch,
    AndroidPublisherGrantsPatch,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.grants.patch@ method which the
-- 'AndroidPublisherGrantsPatch' request conforms to.
type AndroidPublisherGrantsPatchResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Grant
    Core.:> Core.Patch '[Core.JSON] Grant

-- | Updates access for the user to the given package.
--
-- /See:/ 'newAndroidPublisherGrantsPatch' smart constructor.
data AndroidPublisherGrantsPatch = AndroidPublisherGrantsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for this grant, following the pattern \"developers\/{developer}\/users\/{email}\/grants\/{package_name}\".
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Grant,
    -- | Optional. The list of fields to be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherGrantsPatch' with the minimum fields required to make a request.
newAndroidPublisherGrantsPatch ::
  -- |  Required. Resource name for this grant, following the pattern \"developers\/{developer}\/users\/{email}\/grants\/{package_name}\". See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Grant ->
  AndroidPublisherGrantsPatch
newAndroidPublisherGrantsPatch name payload =
  AndroidPublisherGrantsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherGrantsPatch
  where
  type Rs AndroidPublisherGrantsPatch = Grant
  type
    Scopes AndroidPublisherGrantsPatch =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherGrantsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherGrantsPatchResource
          )
          Core.mempty
