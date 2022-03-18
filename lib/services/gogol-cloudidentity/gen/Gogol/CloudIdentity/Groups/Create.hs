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
-- Module      : Gogol.CloudIdentity.Groups.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Group.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.create@.
module Gogol.CloudIdentity.Groups.Create
    (
    -- * Resource
      CloudIdentityGroupsCreateResource

    -- ** Constructing a Request
    , newCloudIdentityGroupsCreate
    , CloudIdentityGroupsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.groups.create@ method which the
-- 'CloudIdentityGroupsCreate' request conforms to.
type CloudIdentityGroupsCreateResource =
     "v1" Core.:>
       "groups" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "initialGroupConfig"
                 GroupsCreateInitialGroupConfig
                 Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Group Core.:>
                         Core.Post '[Core.JSON] Operation

-- | Creates a Group.
--
-- /See:/ 'newCloudIdentityGroupsCreate' smart constructor.
data CloudIdentityGroupsCreate = CloudIdentityGroupsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The initial configuration option for the @Group@.
    , initialGroupConfig :: (Core.Maybe GroupsCreateInitialGroupConfig)
      -- | Multipart request metadata.
    , payload :: Group
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsCreate' with the minimum fields required to make a request.
newCloudIdentityGroupsCreate 
    ::  Group
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudIdentityGroupsCreate
newCloudIdentityGroupsCreate payload =
  CloudIdentityGroupsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , initialGroupConfig = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsCreate
         where
        type Rs CloudIdentityGroupsCreate = Operation
        type Scopes CloudIdentityGroupsCreate =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient CloudIdentityGroupsCreate{..}
          = go xgafv accessToken callback initialGroupConfig
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityGroupsCreateResource)
                      Core.mempty

