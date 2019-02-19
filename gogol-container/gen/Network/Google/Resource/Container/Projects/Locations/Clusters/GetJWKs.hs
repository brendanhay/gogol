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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.GetJWKs
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GetJSONWebKeys gets the public component of the cluster signing keys in
-- JSON Web Key format. This API is not yet intended for general use, and
-- is not available for all clusters.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.getJwks@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.GetJWKs
    (
    -- * REST Resource
      ProjectsLocationsClustersGetJWKsResource

    -- * Creating a Request
    , projectsLocationsClustersGetJWKs
    , ProjectsLocationsClustersGetJWKs

    -- * Request Lenses
    , plcgjParent
    , plcgjXgafv
    , plcgjUploadProtocol
    , plcgjAccessToken
    , plcgjUploadType
    , plcgjCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.getJwks@ method which the
-- 'ProjectsLocationsClustersGetJWKs' request conforms to.
type ProjectsLocationsClustersGetJWKsResource =
     "v1" :>
       Capture "parent" Text :>
         "jwks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GetJSONWebKeysResponse

-- | GetJSONWebKeys gets the public component of the cluster signing keys in
-- JSON Web Key format. This API is not yet intended for general use, and
-- is not available for all clusters.
--
-- /See:/ 'projectsLocationsClustersGetJWKs' smart constructor.
data ProjectsLocationsClustersGetJWKs =
  ProjectsLocationsClustersGetJWKs'
    { _plcgjParent         :: !Text
    , _plcgjXgafv          :: !(Maybe Xgafv)
    , _plcgjUploadProtocol :: !(Maybe Text)
    , _plcgjAccessToken    :: !(Maybe Text)
    , _plcgjUploadType     :: !(Maybe Text)
    , _plcgjCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsClustersGetJWKs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcgjParent'
--
-- * 'plcgjXgafv'
--
-- * 'plcgjUploadProtocol'
--
-- * 'plcgjAccessToken'
--
-- * 'plcgjUploadType'
--
-- * 'plcgjCallback'
projectsLocationsClustersGetJWKs
    :: Text -- ^ 'plcgjParent'
    -> ProjectsLocationsClustersGetJWKs
projectsLocationsClustersGetJWKs pPlcgjParent_ =
  ProjectsLocationsClustersGetJWKs'
    { _plcgjParent = pPlcgjParent_
    , _plcgjXgafv = Nothing
    , _plcgjUploadProtocol = Nothing
    , _plcgjAccessToken = Nothing
    , _plcgjUploadType = Nothing
    , _plcgjCallback = Nothing
    }

-- | The cluster (project, location, cluster id) to get keys for. Specified
-- in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcgjParent :: Lens' ProjectsLocationsClustersGetJWKs Text
plcgjParent
  = lens _plcgjParent (\ s a -> s{_plcgjParent = a})

-- | V1 error format.
plcgjXgafv :: Lens' ProjectsLocationsClustersGetJWKs (Maybe Xgafv)
plcgjXgafv
  = lens _plcgjXgafv (\ s a -> s{_plcgjXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcgjUploadProtocol :: Lens' ProjectsLocationsClustersGetJWKs (Maybe Text)
plcgjUploadProtocol
  = lens _plcgjUploadProtocol
      (\ s a -> s{_plcgjUploadProtocol = a})

-- | OAuth access token.
plcgjAccessToken :: Lens' ProjectsLocationsClustersGetJWKs (Maybe Text)
plcgjAccessToken
  = lens _plcgjAccessToken
      (\ s a -> s{_plcgjAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcgjUploadType :: Lens' ProjectsLocationsClustersGetJWKs (Maybe Text)
plcgjUploadType
  = lens _plcgjUploadType
      (\ s a -> s{_plcgjUploadType = a})

-- | JSONP
plcgjCallback :: Lens' ProjectsLocationsClustersGetJWKs (Maybe Text)
plcgjCallback
  = lens _plcgjCallback
      (\ s a -> s{_plcgjCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersGetJWKs
         where
        type Rs ProjectsLocationsClustersGetJWKs =
             GetJSONWebKeysResponse
        type Scopes ProjectsLocationsClustersGetJWKs =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsClustersGetJWKs'{..}
          = go _plcgjParent _plcgjXgafv _plcgjUploadProtocol
              _plcgjAccessToken
              _plcgjUploadType
              _plcgjCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersGetJWKsResource)
                      mempty
