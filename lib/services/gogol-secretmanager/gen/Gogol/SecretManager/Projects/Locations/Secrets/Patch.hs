{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates metadata of an existing Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.patch@.
module Gogol.SecretManager.Projects.Locations.Secrets.Patch
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsPatchResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsPatch (..)
    , newSecretManagerProjectsLocationsSecretsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.patch@ method which the
-- 'SecretManagerProjectsLocationsSecretsPatch' request conforms to.
type SecretManagerProjectsLocationsSecretsPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Secret Core.:>
                         Core.Patch '[Core.JSON] Secret

-- | Updates metadata of an existing Secret.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsPatch' smart constructor.
data SecretManagerProjectsLocationsSecretsPatch = SecretManagerProjectsLocationsSecretsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. The resource name of the Secret in the format @projects\/*\/secrets\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Secret
      -- | Required. Specifies the fields to be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsPatch' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsPatch 
    :: 
                                              Core.Text
       -- ^  Output only. The resource name of the Secret in the format @projects\/*\/secrets\/*@. See 'name'.
    -> Secret
       -- ^  Multipart request metadata. See 'payload'.
    -> SecretManagerProjectsLocationsSecretsPatch
newSecretManagerProjectsLocationsSecretsPatch name payload
  = SecretManagerProjectsLocationsSecretsPatch{xgafv = Core.Nothing,
                                               accessToken = Core.Nothing, callback = Core.Nothing,
                                               name = name, payload = payload,
                                               updateMask = Core.Nothing, uploadType = Core.Nothing,
                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsPatch
         where
        type Rs SecretManagerProjectsLocationsSecretsPatch = Secret
        type Scopes SecretManagerProjectsLocationsSecretsPatch =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsLocationsSecretsPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsLocationsSecretsPatchResource)
                      Core.mempty

