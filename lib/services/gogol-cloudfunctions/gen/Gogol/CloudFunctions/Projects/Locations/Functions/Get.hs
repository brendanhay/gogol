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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a function with the given name from the requested project.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.get@.
module Gogol.CloudFunctions.Projects.Locations.Functions.Get
    (
    -- * Resource
      CloudFunctionsProjectsLocationsFunctionsGetResource

    -- ** Constructing a Request
    , CloudFunctionsProjectsLocationsFunctionsGet (..)
    , newCloudFunctionsProjectsLocationsFunctionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudFunctions.Types

-- | A resource alias for @cloudfunctions.projects.locations.functions.get@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsGet' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsGetResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "revision" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Function

-- | Returns a function with the given name from the requested project.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsGet' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsGet = CloudFunctionsProjectsLocationsFunctionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the function which details should be obtained.
    , name :: Core.Text
      -- | Optional. The optional version of the 1st gen function whose details should be obtained. The version of a 1st gen function is an integer that starts from 1 and gets incremented on redeployments. GCF may keep historical configs for old versions of 1st gen function. This field can be specified to fetch the historical configs. This field is valid only for GCF 1st gen function.
    , revision :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsGet' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsGet 
    ::  Core.Text
       -- ^  Required. The name of the function which details should be obtained. See 'name'.
    -> CloudFunctionsProjectsLocationsFunctionsGet
newCloudFunctionsProjectsLocationsFunctionsGet name =
  CloudFunctionsProjectsLocationsFunctionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , revision = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudFunctionsProjectsLocationsFunctionsGet
         where
        type Rs CloudFunctionsProjectsLocationsFunctionsGet =
             Function
        type Scopes
               CloudFunctionsProjectsLocationsFunctionsGet
             = '[CloudPlatform'FullControl]
        requestClient
          CloudFunctionsProjectsLocationsFunctionsGet{..}
          = go name xgafv accessToken callback revision
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudFunctionsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudFunctionsProjectsLocationsFunctionsGetResource)
                      Core.mempty

