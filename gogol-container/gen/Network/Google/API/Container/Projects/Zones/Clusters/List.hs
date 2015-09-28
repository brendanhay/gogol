{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Container.Projects.Zones.Clusters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all clusters owned by a project in the specified zone.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @container.projects.zones.clusters.list@.
module Network.Google.API.Container.Projects.Zones.Clusters.List
    (
    -- * REST Resource
      ProjectsZonesClustersListAPI

    -- * Creating a Request
    , projectsZonesClustersList'
    , ProjectsZonesClustersList'

    -- * Request Lenses
    , pzclQuotaUser
    , pzclPrettyPrint
    , pzclUserIp
    , pzclZoneId
    , pzclKey
    , pzclProjectId
    , pzclOauthToken
    , pzclFields
    , pzclAlt
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for container.projects.zones.clusters.list which the
-- 'ProjectsZonesClustersList'' request conforms to.
type ProjectsZonesClustersListAPI =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "clusters" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] ListClustersResponse

-- | Lists all clusters owned by a project in the specified zone.
--
-- /See:/ 'projectsZonesClustersList'' smart constructor.
data ProjectsZonesClustersList' = ProjectsZonesClustersList'
    { _pzclQuotaUser   :: !(Maybe Text)
    , _pzclPrettyPrint :: !Bool
    , _pzclUserIp      :: !(Maybe Text)
    , _pzclZoneId      :: !Text
    , _pzclKey         :: !(Maybe Text)
    , _pzclProjectId   :: !Text
    , _pzclOauthToken  :: !(Maybe Text)
    , _pzclFields      :: !(Maybe Text)
    , _pzclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzclQuotaUser'
--
-- * 'pzclPrettyPrint'
--
-- * 'pzclUserIp'
--
-- * 'pzclZoneId'
--
-- * 'pzclKey'
--
-- * 'pzclProjectId'
--
-- * 'pzclOauthToken'
--
-- * 'pzclFields'
--
-- * 'pzclAlt'
projectsZonesClustersList'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersList'
projectsZonesClustersList' pPzclZoneId_ pPzclProjectId_ =
    ProjectsZonesClustersList'
    { _pzclQuotaUser = Nothing
    , _pzclPrettyPrint = True
    , _pzclUserIp = Nothing
    , _pzclZoneId = pPzclZoneId_
    , _pzclKey = Nothing
    , _pzclProjectId = pPzclProjectId_
    , _pzclOauthToken = Nothing
    , _pzclFields = Nothing
    , _pzclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pzclQuotaUser :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclQuotaUser
  = lens _pzclQuotaUser
      (\ s a -> s{_pzclQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzclPrettyPrint :: Lens' ProjectsZonesClustersList' Bool
pzclPrettyPrint
  = lens _pzclPrettyPrint
      (\ s a -> s{_pzclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pzclUserIp :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclUserIp
  = lens _pzclUserIp (\ s a -> s{_pzclUserIp = a})

-- | The name of the Google Compute Engine zone in which the cluster resides.
pzclZoneId :: Lens' ProjectsZonesClustersList' Text
pzclZoneId
  = lens _pzclZoneId (\ s a -> s{_pzclZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzclKey :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclKey = lens _pzclKey (\ s a -> s{_pzclKey = a})

-- | The Google Developers Console project ID or project number.
pzclProjectId :: Lens' ProjectsZonesClustersList' Text
pzclProjectId
  = lens _pzclProjectId
      (\ s a -> s{_pzclProjectId = a})

-- | OAuth 2.0 token for the current user.
pzclOauthToken :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclOauthToken
  = lens _pzclOauthToken
      (\ s a -> s{_pzclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzclFields :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclFields
  = lens _pzclFields (\ s a -> s{_pzclFields = a})

-- | Data format for the response.
pzclAlt :: Lens' ProjectsZonesClustersList' Alt
pzclAlt = lens _pzclAlt (\ s a -> s{_pzclAlt = a})

instance GoogleRequest ProjectsZonesClustersList'
         where
        type Rs ProjectsZonesClustersList' =
             ListClustersResponse
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesClustersList'{..}
          = go _pzclQuotaUser (Just _pzclPrettyPrint)
              _pzclUserIp
              _pzclZoneId
              _pzclKey
              _pzclProjectId
              _pzclOauthToken
              _pzclFields
              (Just _pzclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesClustersListAPI)
                      r
                      u
