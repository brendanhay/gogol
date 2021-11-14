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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.InjectCredentials
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inject encrypted credentials into all of the VMs in a cluster.The target
-- cluster must be a personal auth cluster assigned to the user who is
-- issuing the RPC.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.injectCredentials@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.InjectCredentials
    (
    -- * REST Resource
      ProjectsRegionsClustersInjectCredentialsResource

    -- * Creating a Request
    , projectsRegionsClustersInjectCredentials
    , ProjectsRegionsClustersInjectCredentials

    -- * Request Lenses
    , prcicXgafv
    , prcicCluster
    , prcicUploadProtocol
    , prcicProject
    , prcicAccessToken
    , prcicUploadType
    , prcicPayload
    , prcicRegion
    , prcicCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.injectCredentials@ method which the
-- 'ProjectsRegionsClustersInjectCredentials' request conforms to.
type ProjectsRegionsClustersInjectCredentialsResource
     =
     "v1" :>
       Capture "project" Text :>
         Capture "region" Text :>
           CaptureMode "cluster" "injectCredentials" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InjectCredentialsRequest :>
                           Post '[JSON] Operation

-- | Inject encrypted credentials into all of the VMs in a cluster.The target
-- cluster must be a personal auth cluster assigned to the user who is
-- issuing the RPC.
--
-- /See:/ 'projectsRegionsClustersInjectCredentials' smart constructor.
data ProjectsRegionsClustersInjectCredentials =
  ProjectsRegionsClustersInjectCredentials'
    { _prcicXgafv :: !(Maybe Xgafv)
    , _prcicCluster :: !Text
    , _prcicUploadProtocol :: !(Maybe Text)
    , _prcicProject :: !Text
    , _prcicAccessToken :: !(Maybe Text)
    , _prcicUploadType :: !(Maybe Text)
    , _prcicPayload :: !InjectCredentialsRequest
    , _prcicRegion :: !Text
    , _prcicCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersInjectCredentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcicXgafv'
--
-- * 'prcicCluster'
--
-- * 'prcicUploadProtocol'
--
-- * 'prcicProject'
--
-- * 'prcicAccessToken'
--
-- * 'prcicUploadType'
--
-- * 'prcicPayload'
--
-- * 'prcicRegion'
--
-- * 'prcicCallback'
projectsRegionsClustersInjectCredentials
    :: Text -- ^ 'prcicCluster'
    -> Text -- ^ 'prcicProject'
    -> InjectCredentialsRequest -- ^ 'prcicPayload'
    -> Text -- ^ 'prcicRegion'
    -> ProjectsRegionsClustersInjectCredentials
projectsRegionsClustersInjectCredentials pPrcicCluster_ pPrcicProject_ pPrcicPayload_ pPrcicRegion_ =
  ProjectsRegionsClustersInjectCredentials'
    { _prcicXgafv = Nothing
    , _prcicCluster = pPrcicCluster_
    , _prcicUploadProtocol = Nothing
    , _prcicProject = pPrcicProject_
    , _prcicAccessToken = Nothing
    , _prcicUploadType = Nothing
    , _prcicPayload = pPrcicPayload_
    , _prcicRegion = pPrcicRegion_
    , _prcicCallback = Nothing
    }


-- | V1 error format.
prcicXgafv :: Lens' ProjectsRegionsClustersInjectCredentials (Maybe Xgafv)
prcicXgafv
  = lens _prcicXgafv (\ s a -> s{_prcicXgafv = a})

-- | Required. The cluster, in the form clusters\/.
prcicCluster :: Lens' ProjectsRegionsClustersInjectCredentials Text
prcicCluster
  = lens _prcicCluster (\ s a -> s{_prcicCluster = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcicUploadProtocol :: Lens' ProjectsRegionsClustersInjectCredentials (Maybe Text)
prcicUploadProtocol
  = lens _prcicUploadProtocol
      (\ s a -> s{_prcicUploadProtocol = a})

-- | Required. The ID of the Google Cloud Platform project the cluster
-- belongs to, of the form projects\/.
prcicProject :: Lens' ProjectsRegionsClustersInjectCredentials Text
prcicProject
  = lens _prcicProject (\ s a -> s{_prcicProject = a})

-- | OAuth access token.
prcicAccessToken :: Lens' ProjectsRegionsClustersInjectCredentials (Maybe Text)
prcicAccessToken
  = lens _prcicAccessToken
      (\ s a -> s{_prcicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcicUploadType :: Lens' ProjectsRegionsClustersInjectCredentials (Maybe Text)
prcicUploadType
  = lens _prcicUploadType
      (\ s a -> s{_prcicUploadType = a})

-- | Multipart request metadata.
prcicPayload :: Lens' ProjectsRegionsClustersInjectCredentials InjectCredentialsRequest
prcicPayload
  = lens _prcicPayload (\ s a -> s{_prcicPayload = a})

-- | Required. The region containing the cluster, of the form regions\/.
prcicRegion :: Lens' ProjectsRegionsClustersInjectCredentials Text
prcicRegion
  = lens _prcicRegion (\ s a -> s{_prcicRegion = a})

-- | JSONP
prcicCallback :: Lens' ProjectsRegionsClustersInjectCredentials (Maybe Text)
prcicCallback
  = lens _prcicCallback
      (\ s a -> s{_prcicCallback = a})

instance GoogleRequest
           ProjectsRegionsClustersInjectCredentials
         where
        type Rs ProjectsRegionsClustersInjectCredentials =
             Operation
        type Scopes ProjectsRegionsClustersInjectCredentials
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsClustersInjectCredentials'{..}
          = go _prcicProject _prcicRegion _prcicCluster
              _prcicXgafv
              _prcicUploadProtocol
              _prcicAccessToken
              _prcicUploadType
              _prcicCallback
              (Just AltJSON)
              _prcicPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsClustersInjectCredentialsResource)
                      mempty
