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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the node pools for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.list@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.List
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsListResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsList
    , ProjectsLocationsClustersNodePoolsList

    -- * Request Lenses
    , plcnplParent
    , plcnplXgafv
    , plcnplUploadProtocol
    , plcnplAccessToken
    , plcnplUploadType
    , plcnplZone
    , plcnplClusterId
    , plcnplProjectId
    , plcnplCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.list@ method which the
-- 'ProjectsLocationsClustersNodePoolsList' request conforms to.
type ProjectsLocationsClustersNodePoolsListResource =
     "v1" :>
       Capture "parent" Text :>
         "nodePools" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "zone" Text :>
                     QueryParam "clusterId" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListNodePoolsResponse

-- | Lists the node pools for a cluster.
--
-- /See:/ 'projectsLocationsClustersNodePoolsList' smart constructor.
data ProjectsLocationsClustersNodePoolsList =
  ProjectsLocationsClustersNodePoolsList'
    { _plcnplParent :: !Text
    , _plcnplXgafv :: !(Maybe Xgafv)
    , _plcnplUploadProtocol :: !(Maybe Text)
    , _plcnplAccessToken :: !(Maybe Text)
    , _plcnplUploadType :: !(Maybe Text)
    , _plcnplZone :: !(Maybe Text)
    , _plcnplClusterId :: !(Maybe Text)
    , _plcnplProjectId :: !(Maybe Text)
    , _plcnplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnplParent'
--
-- * 'plcnplXgafv'
--
-- * 'plcnplUploadProtocol'
--
-- * 'plcnplAccessToken'
--
-- * 'plcnplUploadType'
--
-- * 'plcnplZone'
--
-- * 'plcnplClusterId'
--
-- * 'plcnplProjectId'
--
-- * 'plcnplCallback'
projectsLocationsClustersNodePoolsList
    :: Text -- ^ 'plcnplParent'
    -> ProjectsLocationsClustersNodePoolsList
projectsLocationsClustersNodePoolsList pPlcnplParent_ =
  ProjectsLocationsClustersNodePoolsList'
    { _plcnplParent = pPlcnplParent_
    , _plcnplXgafv = Nothing
    , _plcnplUploadProtocol = Nothing
    , _plcnplAccessToken = Nothing
    , _plcnplUploadType = Nothing
    , _plcnplZone = Nothing
    , _plcnplClusterId = Nothing
    , _plcnplProjectId = Nothing
    , _plcnplCallback = Nothing
    }


-- | The parent (project, location, cluster id) where the node pools will be
-- listed. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
plcnplParent :: Lens' ProjectsLocationsClustersNodePoolsList Text
plcnplParent
  = lens _plcnplParent (\ s a -> s{_plcnplParent = a})

-- | V1 error format.
plcnplXgafv :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Xgafv)
plcnplXgafv
  = lens _plcnplXgafv (\ s a -> s{_plcnplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnplUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Text)
plcnplUploadProtocol
  = lens _plcnplUploadProtocol
      (\ s a -> s{_plcnplUploadProtocol = a})

-- | OAuth access token.
plcnplAccessToken :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Text)
plcnplAccessToken
  = lens _plcnplAccessToken
      (\ s a -> s{_plcnplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnplUploadType :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Text)
plcnplUploadType
  = lens _plcnplUploadType
      (\ s a -> s{_plcnplUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the parent field.
plcnplZone :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Text)
plcnplZone
  = lens _plcnplZone (\ s a -> s{_plcnplZone = a})

-- | Deprecated. The name of the cluster. This field has been deprecated and
-- replaced by the parent field.
plcnplClusterId :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Text)
plcnplClusterId
  = lens _plcnplClusterId
      (\ s a -> s{_plcnplClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
-- This field has been deprecated and replaced by the parent field.
plcnplProjectId :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Text)
plcnplProjectId
  = lens _plcnplProjectId
      (\ s a -> s{_plcnplProjectId = a})

-- | JSONP
plcnplCallback :: Lens' ProjectsLocationsClustersNodePoolsList (Maybe Text)
plcnplCallback
  = lens _plcnplCallback
      (\ s a -> s{_plcnplCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsList
         where
        type Rs ProjectsLocationsClustersNodePoolsList =
             ListNodePoolsResponse
        type Scopes ProjectsLocationsClustersNodePoolsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsList'{..}
          = go _plcnplParent _plcnplXgafv _plcnplUploadProtocol
              _plcnplAccessToken
              _plcnplUploadType
              _plcnplZone
              _plcnplClusterId
              _plcnplProjectId
              _plcnplCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersNodePoolsListResource)
                      mempty
