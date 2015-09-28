{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Container.Projects.Zones.Clusters.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances, plus a Kubernetes master instance. The cluster
-- is created in the project\'s default network. A firewall is added that
-- allows traffic into port 443 on the master, which enables HTTPS. A
-- firewall and a route is added for each node to allow the containers on
-- that node to communicate with all other instances in the cluster.
-- Finally, an entry is added to the project\'s global metadata indicating
-- which CIDR range is being used by the cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @container.projects.zones.clusters.create@.
module Network.Google.API.Container.Projects.Zones.Clusters.Create
    (
    -- * REST Resource
      ProjectsZonesClustersCreateAPI

    -- * Creating a Request
    , projectsZonesClustersCreate'
    , ProjectsZonesClustersCreate'

    -- * Request Lenses
    , pzccQuotaUser
    , pzccPrettyPrint
    , pzccUserIp
    , pzccZoneId
    , pzccKey
    , pzccProjectId
    , pzccOauthToken
    , pzccFields
    , pzccAlt
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for container.projects.zones.clusters.create which the
-- 'ProjectsZonesClustersCreate'' request conforms to.
type ProjectsZonesClustersCreateAPI =
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
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances, plus a Kubernetes master instance. The cluster
-- is created in the project\'s default network. A firewall is added that
-- allows traffic into port 443 on the master, which enables HTTPS. A
-- firewall and a route is added for each node to allow the containers on
-- that node to communicate with all other instances in the cluster.
-- Finally, an entry is added to the project\'s global metadata indicating
-- which CIDR range is being used by the cluster.
--
-- /See:/ 'projectsZonesClustersCreate'' smart constructor.
data ProjectsZonesClustersCreate' = ProjectsZonesClustersCreate'
    { _pzccQuotaUser   :: !(Maybe Text)
    , _pzccPrettyPrint :: !Bool
    , _pzccUserIp      :: !(Maybe Text)
    , _pzccZoneId      :: !Text
    , _pzccKey         :: !(Maybe Text)
    , _pzccProjectId   :: !Text
    , _pzccOauthToken  :: !(Maybe Text)
    , _pzccFields      :: !(Maybe Text)
    , _pzccAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzccQuotaUser'
--
-- * 'pzccPrettyPrint'
--
-- * 'pzccUserIp'
--
-- * 'pzccZoneId'
--
-- * 'pzccKey'
--
-- * 'pzccProjectId'
--
-- * 'pzccOauthToken'
--
-- * 'pzccFields'
--
-- * 'pzccAlt'
projectsZonesClustersCreate'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersCreate'
projectsZonesClustersCreate' pPzccZoneId_ pPzccProjectId_ =
    ProjectsZonesClustersCreate'
    { _pzccQuotaUser = Nothing
    , _pzccPrettyPrint = True
    , _pzccUserIp = Nothing
    , _pzccZoneId = pPzccZoneId_
    , _pzccKey = Nothing
    , _pzccProjectId = pPzccProjectId_
    , _pzccOauthToken = Nothing
    , _pzccFields = Nothing
    , _pzccAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pzccQuotaUser :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccQuotaUser
  = lens _pzccQuotaUser
      (\ s a -> s{_pzccQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzccPrettyPrint :: Lens' ProjectsZonesClustersCreate' Bool
pzccPrettyPrint
  = lens _pzccPrettyPrint
      (\ s a -> s{_pzccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pzccUserIp :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccUserIp
  = lens _pzccUserIp (\ s a -> s{_pzccUserIp = a})

-- | The name of the Google Compute Engine zone in which the cluster resides.
pzccZoneId :: Lens' ProjectsZonesClustersCreate' Text
pzccZoneId
  = lens _pzccZoneId (\ s a -> s{_pzccZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzccKey :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccKey = lens _pzccKey (\ s a -> s{_pzccKey = a})

-- | The Google Developers Console project ID or project number.
pzccProjectId :: Lens' ProjectsZonesClustersCreate' Text
pzccProjectId
  = lens _pzccProjectId
      (\ s a -> s{_pzccProjectId = a})

-- | OAuth 2.0 token for the current user.
pzccOauthToken :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccOauthToken
  = lens _pzccOauthToken
      (\ s a -> s{_pzccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzccFields :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccFields
  = lens _pzccFields (\ s a -> s{_pzccFields = a})

-- | Data format for the response.
pzccAlt :: Lens' ProjectsZonesClustersCreate' Alt
pzccAlt = lens _pzccAlt (\ s a -> s{_pzccAlt = a})

instance GoogleRequest ProjectsZonesClustersCreate'
         where
        type Rs ProjectsZonesClustersCreate' = Operation
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesClustersCreate'{..}
          = go _pzccQuotaUser (Just _pzccPrettyPrint)
              _pzccUserIp
              _pzccZoneId
              _pzccKey
              _pzccProjectId
              _pzccOauthToken
              _pzccFields
              (Just _pzccAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesClustersCreateAPI)
                      r
                      u
