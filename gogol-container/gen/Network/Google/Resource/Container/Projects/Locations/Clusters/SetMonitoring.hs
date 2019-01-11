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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetMonitoring
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the monitoring service for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setMonitoring@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetMonitoring
    (
    -- * REST Resource
      ProjectsLocationsClustersSetMonitoringResource

    -- * Creating a Request
    , projectsLocationsClustersSetMonitoring
    , ProjectsLocationsClustersSetMonitoring

    -- * Request Lenses
    , plcsmXgafv
    , plcsmUploadProtocol
    , plcsmAccessToken
    , plcsmUploadType
    , plcsmPayload
    , plcsmName
    , plcsmCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setMonitoring@ method which the
-- 'ProjectsLocationsClustersSetMonitoring' request conforms to.
type ProjectsLocationsClustersSetMonitoringResource =
     "v1" :>
       CaptureMode "name" "setMonitoring" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetMonitoringServiceRequest :>
                       Post '[JSON] Operation

-- | Sets the monitoring service for a specific cluster.
--
-- /See:/ 'projectsLocationsClustersSetMonitoring' smart constructor.
data ProjectsLocationsClustersSetMonitoring = ProjectsLocationsClustersSetMonitoring'
    { _plcsmXgafv          :: !(Maybe Xgafv)
    , _plcsmUploadProtocol :: !(Maybe Text)
    , _plcsmAccessToken    :: !(Maybe Text)
    , _plcsmUploadType     :: !(Maybe Text)
    , _plcsmPayload        :: !SetMonitoringServiceRequest
    , _plcsmName           :: !Text
    , _plcsmCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsClustersSetMonitoring' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcsmXgafv'
--
-- * 'plcsmUploadProtocol'
--
-- * 'plcsmAccessToken'
--
-- * 'plcsmUploadType'
--
-- * 'plcsmPayload'
--
-- * 'plcsmName'
--
-- * 'plcsmCallback'
projectsLocationsClustersSetMonitoring
    :: SetMonitoringServiceRequest -- ^ 'plcsmPayload'
    -> Text -- ^ 'plcsmName'
    -> ProjectsLocationsClustersSetMonitoring
projectsLocationsClustersSetMonitoring pPlcsmPayload_ pPlcsmName_ =
    ProjectsLocationsClustersSetMonitoring'
    { _plcsmXgafv = Nothing
    , _plcsmUploadProtocol = Nothing
    , _plcsmAccessToken = Nothing
    , _plcsmUploadType = Nothing
    , _plcsmPayload = pPlcsmPayload_
    , _plcsmName = pPlcsmName_
    , _plcsmCallback = Nothing
    }

-- | V1 error format.
plcsmXgafv :: Lens' ProjectsLocationsClustersSetMonitoring (Maybe Xgafv)
plcsmXgafv
  = lens _plcsmXgafv (\ s a -> s{_plcsmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcsmUploadProtocol :: Lens' ProjectsLocationsClustersSetMonitoring (Maybe Text)
plcsmUploadProtocol
  = lens _plcsmUploadProtocol
      (\ s a -> s{_plcsmUploadProtocol = a})

-- | OAuth access token.
plcsmAccessToken :: Lens' ProjectsLocationsClustersSetMonitoring (Maybe Text)
plcsmAccessToken
  = lens _plcsmAccessToken
      (\ s a -> s{_plcsmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcsmUploadType :: Lens' ProjectsLocationsClustersSetMonitoring (Maybe Text)
plcsmUploadType
  = lens _plcsmUploadType
      (\ s a -> s{_plcsmUploadType = a})

-- | Multipart request metadata.
plcsmPayload :: Lens' ProjectsLocationsClustersSetMonitoring SetMonitoringServiceRequest
plcsmPayload
  = lens _plcsmPayload (\ s a -> s{_plcsmPayload = a})

-- | The name (project, location, cluster) of the cluster to set monitoring.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcsmName :: Lens' ProjectsLocationsClustersSetMonitoring Text
plcsmName
  = lens _plcsmName (\ s a -> s{_plcsmName = a})

-- | JSONP
plcsmCallback :: Lens' ProjectsLocationsClustersSetMonitoring (Maybe Text)
plcsmCallback
  = lens _plcsmCallback
      (\ s a -> s{_plcsmCallback = a})

instance GoogleRequest
         ProjectsLocationsClustersSetMonitoring where
        type Rs ProjectsLocationsClustersSetMonitoring =
             Operation
        type Scopes ProjectsLocationsClustersSetMonitoring =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetMonitoring'{..}
          = go _plcsmName _plcsmXgafv _plcsmUploadProtocol
              _plcsmAccessToken
              _plcsmUploadType
              _plcsmCallback
              (Just AltJSON)
              _plcsmPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersSetMonitoringResource)
                      mempty
