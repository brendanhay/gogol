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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns configuration info about the Container Engine service.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @ContainerProjectsZonesGetServerConfig@.
module Network.Google.Resource.Container.Projects.Zones.GetServerConfig
    (
    -- * REST Resource
      ProjectsZonesGetServerConfigResource

    -- * Creating a Request
    , projectsZonesGetServerConfig'
    , ProjectsZonesGetServerConfig'

    -- * Request Lenses
    , pzgscXgafv
    , pzgscQuotaUser
    , pzgscPrettyPrint
    , pzgscUploadProtocol
    , pzgscPp
    , pzgscAccessToken
    , pzgscUploadType
    , pzgscZone
    , pzgscBearerToken
    , pzgscKey
    , pzgscProjectId
    , pzgscOAuthToken
    , pzgscFields
    , pzgscCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesGetServerConfig@ method which the
-- 'ProjectsZonesGetServerConfig'' request conforms to.
type ProjectsZonesGetServerConfigResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "serverconfig" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ServerConfig

-- | Returns configuration info about the Container Engine service.
--
-- /See:/ 'projectsZonesGetServerConfig'' smart constructor.
data ProjectsZonesGetServerConfig' = ProjectsZonesGetServerConfig'
    { _pzgscXgafv          :: !(Maybe Text)
    , _pzgscQuotaUser      :: !(Maybe Text)
    , _pzgscPrettyPrint    :: !Bool
    , _pzgscUploadProtocol :: !(Maybe Text)
    , _pzgscPp             :: !Bool
    , _pzgscAccessToken    :: !(Maybe Text)
    , _pzgscUploadType     :: !(Maybe Text)
    , _pzgscZone           :: !Text
    , _pzgscBearerToken    :: !(Maybe Text)
    , _pzgscKey            :: !(Maybe AuthKey)
    , _pzgscProjectId      :: !Text
    , _pzgscOAuthToken     :: !(Maybe OAuthToken)
    , _pzgscFields         :: !(Maybe Text)
    , _pzgscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesGetServerConfig'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzgscXgafv'
--
-- * 'pzgscQuotaUser'
--
-- * 'pzgscPrettyPrint'
--
-- * 'pzgscUploadProtocol'
--
-- * 'pzgscPp'
--
-- * 'pzgscAccessToken'
--
-- * 'pzgscUploadType'
--
-- * 'pzgscZone'
--
-- * 'pzgscBearerToken'
--
-- * 'pzgscKey'
--
-- * 'pzgscProjectId'
--
-- * 'pzgscOAuthToken'
--
-- * 'pzgscFields'
--
-- * 'pzgscCallback'
projectsZonesGetServerConfig'
    :: Text -- ^ 'zone'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesGetServerConfig'
projectsZonesGetServerConfig' pPzgscZone_ pPzgscProjectId_ =
    ProjectsZonesGetServerConfig'
    { _pzgscXgafv = Nothing
    , _pzgscQuotaUser = Nothing
    , _pzgscPrettyPrint = True
    , _pzgscUploadProtocol = Nothing
    , _pzgscPp = True
    , _pzgscAccessToken = Nothing
    , _pzgscUploadType = Nothing
    , _pzgscZone = pPzgscZone_
    , _pzgscBearerToken = Nothing
    , _pzgscKey = Nothing
    , _pzgscProjectId = pPzgscProjectId_
    , _pzgscOAuthToken = Nothing
    , _pzgscFields = Nothing
    , _pzgscCallback = Nothing
    }

-- | V1 error format.
pzgscXgafv :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscXgafv
  = lens _pzgscXgafv (\ s a -> s{_pzgscXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pzgscQuotaUser :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscQuotaUser
  = lens _pzgscQuotaUser
      (\ s a -> s{_pzgscQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzgscPrettyPrint :: Lens' ProjectsZonesGetServerConfig' Bool
pzgscPrettyPrint
  = lens _pzgscPrettyPrint
      (\ s a -> s{_pzgscPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzgscUploadProtocol :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscUploadProtocol
  = lens _pzgscUploadProtocol
      (\ s a -> s{_pzgscUploadProtocol = a})

-- | Pretty-print response.
pzgscPp :: Lens' ProjectsZonesGetServerConfig' Bool
pzgscPp = lens _pzgscPp (\ s a -> s{_pzgscPp = a})

-- | OAuth access token.
pzgscAccessToken :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscAccessToken
  = lens _pzgscAccessToken
      (\ s a -> s{_pzgscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzgscUploadType :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscUploadType
  = lens _pzgscUploadType
      (\ s a -> s{_pzgscUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) to return operations for, or
-- \"-\" for all zones.
pzgscZone :: Lens' ProjectsZonesGetServerConfig' Text
pzgscZone
  = lens _pzgscZone (\ s a -> s{_pzgscZone = a})

-- | OAuth bearer token.
pzgscBearerToken :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscBearerToken
  = lens _pzgscBearerToken
      (\ s a -> s{_pzgscBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzgscKey :: Lens' ProjectsZonesGetServerConfig' (Maybe AuthKey)
pzgscKey = lens _pzgscKey (\ s a -> s{_pzgscKey = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzgscProjectId :: Lens' ProjectsZonesGetServerConfig' Text
pzgscProjectId
  = lens _pzgscProjectId
      (\ s a -> s{_pzgscProjectId = a})

-- | OAuth 2.0 token for the current user.
pzgscOAuthToken :: Lens' ProjectsZonesGetServerConfig' (Maybe OAuthToken)
pzgscOAuthToken
  = lens _pzgscOAuthToken
      (\ s a -> s{_pzgscOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzgscFields :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscFields
  = lens _pzgscFields (\ s a -> s{_pzgscFields = a})

-- | JSONP
pzgscCallback :: Lens' ProjectsZonesGetServerConfig' (Maybe Text)
pzgscCallback
  = lens _pzgscCallback
      (\ s a -> s{_pzgscCallback = a})

instance GoogleAuth ProjectsZonesGetServerConfig'
         where
        _AuthKey = pzgscKey . _Just
        _AuthToken = pzgscOAuthToken . _Just

instance GoogleRequest ProjectsZonesGetServerConfig'
         where
        type Rs ProjectsZonesGetServerConfig' = ServerConfig
        request = requestWith containerRequest
        requestWith rq ProjectsZonesGetServerConfig'{..}
          = go _pzgscProjectId _pzgscZone _pzgscXgafv
              _pzgscUploadProtocol
              (Just _pzgscPp)
              _pzgscAccessToken
              _pzgscUploadType
              _pzgscBearerToken
              _pzgscCallback
              _pzgscQuotaUser
              (Just _pzgscPrettyPrint)
              _pzgscFields
              _pzgscKey
              _pzgscOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsZonesGetServerConfigResource)
                      rq
