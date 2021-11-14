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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the requested node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.get@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Get
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsGetResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsGet
    , ProjectsZonesClustersNodePoolsGet

    -- * Request Lenses
    , pzcnpgXgafv
    , pzcnpgUploadProtocol
    , pzcnpgAccessToken
    , pzcnpgUploadType
    , pzcnpgZone
    , pzcnpgNodePoolId
    , pzcnpgName
    , pzcnpgClusterId
    , pzcnpgProjectId
    , pzcnpgCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.get@ method which the
-- 'ProjectsZonesClustersNodePoolsGet' request conforms to.
type ProjectsZonesClustersNodePoolsGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "nodePools" :>
                     Capture "nodePoolId" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "name" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] NodePool

-- | Retrieves the requested node pool.
--
-- /See:/ 'projectsZonesClustersNodePoolsGet' smart constructor.
data ProjectsZonesClustersNodePoolsGet =
  ProjectsZonesClustersNodePoolsGet'
    { _pzcnpgXgafv :: !(Maybe Xgafv)
    , _pzcnpgUploadProtocol :: !(Maybe Text)
    , _pzcnpgAccessToken :: !(Maybe Text)
    , _pzcnpgUploadType :: !(Maybe Text)
    , _pzcnpgZone :: !Text
    , _pzcnpgNodePoolId :: !Text
    , _pzcnpgName :: !(Maybe Text)
    , _pzcnpgClusterId :: !Text
    , _pzcnpgProjectId :: !Text
    , _pzcnpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersNodePoolsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnpgXgafv'
--
-- * 'pzcnpgUploadProtocol'
--
-- * 'pzcnpgAccessToken'
--
-- * 'pzcnpgUploadType'
--
-- * 'pzcnpgZone'
--
-- * 'pzcnpgNodePoolId'
--
-- * 'pzcnpgName'
--
-- * 'pzcnpgClusterId'
--
-- * 'pzcnpgProjectId'
--
-- * 'pzcnpgCallback'
projectsZonesClustersNodePoolsGet
    :: Text -- ^ 'pzcnpgZone'
    -> Text -- ^ 'pzcnpgNodePoolId'
    -> Text -- ^ 'pzcnpgClusterId'
    -> Text -- ^ 'pzcnpgProjectId'
    -> ProjectsZonesClustersNodePoolsGet
projectsZonesClustersNodePoolsGet pPzcnpgZone_ pPzcnpgNodePoolId_ pPzcnpgClusterId_ pPzcnpgProjectId_ =
  ProjectsZonesClustersNodePoolsGet'
    { _pzcnpgXgafv = Nothing
    , _pzcnpgUploadProtocol = Nothing
    , _pzcnpgAccessToken = Nothing
    , _pzcnpgUploadType = Nothing
    , _pzcnpgZone = pPzcnpgZone_
    , _pzcnpgNodePoolId = pPzcnpgNodePoolId_
    , _pzcnpgName = Nothing
    , _pzcnpgClusterId = pPzcnpgClusterId_
    , _pzcnpgProjectId = pPzcnpgProjectId_
    , _pzcnpgCallback = Nothing
    }


-- | V1 error format.
pzcnpgXgafv :: Lens' ProjectsZonesClustersNodePoolsGet (Maybe Xgafv)
pzcnpgXgafv
  = lens _pzcnpgXgafv (\ s a -> s{_pzcnpgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnpgUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsGet (Maybe Text)
pzcnpgUploadProtocol
  = lens _pzcnpgUploadProtocol
      (\ s a -> s{_pzcnpgUploadProtocol = a})

-- | OAuth access token.
pzcnpgAccessToken :: Lens' ProjectsZonesClustersNodePoolsGet (Maybe Text)
pzcnpgAccessToken
  = lens _pzcnpgAccessToken
      (\ s a -> s{_pzcnpgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnpgUploadType :: Lens' ProjectsZonesClustersNodePoolsGet (Maybe Text)
pzcnpgUploadType
  = lens _pzcnpgUploadType
      (\ s a -> s{_pzcnpgUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
pzcnpgZone :: Lens' ProjectsZonesClustersNodePoolsGet Text
pzcnpgZone
  = lens _pzcnpgZone (\ s a -> s{_pzcnpgZone = a})

-- | Deprecated. The name of the node pool. This field has been deprecated
-- and replaced by the name field.
pzcnpgNodePoolId :: Lens' ProjectsZonesClustersNodePoolsGet Text
pzcnpgNodePoolId
  = lens _pzcnpgNodePoolId
      (\ s a -> s{_pzcnpgNodePoolId = a})

-- | The name (project, location, cluster, node pool id) of the node pool to
-- get. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
pzcnpgName :: Lens' ProjectsZonesClustersNodePoolsGet (Maybe Text)
pzcnpgName
  = lens _pzcnpgName (\ s a -> s{_pzcnpgName = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
pzcnpgClusterId :: Lens' ProjectsZonesClustersNodePoolsGet Text
pzcnpgClusterId
  = lens _pzcnpgClusterId
      (\ s a -> s{_pzcnpgClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
pzcnpgProjectId :: Lens' ProjectsZonesClustersNodePoolsGet Text
pzcnpgProjectId
  = lens _pzcnpgProjectId
      (\ s a -> s{_pzcnpgProjectId = a})

-- | JSONP
pzcnpgCallback :: Lens' ProjectsZonesClustersNodePoolsGet (Maybe Text)
pzcnpgCallback
  = lens _pzcnpgCallback
      (\ s a -> s{_pzcnpgCallback = a})

instance GoogleRequest
           ProjectsZonesClustersNodePoolsGet
         where
        type Rs ProjectsZonesClustersNodePoolsGet = NodePool
        type Scopes ProjectsZonesClustersNodePoolsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersNodePoolsGet'{..}
          = go _pzcnpgProjectId _pzcnpgZone _pzcnpgClusterId
              _pzcnpgNodePoolId
              _pzcnpgXgafv
              _pzcnpgUploadProtocol
              _pzcnpgAccessToken
              _pzcnpgUploadType
              _pzcnpgName
              _pzcnpgCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersNodePoolsGetResource)
                      mempty
