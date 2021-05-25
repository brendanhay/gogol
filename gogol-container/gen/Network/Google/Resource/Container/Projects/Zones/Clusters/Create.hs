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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances. By default, the cluster is created in the
-- project\'s [default
-- network](https:\/\/cloud.google.com\/compute\/docs\/networks-and-firewalls#networks).
-- One firewall is added for the cluster. After cluster creation, the
-- Kubelet creates routes for each node to allow the containers on that
-- node to communicate with all other instances in the cluster. Finally, an
-- entry is added to the project\'s global metadata indicating which CIDR
-- range the cluster is using.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.create@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Create
    (
    -- * REST Resource
      ProjectsZonesClustersCreateResource

    -- * Creating a Request
    , projectsZonesClustersCreate
    , ProjectsZonesClustersCreate

    -- * Request Lenses
    , pzccXgafv
    , pzccUploadProtocol
    , pzccAccessToken
    , pzccUploadType
    , pzccZone
    , pzccPayload
    , pzccProjectId
    , pzccCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.create@ method which the
-- 'ProjectsZonesClustersCreate' request conforms to.
type ProjectsZonesClustersCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CreateClusterRequest :>
                               Post '[JSON] Operation

-- | Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances. By default, the cluster is created in the
-- project\'s [default
-- network](https:\/\/cloud.google.com\/compute\/docs\/networks-and-firewalls#networks).
-- One firewall is added for the cluster. After cluster creation, the
-- Kubelet creates routes for each node to allow the containers on that
-- node to communicate with all other instances in the cluster. Finally, an
-- entry is added to the project\'s global metadata indicating which CIDR
-- range the cluster is using.
--
-- /See:/ 'projectsZonesClustersCreate' smart constructor.
data ProjectsZonesClustersCreate =
  ProjectsZonesClustersCreate'
    { _pzccXgafv :: !(Maybe Xgafv)
    , _pzccUploadProtocol :: !(Maybe Text)
    , _pzccAccessToken :: !(Maybe Text)
    , _pzccUploadType :: !(Maybe Text)
    , _pzccZone :: !Text
    , _pzccPayload :: !CreateClusterRequest
    , _pzccProjectId :: !Text
    , _pzccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzccXgafv'
--
-- * 'pzccUploadProtocol'
--
-- * 'pzccAccessToken'
--
-- * 'pzccUploadType'
--
-- * 'pzccZone'
--
-- * 'pzccPayload'
--
-- * 'pzccProjectId'
--
-- * 'pzccCallback'
projectsZonesClustersCreate
    :: Text -- ^ 'pzccZone'
    -> CreateClusterRequest -- ^ 'pzccPayload'
    -> Text -- ^ 'pzccProjectId'
    -> ProjectsZonesClustersCreate
projectsZonesClustersCreate pPzccZone_ pPzccPayload_ pPzccProjectId_ =
  ProjectsZonesClustersCreate'
    { _pzccXgafv = Nothing
    , _pzccUploadProtocol = Nothing
    , _pzccAccessToken = Nothing
    , _pzccUploadType = Nothing
    , _pzccZone = pPzccZone_
    , _pzccPayload = pPzccPayload_
    , _pzccProjectId = pPzccProjectId_
    , _pzccCallback = Nothing
    }


-- | V1 error format.
pzccXgafv :: Lens' ProjectsZonesClustersCreate (Maybe Xgafv)
pzccXgafv
  = lens _pzccXgafv (\ s a -> s{_pzccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzccUploadProtocol :: Lens' ProjectsZonesClustersCreate (Maybe Text)
pzccUploadProtocol
  = lens _pzccUploadProtocol
      (\ s a -> s{_pzccUploadProtocol = a})

-- | OAuth access token.
pzccAccessToken :: Lens' ProjectsZonesClustersCreate (Maybe Text)
pzccAccessToken
  = lens _pzccAccessToken
      (\ s a -> s{_pzccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzccUploadType :: Lens' ProjectsZonesClustersCreate (Maybe Text)
pzccUploadType
  = lens _pzccUploadType
      (\ s a -> s{_pzccUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the parent field.
pzccZone :: Lens' ProjectsZonesClustersCreate Text
pzccZone = lens _pzccZone (\ s a -> s{_pzccZone = a})

-- | Multipart request metadata.
pzccPayload :: Lens' ProjectsZonesClustersCreate CreateClusterRequest
pzccPayload
  = lens _pzccPayload (\ s a -> s{_pzccPayload = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the parent field.
pzccProjectId :: Lens' ProjectsZonesClustersCreate Text
pzccProjectId
  = lens _pzccProjectId
      (\ s a -> s{_pzccProjectId = a})

-- | JSONP
pzccCallback :: Lens' ProjectsZonesClustersCreate (Maybe Text)
pzccCallback
  = lens _pzccCallback (\ s a -> s{_pzccCallback = a})

instance GoogleRequest ProjectsZonesClustersCreate
         where
        type Rs ProjectsZonesClustersCreate = Operation
        type Scopes ProjectsZonesClustersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersCreate'{..}
          = go _pzccProjectId _pzccZone _pzccXgafv
              _pzccUploadProtocol
              _pzccAccessToken
              _pzccUploadType
              _pzccCallback
              (Just AltJSON)
              _pzccPayload
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersCreateResource)
                      mempty
