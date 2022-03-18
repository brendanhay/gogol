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
-- Module      : Network.Google.AppsReseller.Reseller.Resellernotify.Register
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a Reseller for receiving notifications.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.resellernotify.register@.
module Network.Google.AppsReseller.Reseller.Resellernotify.Register
  ( -- * Resource
    ResellerResellernotifyRegisterResource,

    -- ** Constructing a Request
    newResellerResellernotifyRegister,
    ResellerResellernotifyRegister,
  )
where

import Network.Google.AppsReseller.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @reseller.resellernotify.register@ method which the
-- 'ResellerResellernotifyRegister' request conforms to.
type ResellerResellernotifyRegisterResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "resellernotify"
    Core.:> "register"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "serviceAccountEmailAddress"
              Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ResellernotifyResource

-- | Registers a Reseller for receiving notifications.
--
-- /See:/ 'newResellerResellernotifyRegister' smart constructor.
data ResellerResellernotifyRegister = ResellerResellernotifyRegister
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The service account which will own the created Cloud-PubSub topic.
    serviceAccountEmailAddress :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerResellernotifyRegister' with the minimum fields required to make a request.
newResellerResellernotifyRegister ::
  ResellerResellernotifyRegister
newResellerResellernotifyRegister =
  ResellerResellernotifyRegister
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      serviceAccountEmailAddress = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ResellerResellernotifyRegister
  where
  type
    Rs ResellerResellernotifyRegister =
      ResellernotifyResource
  type
    Scopes ResellerResellernotifyRegister =
      '["https://www.googleapis.com/auth/apps.order"]
  requestClient ResellerResellernotifyRegister {..} =
    go
      xgafv
      accessToken
      callback
      serviceAccountEmailAddress
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appsResellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ResellerResellernotifyRegisterResource
          )
          Core.mempty
