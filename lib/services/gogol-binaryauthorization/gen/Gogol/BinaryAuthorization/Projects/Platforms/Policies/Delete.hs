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
-- Module      : Gogol.BinaryAuthorization.Projects.Platforms.Policies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a platform policy. Returns @NOT_FOUND@ if the policy doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.platforms.policies.delete@.
module Gogol.BinaryAuthorization.Projects.Platforms.Policies.Delete
    (
    -- * Resource
      BinaryAuthorizationProjectsPlatformsPoliciesDeleteResource

    -- ** Constructing a Request
    , BinaryAuthorizationProjectsPlatformsPoliciesDelete (..)
    , newBinaryAuthorizationProjectsPlatformsPoliciesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Types

-- | A resource alias for @binaryauthorization.projects.platforms.policies.delete@ method which the
-- 'BinaryAuthorizationProjectsPlatformsPoliciesDelete' request conforms to.
type BinaryAuthorizationProjectsPlatformsPoliciesDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "etag" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes a platform policy. Returns @NOT_FOUND@ if the policy doesn\'t exist.
--
-- /See:/ 'newBinaryAuthorizationProjectsPlatformsPoliciesDelete' smart constructor.
data BinaryAuthorizationProjectsPlatformsPoliciesDelete = BinaryAuthorizationProjectsPlatformsPoliciesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Used to prevent deleting the policy when another request has updated it since it was retrieved.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The name of the platform policy to delete, in the format @projects\/*\/platforms\/*\/policies\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsPlatformsPoliciesDelete' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsPlatformsPoliciesDelete 
    ::  Core.Text
       -- ^  Required. The name of the platform policy to delete, in the format @projects\/*\/platforms\/*\/policies\/*@. See 'name'.
    -> BinaryAuthorizationProjectsPlatformsPoliciesDelete
newBinaryAuthorizationProjectsPlatformsPoliciesDelete name =
  BinaryAuthorizationProjectsPlatformsPoliciesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , etag = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BinaryAuthorizationProjectsPlatformsPoliciesDelete
         where
        type Rs
               BinaryAuthorizationProjectsPlatformsPoliciesDelete
             = Empty
        type Scopes
               BinaryAuthorizationProjectsPlatformsPoliciesDelete
             = '[CloudPlatform'FullControl]
        requestClient
          BinaryAuthorizationProjectsPlatformsPoliciesDelete{..}
          = go name xgafv accessToken callback etag uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              binaryAuthorizationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BinaryAuthorizationProjectsPlatformsPoliciesDeleteResource)
                      Core.mempty

