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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.ReplaceService
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace a service. Only the spec and metadata labels and annotations are
-- modifiable. After the Update request, Cloud Run will work to make the
-- \'status\' match the requested \'spec\'. May provide
-- metadata.resourceVersion to enforce update from last read for optimistic
-- concurrency control.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.replaceService@.
module Network.Google.Resource.Run.Projects.Locations.Services.ReplaceService
    (
    -- * REST Resource
      ProjectsLocationsServicesReplaceServiceResource

    -- * Creating a Request
    , projectsLocationsServicesReplaceService
    , ProjectsLocationsServicesReplaceService

    -- * Request Lenses
    , plsrsXgafv
    , plsrsUploadProtocol
    , plsrsAccessToken
    , plsrsUploadType
    , plsrsPayload
    , plsrsName
    , plsrsDryRun
    , plsrsCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.replaceService@ method which the
-- 'ProjectsLocationsServicesReplaceService' request conforms to.
type ProjectsLocationsServicesReplaceServiceResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "dryRun" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Service :> Put '[JSON] Service

-- | Replace a service. Only the spec and metadata labels and annotations are
-- modifiable. After the Update request, Cloud Run will work to make the
-- \'status\' match the requested \'spec\'. May provide
-- metadata.resourceVersion to enforce update from last read for optimistic
-- concurrency control.
--
-- /See:/ 'projectsLocationsServicesReplaceService' smart constructor.
data ProjectsLocationsServicesReplaceService =
  ProjectsLocationsServicesReplaceService'
    { _plsrsXgafv :: !(Maybe Xgafv)
    , _plsrsUploadProtocol :: !(Maybe Text)
    , _plsrsAccessToken :: !(Maybe Text)
    , _plsrsUploadType :: !(Maybe Text)
    , _plsrsPayload :: !Service
    , _plsrsName :: !Text
    , _plsrsDryRun :: !(Maybe Text)
    , _plsrsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesReplaceService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsrsXgafv'
--
-- * 'plsrsUploadProtocol'
--
-- * 'plsrsAccessToken'
--
-- * 'plsrsUploadType'
--
-- * 'plsrsPayload'
--
-- * 'plsrsName'
--
-- * 'plsrsDryRun'
--
-- * 'plsrsCallback'
projectsLocationsServicesReplaceService
    :: Service -- ^ 'plsrsPayload'
    -> Text -- ^ 'plsrsName'
    -> ProjectsLocationsServicesReplaceService
projectsLocationsServicesReplaceService pPlsrsPayload_ pPlsrsName_ =
  ProjectsLocationsServicesReplaceService'
    { _plsrsXgafv = Nothing
    , _plsrsUploadProtocol = Nothing
    , _plsrsAccessToken = Nothing
    , _plsrsUploadType = Nothing
    , _plsrsPayload = pPlsrsPayload_
    , _plsrsName = pPlsrsName_
    , _plsrsDryRun = Nothing
    , _plsrsCallback = Nothing
    }


-- | V1 error format.
plsrsXgafv :: Lens' ProjectsLocationsServicesReplaceService (Maybe Xgafv)
plsrsXgafv
  = lens _plsrsXgafv (\ s a -> s{_plsrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsrsUploadProtocol :: Lens' ProjectsLocationsServicesReplaceService (Maybe Text)
plsrsUploadProtocol
  = lens _plsrsUploadProtocol
      (\ s a -> s{_plsrsUploadProtocol = a})

-- | OAuth access token.
plsrsAccessToken :: Lens' ProjectsLocationsServicesReplaceService (Maybe Text)
plsrsAccessToken
  = lens _plsrsAccessToken
      (\ s a -> s{_plsrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsrsUploadType :: Lens' ProjectsLocationsServicesReplaceService (Maybe Text)
plsrsUploadType
  = lens _plsrsUploadType
      (\ s a -> s{_plsrsUploadType = a})

-- | Multipart request metadata.
plsrsPayload :: Lens' ProjectsLocationsServicesReplaceService Service
plsrsPayload
  = lens _plsrsPayload (\ s a -> s{_plsrsPayload = a})

-- | The name of the service being replaced. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
plsrsName :: Lens' ProjectsLocationsServicesReplaceService Text
plsrsName
  = lens _plsrsName (\ s a -> s{_plsrsName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
plsrsDryRun :: Lens' ProjectsLocationsServicesReplaceService (Maybe Text)
plsrsDryRun
  = lens _plsrsDryRun (\ s a -> s{_plsrsDryRun = a})

-- | JSONP
plsrsCallback :: Lens' ProjectsLocationsServicesReplaceService (Maybe Text)
plsrsCallback
  = lens _plsrsCallback
      (\ s a -> s{_plsrsCallback = a})

instance GoogleRequest
           ProjectsLocationsServicesReplaceService
         where
        type Rs ProjectsLocationsServicesReplaceService =
             Service
        type Scopes ProjectsLocationsServicesReplaceService =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsServicesReplaceService'{..}
          = go _plsrsName _plsrsXgafv _plsrsUploadProtocol
              _plsrsAccessToken
              _plsrsUploadType
              _plsrsDryRun
              _plsrsCallback
              (Just AltJSON)
              _plsrsPayload
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsServicesReplaceServiceResource)
                      mempty
