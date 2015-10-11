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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersList@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.List
    (
    -- * REST Resource
      ProjectsZonesClustersListResource

    -- * Creating a Request
    , projectsZonesClustersList'
    , ProjectsZonesClustersList'

    -- * Request Lenses
    , pzclXgafv
    , pzclQuotaUser
    , pzclPrettyPrint
    , pzclUploadProtocol
    , pzclPp
    , pzclAccessToken
    , pzclUploadType
    , pzclZone
    , pzclBearerToken
    , pzclKey
    , pzclProjectId
    , pzclOAuthToken
    , pzclFields
    , pzclCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersList@ method which the
-- 'ProjectsZonesClustersList'' request conforms to.
type ProjectsZonesClustersListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
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
                                       Header "Authorization" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListClustersResponse

-- | Lists all clusters owned by a project in either the specified zone or
-- all zones.
--
-- /See:/ 'projectsZonesClustersList'' smart constructor.
data ProjectsZonesClustersList' = ProjectsZonesClustersList'
    { _pzclXgafv          :: !(Maybe Text)
    , _pzclQuotaUser      :: !(Maybe Text)
    , _pzclPrettyPrint    :: !Bool
    , _pzclUploadProtocol :: !(Maybe Text)
    , _pzclPp             :: !Bool
    , _pzclAccessToken    :: !(Maybe Text)
    , _pzclUploadType     :: !(Maybe Text)
    , _pzclZone           :: !Text
    , _pzclBearerToken    :: !(Maybe Text)
    , _pzclKey            :: !(Maybe AuthKey)
    , _pzclProjectId      :: !Text
    , _pzclOAuthToken     :: !(Maybe OAuthToken)
    , _pzclFields         :: !(Maybe Text)
    , _pzclCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzclXgafv'
--
-- * 'pzclQuotaUser'
--
-- * 'pzclPrettyPrint'
--
-- * 'pzclUploadProtocol'
--
-- * 'pzclPp'
--
-- * 'pzclAccessToken'
--
-- * 'pzclUploadType'
--
-- * 'pzclZone'
--
-- * 'pzclBearerToken'
--
-- * 'pzclKey'
--
-- * 'pzclProjectId'
--
-- * 'pzclOAuthToken'
--
-- * 'pzclFields'
--
-- * 'pzclCallback'
projectsZonesClustersList'
    :: Text -- ^ 'zone'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersList'
projectsZonesClustersList' pPzclZone_ pPzclProjectId_ =
    ProjectsZonesClustersList'
    { _pzclXgafv = Nothing
    , _pzclQuotaUser = Nothing
    , _pzclPrettyPrint = True
    , _pzclUploadProtocol = Nothing
    , _pzclPp = True
    , _pzclAccessToken = Nothing
    , _pzclUploadType = Nothing
    , _pzclZone = pPzclZone_
    , _pzclBearerToken = Nothing
    , _pzclKey = Nothing
    , _pzclProjectId = pPzclProjectId_
    , _pzclOAuthToken = Nothing
    , _pzclFields = Nothing
    , _pzclCallback = Nothing
    }

-- | V1 error format.
pzclXgafv :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclXgafv
  = lens _pzclXgafv (\ s a -> s{_pzclXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pzclQuotaUser :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclQuotaUser
  = lens _pzclQuotaUser
      (\ s a -> s{_pzclQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzclPrettyPrint :: Lens' ProjectsZonesClustersList' Bool
pzclPrettyPrint
  = lens _pzclPrettyPrint
      (\ s a -> s{_pzclPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzclUploadProtocol :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclUploadProtocol
  = lens _pzclUploadProtocol
      (\ s a -> s{_pzclUploadProtocol = a})

-- | Pretty-print response.
pzclPp :: Lens' ProjectsZonesClustersList' Bool
pzclPp = lens _pzclPp (\ s a -> s{_pzclPp = a})

-- | OAuth access token.
pzclAccessToken :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclAccessToken
  = lens _pzclAccessToken
      (\ s a -> s{_pzclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzclUploadType :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclUploadType
  = lens _pzclUploadType
      (\ s a -> s{_pzclUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides,
-- or \"-\" for all zones.
pzclZone :: Lens' ProjectsZonesClustersList' Text
pzclZone = lens _pzclZone (\ s a -> s{_pzclZone = a})

-- | OAuth bearer token.
pzclBearerToken :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclBearerToken
  = lens _pzclBearerToken
      (\ s a -> s{_pzclBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzclKey :: Lens' ProjectsZonesClustersList' (Maybe AuthKey)
pzclKey = lens _pzclKey (\ s a -> s{_pzclKey = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzclProjectId :: Lens' ProjectsZonesClustersList' Text
pzclProjectId
  = lens _pzclProjectId
      (\ s a -> s{_pzclProjectId = a})

-- | OAuth 2.0 token for the current user.
pzclOAuthToken :: Lens' ProjectsZonesClustersList' (Maybe OAuthToken)
pzclOAuthToken
  = lens _pzclOAuthToken
      (\ s a -> s{_pzclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzclFields :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclFields
  = lens _pzclFields (\ s a -> s{_pzclFields = a})

-- | JSONP
pzclCallback :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclCallback
  = lens _pzclCallback (\ s a -> s{_pzclCallback = a})

instance GoogleAuth ProjectsZonesClustersList' where
        _AuthKey = pzclKey . _Just
        _AuthToken = pzclOAuthToken . _Just

instance GoogleRequest ProjectsZonesClustersList'
         where
        type Rs ProjectsZonesClustersList' =
             ListClustersResponse
        request = requestWith containerRequest
        requestWith rq ProjectsZonesClustersList'{..}
          = go _pzclProjectId _pzclZone _pzclXgafv
              _pzclUploadProtocol
              (Just _pzclPp)
              _pzclAccessToken
              _pzclUploadType
              _pzclBearerToken
              _pzclCallback
              _pzclQuotaUser
              (Just _pzclPrettyPrint)
              _pzclFields
              _pzclKey
              _pzclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsZonesClustersListResource)
                      rq
