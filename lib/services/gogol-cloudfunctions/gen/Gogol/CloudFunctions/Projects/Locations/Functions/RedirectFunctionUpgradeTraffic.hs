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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.RedirectFunctionUpgradeTraffic
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the traffic target of a function from the original 1st Gen function to the 2nd Gen copy. This is the second step of the multi step process to upgrade 1st Gen functions to 2nd Gen. After this operation, all new traffic will be served by 2nd Gen copy.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.redirectFunctionUpgradeTraffic@.
module Gogol.CloudFunctions.Projects.Locations.Functions.RedirectFunctionUpgradeTraffic
    (
    -- * Resource
      CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTrafficResource

    -- ** Constructing a Request
    , CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic (..)
    , newCloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudFunctions.Types

-- | A resource alias for @cloudfunctions.projects.locations.functions.redirectFunctionUpgradeTraffic@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTrafficResource
     =
     "v2" Core.:>
       Core.CaptureMode "name"
         "redirectFunctionUpgradeTraffic"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       RedirectFunctionUpgradeTrafficRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Changes the traffic target of a function from the original 1st Gen function to the 2nd Gen copy. This is the second step of the multi step process to upgrade 1st Gen functions to 2nd Gen. After this operation, all new traffic will be served by 2nd Gen copy.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic = CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the function for which traffic target should be changed to 2nd Gen from 1st Gen.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RedirectFunctionUpgradeTrafficRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic 
    ::  Core.Text
       -- ^  Required. The name of the function for which traffic target should be changed to 2nd Gen from 1st Gen. See 'name'.
    -> RedirectFunctionUpgradeTrafficRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic
newCloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic name payload =
  CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic
         where
        type Rs
               CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic
             = Operation
        type Scopes
               CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic
             = '[CloudPlatform'FullControl]
        requestClient
          CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudFunctionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTrafficResource)
                      Core.mempty

