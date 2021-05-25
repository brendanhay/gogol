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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the requested node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.get@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Get
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsGetResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsGet
    , ProjectsLocationsClustersNodePoolsGet

    -- * Request Lenses
    , plcnpgXgafv
    , plcnpgUploadProtocol
    , plcnpgAccessToken
    , plcnpgUploadType
    , plcnpgZone
    , plcnpgNodePoolId
    , plcnpgName
    , plcnpgClusterId
    , plcnpgProjectId
    , plcnpgCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.get@ method which the
-- 'ProjectsLocationsClustersNodePoolsGet' request conforms to.
type ProjectsLocationsClustersNodePoolsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "zone" Text :>
                   QueryParam "nodePoolId" Text :>
                     QueryParam "clusterId" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] NodePool

-- | Retrieves the requested node pool.
--
-- /See:/ 'projectsLocationsClustersNodePoolsGet' smart constructor.
data ProjectsLocationsClustersNodePoolsGet =
  ProjectsLocationsClustersNodePoolsGet'
    { _plcnpgXgafv :: !(Maybe Xgafv)
    , _plcnpgUploadProtocol :: !(Maybe Text)
    , _plcnpgAccessToken :: !(Maybe Text)
    , _plcnpgUploadType :: !(Maybe Text)
    , _plcnpgZone :: !(Maybe Text)
    , _plcnpgNodePoolId :: !(Maybe Text)
    , _plcnpgName :: !Text
    , _plcnpgClusterId :: !(Maybe Text)
    , _plcnpgProjectId :: !(Maybe Text)
    , _plcnpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnpgXgafv'
--
-- * 'plcnpgUploadProtocol'
--
-- * 'plcnpgAccessToken'
--
-- * 'plcnpgUploadType'
--
-- * 'plcnpgZone'
--
-- * 'plcnpgNodePoolId'
--
-- * 'plcnpgName'
--
-- * 'plcnpgClusterId'
--
-- * 'plcnpgProjectId'
--
-- * 'plcnpgCallback'
projectsLocationsClustersNodePoolsGet
    :: Text -- ^ 'plcnpgName'
    -> ProjectsLocationsClustersNodePoolsGet
projectsLocationsClustersNodePoolsGet pPlcnpgName_ =
  ProjectsLocationsClustersNodePoolsGet'
    { _plcnpgXgafv = Nothing
    , _plcnpgUploadProtocol = Nothing
    , _plcnpgAccessToken = Nothing
    , _plcnpgUploadType = Nothing
    , _plcnpgZone = Nothing
    , _plcnpgNodePoolId = Nothing
    , _plcnpgName = pPlcnpgName_
    , _plcnpgClusterId = Nothing
    , _plcnpgProjectId = Nothing
    , _plcnpgCallback = Nothing
    }


-- | V1 error format.
plcnpgXgafv :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Xgafv)
plcnpgXgafv
  = lens _plcnpgXgafv (\ s a -> s{_plcnpgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnpgUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgUploadProtocol
  = lens _plcnpgUploadProtocol
      (\ s a -> s{_plcnpgUploadProtocol = a})

-- | OAuth access token.
plcnpgAccessToken :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgAccessToken
  = lens _plcnpgAccessToken
      (\ s a -> s{_plcnpgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnpgUploadType :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgUploadType
  = lens _plcnpgUploadType
      (\ s a -> s{_plcnpgUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
plcnpgZone :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgZone
  = lens _plcnpgZone (\ s a -> s{_plcnpgZone = a})

-- | Deprecated. The name of the node pool. This field has been deprecated
-- and replaced by the name field.
plcnpgNodePoolId :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgNodePoolId
  = lens _plcnpgNodePoolId
      (\ s a -> s{_plcnpgNodePoolId = a})

-- | The name (project, location, cluster, node pool id) of the node pool to
-- get. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\`.
plcnpgName :: Lens' ProjectsLocationsClustersNodePoolsGet Text
plcnpgName
  = lens _plcnpgName (\ s a -> s{_plcnpgName = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
plcnpgClusterId :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgClusterId
  = lens _plcnpgClusterId
      (\ s a -> s{_plcnpgClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
plcnpgProjectId :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgProjectId
  = lens _plcnpgProjectId
      (\ s a -> s{_plcnpgProjectId = a})

-- | JSONP
plcnpgCallback :: Lens' ProjectsLocationsClustersNodePoolsGet (Maybe Text)
plcnpgCallback
  = lens _plcnpgCallback
      (\ s a -> s{_plcnpgCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsGet
         where
        type Rs ProjectsLocationsClustersNodePoolsGet =
             NodePool
        type Scopes ProjectsLocationsClustersNodePoolsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsGet'{..}
          = go _plcnpgName _plcnpgXgafv _plcnpgUploadProtocol
              _plcnpgAccessToken
              _plcnpgUploadType
              _plcnpgZone
              _plcnpgNodePoolId
              _plcnpgClusterId
              _plcnpgProjectId
              _plcnpgCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersNodePoolsGetResource)
                      mempty
