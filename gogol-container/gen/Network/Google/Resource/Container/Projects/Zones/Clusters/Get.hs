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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersGet@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Get
    (
    -- * REST Resource
      ProjectsZonesClustersGetResource

    -- * Creating a Request
    , projectsZonesClustersGet'
    , ProjectsZonesClustersGet'

    -- * Request Lenses
    , pzcgXgafv
    , pzcgQuotaUser
    , pzcgPrettyPrint
    , pzcgUploadProtocol
    , pzcgPp
    , pzcgAccessToken
    , pzcgUploadType
    , pzcgZone
    , pzcgBearerToken
    , pzcgKey
    , pzcgClusterId
    , pzcgProjectId
    , pzcgOAuthToken
    , pzcgFields
    , pzcgCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersGet@ method which the
-- 'ProjectsZonesClustersGet'' request conforms to.
type ProjectsZonesClustersGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "clusters" :>
                 Capture "clusterId" Text :>
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
                                             Get '[JSON] Cluster

-- | Gets a specific cluster.
--
-- /See:/ 'projectsZonesClustersGet'' smart constructor.
data ProjectsZonesClustersGet' = ProjectsZonesClustersGet'
    { _pzcgXgafv          :: !(Maybe Text)
    , _pzcgQuotaUser      :: !(Maybe Text)
    , _pzcgPrettyPrint    :: !Bool
    , _pzcgUploadProtocol :: !(Maybe Text)
    , _pzcgPp             :: !Bool
    , _pzcgAccessToken    :: !(Maybe Text)
    , _pzcgUploadType     :: !(Maybe Text)
    , _pzcgZone           :: !Text
    , _pzcgBearerToken    :: !(Maybe Text)
    , _pzcgKey            :: !(Maybe AuthKey)
    , _pzcgClusterId      :: !Text
    , _pzcgProjectId      :: !Text
    , _pzcgOAuthToken     :: !(Maybe OAuthToken)
    , _pzcgFields         :: !(Maybe Text)
    , _pzcgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcgXgafv'
--
-- * 'pzcgQuotaUser'
--
-- * 'pzcgPrettyPrint'
--
-- * 'pzcgUploadProtocol'
--
-- * 'pzcgPp'
--
-- * 'pzcgAccessToken'
--
-- * 'pzcgUploadType'
--
-- * 'pzcgZone'
--
-- * 'pzcgBearerToken'
--
-- * 'pzcgKey'
--
-- * 'pzcgClusterId'
--
-- * 'pzcgProjectId'
--
-- * 'pzcgOAuthToken'
--
-- * 'pzcgFields'
--
-- * 'pzcgCallback'
projectsZonesClustersGet'
    :: Text -- ^ 'zone'
    -> Text -- ^ 'clusterId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersGet'
projectsZonesClustersGet' pPzcgZone_ pPzcgClusterId_ pPzcgProjectId_ =
    ProjectsZonesClustersGet'
    { _pzcgXgafv = Nothing
    , _pzcgQuotaUser = Nothing
    , _pzcgPrettyPrint = True
    , _pzcgUploadProtocol = Nothing
    , _pzcgPp = True
    , _pzcgAccessToken = Nothing
    , _pzcgUploadType = Nothing
    , _pzcgZone = pPzcgZone_
    , _pzcgBearerToken = Nothing
    , _pzcgKey = Nothing
    , _pzcgClusterId = pPzcgClusterId_
    , _pzcgProjectId = pPzcgProjectId_
    , _pzcgOAuthToken = Nothing
    , _pzcgFields = Nothing
    , _pzcgCallback = Nothing
    }

-- | V1 error format.
pzcgXgafv :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgXgafv
  = lens _pzcgXgafv (\ s a -> s{_pzcgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pzcgQuotaUser :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgQuotaUser
  = lens _pzcgQuotaUser
      (\ s a -> s{_pzcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzcgPrettyPrint :: Lens' ProjectsZonesClustersGet' Bool
pzcgPrettyPrint
  = lens _pzcgPrettyPrint
      (\ s a -> s{_pzcgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzcgUploadProtocol :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgUploadProtocol
  = lens _pzcgUploadProtocol
      (\ s a -> s{_pzcgUploadProtocol = a})

-- | Pretty-print response.
pzcgPp :: Lens' ProjectsZonesClustersGet' Bool
pzcgPp = lens _pzcgPp (\ s a -> s{_pzcgPp = a})

-- | OAuth access token.
pzcgAccessToken :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgAccessToken
  = lens _pzcgAccessToken
      (\ s a -> s{_pzcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzcgUploadType :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgUploadType
  = lens _pzcgUploadType
      (\ s a -> s{_pzcgUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
pzcgZone :: Lens' ProjectsZonesClustersGet' Text
pzcgZone = lens _pzcgZone (\ s a -> s{_pzcgZone = a})

-- | OAuth bearer token.
pzcgBearerToken :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgBearerToken
  = lens _pzcgBearerToken
      (\ s a -> s{_pzcgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzcgKey :: Lens' ProjectsZonesClustersGet' (Maybe AuthKey)
pzcgKey = lens _pzcgKey (\ s a -> s{_pzcgKey = a})

-- | The name of the cluster to retrieve.
pzcgClusterId :: Lens' ProjectsZonesClustersGet' Text
pzcgClusterId
  = lens _pzcgClusterId
      (\ s a -> s{_pzcgClusterId = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzcgProjectId :: Lens' ProjectsZonesClustersGet' Text
pzcgProjectId
  = lens _pzcgProjectId
      (\ s a -> s{_pzcgProjectId = a})

-- | OAuth 2.0 token for the current user.
pzcgOAuthToken :: Lens' ProjectsZonesClustersGet' (Maybe OAuthToken)
pzcgOAuthToken
  = lens _pzcgOAuthToken
      (\ s a -> s{_pzcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzcgFields :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgFields
  = lens _pzcgFields (\ s a -> s{_pzcgFields = a})

-- | JSONP
pzcgCallback :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgCallback
  = lens _pzcgCallback (\ s a -> s{_pzcgCallback = a})

instance GoogleAuth ProjectsZonesClustersGet' where
        _AuthKey = pzcgKey . _Just
        _AuthToken = pzcgOAuthToken . _Just

instance GoogleRequest ProjectsZonesClustersGet'
         where
        type Rs ProjectsZonesClustersGet' = Cluster
        request = requestWith containerRequest
        requestWith rq ProjectsZonesClustersGet'{..}
          = go _pzcgProjectId _pzcgZone _pzcgClusterId
              _pzcgXgafv
              _pzcgUploadProtocol
              (Just _pzcgPp)
              _pzcgAccessToken
              _pzcgUploadType
              _pzcgBearerToken
              _pzcgCallback
              _pzcgQuotaUser
              (Just _pzcgPrettyPrint)
              _pzcgFields
              _pzcgKey
              _pzcgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsZonesClustersGetResource)
                      rq
