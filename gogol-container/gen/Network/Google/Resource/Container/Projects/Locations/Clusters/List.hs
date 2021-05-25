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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.list@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.List
    (
    -- * REST Resource
      ProjectsLocationsClustersListResource

    -- * Creating a Request
    , projectsLocationsClustersList
    , ProjectsLocationsClustersList

    -- * Request Lenses
    , plclParent
    , plclXgafv
    , plclUploadProtocol
    , plclAccessToken
    , plclUploadType
    , plclZone
    , plclProjectId
    , plclCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.list@ method which the
-- 'ProjectsLocationsClustersList' request conforms to.
type ProjectsLocationsClustersListResource =
     "v1" :>
       Capture "parent" Text :>
         "clusters" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "zone" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListClustersResponse

-- | Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ 'projectsLocationsClustersList' smart constructor.
data ProjectsLocationsClustersList =
  ProjectsLocationsClustersList'
    { _plclParent :: !Text
    , _plclXgafv :: !(Maybe Xgafv)
    , _plclUploadProtocol :: !(Maybe Text)
    , _plclAccessToken :: !(Maybe Text)
    , _plclUploadType :: !(Maybe Text)
    , _plclZone :: !(Maybe Text)
    , _plclProjectId :: !(Maybe Text)
    , _plclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plclParent'
--
-- * 'plclXgafv'
--
-- * 'plclUploadProtocol'
--
-- * 'plclAccessToken'
--
-- * 'plclUploadType'
--
-- * 'plclZone'
--
-- * 'plclProjectId'
--
-- * 'plclCallback'
projectsLocationsClustersList
    :: Text -- ^ 'plclParent'
    -> ProjectsLocationsClustersList
projectsLocationsClustersList pPlclParent_ =
  ProjectsLocationsClustersList'
    { _plclParent = pPlclParent_
    , _plclXgafv = Nothing
    , _plclUploadProtocol = Nothing
    , _plclAccessToken = Nothing
    , _plclUploadType = Nothing
    , _plclZone = Nothing
    , _plclProjectId = Nothing
    , _plclCallback = Nothing
    }


-- | The parent (project and location) where the clusters will be listed.
-- Specified in the format \`projects\/*\/locations\/*\`. Location \"-\"
-- matches all zones and all regions.
plclParent :: Lens' ProjectsLocationsClustersList Text
plclParent
  = lens _plclParent (\ s a -> s{_plclParent = a})

-- | V1 error format.
plclXgafv :: Lens' ProjectsLocationsClustersList (Maybe Xgafv)
plclXgafv
  = lens _plclXgafv (\ s a -> s{_plclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plclUploadProtocol :: Lens' ProjectsLocationsClustersList (Maybe Text)
plclUploadProtocol
  = lens _plclUploadProtocol
      (\ s a -> s{_plclUploadProtocol = a})

-- | OAuth access token.
plclAccessToken :: Lens' ProjectsLocationsClustersList (Maybe Text)
plclAccessToken
  = lens _plclAccessToken
      (\ s a -> s{_plclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plclUploadType :: Lens' ProjectsLocationsClustersList (Maybe Text)
plclUploadType
  = lens _plclUploadType
      (\ s a -> s{_plclUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides, or \"-\" for all zones. This field has been
-- deprecated and replaced by the parent field.
plclZone :: Lens' ProjectsLocationsClustersList (Maybe Text)
plclZone = lens _plclZone (\ s a -> s{_plclZone = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the parent field.
plclProjectId :: Lens' ProjectsLocationsClustersList (Maybe Text)
plclProjectId
  = lens _plclProjectId
      (\ s a -> s{_plclProjectId = a})

-- | JSONP
plclCallback :: Lens' ProjectsLocationsClustersList (Maybe Text)
plclCallback
  = lens _plclCallback (\ s a -> s{_plclCallback = a})

instance GoogleRequest ProjectsLocationsClustersList
         where
        type Rs ProjectsLocationsClustersList =
             ListClustersResponse
        type Scopes ProjectsLocationsClustersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsClustersList'{..}
          = go _plclParent _plclXgafv _plclUploadProtocol
              _plclAccessToken
              _plclUploadType
              _plclZone
              _plclProjectId
              _plclCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersListResource)
                      mempty
