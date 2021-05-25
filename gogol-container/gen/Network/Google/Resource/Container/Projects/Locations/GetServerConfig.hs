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
-- Module      : Network.Google.Resource.Container.Projects.Locations.GetServerConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns configuration info about the Google Kubernetes Engine service.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.getServerConfig@.
module Network.Google.Resource.Container.Projects.Locations.GetServerConfig
    (
    -- * REST Resource
      ProjectsLocationsGetServerConfigResource

    -- * Creating a Request
    , projectsLocationsGetServerConfig
    , ProjectsLocationsGetServerConfig

    -- * Request Lenses
    , plgscXgafv
    , plgscUploadProtocol
    , plgscAccessToken
    , plgscUploadType
    , plgscZone
    , plgscName
    , plgscProjectId
    , plgscCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.getServerConfig@ method which the
-- 'ProjectsLocationsGetServerConfig' request conforms to.
type ProjectsLocationsGetServerConfigResource =
     "v1" :>
       Capture "name" Text :>
         "serverConfig" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "zone" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ServerConfig

-- | Returns configuration info about the Google Kubernetes Engine service.
--
-- /See:/ 'projectsLocationsGetServerConfig' smart constructor.
data ProjectsLocationsGetServerConfig =
  ProjectsLocationsGetServerConfig'
    { _plgscXgafv :: !(Maybe Xgafv)
    , _plgscUploadProtocol :: !(Maybe Text)
    , _plgscAccessToken :: !(Maybe Text)
    , _plgscUploadType :: !(Maybe Text)
    , _plgscZone :: !(Maybe Text)
    , _plgscName :: !Text
    , _plgscProjectId :: !(Maybe Text)
    , _plgscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsGetServerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plgscXgafv'
--
-- * 'plgscUploadProtocol'
--
-- * 'plgscAccessToken'
--
-- * 'plgscUploadType'
--
-- * 'plgscZone'
--
-- * 'plgscName'
--
-- * 'plgscProjectId'
--
-- * 'plgscCallback'
projectsLocationsGetServerConfig
    :: Text -- ^ 'plgscName'
    -> ProjectsLocationsGetServerConfig
projectsLocationsGetServerConfig pPlgscName_ =
  ProjectsLocationsGetServerConfig'
    { _plgscXgafv = Nothing
    , _plgscUploadProtocol = Nothing
    , _plgscAccessToken = Nothing
    , _plgscUploadType = Nothing
    , _plgscZone = Nothing
    , _plgscName = pPlgscName_
    , _plgscProjectId = Nothing
    , _plgscCallback = Nothing
    }


-- | V1 error format.
plgscXgafv :: Lens' ProjectsLocationsGetServerConfig (Maybe Xgafv)
plgscXgafv
  = lens _plgscXgafv (\ s a -> s{_plgscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plgscUploadProtocol :: Lens' ProjectsLocationsGetServerConfig (Maybe Text)
plgscUploadProtocol
  = lens _plgscUploadProtocol
      (\ s a -> s{_plgscUploadProtocol = a})

-- | OAuth access token.
plgscAccessToken :: Lens' ProjectsLocationsGetServerConfig (Maybe Text)
plgscAccessToken
  = lens _plgscAccessToken
      (\ s a -> s{_plgscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plgscUploadType :: Lens' ProjectsLocationsGetServerConfig (Maybe Text)
plgscUploadType
  = lens _plgscUploadType
      (\ s a -> s{_plgscUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) to
-- return operations for. This field has been deprecated and replaced by
-- the name field.
plgscZone :: Lens' ProjectsLocationsGetServerConfig (Maybe Text)
plgscZone
  = lens _plgscZone (\ s a -> s{_plgscZone = a})

-- | The name (project and location) of the server config to get, specified
-- in the format \`projects\/*\/locations\/*\`.
plgscName :: Lens' ProjectsLocationsGetServerConfig Text
plgscName
  = lens _plgscName (\ s a -> s{_plgscName = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
plgscProjectId :: Lens' ProjectsLocationsGetServerConfig (Maybe Text)
plgscProjectId
  = lens _plgscProjectId
      (\ s a -> s{_plgscProjectId = a})

-- | JSONP
plgscCallback :: Lens' ProjectsLocationsGetServerConfig (Maybe Text)
plgscCallback
  = lens _plgscCallback
      (\ s a -> s{_plgscCallback = a})

instance GoogleRequest
           ProjectsLocationsGetServerConfig
         where
        type Rs ProjectsLocationsGetServerConfig =
             ServerConfig
        type Scopes ProjectsLocationsGetServerConfig =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsGetServerConfig'{..}
          = go _plgscName _plgscXgafv _plgscUploadProtocol
              _plgscAccessToken
              _plgscUploadType
              _plgscZone
              _plgscProjectId
              _plgscCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsGetServerConfigResource)
                      mempty
