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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.RollbackFunctionUpgradeTraffic
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts the traffic target of a function from the 2nd Gen copy to the original 1st Gen function. After this operation, all new traffic would be served by the 1st Gen.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.rollbackFunctionUpgradeTraffic@.
module Gogol.CloudFunctions.Projects.Locations.Functions.RollbackFunctionUpgradeTraffic
    (
    -- * Resource
      CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTrafficResource

    -- ** Constructing a Request
    , CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic (..)
    , newCloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudFunctions.Types

-- | A resource alias for @cloudfunctions.projects.locations.functions.rollbackFunctionUpgradeTraffic@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTrafficResource
     =
     "v2" Core.:>
       Core.CaptureMode "name"
         "rollbackFunctionUpgradeTraffic"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       RollbackFunctionUpgradeTrafficRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Reverts the traffic target of a function from the 2nd Gen copy to the original 1st Gen function. After this operation, all new traffic would be served by the 1st Gen.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic = CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the function for which traffic target should be changed back to 1st Gen from 2nd Gen.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RollbackFunctionUpgradeTrafficRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic 
    ::  Core.Text
       -- ^  Required. The name of the function for which traffic target should be changed back to 1st Gen from 2nd Gen. See 'name'.
    -> RollbackFunctionUpgradeTrafficRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic
newCloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic name payload =
  CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic
         where
        type Rs
               CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic
             = Operation
        type Scopes
               CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic
             = '[CloudPlatform'FullControl]
        requestClient
          CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudFunctionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTrafficResource)
                      Core.mempty

