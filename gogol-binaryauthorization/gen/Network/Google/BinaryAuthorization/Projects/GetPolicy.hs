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
-- Module      : Network.Google.BinaryAuthorization.Projects.GetPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A policy specifies the attestors that must attest to a container image, before the project is allowed to deploy that image. There is at most one policy per project. All image admission requests are permitted if a project has no policy. Gets the policy for this project. Returns a default policy if the project does not have one.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.getPolicy@.
module Network.Google.BinaryAuthorization.Projects.GetPolicy
  ( -- * Resource
    BinaryAuthorizationProjectsGetPolicyResource,

    -- ** Constructing a Request
    newBinaryAuthorizationProjectsGetPolicy,
    BinaryAuthorizationProjectsGetPolicy,
  )
where

import Network.Google.BinaryAuthorization.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @binaryauthorization.projects.getPolicy@ method which the
-- 'BinaryAuthorizationProjectsGetPolicy' request conforms to.
type BinaryAuthorizationProjectsGetPolicyResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | A policy specifies the attestors that must attest to a container image, before the project is allowed to deploy that image. There is at most one policy per project. All image admission requests are permitted if a project has no policy. Gets the policy for this project. Returns a default policy if the project does not have one.
--
-- /See:/ 'newBinaryAuthorizationProjectsGetPolicy' smart constructor.
data BinaryAuthorizationProjectsGetPolicy = BinaryAuthorizationProjectsGetPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the policy to retrieve, in the format @projects\/*\/policy@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsGetPolicy' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsGetPolicy ::
  -- |  Required. The resource name of the policy to retrieve, in the format @projects\/*\/policy@. See 'name'.
  Core.Text ->
  BinaryAuthorizationProjectsGetPolicy
newBinaryAuthorizationProjectsGetPolicy name =
  BinaryAuthorizationProjectsGetPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BinaryAuthorizationProjectsGetPolicy
  where
  type Rs BinaryAuthorizationProjectsGetPolicy = Policy
  type
    Scopes BinaryAuthorizationProjectsGetPolicy =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    BinaryAuthorizationProjectsGetPolicy {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        binaryAuthorizationService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BinaryAuthorizationProjectsGetPolicyResource
            )
            Core.mempty
