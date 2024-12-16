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
-- Module      : Gogol.Compute.UrlMaps.Validate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs static validation for the UrlMap. In particular, the tests of the provided UrlMap will be run. Calling this method does NOT create the UrlMap.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.urlMaps.validate@.
module Gogol.Compute.UrlMaps.Validate
    (
    -- * Resource
      ComputeUrlMapsValidateResource

    -- ** Constructing a Request
    , ComputeUrlMapsValidate (..)
    , newComputeUrlMapsValidate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.urlMaps.validate@ method which the
-- 'ComputeUrlMapsValidate' request conforms to.
type ComputeUrlMapsValidateResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "urlMaps" Core.:>
                 Core.Capture "urlMap" Core.Text Core.:>
                   "validate" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON]
                                   UrlMapsValidateRequest
                                   Core.:>
                                   Core.Post '[Core.JSON]
                                     UrlMapsValidateResponse

-- | Runs static validation for the UrlMap. In particular, the tests of the provided UrlMap will be run. Calling this method does NOT create the UrlMap.
--
-- /See:/ 'newComputeUrlMapsValidate' smart constructor.
data ComputeUrlMapsValidate = ComputeUrlMapsValidate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: UrlMapsValidateRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the UrlMap resource to be validated as.
    , urlMap :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeUrlMapsValidate' with the minimum fields required to make a request.
newComputeUrlMapsValidate 
    ::  UrlMapsValidateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the UrlMap resource to be validated as. See 'urlMap'.
    -> ComputeUrlMapsValidate
newComputeUrlMapsValidate payload project urlMap =
  ComputeUrlMapsValidate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , urlMap = urlMap
    }

instance Core.GoogleRequest ComputeUrlMapsValidate
         where
        type Rs ComputeUrlMapsValidate =
             UrlMapsValidateResponse
        type Scopes ComputeUrlMapsValidate =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeUrlMapsValidate{..}
          = go project urlMap xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeUrlMapsValidateResource)
                      Core.mempty

