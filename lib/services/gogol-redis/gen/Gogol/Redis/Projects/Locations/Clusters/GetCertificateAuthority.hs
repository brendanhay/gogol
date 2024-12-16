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
-- Module      : Gogol.Redis.Projects.Locations.Clusters.GetCertificateAuthority
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of certificate authority information for Redis cluster.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.clusters.getCertificateAuthority@.
module Gogol.Redis.Projects.Locations.Clusters.GetCertificateAuthority
    (
    -- * Resource
      RedisProjectsLocationsClustersGetCertificateAuthorityResource

    -- ** Constructing a Request
    , RedisProjectsLocationsClustersGetCertificateAuthority (..)
    , newRedisProjectsLocationsClustersGetCertificateAuthority
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.clusters.getCertificateAuthority@ method which the
-- 'RedisProjectsLocationsClustersGetCertificateAuthority' request conforms to.
type RedisProjectsLocationsClustersGetCertificateAuthorityResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] CertificateAuthority

-- | Gets the details of certificate authority information for Redis cluster.
--
-- /See:/ 'newRedisProjectsLocationsClustersGetCertificateAuthority' smart constructor.
data RedisProjectsLocationsClustersGetCertificateAuthority = RedisProjectsLocationsClustersGetCertificateAuthority
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Redis cluster certificate authority resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}\/certificateAuthority@ where @location_id@ refers to a GCP region.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsClustersGetCertificateAuthority' with the minimum fields required to make a request.
newRedisProjectsLocationsClustersGetCertificateAuthority 
    ::  Core.Text
       -- ^  Required. Redis cluster certificate authority resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}\/certificateAuthority@ where @location_id@ refers to a GCP region. See 'name'.
    -> RedisProjectsLocationsClustersGetCertificateAuthority
newRedisProjectsLocationsClustersGetCertificateAuthority name =
  RedisProjectsLocationsClustersGetCertificateAuthority
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RedisProjectsLocationsClustersGetCertificateAuthority
         where
        type Rs
               RedisProjectsLocationsClustersGetCertificateAuthority
             = CertificateAuthority
        type Scopes
               RedisProjectsLocationsClustersGetCertificateAuthority
             = '[CloudPlatform'FullControl]
        requestClient
          RedisProjectsLocationsClustersGetCertificateAuthority{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              redisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RedisProjectsLocationsClustersGetCertificateAuthorityResource)
                      Core.mempty

