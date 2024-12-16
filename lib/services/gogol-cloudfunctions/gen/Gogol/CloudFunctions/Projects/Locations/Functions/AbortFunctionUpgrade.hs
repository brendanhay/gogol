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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.AbortFunctionUpgrade
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Aborts generation upgrade process for a function with the given name from the specified project. Deletes all 2nd Gen copy related configuration and resources which were created during the upgrade process.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.abortFunctionUpgrade@.
module Gogol.CloudFunctions.Projects.Locations.Functions.AbortFunctionUpgrade
    (
    -- * Resource
      CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgradeResource

    -- ** Constructing a Request
    , CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade (..)
    , newCloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudFunctions.Types

-- | A resource alias for @cloudfunctions.projects.locations.functions.abortFunctionUpgrade@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgradeResource
     =
     "v2" Core.:>
       Core.CaptureMode "name" "abortFunctionUpgrade"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AbortFunctionUpgradeRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Aborts generation upgrade process for a function with the given name from the specified project. Deletes all 2nd Gen copy related configuration and resources which were created during the upgrade process.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade = CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the function for which upgrade should be aborted.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AbortFunctionUpgradeRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade 
    ::  Core.Text
       -- ^  Required. The name of the function for which upgrade should be aborted. See 'name'.
    -> AbortFunctionUpgradeRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade
newCloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade name payload =
  CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade
         where
        type Rs
               CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade
             = Operation
        type Scopes
               CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade
             = '[CloudPlatform'FullControl]
        requestClient
          CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudFunctionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgradeResource)
                      Core.mempty

