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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.UpdateMaster
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the master for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.updateMaster@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.UpdateMaster
    (
    -- * REST Resource
      ProjectsLocationsClustersUpdateMasterResource

    -- * Creating a Request
    , projectsLocationsClustersUpdateMaster
    , ProjectsLocationsClustersUpdateMaster

    -- * Request Lenses
    , plcumXgafv
    , plcumUploadProtocol
    , plcumAccessToken
    , plcumUploadType
    , plcumPayload
    , plcumName
    , plcumCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.updateMaster@ method which the
-- 'ProjectsLocationsClustersUpdateMaster' request conforms to.
type ProjectsLocationsClustersUpdateMasterResource =
     "v1" :>
       CaptureMode "name" "updateMaster" Text :>
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
-- /See:/ 'projectsLocationsClustersUpdateMaster' smart constructor.
data ProjectsLocationsClustersUpdateMaster = ProjectsLocationsClustersUpdateMaster'
    { _plcumXgafv          :: !(Maybe Xgafv)
    , _plcumUploadProtocol :: !(Maybe Text)
    , _plcumAccessToken    :: !(Maybe Text)
    , _plcumUploadType     :: !(Maybe Text)
    , _plcumPayload        :: !UpdateMasterRequest
    , _plcumName           :: !Text
    , _plcumCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsClustersUpdateMaster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcumXgafv'
--
-- * 'plcumUploadProtocol'
--
-- * 'plcumAccessToken'
--
-- * 'plcumUploadType'
--
-- * 'plcumPayload'
--
-- * 'plcumName'
--
-- * 'plcumCallback'
projectsLocationsClustersUpdateMaster
    :: UpdateMasterRequest -- ^ 'plcumPayload'
    -> Text -- ^ 'plcumName'
    -> ProjectsLocationsClustersUpdateMaster
projectsLocationsClustersUpdateMaster pPlcumPayload_ pPlcumName_ =
    ProjectsLocationsClustersUpdateMaster'
    { _plcumXgafv = Nothing
    , _plcumUploadProtocol = Nothing
    , _plcumAccessToken = Nothing
    , _plcumUploadType = Nothing
    , _plcumPayload = pPlcumPayload_
    , _plcumName = pPlcumName_
    , _plcumCallback = Nothing
    }

-- | V1 error format.
plcumXgafv :: Lens' ProjectsLocationsClustersUpdateMaster (Maybe Xgafv)
plcumXgafv
  = lens _plcumXgafv (\ s a -> s{_plcumXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcumUploadProtocol :: Lens' ProjectsLocationsClustersUpdateMaster (Maybe Text)
plcumUploadProtocol
  = lens _plcumUploadProtocol
      (\ s a -> s{_plcumUploadProtocol = a})

-- | OAuth access token.
plcumAccessToken :: Lens' ProjectsLocationsClustersUpdateMaster (Maybe Text)
plcumAccessToken
  = lens _plcumAccessToken
      (\ s a -> s{_plcumAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcumUploadType :: Lens' ProjectsLocationsClustersUpdateMaster (Maybe Text)
plcumUploadType
  = lens _plcumUploadType
      (\ s a -> s{_plcumUploadType = a})

-- | Multipart request metadata.
plcumPayload :: Lens' ProjectsLocationsClustersUpdateMaster UpdateMasterRequest
plcumPayload
  = lens _plcumPayload (\ s a -> s{_plcumPayload = a})

-- | The name (project, location, cluster) of the cluster to update.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcumName :: Lens' ProjectsLocationsClustersUpdateMaster Text
plcumName
  = lens _plcumName (\ s a -> s{_plcumName = a})

-- | JSONP
plcumCallback :: Lens' ProjectsLocationsClustersUpdateMaster (Maybe Text)
plcumCallback
  = lens _plcumCallback
      (\ s a -> s{_plcumCallback = a})

instance GoogleRequest
         ProjectsLocationsClustersUpdateMaster where
        type Rs ProjectsLocationsClustersUpdateMaster =
             Operation
        type Scopes ProjectsLocationsClustersUpdateMaster =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersUpdateMaster'{..}
          = go _plcumName _plcumXgafv _plcumUploadProtocol
              _plcumAccessToken
              _plcumUploadType
              _plcumCallback
              (Just AltJSON)
              _plcumPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersUpdateMasterResource)
                      mempty
