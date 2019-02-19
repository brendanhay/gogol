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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Master
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the master for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.master@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Master
    (
    -- * REST Resource
      ProjectsZonesClustersMasterResource

    -- * Creating a Request
    , projectsZonesClustersMaster
    , ProjectsZonesClustersMaster

    -- * Request Lenses
    , pzcmXgafv
    , pzcmUploadProtocol
    , pzcmAccessToken
    , pzcmUploadType
    , pzcmZone
    , pzcmPayload
    , pzcmClusterId
    , pzcmProjectId
    , pzcmCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.master@ method which the
-- 'ProjectsZonesClustersMaster' request conforms to.
type ProjectsZonesClustersMasterResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "master" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] UpdateMasterRequest :>
                                   Post '[JSON] Operation

-- | Updates the master for a specific cluster.
--
-- /See:/ 'projectsZonesClustersMaster' smart constructor.
data ProjectsZonesClustersMaster =
  ProjectsZonesClustersMaster'
    { _pzcmXgafv          :: !(Maybe Xgafv)
    , _pzcmUploadProtocol :: !(Maybe Text)
    , _pzcmAccessToken    :: !(Maybe Text)
    , _pzcmUploadType     :: !(Maybe Text)
    , _pzcmZone           :: !Text
    , _pzcmPayload        :: !UpdateMasterRequest
    , _pzcmClusterId      :: !Text
    , _pzcmProjectId      :: !Text
    , _pzcmCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesClustersMaster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcmXgafv'
--
-- * 'pzcmUploadProtocol'
--
-- * 'pzcmAccessToken'
--
-- * 'pzcmUploadType'
--
-- * 'pzcmZone'
--
-- * 'pzcmPayload'
--
-- * 'pzcmClusterId'
--
-- * 'pzcmProjectId'
--
-- * 'pzcmCallback'
projectsZonesClustersMaster
    :: Text -- ^ 'pzcmZone'
    -> UpdateMasterRequest -- ^ 'pzcmPayload'
    -> Text -- ^ 'pzcmClusterId'
    -> Text -- ^ 'pzcmProjectId'
    -> ProjectsZonesClustersMaster
projectsZonesClustersMaster pPzcmZone_ pPzcmPayload_ pPzcmClusterId_ pPzcmProjectId_ =
  ProjectsZonesClustersMaster'
    { _pzcmXgafv = Nothing
    , _pzcmUploadProtocol = Nothing
    , _pzcmAccessToken = Nothing
    , _pzcmUploadType = Nothing
    , _pzcmZone = pPzcmZone_
    , _pzcmPayload = pPzcmPayload_
    , _pzcmClusterId = pPzcmClusterId_
    , _pzcmProjectId = pPzcmProjectId_
    , _pzcmCallback = Nothing
    }

-- | V1 error format.
pzcmXgafv :: Lens' ProjectsZonesClustersMaster (Maybe Xgafv)
pzcmXgafv
  = lens _pzcmXgafv (\ s a -> s{_pzcmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcmUploadProtocol :: Lens' ProjectsZonesClustersMaster (Maybe Text)
pzcmUploadProtocol
  = lens _pzcmUploadProtocol
      (\ s a -> s{_pzcmUploadProtocol = a})

-- | OAuth access token.
pzcmAccessToken :: Lens' ProjectsZonesClustersMaster (Maybe Text)
pzcmAccessToken
  = lens _pzcmAccessToken
      (\ s a -> s{_pzcmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcmUploadType :: Lens' ProjectsZonesClustersMaster (Maybe Text)
pzcmUploadType
  = lens _pzcmUploadType
      (\ s a -> s{_pzcmUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcmZone :: Lens' ProjectsZonesClustersMaster Text
pzcmZone = lens _pzcmZone (\ s a -> s{_pzcmZone = a})

-- | Multipart request metadata.
pzcmPayload :: Lens' ProjectsZonesClustersMaster UpdateMasterRequest
pzcmPayload
  = lens _pzcmPayload (\ s a -> s{_pzcmPayload = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
pzcmClusterId :: Lens' ProjectsZonesClustersMaster Text
pzcmClusterId
  = lens _pzcmClusterId
      (\ s a -> s{_pzcmClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcmProjectId :: Lens' ProjectsZonesClustersMaster Text
pzcmProjectId
  = lens _pzcmProjectId
      (\ s a -> s{_pzcmProjectId = a})

-- | JSONP
pzcmCallback :: Lens' ProjectsZonesClustersMaster (Maybe Text)
pzcmCallback
  = lens _pzcmCallback (\ s a -> s{_pzcmCallback = a})

instance GoogleRequest ProjectsZonesClustersMaster
         where
        type Rs ProjectsZonesClustersMaster = Operation
        type Scopes ProjectsZonesClustersMaster =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersMaster'{..}
          = go _pzcmProjectId _pzcmZone _pzcmClusterId
              _pzcmXgafv
              _pzcmUploadProtocol
              _pzcmAccessToken
              _pzcmUploadType
              _pzcmCallback
              (Just AltJSON)
              _pzcmPayload
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesClustersMasterResource)
                      mempty
