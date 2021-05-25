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
-- Module      : Network.Google.Resource.DeploymentManager.Resources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a single resource.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.resources.get@.
module Network.Google.Resource.DeploymentManager.Resources.Get
    (
    -- * REST Resource
      ResourcesGetResource

    -- * Creating a Request
    , resourcesGet
    , ResourcesGet

    -- * Request Lenses
    , rgXgafv
    , rgUploadProtocol
    , rgProject
    , rgAccessToken
    , rgUploadType
    , rgResource
    , rgCallback
    , rgDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.resources.get@ method which the
-- 'ResourcesGet' request conforms to.
type ResourcesGetResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   "resources" :>
                     Capture "resource" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Resource

-- | Gets information about a single resource.
--
-- /See:/ 'resourcesGet' smart constructor.
data ResourcesGet =
  ResourcesGet'
    { _rgXgafv :: !(Maybe Xgafv)
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgProject :: !Text
    , _rgAccessToken :: !(Maybe Text)
    , _rgUploadType :: !(Maybe Text)
    , _rgResource :: !Text
    , _rgCallback :: !(Maybe Text)
    , _rgDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgUploadProtocol'
--
-- * 'rgProject'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgResource'
--
-- * 'rgCallback'
--
-- * 'rgDeployment'
resourcesGet
    :: Text -- ^ 'rgProject'
    -> Text -- ^ 'rgResource'
    -> Text -- ^ 'rgDeployment'
    -> ResourcesGet
resourcesGet pRgProject_ pRgResource_ pRgDeployment_ =
  ResourcesGet'
    { _rgXgafv = Nothing
    , _rgUploadProtocol = Nothing
    , _rgProject = pRgProject_
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgResource = pRgResource_
    , _rgCallback = Nothing
    , _rgDeployment = pRgDeployment_
    }


-- | V1 error format.
rgXgafv :: Lens' ResourcesGet (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ResourcesGet (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | The project ID for this request.
rgProject :: Lens' ResourcesGet Text
rgProject
  = lens _rgProject (\ s a -> s{_rgProject = a})

-- | OAuth access token.
rgAccessToken :: Lens' ResourcesGet (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ResourcesGet (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | The name of the resource for this request.
rgResource :: Lens' ResourcesGet Text
rgResource
  = lens _rgResource (\ s a -> s{_rgResource = a})

-- | JSONP
rgCallback :: Lens' ResourcesGet (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

-- | The name of the deployment for this request.
rgDeployment :: Lens' ResourcesGet Text
rgDeployment
  = lens _rgDeployment (\ s a -> s{_rgDeployment = a})

instance GoogleRequest ResourcesGet where
        type Rs ResourcesGet = Resource
        type Scopes ResourcesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient ResourcesGet'{..}
          = go _rgProject _rgDeployment _rgResource _rgXgafv
              _rgUploadProtocol
              _rgAccessToken
              _rgUploadType
              _rgCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy ResourcesGetResource)
                      mempty
