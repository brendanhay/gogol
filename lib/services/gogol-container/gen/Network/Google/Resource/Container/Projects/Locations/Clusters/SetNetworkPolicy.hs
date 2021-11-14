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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetNetworkPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables Network Policy for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setNetworkPolicy@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetNetworkPolicy
    (
    -- * REST Resource
      ProjectsLocationsClustersSetNetworkPolicyResource

    -- * Creating a Request
    , projectsLocationsClustersSetNetworkPolicy
    , ProjectsLocationsClustersSetNetworkPolicy

    -- * Request Lenses
    , plcsnpXgafv
    , plcsnpUploadProtocol
    , plcsnpAccessToken
    , plcsnpUploadType
    , plcsnpPayload
    , plcsnpName
    , plcsnpCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setNetworkPolicy@ method which the
-- 'ProjectsLocationsClustersSetNetworkPolicy' request conforms to.
type ProjectsLocationsClustersSetNetworkPolicyResource
     =
     "v1" :>
       CaptureMode "name" "setNetworkPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetNetworkPolicyRequest :>
                       Post '[JSON] Operation

-- | Enables or disables Network Policy for a cluster.
--
-- /See:/ 'projectsLocationsClustersSetNetworkPolicy' smart constructor.
data ProjectsLocationsClustersSetNetworkPolicy =
  ProjectsLocationsClustersSetNetworkPolicy'
    { _plcsnpXgafv :: !(Maybe Xgafv)
    , _plcsnpUploadProtocol :: !(Maybe Text)
    , _plcsnpAccessToken :: !(Maybe Text)
    , _plcsnpUploadType :: !(Maybe Text)
    , _plcsnpPayload :: !SetNetworkPolicyRequest
    , _plcsnpName :: !Text
    , _plcsnpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersSetNetworkPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcsnpXgafv'
--
-- * 'plcsnpUploadProtocol'
--
-- * 'plcsnpAccessToken'
--
-- * 'plcsnpUploadType'
--
-- * 'plcsnpPayload'
--
-- * 'plcsnpName'
--
-- * 'plcsnpCallback'
projectsLocationsClustersSetNetworkPolicy
    :: SetNetworkPolicyRequest -- ^ 'plcsnpPayload'
    -> Text -- ^ 'plcsnpName'
    -> ProjectsLocationsClustersSetNetworkPolicy
projectsLocationsClustersSetNetworkPolicy pPlcsnpPayload_ pPlcsnpName_ =
  ProjectsLocationsClustersSetNetworkPolicy'
    { _plcsnpXgafv = Nothing
    , _plcsnpUploadProtocol = Nothing
    , _plcsnpAccessToken = Nothing
    , _plcsnpUploadType = Nothing
    , _plcsnpPayload = pPlcsnpPayload_
    , _plcsnpName = pPlcsnpName_
    , _plcsnpCallback = Nothing
    }


-- | V1 error format.
plcsnpXgafv :: Lens' ProjectsLocationsClustersSetNetworkPolicy (Maybe Xgafv)
plcsnpXgafv
  = lens _plcsnpXgafv (\ s a -> s{_plcsnpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcsnpUploadProtocol :: Lens' ProjectsLocationsClustersSetNetworkPolicy (Maybe Text)
plcsnpUploadProtocol
  = lens _plcsnpUploadProtocol
      (\ s a -> s{_plcsnpUploadProtocol = a})

-- | OAuth access token.
plcsnpAccessToken :: Lens' ProjectsLocationsClustersSetNetworkPolicy (Maybe Text)
plcsnpAccessToken
  = lens _plcsnpAccessToken
      (\ s a -> s{_plcsnpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcsnpUploadType :: Lens' ProjectsLocationsClustersSetNetworkPolicy (Maybe Text)
plcsnpUploadType
  = lens _plcsnpUploadType
      (\ s a -> s{_plcsnpUploadType = a})

-- | Multipart request metadata.
plcsnpPayload :: Lens' ProjectsLocationsClustersSetNetworkPolicy SetNetworkPolicyRequest
plcsnpPayload
  = lens _plcsnpPayload
      (\ s a -> s{_plcsnpPayload = a})

-- | The name (project, location, cluster id) of the cluster to set
-- networking policy. Specified in the format
-- \`projects\/*\/locations\/*\/clusters\/*\`.
plcsnpName :: Lens' ProjectsLocationsClustersSetNetworkPolicy Text
plcsnpName
  = lens _plcsnpName (\ s a -> s{_plcsnpName = a})

-- | JSONP
plcsnpCallback :: Lens' ProjectsLocationsClustersSetNetworkPolicy (Maybe Text)
plcsnpCallback
  = lens _plcsnpCallback
      (\ s a -> s{_plcsnpCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersSetNetworkPolicy
         where
        type Rs ProjectsLocationsClustersSetNetworkPolicy =
             Operation
        type Scopes ProjectsLocationsClustersSetNetworkPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetNetworkPolicy'{..}
          = go _plcsnpName _plcsnpXgafv _plcsnpUploadProtocol
              _plcsnpAccessToken
              _plcsnpUploadType
              _plcsnpCallback
              (Just AltJSON)
              _plcsnpPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersSetNetworkPolicyResource)
                      mempty
