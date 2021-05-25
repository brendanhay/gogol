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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a service.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.create@.
module Network.Google.Resource.Run.Projects.Locations.Services.Create
    (
    -- * REST Resource
      ProjectsLocationsServicesCreateResource

    -- * Creating a Request
    , projectsLocationsServicesCreate
    , ProjectsLocationsServicesCreate

    -- * Request Lenses
    , plscParent
    , plscXgafv
    , plscUploadProtocol
    , plscAccessToken
    , plscUploadType
    , plscPayload
    , plscDryRun
    , plscCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.create@ method which the
-- 'ProjectsLocationsServicesCreate' request conforms to.
type ProjectsLocationsServicesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "services" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "dryRun" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Service :> Post '[JSON] Service

-- | Create a service.
--
-- /See:/ 'projectsLocationsServicesCreate' smart constructor.
data ProjectsLocationsServicesCreate =
  ProjectsLocationsServicesCreate'
    { _plscParent :: !Text
    , _plscXgafv :: !(Maybe Xgafv)
    , _plscUploadProtocol :: !(Maybe Text)
    , _plscAccessToken :: !(Maybe Text)
    , _plscUploadType :: !(Maybe Text)
    , _plscPayload :: !Service
    , _plscDryRun :: !(Maybe Text)
    , _plscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plscParent'
--
-- * 'plscXgafv'
--
-- * 'plscUploadProtocol'
--
-- * 'plscAccessToken'
--
-- * 'plscUploadType'
--
-- * 'plscPayload'
--
-- * 'plscDryRun'
--
-- * 'plscCallback'
projectsLocationsServicesCreate
    :: Text -- ^ 'plscParent'
    -> Service -- ^ 'plscPayload'
    -> ProjectsLocationsServicesCreate
projectsLocationsServicesCreate pPlscParent_ pPlscPayload_ =
  ProjectsLocationsServicesCreate'
    { _plscParent = pPlscParent_
    , _plscXgafv = Nothing
    , _plscUploadProtocol = Nothing
    , _plscAccessToken = Nothing
    , _plscUploadType = Nothing
    , _plscPayload = pPlscPayload_
    , _plscDryRun = Nothing
    , _plscCallback = Nothing
    }


-- | The namespace in which the service should be created. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
plscParent :: Lens' ProjectsLocationsServicesCreate Text
plscParent
  = lens _plscParent (\ s a -> s{_plscParent = a})

-- | V1 error format.
plscXgafv :: Lens' ProjectsLocationsServicesCreate (Maybe Xgafv)
plscXgafv
  = lens _plscXgafv (\ s a -> s{_plscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plscUploadProtocol :: Lens' ProjectsLocationsServicesCreate (Maybe Text)
plscUploadProtocol
  = lens _plscUploadProtocol
      (\ s a -> s{_plscUploadProtocol = a})

-- | OAuth access token.
plscAccessToken :: Lens' ProjectsLocationsServicesCreate (Maybe Text)
plscAccessToken
  = lens _plscAccessToken
      (\ s a -> s{_plscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plscUploadType :: Lens' ProjectsLocationsServicesCreate (Maybe Text)
plscUploadType
  = lens _plscUploadType
      (\ s a -> s{_plscUploadType = a})

-- | Multipart request metadata.
plscPayload :: Lens' ProjectsLocationsServicesCreate Service
plscPayload
  = lens _plscPayload (\ s a -> s{_plscPayload = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
plscDryRun :: Lens' ProjectsLocationsServicesCreate (Maybe Text)
plscDryRun
  = lens _plscDryRun (\ s a -> s{_plscDryRun = a})

-- | JSONP
plscCallback :: Lens' ProjectsLocationsServicesCreate (Maybe Text)
plscCallback
  = lens _plscCallback (\ s a -> s{_plscCallback = a})

instance GoogleRequest
           ProjectsLocationsServicesCreate
         where
        type Rs ProjectsLocationsServicesCreate = Service
        type Scopes ProjectsLocationsServicesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsServicesCreate'{..}
          = go _plscParent _plscXgafv _plscUploadProtocol
              _plscAccessToken
              _plscUploadType
              _plscDryRun
              _plscCallback
              (Just AltJSON)
              _plscPayload
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsServicesCreateResource)
                      mempty
