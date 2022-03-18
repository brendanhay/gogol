{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudShell.Users.Environments.Authorize
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends OAuth credentials to a running environment on behalf of a user. When this completes, the environment will be authorized to run various Google Cloud command line tools without requiring the user to manually authenticate.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.authorize@.
module Gogol.CloudShell.Users.Environments.Authorize
    (
    -- * Resource
      CloudShellUsersEnvironmentsAuthorizeResource

    -- ** Constructing a Request
    , newCloudShellUsersEnvironmentsAuthorize
    , CloudShellUsersEnvironmentsAuthorize
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudShell.Types

-- | A resource alias for @cloudshell.users.environments.authorize@ method which the
-- 'CloudShellUsersEnvironmentsAuthorize' request conforms to.
type CloudShellUsersEnvironmentsAuthorizeResource =
     "v1" Core.:>
       Core.CaptureMode "name" "authorize" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AuthorizeEnvironmentRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Sends OAuth credentials to a running environment on behalf of a user. When this completes, the environment will be authorized to run various Google Cloud command line tools without requiring the user to manually authenticate.
--
-- /See:/ 'newCloudShellUsersEnvironmentsAuthorize' smart constructor.
data CloudShellUsersEnvironmentsAuthorize = CloudShellUsersEnvironmentsAuthorize
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the resource that should receive the credentials, for example @users\/me\/environments\/default@ or @users\/someone\@example.com\/environments\/default@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AuthorizeEnvironmentRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudShellUsersEnvironmentsAuthorize' with the minimum fields required to make a request.
newCloudShellUsersEnvironmentsAuthorize 
    ::  Core.Text
       -- ^  Name of the resource that should receive the credentials, for example @users\/me\/environments\/default@ or @users\/someone\@example.com\/environments\/default@. See 'name'.
    -> AuthorizeEnvironmentRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudShellUsersEnvironmentsAuthorize
newCloudShellUsersEnvironmentsAuthorize name payload =
  CloudShellUsersEnvironmentsAuthorize
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudShellUsersEnvironmentsAuthorize
         where
        type Rs CloudShellUsersEnvironmentsAuthorize =
             Operation
        type Scopes CloudShellUsersEnvironmentsAuthorize =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudShellUsersEnvironmentsAuthorize{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudShellService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudShellUsersEnvironmentsAuthorizeResource)
                      Core.mempty

