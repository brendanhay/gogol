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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Rollback
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back a previously Aborted or Failed NodePool upgrade. This makes
-- no changes if the last upgrade successfully completed.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.rollback@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Rollback
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsRollbackResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsRollback
    , ProjectsLocationsClustersNodePoolsRollback

    -- * Request Lenses
    , plcnprXgafv
    , plcnprUploadProtocol
    , plcnprAccessToken
    , plcnprUploadType
    , plcnprPayload
    , plcnprName
    , plcnprCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.rollback@ method which the
-- 'ProjectsLocationsClustersNodePoolsRollback' request conforms to.
type ProjectsLocationsClustersNodePoolsRollbackResource
     =
     "v1" :>
       CaptureMode "name" "rollback" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RollbackNodePoolUpgradeRequest :>
                       Post '[JSON] Operation

-- | Rolls back a previously Aborted or Failed NodePool upgrade. This makes
-- no changes if the last upgrade successfully completed.
--
-- /See:/ 'projectsLocationsClustersNodePoolsRollback' smart constructor.
data ProjectsLocationsClustersNodePoolsRollback =
  ProjectsLocationsClustersNodePoolsRollback'
    { _plcnprXgafv          :: !(Maybe Xgafv)
    , _plcnprUploadProtocol :: !(Maybe Text)
    , _plcnprAccessToken    :: !(Maybe Text)
    , _plcnprUploadType     :: !(Maybe Text)
    , _plcnprPayload        :: !RollbackNodePoolUpgradeRequest
    , _plcnprName           :: !Text
    , _plcnprCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnprXgafv'
--
-- * 'plcnprUploadProtocol'
--
-- * 'plcnprAccessToken'
--
-- * 'plcnprUploadType'
--
-- * 'plcnprPayload'
--
-- * 'plcnprName'
--
-- * 'plcnprCallback'
projectsLocationsClustersNodePoolsRollback
    :: RollbackNodePoolUpgradeRequest -- ^ 'plcnprPayload'
    -> Text -- ^ 'plcnprName'
    -> ProjectsLocationsClustersNodePoolsRollback
projectsLocationsClustersNodePoolsRollback pPlcnprPayload_ pPlcnprName_ =
  ProjectsLocationsClustersNodePoolsRollback'
    { _plcnprXgafv = Nothing
    , _plcnprUploadProtocol = Nothing
    , _plcnprAccessToken = Nothing
    , _plcnprUploadType = Nothing
    , _plcnprPayload = pPlcnprPayload_
    , _plcnprName = pPlcnprName_
    , _plcnprCallback = Nothing
    }


-- | V1 error format.
plcnprXgafv :: Lens' ProjectsLocationsClustersNodePoolsRollback (Maybe Xgafv)
plcnprXgafv
  = lens _plcnprXgafv (\ s a -> s{_plcnprXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnprUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsRollback (Maybe Text)
plcnprUploadProtocol
  = lens _plcnprUploadProtocol
      (\ s a -> s{_plcnprUploadProtocol = a})

-- | OAuth access token.
plcnprAccessToken :: Lens' ProjectsLocationsClustersNodePoolsRollback (Maybe Text)
plcnprAccessToken
  = lens _plcnprAccessToken
      (\ s a -> s{_plcnprAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnprUploadType :: Lens' ProjectsLocationsClustersNodePoolsRollback (Maybe Text)
plcnprUploadType
  = lens _plcnprUploadType
      (\ s a -> s{_plcnprUploadType = a})

-- | Multipart request metadata.
plcnprPayload :: Lens' ProjectsLocationsClustersNodePoolsRollback RollbackNodePoolUpgradeRequest
plcnprPayload
  = lens _plcnprPayload
      (\ s a -> s{_plcnprPayload = a})

-- | The name (project, location, cluster, node pool id) of the node poll to
-- rollback upgrade. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\/nodePools\/*\'.
plcnprName :: Lens' ProjectsLocationsClustersNodePoolsRollback Text
plcnprName
  = lens _plcnprName (\ s a -> s{_plcnprName = a})

-- | JSONP
plcnprCallback :: Lens' ProjectsLocationsClustersNodePoolsRollback (Maybe Text)
plcnprCallback
  = lens _plcnprCallback
      (\ s a -> s{_plcnprCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsRollback
         where
        type Rs ProjectsLocationsClustersNodePoolsRollback =
             Operation
        type Scopes
               ProjectsLocationsClustersNodePoolsRollback
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsRollback'{..}
          = go _plcnprName _plcnprXgafv _plcnprUploadProtocol
              _plcnprAccessToken
              _plcnprUploadType
              _plcnprCallback
              (Just AltJSON)
              _plcnprPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersNodePoolsRollbackResource)
                      mempty
