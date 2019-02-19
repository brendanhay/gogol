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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a node pool from a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.delete@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Delete
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsDeleteResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsDelete
    , ProjectsLocationsClustersNodePoolsDelete

    -- * Request Lenses
    , plcnpdXgafv
    , plcnpdUploadProtocol
    , plcnpdAccessToken
    , plcnpdUploadType
    , plcnpdZone
    , plcnpdNodePoolId
    , plcnpdName
    , plcnpdClusterId
    , plcnpdProjectId
    , plcnpdCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.delete@ method which the
-- 'ProjectsLocationsClustersNodePoolsDelete' request conforms to.
type ProjectsLocationsClustersNodePoolsDeleteResource
     =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a node pool from a cluster.
--
-- /See:/ 'projectsLocationsClustersNodePoolsDelete' smart constructor.
data ProjectsLocationsClustersNodePoolsDelete =
  ProjectsLocationsClustersNodePoolsDelete'
    { _plcnpdXgafv          :: !(Maybe Xgafv)
    , _plcnpdUploadProtocol :: !(Maybe Text)
    , _plcnpdAccessToken    :: !(Maybe Text)
    , _plcnpdUploadType     :: !(Maybe Text)
    , _plcnpdZone           :: !(Maybe Text)
    , _plcnpdNodePoolId     :: !(Maybe Text)
    , _plcnpdName           :: !Text
    , _plcnpdClusterId      :: !(Maybe Text)
    , _plcnpdProjectId      :: !(Maybe Text)
    , _plcnpdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsClustersNodePoolsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnpdXgafv'
--
-- * 'plcnpdUploadProtocol'
--
-- * 'plcnpdAccessToken'
--
-- * 'plcnpdUploadType'
--
-- * 'plcnpdZone'
--
-- * 'plcnpdNodePoolId'
--
-- * 'plcnpdName'
--
-- * 'plcnpdClusterId'
--
-- * 'plcnpdProjectId'
--
-- * 'plcnpdCallback'
projectsLocationsClustersNodePoolsDelete
    :: Text -- ^ 'plcnpdName'
    -> ProjectsLocationsClustersNodePoolsDelete
projectsLocationsClustersNodePoolsDelete pPlcnpdName_ =
  ProjectsLocationsClustersNodePoolsDelete'
    { _plcnpdXgafv = Nothing
    , _plcnpdUploadProtocol = Nothing
    , _plcnpdAccessToken = Nothing
    , _plcnpdUploadType = Nothing
    , _plcnpdZone = Nothing
    , _plcnpdNodePoolId = Nothing
    , _plcnpdName = pPlcnpdName_
    , _plcnpdClusterId = Nothing
    , _plcnpdProjectId = Nothing
    , _plcnpdCallback = Nothing
    }

-- | V1 error format.
plcnpdXgafv :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Xgafv)
plcnpdXgafv
  = lens _plcnpdXgafv (\ s a -> s{_plcnpdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnpdUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdUploadProtocol
  = lens _plcnpdUploadProtocol
      (\ s a -> s{_plcnpdUploadProtocol = a})

-- | OAuth access token.
plcnpdAccessToken :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdAccessToken
  = lens _plcnpdAccessToken
      (\ s a -> s{_plcnpdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnpdUploadType :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdUploadType
  = lens _plcnpdUploadType
      (\ s a -> s{_plcnpdUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
plcnpdZone :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdZone
  = lens _plcnpdZone (\ s a -> s{_plcnpdZone = a})

-- | Deprecated. The name of the node pool to delete. This field has been
-- deprecated and replaced by the name field.
plcnpdNodePoolId :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdNodePoolId
  = lens _plcnpdNodePoolId
      (\ s a -> s{_plcnpdNodePoolId = a})

-- | The name (project, location, cluster, node pool id) of the node pool to
-- delete. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
plcnpdName :: Lens' ProjectsLocationsClustersNodePoolsDelete Text
plcnpdName
  = lens _plcnpdName (\ s a -> s{_plcnpdName = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the name field.
plcnpdClusterId :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdClusterId
  = lens _plcnpdClusterId
      (\ s a -> s{_plcnpdClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the name field.
plcnpdProjectId :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdProjectId
  = lens _plcnpdProjectId
      (\ s a -> s{_plcnpdProjectId = a})

-- | JSONP
plcnpdCallback :: Lens' ProjectsLocationsClustersNodePoolsDelete (Maybe Text)
plcnpdCallback
  = lens _plcnpdCallback
      (\ s a -> s{_plcnpdCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsDelete
         where
        type Rs ProjectsLocationsClustersNodePoolsDelete =
             Operation
        type Scopes ProjectsLocationsClustersNodePoolsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsDelete'{..}
          = go _plcnpdName _plcnpdXgafv _plcnpdUploadProtocol
              _plcnpdAccessToken
              _plcnpdUploadType
              _plcnpdZone
              _plcnpdNodePoolId
              _plcnpdClusterId
              _plcnpdProjectId
              _plcnpdCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersNodePoolsDeleteResource)
                      mempty
