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
-- Module      : Gogol.OSLogin.Users.SshPublicKeys.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an SSH public key and returns the profile information. This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.sshPublicKeys.patch@.
module Gogol.OSLogin.Users.SshPublicKeys.Patch
    (
    -- * Resource
      OSLoginUsersSshPublicKeysPatchResource

    -- ** Constructing a Request
    , OSLoginUsersSshPublicKeysPatch (..)
    , newOSLoginUsersSshPublicKeysPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.OSLogin.Types

-- | A resource alias for @oslogin.users.sshPublicKeys.patch@ method which the
-- 'OSLoginUsersSshPublicKeysPatch' request conforms to.
type OSLoginUsersSshPublicKeysPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] SshPublicKey Core.:>
                         Core.Patch '[Core.JSON] SshPublicKey

-- | Updates an SSH public key and returns the profile information. This method supports patch semantics.
--
-- /See:/ 'newOSLoginUsersSshPublicKeysPatch' smart constructor.
data OSLoginUsersSshPublicKeysPatch = OSLoginUsersSshPublicKeysPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format @users\/{user}\/sshPublicKeys\/{fingerprint}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SshPublicKey
      -- | Mask to control which fields get updated. Updates all if not present.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OSLoginUsersSshPublicKeysPatch' with the minimum fields required to make a request.
newOSLoginUsersSshPublicKeysPatch 
    ::  Core.Text
       -- ^  Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format @users\/{user}\/sshPublicKeys\/{fingerprint}@. See 'name'.
    -> SshPublicKey
       -- ^  Multipart request metadata. See 'payload'.
    -> OSLoginUsersSshPublicKeysPatch
newOSLoginUsersSshPublicKeysPatch name payload =
  OSLoginUsersSshPublicKeysPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           OSLoginUsersSshPublicKeysPatch
         where
        type Rs OSLoginUsersSshPublicKeysPatch = SshPublicKey
        type Scopes OSLoginUsersSshPublicKeysPatch =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient OSLoginUsersSshPublicKeysPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              oSLoginService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy OSLoginUsersSshPublicKeysPatchResource)
                      Core.mempty

