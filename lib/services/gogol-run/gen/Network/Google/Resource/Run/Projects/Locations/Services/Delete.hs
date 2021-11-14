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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a service. This will cause the Service to stop serving traffic
-- and will delete the child entities like Routes, Configurations and
-- Revisions.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.delete@.
module Network.Google.Resource.Run.Projects.Locations.Services.Delete
    (
    -- * REST Resource
      ProjectsLocationsServicesDeleteResource

    -- * Creating a Request
    , projectsLocationsServicesDelete
    , ProjectsLocationsServicesDelete

    -- * Request Lenses
    , plsdXgafv
    , plsdUploadProtocol
    , plsdAPIVersion
    , plsdKind
    , plsdAccessToken
    , plsdUploadType
    , plsdPropagationPolicy
    , plsdName
    , plsdDryRun
    , plsdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.delete@ method which the
-- 'ProjectsLocationsServicesDelete' request conforms to.
type ProjectsLocationsServicesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "apiVersion" Text :>
               QueryParam "kind" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "propagationPolicy" Text :>
                       QueryParam "dryRun" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Status

-- | Delete a service. This will cause the Service to stop serving traffic
-- and will delete the child entities like Routes, Configurations and
-- Revisions.
--
-- /See:/ 'projectsLocationsServicesDelete' smart constructor.
data ProjectsLocationsServicesDelete =
  ProjectsLocationsServicesDelete'
    { _plsdXgafv :: !(Maybe Xgafv)
    , _plsdUploadProtocol :: !(Maybe Text)
    , _plsdAPIVersion :: !(Maybe Text)
    , _plsdKind :: !(Maybe Text)
    , _plsdAccessToken :: !(Maybe Text)
    , _plsdUploadType :: !(Maybe Text)
    , _plsdPropagationPolicy :: !(Maybe Text)
    , _plsdName :: !Text
    , _plsdDryRun :: !(Maybe Text)
    , _plsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsdXgafv'
--
-- * 'plsdUploadProtocol'
--
-- * 'plsdAPIVersion'
--
-- * 'plsdKind'
--
-- * 'plsdAccessToken'
--
-- * 'plsdUploadType'
--
-- * 'plsdPropagationPolicy'
--
-- * 'plsdName'
--
-- * 'plsdDryRun'
--
-- * 'plsdCallback'
projectsLocationsServicesDelete
    :: Text -- ^ 'plsdName'
    -> ProjectsLocationsServicesDelete
projectsLocationsServicesDelete pPlsdName_ =
  ProjectsLocationsServicesDelete'
    { _plsdXgafv = Nothing
    , _plsdUploadProtocol = Nothing
    , _plsdAPIVersion = Nothing
    , _plsdKind = Nothing
    , _plsdAccessToken = Nothing
    , _plsdUploadType = Nothing
    , _plsdPropagationPolicy = Nothing
    , _plsdName = pPlsdName_
    , _plsdDryRun = Nothing
    , _plsdCallback = Nothing
    }


-- | V1 error format.
plsdXgafv :: Lens' ProjectsLocationsServicesDelete (Maybe Xgafv)
plsdXgafv
  = lens _plsdXgafv (\ s a -> s{_plsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsdUploadProtocol :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdUploadProtocol
  = lens _plsdUploadProtocol
      (\ s a -> s{_plsdUploadProtocol = a})

-- | Cloud Run currently ignores this parameter.
plsdAPIVersion :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdAPIVersion
  = lens _plsdAPIVersion
      (\ s a -> s{_plsdAPIVersion = a})

-- | Cloud Run currently ignores this parameter.
plsdKind :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdKind = lens _plsdKind (\ s a -> s{_plsdKind = a})

-- | OAuth access token.
plsdAccessToken :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdAccessToken
  = lens _plsdAccessToken
      (\ s a -> s{_plsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsdUploadType :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdUploadType
  = lens _plsdUploadType
      (\ s a -> s{_plsdUploadType = a})

-- | Specifies the propagation policy of delete. Cloud Run currently ignores
-- this setting, and deletes in the background. Please see
-- kubernetes.io\/docs\/concepts\/workloads\/controllers\/garbage-collection\/
-- for more information.
plsdPropagationPolicy :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdPropagationPolicy
  = lens _plsdPropagationPolicy
      (\ s a -> s{_plsdPropagationPolicy = a})

-- | The name of the service to delete. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
plsdName :: Lens' ProjectsLocationsServicesDelete Text
plsdName = lens _plsdName (\ s a -> s{_plsdName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
plsdDryRun :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdDryRun
  = lens _plsdDryRun (\ s a -> s{_plsdDryRun = a})

-- | JSONP
plsdCallback :: Lens' ProjectsLocationsServicesDelete (Maybe Text)
plsdCallback
  = lens _plsdCallback (\ s a -> s{_plsdCallback = a})

instance GoogleRequest
           ProjectsLocationsServicesDelete
         where
        type Rs ProjectsLocationsServicesDelete = Status
        type Scopes ProjectsLocationsServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsServicesDelete'{..}
          = go _plsdName _plsdXgafv _plsdUploadProtocol
              _plsdAPIVersion
              _plsdKind
              _plsdAccessToken
              _plsdUploadType
              _plsdPropagationPolicy
              _plsdDryRun
              _plsdCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsServicesDeleteResource)
                      mempty
