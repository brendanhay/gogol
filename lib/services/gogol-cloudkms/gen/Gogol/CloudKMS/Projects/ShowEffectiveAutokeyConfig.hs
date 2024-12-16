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
-- Module      : Gogol.CloudKMS.Projects.ShowEffectiveAutokeyConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the effective Cloud KMS Autokey configuration for a given project.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.showEffectiveAutokeyConfig@.
module Gogol.CloudKMS.Projects.ShowEffectiveAutokeyConfig
    (
    -- * Resource
      CloudKMSProjectsShowEffectiveAutokeyConfigResource

    -- ** Constructing a Request
    , CloudKMSProjectsShowEffectiveAutokeyConfig (..)
    , newCloudKMSProjectsShowEffectiveAutokeyConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.showEffectiveAutokeyConfig@ method which the
-- 'CloudKMSProjectsShowEffectiveAutokeyConfig' request conforms to.
type CloudKMSProjectsShowEffectiveAutokeyConfigResource
     =
     "v1" Core.:>
       Core.CaptureMode "parent"
         "showEffectiveAutokeyConfig"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       ShowEffectiveAutokeyConfigResponse

-- | Returns the effective Cloud KMS Autokey configuration for a given project.
--
-- /See:/ 'newCloudKMSProjectsShowEffectiveAutokeyConfig' smart constructor.
data CloudKMSProjectsShowEffectiveAutokeyConfig = CloudKMSProjectsShowEffectiveAutokeyConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the resource project to the show effective Cloud KMS Autokey configuration for. This may be helpful for interrogating the effect of nested folder configurations on a given resource project.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsShowEffectiveAutokeyConfig' with the minimum fields required to make a request.
newCloudKMSProjectsShowEffectiveAutokeyConfig 
    ::  Core.Text
       -- ^  Required. Name of the resource project to the show effective Cloud KMS Autokey configuration for. This may be helpful for interrogating the effect of nested folder configurations on a given resource project. See 'parent'.
    -> CloudKMSProjectsShowEffectiveAutokeyConfig
newCloudKMSProjectsShowEffectiveAutokeyConfig parent =
  CloudKMSProjectsShowEffectiveAutokeyConfig
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSProjectsShowEffectiveAutokeyConfig
         where
        type Rs CloudKMSProjectsShowEffectiveAutokeyConfig =
             ShowEffectiveAutokeyConfigResponse
        type Scopes
               CloudKMSProjectsShowEffectiveAutokeyConfig
             = '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsShowEffectiveAutokeyConfig{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsShowEffectiveAutokeyConfigResource)
                      Core.mempty

