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
-- Module      : Network.Google.Resource.Container.Projects.Zones.GetServerConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns configuration info about the Kubernetes Engine service.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.getServerconfig@.
module Network.Google.Resource.Container.Projects.Zones.GetServerConfig
    (
    -- * REST Resource
      ProjectsZonesGetServerConfigResource

    -- * Creating a Request
    , projectsZonesGetServerConfig
    , ProjectsZonesGetServerConfig

    -- * Request Lenses
    , pzgscXgafv
    , pzgscUploadProtocol
    , pzgscAccessToken
    , pzgscUploadType
    , pzgscZone
    , pzgscName
    , pzgscProjectId
    , pzgscCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.getServerconfig@ method which the
-- 'ProjectsZonesGetServerConfig' request conforms to.
type ProjectsZonesGetServerConfigResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "serverconfig" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "name" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ServerConfig

-- | Returns configuration info about the Kubernetes Engine service.
--
-- /See:/ 'projectsZonesGetServerConfig' smart constructor.
data ProjectsZonesGetServerConfig =
  ProjectsZonesGetServerConfig'
    { _pzgscXgafv          :: !(Maybe Xgafv)
    , _pzgscUploadProtocol :: !(Maybe Text)
    , _pzgscAccessToken    :: !(Maybe Text)
    , _pzgscUploadType     :: !(Maybe Text)
    , _pzgscZone           :: !Text
    , _pzgscName           :: !(Maybe Text)
    , _pzgscProjectId      :: !Text
    , _pzgscCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesGetServerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzgscXgafv'
--
-- * 'pzgscUploadProtocol'
--
-- * 'pzgscAccessToken'
--
-- * 'pzgscUploadType'
--
-- * 'pzgscZone'
--
-- * 'pzgscName'
--
-- * 'pzgscProjectId'
--
-- * 'pzgscCallback'
projectsZonesGetServerConfig
    :: Text -- ^ 'pzgscZone'
    -> Text -- ^ 'pzgscProjectId'
    -> ProjectsZonesGetServerConfig
projectsZonesGetServerConfig pPzgscZone_ pPzgscProjectId_ =
  ProjectsZonesGetServerConfig'
    { _pzgscXgafv = Nothing
    , _pzgscUploadProtocol = Nothing
    , _pzgscAccessToken = Nothing
    , _pzgscUploadType = Nothing
    , _pzgscZone = pPzgscZone_
    , _pzgscName = Nothing
    , _pzgscProjectId = pPzgscProjectId_
    , _pzgscCallback = Nothing
    }

-- | V1 error format.
pzgscXgafv :: Lens' ProjectsZonesGetServerConfig (Maybe Xgafv)
pzgscXgafv
  = lens _pzgscXgafv (\ s a -> s{_pzgscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzgscUploadProtocol :: Lens' ProjectsZonesGetServerConfig (Maybe Text)
pzgscUploadProtocol
  = lens _pzgscUploadProtocol
      (\ s a -> s{_pzgscUploadProtocol = a})

-- | OAuth access token.
pzgscAccessToken :: Lens' ProjectsZonesGetServerConfig (Maybe Text)
pzgscAccessToken
  = lens _pzgscAccessToken
      (\ s a -> s{_pzgscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzgscUploadType :: Lens' ProjectsZonesGetServerConfig (Maybe Text)
pzgscUploadType
  = lens _pzgscUploadType
      (\ s a -> s{_pzgscUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) to return operations for. This
-- field has been deprecated and replaced by the name field.
pzgscZone :: Lens' ProjectsZonesGetServerConfig Text
pzgscZone
  = lens _pzgscZone (\ s a -> s{_pzgscZone = a})

-- | The name (project and location) of the server config to get Specified in
-- the format \'projects\/*\/locations\/*\'.
pzgscName :: Lens' ProjectsZonesGetServerConfig (Maybe Text)
pzgscName
  = lens _pzgscName (\ s a -> s{_pzgscName = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
pzgscProjectId :: Lens' ProjectsZonesGetServerConfig Text
pzgscProjectId
  = lens _pzgscProjectId
      (\ s a -> s{_pzgscProjectId = a})

-- | JSONP
pzgscCallback :: Lens' ProjectsZonesGetServerConfig (Maybe Text)
pzgscCallback
  = lens _pzgscCallback
      (\ s a -> s{_pzgscCallback = a})

instance GoogleRequest ProjectsZonesGetServerConfig
         where
        type Rs ProjectsZonesGetServerConfig = ServerConfig
        type Scopes ProjectsZonesGetServerConfig =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesGetServerConfig'{..}
          = go _pzgscProjectId _pzgscZone _pzgscXgafv
              _pzgscUploadProtocol
              _pzgscAccessToken
              _pzgscUploadType
              _pzgscName
              _pzgscCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesGetServerConfigResource)
                      mempty
