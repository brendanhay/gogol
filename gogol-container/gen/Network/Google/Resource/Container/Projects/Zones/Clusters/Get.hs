{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersGet@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Get
    (
    -- * REST Resource
      ProjectsZonesClustersGetResource

    -- * Creating a Request
    , projectsZonesClustersGet'
    , ProjectsZonesClustersGet'

    -- * Request Lenses
    , pzcgQuotaUser
    , pzcgPrettyPrint
    , pzcgUserIp
    , pzcgZoneId
    , pzcgKey
    , pzcgClusterId
    , pzcgProjectId
    , pzcgOauthToken
    , pzcgFields
    , pzcgAlt
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersGet@ which the
-- 'ProjectsZonesClustersGet'' request conforms to.
type ProjectsZonesClustersGetResource =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "clusters" :>
             Capture "clusterId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Cluster

-- | Gets a specific cluster.
--
-- /See:/ 'projectsZonesClustersGet'' smart constructor.
data ProjectsZonesClustersGet' = ProjectsZonesClustersGet'
    { _pzcgQuotaUser   :: !(Maybe Text)
    , _pzcgPrettyPrint :: !Bool
    , _pzcgUserIp      :: !(Maybe Text)
    , _pzcgZoneId      :: !Text
    , _pzcgKey         :: !(Maybe Text)
    , _pzcgClusterId   :: !Text
    , _pzcgProjectId   :: !Text
    , _pzcgOauthToken  :: !(Maybe Text)
    , _pzcgFields      :: !(Maybe Text)
    , _pzcgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcgQuotaUser'
--
-- * 'pzcgPrettyPrint'
--
-- * 'pzcgUserIp'
--
-- * 'pzcgZoneId'
--
-- * 'pzcgKey'
--
-- * 'pzcgClusterId'
--
-- * 'pzcgProjectId'
--
-- * 'pzcgOauthToken'
--
-- * 'pzcgFields'
--
-- * 'pzcgAlt'
projectsZonesClustersGet'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'clusterId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersGet'
projectsZonesClustersGet' pPzcgZoneId_ pPzcgClusterId_ pPzcgProjectId_ =
    ProjectsZonesClustersGet'
    { _pzcgQuotaUser = Nothing
    , _pzcgPrettyPrint = True
    , _pzcgUserIp = Nothing
    , _pzcgZoneId = pPzcgZoneId_
    , _pzcgKey = Nothing
    , _pzcgClusterId = pPzcgClusterId_
    , _pzcgProjectId = pPzcgProjectId_
    , _pzcgOauthToken = Nothing
    , _pzcgFields = Nothing
    , _pzcgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pzcgQuotaUser :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgQuotaUser
  = lens _pzcgQuotaUser
      (\ s a -> s{_pzcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzcgPrettyPrint :: Lens' ProjectsZonesClustersGet' Bool
pzcgPrettyPrint
  = lens _pzcgPrettyPrint
      (\ s a -> s{_pzcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pzcgUserIp :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgUserIp
  = lens _pzcgUserIp (\ s a -> s{_pzcgUserIp = a})

-- | The name of the Google Compute Engine zone in which the cluster resides.
pzcgZoneId :: Lens' ProjectsZonesClustersGet' Text
pzcgZoneId
  = lens _pzcgZoneId (\ s a -> s{_pzcgZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzcgKey :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgKey = lens _pzcgKey (\ s a -> s{_pzcgKey = a})

-- | The name of the cluster to retrieve.
pzcgClusterId :: Lens' ProjectsZonesClustersGet' Text
pzcgClusterId
  = lens _pzcgClusterId
      (\ s a -> s{_pzcgClusterId = a})

-- | The Google Developers Console project ID or project number.
pzcgProjectId :: Lens' ProjectsZonesClustersGet' Text
pzcgProjectId
  = lens _pzcgProjectId
      (\ s a -> s{_pzcgProjectId = a})

-- | OAuth 2.0 token for the current user.
pzcgOauthToken :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgOauthToken
  = lens _pzcgOauthToken
      (\ s a -> s{_pzcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzcgFields :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgFields
  = lens _pzcgFields (\ s a -> s{_pzcgFields = a})

-- | Data format for the response.
pzcgAlt :: Lens' ProjectsZonesClustersGet' Alt
pzcgAlt = lens _pzcgAlt (\ s a -> s{_pzcgAlt = a})

instance GoogleRequest ProjectsZonesClustersGet'
         where
        type Rs ProjectsZonesClustersGet' = Cluster
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesClustersGet'{..}
          = go _pzcgQuotaUser (Just _pzcgPrettyPrint)
              _pzcgUserIp
              _pzcgZoneId
              _pzcgKey
              _pzcgClusterId
              _pzcgProjectId
              _pzcgOauthToken
              _pzcgFields
              (Just _pzcgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesClustersGetResource)
                      r
                      u
