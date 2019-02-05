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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Rollback
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Roll back the previously Aborted or Failed NodePool upgrade. This will
-- be an no-op if the last upgrade successfully completed.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.rollback@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Rollback
    (
    -- * REST Resource
      ProjectsZonesClustersNodePoolsRollbackResource

    -- * Creating a Request
    , projectsZonesClustersNodePoolsRollback
    , ProjectsZonesClustersNodePoolsRollback

    -- * Request Lenses
    , pzcnprXgafv
    , pzcnprUploadProtocol
    , pzcnprAccessToken
    , pzcnprUploadType
    , pzcnprZone
    , pzcnprPayload
    , pzcnprNodePoolId
    , pzcnprClusterId
    , pzcnprProjectId
    , pzcnprCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.clusters.nodePools.rollback@ method which the
-- 'ProjectsZonesClustersNodePoolsRollback' request conforms to.
type ProjectsZonesClustersNodePoolsRollbackResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
                   "nodePools" :>
                     CaptureMode "nodePoolId" "rollback" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     RollbackNodePoolUpgradeRequest
                                     :> Post '[JSON] Operation

-- | Roll back the previously Aborted or Failed NodePool upgrade. This will
-- be an no-op if the last upgrade successfully completed.
--
-- /See:/ 'projectsZonesClustersNodePoolsRollback' smart constructor.
data ProjectsZonesClustersNodePoolsRollback = ProjectsZonesClustersNodePoolsRollback'
    { _pzcnprXgafv          :: !(Maybe Xgafv)
    , _pzcnprUploadProtocol :: !(Maybe Text)
    , _pzcnprAccessToken    :: !(Maybe Text)
    , _pzcnprUploadType     :: !(Maybe Text)
    , _pzcnprZone           :: !Text
    , _pzcnprPayload        :: !RollbackNodePoolUpgradeRequest
    , _pzcnprNodePoolId     :: !Text
    , _pzcnprClusterId      :: !Text
    , _pzcnprProjectId      :: !Text
    , _pzcnprCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersNodePoolsRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcnprXgafv'
--
-- * 'pzcnprUploadProtocol'
--
-- * 'pzcnprAccessToken'
--
-- * 'pzcnprUploadType'
--
-- * 'pzcnprZone'
--
-- * 'pzcnprPayload'
--
-- * 'pzcnprNodePoolId'
--
-- * 'pzcnprClusterId'
--
-- * 'pzcnprProjectId'
--
-- * 'pzcnprCallback'
projectsZonesClustersNodePoolsRollback
    :: Text -- ^ 'pzcnprZone'
    -> RollbackNodePoolUpgradeRequest -- ^ 'pzcnprPayload'
    -> Text -- ^ 'pzcnprNodePoolId'
    -> Text -- ^ 'pzcnprClusterId'
    -> Text -- ^ 'pzcnprProjectId'
    -> ProjectsZonesClustersNodePoolsRollback
projectsZonesClustersNodePoolsRollback pPzcnprZone_ pPzcnprPayload_ pPzcnprNodePoolId_ pPzcnprClusterId_ pPzcnprProjectId_ =
    ProjectsZonesClustersNodePoolsRollback'
    { _pzcnprXgafv = Nothing
    , _pzcnprUploadProtocol = Nothing
    , _pzcnprAccessToken = Nothing
    , _pzcnprUploadType = Nothing
    , _pzcnprZone = pPzcnprZone_
    , _pzcnprPayload = pPzcnprPayload_
    , _pzcnprNodePoolId = pPzcnprNodePoolId_
    , _pzcnprClusterId = pPzcnprClusterId_
    , _pzcnprProjectId = pPzcnprProjectId_
    , _pzcnprCallback = Nothing
    }

-- | V1 error format.
pzcnprXgafv :: Lens' ProjectsZonesClustersNodePoolsRollback (Maybe Xgafv)
pzcnprXgafv
  = lens _pzcnprXgafv (\ s a -> s{_pzcnprXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcnprUploadProtocol :: Lens' ProjectsZonesClustersNodePoolsRollback (Maybe Text)
pzcnprUploadProtocol
  = lens _pzcnprUploadProtocol
      (\ s a -> s{_pzcnprUploadProtocol = a})

-- | OAuth access token.
pzcnprAccessToken :: Lens' ProjectsZonesClustersNodePoolsRollback (Maybe Text)
pzcnprAccessToken
  = lens _pzcnprAccessToken
      (\ s a -> s{_pzcnprAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcnprUploadType :: Lens' ProjectsZonesClustersNodePoolsRollback (Maybe Text)
pzcnprUploadType
  = lens _pzcnprUploadType
      (\ s a -> s{_pzcnprUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
-- This field has been deprecated and replaced by the name field.
pzcnprZone :: Lens' ProjectsZonesClustersNodePoolsRollback Text
pzcnprZone
  = lens _pzcnprZone (\ s a -> s{_pzcnprZone = a})

-- | Multipart request metadata.
pzcnprPayload :: Lens' ProjectsZonesClustersNodePoolsRollback RollbackNodePoolUpgradeRequest
pzcnprPayload
  = lens _pzcnprPayload
      (\ s a -> s{_pzcnprPayload = a})

-- | Deprecated. The name of the node pool to rollback. This field has been
-- deprecated and replaced by the name field.
pzcnprNodePoolId :: Lens' ProjectsZonesClustersNodePoolsRollback Text
pzcnprNodePoolId
  = lens _pzcnprNodePoolId
      (\ s a -> s{_pzcnprNodePoolId = a})

-- | Deprecated. The name of the cluster to rollback. This field has been
-- deprecated and replaced by the name field.
pzcnprClusterId :: Lens' ProjectsZonesClustersNodePoolsRollback Text
pzcnprClusterId
  = lens _pzcnprClusterId
      (\ s a -> s{_pzcnprClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzcnprProjectId :: Lens' ProjectsZonesClustersNodePoolsRollback Text
pzcnprProjectId
  = lens _pzcnprProjectId
      (\ s a -> s{_pzcnprProjectId = a})

-- | JSONP
pzcnprCallback :: Lens' ProjectsZonesClustersNodePoolsRollback (Maybe Text)
pzcnprCallback
  = lens _pzcnprCallback
      (\ s a -> s{_pzcnprCallback = a})

instance GoogleRequest
         ProjectsZonesClustersNodePoolsRollback where
        type Rs ProjectsZonesClustersNodePoolsRollback =
             Operation
        type Scopes ProjectsZonesClustersNodePoolsRollback =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsZonesClustersNodePoolsRollback'{..}
          = go _pzcnprProjectId _pzcnprZone _pzcnprClusterId
              _pzcnprNodePoolId
              _pzcnprXgafv
              _pzcnprUploadProtocol
              _pzcnprAccessToken
              _pzcnprUploadType
              _pzcnprCallback
              (Just AltJSON)
              _pzcnprPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsZonesClustersNodePoolsRollbackResource)
                      mempty
