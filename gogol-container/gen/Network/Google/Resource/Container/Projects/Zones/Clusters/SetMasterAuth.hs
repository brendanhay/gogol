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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.SetMasterAuth
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used to set master auth materials. Currently supports :- Changing the
-- admin password for a specific cluster. This can be either via password
-- generation or explicitly set the password.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.setMasterAuth@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.SetMasterAuth
    (
    -- * REST Resource
      ProjectsZonesClustersSetMasterAuthResource

    -- * Creating a Request
    , projectsZonesClustersSetMasterAuth
    , ProjectsZonesClustersSetMasterAuth

    -- * Request Lenses
    , pzcsmaXgafv
    , pzcsmaUploadProtocol
    , pzcsmaAccessToken
    , pzcsmaUploadType
    , pzcsmaZone
    , pzcsmaPayload
    , pzcsmaClusterId
    , pzcsmaProjectId
    , pzcsmaCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.setMasterAuth@ method which the
-- 'ProjectsZonesClustersSetMasterAuth' request conforms to.
type ProjectsZonesClustersSetMasterAuthResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 CaptureMode "clusterId" "setMasterAuth" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] SetMasterAuthRequest :>
                                 Post '[JSON] Operation

-- | Used to set master auth materials. Currently supports :- Changing the
-- admin password for a specific cluster. This can be either via password
-- generation or explicitly set the password.
--
-- /See:/ 'projectsZonesClustersSetMasterAuth' smart constructor.
data ProjectsZonesClustersSetMasterAuth =
  ProjectsZonesClustersSetMasterAuth'
    { _pzcsmaXgafv          :: !(Maybe Xgafv)
    , _pzcsmaUploadProtocol :: !(Maybe Text)
    , _pzcsmaAccessToken    :: !(Maybe Text)
    , _pzcsmaUploadType     :: !(Maybe Text)
    , _pzcsmaZone           :: !Text
    , _pzcsmaPayload        :: !SetMasterAuthRequest
    , _pzcsmaClusterId      :: !Text
    , _pzcsmaProjectId      :: !Text
    , _pzcsmaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsZonesClustersSetMasterAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcsmaXgafv'
--
-- * 'pzcsmaUploadProtocol'
--
-- * 'pzcsmaAccessToken'
--
-- * 'pzcsmaUploadType'
--
-- * 'pzcsmaZone'
--
-- * 'pzcsmaPayload'
--
-- * 'pzcsmaClusterId'
--
-- * 'pzcsmaProjectId'
--
-- * 'pzcsmaCallback'
projectsZonesClustersSetMasterAuth
    :: Text -- ^ 'pzcsmaZone'
    -> SetMasterAuthRequest -- ^ 'pzcsmaPayload'
    -> Text -- ^ 'pzcsmaClusterId'
    -> Text -- ^ 'pzcsmaProjectId'
    -> ProjectsZonesClustersSetMasterAuth
projectsZonesClustersSetMasterAuth pPzcsmaZone_ pPzcsmaPayload_ pPzcsmaClusterId_ pPzcsmaProjectId_ =
  ProjectsZonesClustersSetMasterAuth'
    { _pzcsmaXgafv = Nothing
    , _pzcsmaUploadProtocol = Nothing
    , _pzcsmaAccessToken = Nothing
    , _pzcsmaUploadType = Nothing
    , _pzcsmaZone = pPzcsmaZone_
    , _pzcsmaPayload = pPzcsmaPayload_
    , _pzcsmaClusterId = pPzcsmaClusterId_
    , _pzcsmaProjectId = pPzcsmaProjectId_
    , _pzcsmaCallback = Nothing
    }


-- | V1 error format.
pzcsmaXgafv :: Lens' ProjectsZonesClustersSetMasterAuth (Maybe Xgafv)
pzcsmaXgafv
  = lens _pzcsmaXgafv (\ s a -> s{_pzcsmaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcsmaUploadProtocol :: Lens' ProjectsZonesClustersSetMasterAuth (Maybe Text)
pzcsmaUploadProtocol
  = lens _pzcsmaUploadProtocol
      (\ s a -> s{_pzcsmaUploadProtocol = a})

-- | OAuth access token.
pzcsmaAccessToken :: Lens' ProjectsZonesClustersSetMasterAuth (Maybe Text)
pzcsmaAccessToken
  = lens _pzcsmaAccessToken
      (\ s a -> s{_pzcsmaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcsmaUploadType :: Lens' ProjectsZonesClustersSetMasterAuth (Maybe Text)
pzcsmaUploadType
  = lens _pzcsmaUploadType
      (\ s a -> s{_pzcsmaUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcsmaZone :: Lens' ProjectsZonesClustersSetMasterAuth Text
pzcsmaZone
  = lens _pzcsmaZone (\ s a -> s{_pzcsmaZone = a})

-- | Multipart request metadata.
pzcsmaPayload :: Lens' ProjectsZonesClustersSetMasterAuth SetMasterAuthRequest
pzcsmaPayload
  = lens _pzcsmaPayload
      (\ s a -> s{_pzcsmaPayload = a})

-- | Deprecated. The name of the cluster to upgrade. This field has been
-- deprecated and replaced by the name field.
pzcsmaClusterId :: Lens' ProjectsZonesClustersSetMasterAuth Text
pzcsmaClusterId
  = lens _pzcsmaClusterId
      (\ s a -> s{_pzcsmaClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcsmaProjectId :: Lens' ProjectsZonesClustersSetMasterAuth Text
pzcsmaProjectId
  = lens _pzcsmaProjectId
      (\ s a -> s{_pzcsmaProjectId = a})

-- | JSONP
pzcsmaCallback :: Lens' ProjectsZonesClustersSetMasterAuth (Maybe Text)
pzcsmaCallback
  = lens _pzcsmaCallback
      (\ s a -> s{_pzcsmaCallback = a})

instance GoogleRequest
           ProjectsZonesClustersSetMasterAuth
         where
        type Rs ProjectsZonesClustersSetMasterAuth =
             Operation
        type Scopes ProjectsZonesClustersSetMasterAuth =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesClustersSetMasterAuth'{..}
          = go _pzcsmaProjectId _pzcsmaZone _pzcsmaClusterId
              _pzcsmaXgafv
              _pzcsmaUploadProtocol
              _pzcsmaAccessToken
              _pzcsmaUploadType
              _pzcsmaCallback
              (Just AltJSON)
              _pzcsmaPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersSetMasterAuthResource)
                      mempty
