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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the cluster, including the Kubernetes endpoint and all worker
-- nodes. Firewalls and routes that were configured during cluster creation
-- are also deleted. Other Google Compute Engine resources that might be in
-- use by the cluster, such as load balancer resources, are not deleted if
-- they weren\'t present when the cluster was initially created.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.delete@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.Delete
    (
    -- * REST Resource
      ProjectsLocationsClustersDeleteResource

    -- * Creating a Request
    , projectsLocationsClustersDelete
    , ProjectsLocationsClustersDelete

    -- * Request Lenses
    , plcdXgafv
    , plcdUploadProtocol
    , plcdAccessToken
    , plcdUploadType
    , plcdZone
    , plcdName
    , plcdClusterId
    , plcdProjectId
    , plcdCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.delete@ method which the
-- 'ProjectsLocationsClustersDelete' request conforms to.
type ProjectsLocationsClustersDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "zone" Text :>
                   QueryParam "clusterId" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the cluster, including the Kubernetes endpoint and all worker
-- nodes. Firewalls and routes that were configured during cluster creation
-- are also deleted. Other Google Compute Engine resources that might be in
-- use by the cluster, such as load balancer resources, are not deleted if
-- they weren\'t present when the cluster was initially created.
--
-- /See:/ 'projectsLocationsClustersDelete' smart constructor.
data ProjectsLocationsClustersDelete =
  ProjectsLocationsClustersDelete'
    { _plcdXgafv          :: !(Maybe Xgafv)
    , _plcdUploadProtocol :: !(Maybe Text)
    , _plcdAccessToken    :: !(Maybe Text)
    , _plcdUploadType     :: !(Maybe Text)
    , _plcdZone           :: !(Maybe Text)
    , _plcdName           :: !Text
    , _plcdClusterId      :: !(Maybe Text)
    , _plcdProjectId      :: !(Maybe Text)
    , _plcdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcdXgafv'
--
-- * 'plcdUploadProtocol'
--
-- * 'plcdAccessToken'
--
-- * 'plcdUploadType'
--
-- * 'plcdZone'
--
-- * 'plcdName'
--
-- * 'plcdClusterId'
--
-- * 'plcdProjectId'
--
-- * 'plcdCallback'
projectsLocationsClustersDelete
    :: Text -- ^ 'plcdName'
    -> ProjectsLocationsClustersDelete
projectsLocationsClustersDelete pPlcdName_ =
  ProjectsLocationsClustersDelete'
    { _plcdXgafv = Nothing
    , _plcdUploadProtocol = Nothing
    , _plcdAccessToken = Nothing
    , _plcdUploadType = Nothing
    , _plcdZone = Nothing
    , _plcdName = pPlcdName_
    , _plcdClusterId = Nothing
    , _plcdProjectId = Nothing
    , _plcdCallback = Nothing
    }


-- | V1 error format.
plcdXgafv :: Lens' ProjectsLocationsClustersDelete (Maybe Xgafv)
plcdXgafv
  = lens _plcdXgafv (\ s a -> s{_plcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcdUploadProtocol :: Lens' ProjectsLocationsClustersDelete (Maybe Text)
plcdUploadProtocol
  = lens _plcdUploadProtocol
      (\ s a -> s{_plcdUploadProtocol = a})

-- | OAuth access token.
plcdAccessToken :: Lens' ProjectsLocationsClustersDelete (Maybe Text)
plcdAccessToken
  = lens _plcdAccessToken
      (\ s a -> s{_plcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcdUploadType :: Lens' ProjectsLocationsClustersDelete (Maybe Text)
plcdUploadType
  = lens _plcdUploadType
      (\ s a -> s{_plcdUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
plcdZone :: Lens' ProjectsLocationsClustersDelete (Maybe Text)
plcdZone = lens _plcdZone (\ s a -> s{_plcdZone = a})

-- | The name (project, location, cluster) of the cluster to delete.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcdName :: Lens' ProjectsLocationsClustersDelete Text
plcdName = lens _plcdName (\ s a -> s{_plcdName = a})

-- | Deprecated. The name of the cluster to delete. This field has been
-- deprecated and replaced by the name field.
plcdClusterId :: Lens' ProjectsLocationsClustersDelete (Maybe Text)
plcdClusterId
  = lens _plcdClusterId
      (\ s a -> s{_plcdClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
plcdProjectId :: Lens' ProjectsLocationsClustersDelete (Maybe Text)
plcdProjectId
  = lens _plcdProjectId
      (\ s a -> s{_plcdProjectId = a})

-- | JSONP
plcdCallback :: Lens' ProjectsLocationsClustersDelete (Maybe Text)
plcdCallback
  = lens _plcdCallback (\ s a -> s{_plcdCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersDelete
         where
        type Rs ProjectsLocationsClustersDelete = Operation
        type Scopes ProjectsLocationsClustersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsClustersDelete'{..}
          = go _plcdName _plcdXgafv _plcdUploadProtocol
              _plcdAccessToken
              _plcdUploadType
              _plcdZone
              _plcdClusterId
              _plcdProjectId
              _plcdCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersDeleteResource)
                      mempty
