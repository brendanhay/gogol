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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagBindings.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TagBinding between a TagValue and a cloud resource (currently project, folder, or organization).
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagBindings.create@.
module Gogol.ResourceManager.Cloudresourcemanager.TagBindings.Create
    (
    -- * Resource
      CloudresourcemanagerTagBindingsCreateResource

    -- ** Constructing a Request
    , newCloudresourcemanagerTagBindingsCreate
    , CloudresourcemanagerTagBindingsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagBindings.create@ method which the
-- 'CloudresourcemanagerTagBindingsCreate' request conforms to.
type CloudresourcemanagerTagBindingsCreateResource =
     "v3" Core.:>
       "tagBindings" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "validateOnly" Core.Bool Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] TagBinding Core.:>
                         Core.Post '[Core.JSON] Operation

-- | Creates a TagBinding between a TagValue and a cloud resource (currently project, folder, or organization).
--
-- /See:/ 'newCloudresourcemanagerTagBindingsCreate' smart constructor.
data CloudresourcemanagerTagBindingsCreate = CloudresourcemanagerTagBindingsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TagBinding
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. Set to true to perform the validations necessary for creating the resource, but not actually perform the action.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagBindingsCreate' with the minimum fields required to make a request.
newCloudresourcemanagerTagBindingsCreate 
    ::  TagBinding
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudresourcemanagerTagBindingsCreate
newCloudresourcemanagerTagBindingsCreate payload =
  CloudresourcemanagerTagBindingsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , validateOnly = Core.Nothing
    }

instance Core.GoogleRequest
           CloudresourcemanagerTagBindingsCreate
         where
        type Rs CloudresourcemanagerTagBindingsCreate =
             Operation
        type Scopes CloudresourcemanagerTagBindingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudresourcemanagerTagBindingsCreate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              payload
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudresourcemanagerTagBindingsCreateResource)
                      Core.mempty

