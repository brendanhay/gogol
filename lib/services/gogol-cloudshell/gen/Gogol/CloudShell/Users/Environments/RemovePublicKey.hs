{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudShell.Users.Environments.RemovePublicKey
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a public SSH key from an environment. Clients will no longer be able to connect to the environment using the corresponding private key. If a key with the same content is not present, this will error with NOT_FOUND.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.removePublicKey@.
module Gogol.CloudShell.Users.Environments.RemovePublicKey
    (
    -- * Resource
      CloudShellUsersEnvironmentsRemovePublicKeyResource

    -- ** Constructing a Request
    , CloudShellUsersEnvironmentsRemovePublicKey (..)
    , newCloudShellUsersEnvironmentsRemovePublicKey
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudShell.Types

-- | A resource alias for @cloudshell.users.environments.removePublicKey@ method which the
-- 'CloudShellUsersEnvironmentsRemovePublicKey' request conforms to.
type CloudShellUsersEnvironmentsRemovePublicKeyResource
     =
     "v1" Core.:>
       Core.CaptureMode "environment" "removePublicKey"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RemovePublicKeyRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Removes a public SSH key from an environment. Clients will no longer be able to connect to the environment using the corresponding private key. If a key with the same content is not present, this will error with NOT_FOUND.
--
-- /See:/ 'newCloudShellUsersEnvironmentsRemovePublicKey' smart constructor.
data CloudShellUsersEnvironmentsRemovePublicKey = CloudShellUsersEnvironmentsRemovePublicKey
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Environment this key should be removed from, e.g. @users\/me\/environments\/default@.
    , environment :: Core.Text
      -- | Multipart request metadata.
    , payload :: RemovePublicKeyRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudShellUsersEnvironmentsRemovePublicKey' with the minimum fields required to make a request.
newCloudShellUsersEnvironmentsRemovePublicKey 
    ::  Core.Text
       -- ^  Environment this key should be removed from, e.g. @users\/me\/environments\/default@. See 'environment'.
    -> RemovePublicKeyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudShellUsersEnvironmentsRemovePublicKey
newCloudShellUsersEnvironmentsRemovePublicKey environment payload =
  CloudShellUsersEnvironmentsRemovePublicKey
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , environment = environment
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudShellUsersEnvironmentsRemovePublicKey
         where
        type Rs CloudShellUsersEnvironmentsRemovePublicKey =
             Operation
        type Scopes
               CloudShellUsersEnvironmentsRemovePublicKey
             = '[CloudPlatform'FullControl]
        requestClient
          CloudShellUsersEnvironmentsRemovePublicKey{..}
          = go environment xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudShellService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudShellUsersEnvironmentsRemovePublicKeyResource)
                      Core.mempty

