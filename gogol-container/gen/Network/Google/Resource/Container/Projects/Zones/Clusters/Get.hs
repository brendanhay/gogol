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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.get@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Get
    (
    -- * REST Resource
      ProjectsZonesClustersGetResource

    -- * Creating a Request
    , projectsZonesClustersGet
    , ProjectsZonesClustersGet

    -- * Request Lenses
    , pzcgXgafv
    , pzcgUploadProtocol
    , pzcgAccessToken
    , pzcgUploadType
    , pzcgZone
    , pzcgName
    , pzcgClusterId
    , pzcgProjectId
    , pzcgCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.get@ method which the
-- 'ProjectsZonesClustersGet' request conforms to.
type ProjectsZonesClustersGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "name" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Cluster

-- | Gets the details of a specific cluster.
--
-- /See:/ 'projectsZonesClustersGet' smart constructor.
data ProjectsZonesClustersGet =
  ProjectsZonesClustersGet'
    { _pzcgXgafv          :: !(Maybe Xgafv)
    , _pzcgUploadProtocol :: !(Maybe Text)
    , _pzcgAccessToken    :: !(Maybe Text)
    , _pzcgUploadType     :: !(Maybe Text)
    , _pzcgZone           :: !Text
    , _pzcgName           :: !(Maybe Text)
    , _pzcgClusterId      :: !Text
    , _pzcgProjectId      :: !Text
    , _pzcgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesClustersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcgXgafv'
--
-- * 'pzcgUploadProtocol'
--
-- * 'pzcgAccessToken'
--
-- * 'pzcgUploadType'
--
-- * 'pzcgZone'
--
-- * 'pzcgName'
--
-- * 'pzcgClusterId'
--
-- * 'pzcgProjectId'
--
-- * 'pzcgCallback'
projectsZonesClustersGet
    :: Text -- ^ 'pzcgZone'
    -> Text -- ^ 'pzcgClusterId'
    -> Text -- ^ 'pzcgProjectId'
    -> ProjectsZonesClustersGet
projectsZonesClustersGet pPzcgZone_ pPzcgClusterId_ pPzcgProjectId_ =
  ProjectsZonesClustersGet'
    { _pzcgXgafv = Nothing
    , _pzcgUploadProtocol = Nothing
    , _pzcgAccessToken = Nothing
    , _pzcgUploadType = Nothing
    , _pzcgZone = pPzcgZone_
    , _pzcgName = Nothing
    , _pzcgClusterId = pPzcgClusterId_
    , _pzcgProjectId = pPzcgProjectId_
    , _pzcgCallback = Nothing
    }

-- | V1 error format.
pzcgXgafv :: Lens' ProjectsZonesClustersGet (Maybe Xgafv)
pzcgXgafv
  = lens _pzcgXgafv (\ s a -> s{_pzcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcgUploadProtocol :: Lens' ProjectsZonesClustersGet (Maybe Text)
pzcgUploadProtocol
  = lens _pzcgUploadProtocol
      (\ s a -> s{_pzcgUploadProtocol = a})

-- | OAuth access token.
pzcgAccessToken :: Lens' ProjectsZonesClustersGet (Maybe Text)
pzcgAccessToken
  = lens _pzcgAccessToken
      (\ s a -> s{_pzcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcgUploadType :: Lens' ProjectsZonesClustersGet (Maybe Text)
pzcgUploadType
  = lens _pzcgUploadType
      (\ s a -> s{_pzcgUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcgZone :: Lens' ProjectsZonesClustersGet Text
pzcgZone = lens _pzcgZone (\ s a -> s{_pzcgZone = a})

-- | The name (project, location, cluster) of the cluster to retrieve.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
pzcgName :: Lens' ProjectsZonesClustersGet (Maybe Text)
pzcgName = lens _pzcgName (\ s a -> s{_pzcgName = a})

-- | Deprecated. The name of the cluster to retrieve. This field has been
-- deprecated and replaced by the name field.
pzcgClusterId :: Lens' ProjectsZonesClustersGet Text
pzcgClusterId
  = lens _pzcgClusterId
      (\ s a -> s{_pzcgClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcgProjectId :: Lens' ProjectsZonesClustersGet Text
pzcgProjectId
  = lens _pzcgProjectId
      (\ s a -> s{_pzcgProjectId = a})

-- | JSONP
pzcgCallback :: Lens' ProjectsZonesClustersGet (Maybe Text)
pzcgCallback
  = lens _pzcgCallback (\ s a -> s{_pzcgCallback = a})

instance GoogleRequest ProjectsZonesClustersGet where
        type Rs ProjectsZonesClustersGet = Cluster
        type Scopes ProjectsZonesClustersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersGet'{..}
          = go _pzcgProjectId _pzcgZone _pzcgClusterId
              _pzcgXgafv
              _pzcgUploadProtocol
              _pzcgAccessToken
              _pzcgUploadType
              _pzcgName
              _pzcgCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersGetResource)
                      mempty
