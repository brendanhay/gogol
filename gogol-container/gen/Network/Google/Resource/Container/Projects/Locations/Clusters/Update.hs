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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.update@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.Update
    (
    -- * REST Resource
      ProjectsLocationsClustersUpdateResource

    -- * Creating a Request
    , projectsLocationsClustersUpdate
    , ProjectsLocationsClustersUpdate

    -- * Request Lenses
    , plcuXgafv
    , plcuUploadProtocol
    , plcuAccessToken
    , plcuUploadType
    , plcuPayload
    , plcuName
    , plcuCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.update@ method which the
-- 'ProjectsLocationsClustersUpdate' request conforms to.
type ProjectsLocationsClustersUpdateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateClusterRequest :>
                       Put '[JSON] Operation

-- | Updates the settings of a specific cluster.
--
-- /See:/ 'projectsLocationsClustersUpdate' smart constructor.
data ProjectsLocationsClustersUpdate =
  ProjectsLocationsClustersUpdate'
    { _plcuXgafv :: !(Maybe Xgafv)
    , _plcuUploadProtocol :: !(Maybe Text)
    , _plcuAccessToken :: !(Maybe Text)
    , _plcuUploadType :: !(Maybe Text)
    , _plcuPayload :: !UpdateClusterRequest
    , _plcuName :: !Text
    , _plcuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcuXgafv'
--
-- * 'plcuUploadProtocol'
--
-- * 'plcuAccessToken'
--
-- * 'plcuUploadType'
--
-- * 'plcuPayload'
--
-- * 'plcuName'
--
-- * 'plcuCallback'
projectsLocationsClustersUpdate
    :: UpdateClusterRequest -- ^ 'plcuPayload'
    -> Text -- ^ 'plcuName'
    -> ProjectsLocationsClustersUpdate
projectsLocationsClustersUpdate pPlcuPayload_ pPlcuName_ =
  ProjectsLocationsClustersUpdate'
    { _plcuXgafv = Nothing
    , _plcuUploadProtocol = Nothing
    , _plcuAccessToken = Nothing
    , _plcuUploadType = Nothing
    , _plcuPayload = pPlcuPayload_
    , _plcuName = pPlcuName_
    , _plcuCallback = Nothing
    }


-- | V1 error format.
plcuXgafv :: Lens' ProjectsLocationsClustersUpdate (Maybe Xgafv)
plcuXgafv
  = lens _plcuXgafv (\ s a -> s{_plcuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcuUploadProtocol :: Lens' ProjectsLocationsClustersUpdate (Maybe Text)
plcuUploadProtocol
  = lens _plcuUploadProtocol
      (\ s a -> s{_plcuUploadProtocol = a})

-- | OAuth access token.
plcuAccessToken :: Lens' ProjectsLocationsClustersUpdate (Maybe Text)
plcuAccessToken
  = lens _plcuAccessToken
      (\ s a -> s{_plcuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcuUploadType :: Lens' ProjectsLocationsClustersUpdate (Maybe Text)
plcuUploadType
  = lens _plcuUploadType
      (\ s a -> s{_plcuUploadType = a})

-- | Multipart request metadata.
plcuPayload :: Lens' ProjectsLocationsClustersUpdate UpdateClusterRequest
plcuPayload
  = lens _plcuPayload (\ s a -> s{_plcuPayload = a})

-- | The name (project, location, cluster) of the cluster to update.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
plcuName :: Lens' ProjectsLocationsClustersUpdate Text
plcuName = lens _plcuName (\ s a -> s{_plcuName = a})

-- | JSONP
plcuCallback :: Lens' ProjectsLocationsClustersUpdate (Maybe Text)
plcuCallback
  = lens _plcuCallback (\ s a -> s{_plcuCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersUpdate
         where
        type Rs ProjectsLocationsClustersUpdate = Operation
        type Scopes ProjectsLocationsClustersUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsClustersUpdate'{..}
          = go _plcuName _plcuXgafv _plcuUploadProtocol
              _plcuAccessToken
              _plcuUploadType
              _plcuCallback
              (Just AltJSON)
              _plcuPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersUpdateResource)
                      mempty
