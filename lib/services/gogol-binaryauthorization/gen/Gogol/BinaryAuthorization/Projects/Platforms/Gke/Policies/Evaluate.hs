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
-- Module      : Gogol.BinaryAuthorization.Projects.Platforms.Gke.Policies.Evaluate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Evaluates a Kubernetes object versus a GKE platform policy. Returns @NOT_FOUND@ if the policy doesn\'t exist, @INVALID_ARGUMENT@ if the policy or request is malformed and @PERMISSION_DENIED@ if the client does not have sufficient permissions.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.platforms.gke.policies.evaluate@.
module Gogol.BinaryAuthorization.Projects.Platforms.Gke.Policies.Evaluate
    (
    -- * Resource
      BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluateResource

    -- ** Constructing a Request
    , BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate (..)
    , newBinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Types

-- | A resource alias for @binaryauthorization.projects.platforms.gke.policies.evaluate@ method which the
-- 'BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate' request conforms to.
type BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluateResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "evaluate" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] EvaluateGkePolicyRequest
                       Core.:>
                       Core.Post '[Core.JSON] EvaluateGkePolicyResponse

-- | Evaluates a Kubernetes object versus a GKE platform policy. Returns @NOT_FOUND@ if the policy doesn\'t exist, @INVALID_ARGUMENT@ if the policy or request is malformed and @PERMISSION_DENIED@ if the client does not have sufficient permissions.
--
-- /See:/ 'newBinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate' smart constructor.
data BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate = BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the platform policy to evaluate in the format @projects\/*\/platforms\/*\/policies\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: EvaluateGkePolicyRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate 
    ::  Core.Text
       -- ^  Required. The name of the platform policy to evaluate in the format @projects\/*\/platforms\/*\/policies\/*@. See 'name'.
    -> EvaluateGkePolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate
newBinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate name payload =
  BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate
         where
        type Rs
               BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate
             = EvaluateGkePolicyResponse
        type Scopes
               BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate
             = '[CloudPlatform'FullControl]
        requestClient
          BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              binaryAuthorizationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluateResource)
                      Core.mempty

