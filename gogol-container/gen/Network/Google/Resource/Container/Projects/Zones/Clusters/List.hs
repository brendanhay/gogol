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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.list@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.List
    (
    -- * REST Resource
      ProjectsZonesClustersListResource

    -- * Creating a Request
    , projectsZonesClustersList
    , ProjectsZonesClustersList

    -- * Request Lenses
    , proParent
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proZone
    , proProjectId
    , proCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.list@ method which the
-- 'ProjectsZonesClustersList' request conforms to.
type ProjectsZonesClustersListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 QueryParam "parent" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListClustersResponse

-- | Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ 'projectsZonesClustersList' smart constructor.
data ProjectsZonesClustersList =
  ProjectsZonesClustersList'
    { _proParent         :: !(Maybe Text)
    , _proXgafv          :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken    :: !(Maybe Text)
    , _proUploadType     :: !(Maybe Text)
    , _proZone           :: !Text
    , _proProjectId      :: !Text
    , _proCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesClustersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proParent'
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proZone'
--
-- * 'proProjectId'
--
-- * 'proCallback'
projectsZonesClustersList
    :: Text -- ^ 'proZone'
    -> Text -- ^ 'proProjectId'
    -> ProjectsZonesClustersList
projectsZonesClustersList pProZone_ pProProjectId_ =
  ProjectsZonesClustersList'
    { _proParent = Nothing
    , _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proZone = pProZone_
    , _proProjectId = pProProjectId_
    , _proCallback = Nothing
    }

-- | The parent (project and location) where the clusters will be listed.
-- Specified in the format \'projects\/*\/locations\/*\'. Location \"-\"
-- matches all zones and all regions.
proParent :: Lens' ProjectsZonesClustersList (Maybe Text)
proParent
  = lens _proParent (\ s a -> s{_proParent = a})

-- | V1 error format.
proXgafv :: Lens' ProjectsZonesClustersList (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsZonesClustersList (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsZonesClustersList (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsZonesClustersList (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides,
-- or \"-\" for all zones. This field has been deprecated and replaced by
-- the parent field.
proZone :: Lens' ProjectsZonesClustersList Text
proZone = lens _proZone (\ s a -> s{_proZone = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the parent field.
proProjectId :: Lens' ProjectsZonesClustersList Text
proProjectId
  = lens _proProjectId (\ s a -> s{_proProjectId = a})

-- | JSONP
proCallback :: Lens' ProjectsZonesClustersList (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsZonesClustersList
         where
        type Rs ProjectsZonesClustersList =
             ListClustersResponse
        type Scopes ProjectsZonesClustersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersList'{..}
          = go _proProjectId _proZone _proParent _proXgafv
              _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersListResource)
                      mempty
