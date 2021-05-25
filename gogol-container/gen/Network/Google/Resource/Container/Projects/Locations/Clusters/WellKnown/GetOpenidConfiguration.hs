{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.WellKnown.GetOpenidConfiguration
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the OIDC discovery document for the cluster. See the [OpenID
-- Connect Discovery 1.0
-- specification](https:\/\/openid.net\/specs\/openid-connect-discovery-1_0.html)
-- for details. This API is not yet intended for general use, and is not
-- available for all clusters.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.well-known.getOpenid-configuration@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.WellKnown.GetOpenidConfiguration
    (
    -- * REST Resource
      ProjectsLocationsClustersWellKnownGetOpenidConfigurationResource

    -- * Creating a Request
    , projectsLocationsClustersWellKnownGetOpenidConfiguration
    , ProjectsLocationsClustersWellKnownGetOpenidConfiguration

    -- * Request Lenses
    , plcwkgocParent
    , plcwkgocXgafv
    , plcwkgocUploadProtocol
    , plcwkgocAccessToken
    , plcwkgocUploadType
    , plcwkgocCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.well-known.getOpenid-configuration@ method which the
-- 'ProjectsLocationsClustersWellKnownGetOpenidConfiguration' request conforms to.
type ProjectsLocationsClustersWellKnownGetOpenidConfigurationResource
     =
     "v1" :>
       Capture "parent" Text :>
         ".well-known" :>
           "openid-configuration" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GetOpenIdConfigResponse

-- | Gets the OIDC discovery document for the cluster. See the [OpenID
-- Connect Discovery 1.0
-- specification](https:\/\/openid.net\/specs\/openid-connect-discovery-1_0.html)
-- for details. This API is not yet intended for general use, and is not
-- available for all clusters.
--
-- /See:/ 'projectsLocationsClustersWellKnownGetOpenidConfiguration' smart constructor.
data ProjectsLocationsClustersWellKnownGetOpenidConfiguration =
  ProjectsLocationsClustersWellKnownGetOpenidConfiguration'
    { _plcwkgocParent :: !Text
    , _plcwkgocXgafv :: !(Maybe Xgafv)
    , _plcwkgocUploadProtocol :: !(Maybe Text)
    , _plcwkgocAccessToken :: !(Maybe Text)
    , _plcwkgocUploadType :: !(Maybe Text)
    , _plcwkgocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersWellKnownGetOpenidConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcwkgocParent'
--
-- * 'plcwkgocXgafv'
--
-- * 'plcwkgocUploadProtocol'
--
-- * 'plcwkgocAccessToken'
--
-- * 'plcwkgocUploadType'
--
-- * 'plcwkgocCallback'
projectsLocationsClustersWellKnownGetOpenidConfiguration
    :: Text -- ^ 'plcwkgocParent'
    -> ProjectsLocationsClustersWellKnownGetOpenidConfiguration
projectsLocationsClustersWellKnownGetOpenidConfiguration pPlcwkgocParent_ =
  ProjectsLocationsClustersWellKnownGetOpenidConfiguration'
    { _plcwkgocParent = pPlcwkgocParent_
    , _plcwkgocXgafv = Nothing
    , _plcwkgocUploadProtocol = Nothing
    , _plcwkgocAccessToken = Nothing
    , _plcwkgocUploadType = Nothing
    , _plcwkgocCallback = Nothing
    }


-- | The cluster (project, location, cluster id) to get the discovery
-- document for. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
plcwkgocParent :: Lens' ProjectsLocationsClustersWellKnownGetOpenidConfiguration Text
plcwkgocParent
  = lens _plcwkgocParent
      (\ s a -> s{_plcwkgocParent = a})

-- | V1 error format.
plcwkgocXgafv :: Lens' ProjectsLocationsClustersWellKnownGetOpenidConfiguration (Maybe Xgafv)
plcwkgocXgafv
  = lens _plcwkgocXgafv
      (\ s a -> s{_plcwkgocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcwkgocUploadProtocol :: Lens' ProjectsLocationsClustersWellKnownGetOpenidConfiguration (Maybe Text)
plcwkgocUploadProtocol
  = lens _plcwkgocUploadProtocol
      (\ s a -> s{_plcwkgocUploadProtocol = a})

-- | OAuth access token.
plcwkgocAccessToken :: Lens' ProjectsLocationsClustersWellKnownGetOpenidConfiguration (Maybe Text)
plcwkgocAccessToken
  = lens _plcwkgocAccessToken
      (\ s a -> s{_plcwkgocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcwkgocUploadType :: Lens' ProjectsLocationsClustersWellKnownGetOpenidConfiguration (Maybe Text)
plcwkgocUploadType
  = lens _plcwkgocUploadType
      (\ s a -> s{_plcwkgocUploadType = a})

-- | JSONP
plcwkgocCallback :: Lens' ProjectsLocationsClustersWellKnownGetOpenidConfiguration (Maybe Text)
plcwkgocCallback
  = lens _plcwkgocCallback
      (\ s a -> s{_plcwkgocCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersWellKnownGetOpenidConfiguration
         where
        type Rs
               ProjectsLocationsClustersWellKnownGetOpenidConfiguration
             = GetOpenIdConfigResponse
        type Scopes
               ProjectsLocationsClustersWellKnownGetOpenidConfiguration
             = '[]
        requestClient
          ProjectsLocationsClustersWellKnownGetOpenidConfiguration'{..}
          = go _plcwkgocParent _plcwkgocXgafv
              _plcwkgocUploadProtocol
              _plcwkgocAccessToken
              _plcwkgocUploadType
              _plcwkgocCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersWellKnownGetOpenidConfigurationResource)
                      mempty
