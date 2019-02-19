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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetMaintenancePolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the maintenance policy for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setMaintenancePolicy@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetMaintenancePolicy
    (
    -- * REST Resource
      ProjectsLocationsClustersSetMaintenancePolicyResource

    -- * Creating a Request
    , projectsLocationsClustersSetMaintenancePolicy
    , ProjectsLocationsClustersSetMaintenancePolicy

    -- * Request Lenses
    , plcsmpXgafv
    , plcsmpUploadProtocol
    , plcsmpAccessToken
    , plcsmpUploadType
    , plcsmpPayload
    , plcsmpName
    , plcsmpCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setMaintenancePolicy@ method which the
-- 'ProjectsLocationsClustersSetMaintenancePolicy' request conforms to.
type ProjectsLocationsClustersSetMaintenancePolicyResource
     =
     "v1" :>
       CaptureMode "name" "setMaintenancePolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetMaintenancePolicyRequest :>
                       Post '[JSON] Operation

-- | Sets the maintenance policy for a cluster.
--
-- /See:/ 'projectsLocationsClustersSetMaintenancePolicy' smart constructor.
data ProjectsLocationsClustersSetMaintenancePolicy =
  ProjectsLocationsClustersSetMaintenancePolicy'
    { _plcsmpXgafv          :: !(Maybe Xgafv)
    , _plcsmpUploadProtocol :: !(Maybe Text)
    , _plcsmpAccessToken    :: !(Maybe Text)
    , _plcsmpUploadType     :: !(Maybe Text)
    , _plcsmpPayload        :: !SetMaintenancePolicyRequest
    , _plcsmpName           :: !Text
    , _plcsmpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsClustersSetMaintenancePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcsmpXgafv'
--
-- * 'plcsmpUploadProtocol'
--
-- * 'plcsmpAccessToken'
--
-- * 'plcsmpUploadType'
--
-- * 'plcsmpPayload'
--
-- * 'plcsmpName'
--
-- * 'plcsmpCallback'
projectsLocationsClustersSetMaintenancePolicy
    :: SetMaintenancePolicyRequest -- ^ 'plcsmpPayload'
    -> Text -- ^ 'plcsmpName'
    -> ProjectsLocationsClustersSetMaintenancePolicy
projectsLocationsClustersSetMaintenancePolicy pPlcsmpPayload_ pPlcsmpName_ =
  ProjectsLocationsClustersSetMaintenancePolicy'
    { _plcsmpXgafv = Nothing
    , _plcsmpUploadProtocol = Nothing
    , _plcsmpAccessToken = Nothing
    , _plcsmpUploadType = Nothing
    , _plcsmpPayload = pPlcsmpPayload_
    , _plcsmpName = pPlcsmpName_
    , _plcsmpCallback = Nothing
    }

-- | V1 error format.
plcsmpXgafv :: Lens' ProjectsLocationsClustersSetMaintenancePolicy (Maybe Xgafv)
plcsmpXgafv
  = lens _plcsmpXgafv (\ s a -> s{_plcsmpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcsmpUploadProtocol :: Lens' ProjectsLocationsClustersSetMaintenancePolicy (Maybe Text)
plcsmpUploadProtocol
  = lens _plcsmpUploadProtocol
      (\ s a -> s{_plcsmpUploadProtocol = a})

-- | OAuth access token.
plcsmpAccessToken :: Lens' ProjectsLocationsClustersSetMaintenancePolicy (Maybe Text)
plcsmpAccessToken
  = lens _plcsmpAccessToken
      (\ s a -> s{_plcsmpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcsmpUploadType :: Lens' ProjectsLocationsClustersSetMaintenancePolicy (Maybe Text)
plcsmpUploadType
  = lens _plcsmpUploadType
      (\ s a -> s{_plcsmpUploadType = a})

-- | Multipart request metadata.
plcsmpPayload :: Lens' ProjectsLocationsClustersSetMaintenancePolicy SetMaintenancePolicyRequest
plcsmpPayload
  = lens _plcsmpPayload
      (\ s a -> s{_plcsmpPayload = a})

-- | The name (project, location, cluster id) of the cluster to set
-- maintenance policy. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
plcsmpName :: Lens' ProjectsLocationsClustersSetMaintenancePolicy Text
plcsmpName
  = lens _plcsmpName (\ s a -> s{_plcsmpName = a})

-- | JSONP
plcsmpCallback :: Lens' ProjectsLocationsClustersSetMaintenancePolicy (Maybe Text)
plcsmpCallback
  = lens _plcsmpCallback
      (\ s a -> s{_plcsmpCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersSetMaintenancePolicy
         where
        type Rs ProjectsLocationsClustersSetMaintenancePolicy
             = Operation
        type Scopes
               ProjectsLocationsClustersSetMaintenancePolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetMaintenancePolicy'{..}
          = go _plcsmpName _plcsmpXgafv _plcsmpUploadProtocol
              _plcsmpAccessToken
              _plcsmpUploadType
              _plcsmpCallback
              (Just AltJSON)
              _plcsmpPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersSetMaintenancePolicyResource)
                      mempty
