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
-- Module      : Gogol.OSLogin.Users.GetLoginProfile
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the profile information used for logging in to a virtual machine on Google Compute Engine.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.getLoginProfile@.
module Gogol.OSLogin.Users.GetLoginProfile
  ( -- * Resource
    OSLoginUsersGetLoginProfileResource,

    -- ** Constructing a Request
    newOSLoginUsersGetLoginProfile,
    OSLoginUsersGetLoginProfile,
  )
where

import Gogol.OSLogin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @oslogin.users.getLoginProfile@ method which the
-- 'OSLoginUsersGetLoginProfile' request conforms to.
type OSLoginUsersGetLoginProfileResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "loginProfile"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "systemId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LoginProfile

-- | Retrieves the profile information used for logging in to a virtual machine on Google Compute Engine.
--
-- /See:/ 'newOSLoginUsersGetLoginProfile' smart constructor.
data OSLoginUsersGetLoginProfile = OSLoginUsersGetLoginProfile
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique ID for the user in format @users\/{user}@.
    name :: Core.Text,
    -- | The project ID of the Google Cloud Platform project.
    projectId :: (Core.Maybe Core.Text),
    -- | A system ID for filtering the results of the request.
    systemId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OSLoginUsersGetLoginProfile' with the minimum fields required to make a request.
newOSLoginUsersGetLoginProfile ::
  -- |  Required. The unique ID for the user in format @users\/{user}@. See 'name'.
  Core.Text ->
  OSLoginUsersGetLoginProfile
newOSLoginUsersGetLoginProfile name =
  OSLoginUsersGetLoginProfile
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      projectId = Core.Nothing,
      systemId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    OSLoginUsersGetLoginProfile
  where
  type Rs OSLoginUsersGetLoginProfile = LoginProfile
  type
    Scopes OSLoginUsersGetLoginProfile =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient OSLoginUsersGetLoginProfile {..} =
    go
      name
      xgafv
      accessToken
      callback
      projectId
      systemId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      oSLoginService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy OSLoginUsersGetLoginProfileResource
          )
          Core.mempty
