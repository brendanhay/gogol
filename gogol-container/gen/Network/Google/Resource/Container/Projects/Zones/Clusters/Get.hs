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
    , pzcgUserIP
    , pzcgZoneId
    , pzcgKey
    , pzcgClusterId
    , pzcgProjectId
    , pzcgOAuthToken
    , pzcgFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Cluster

-- | Gets a specific cluster.
--
-- /See:/ 'projectsZonesClustersGet'' smart constructor.
data ProjectsZonesClustersGet' = ProjectsZonesClustersGet'
    { _pzcgQuotaUser   :: !(Maybe Text)
    , _pzcgPrettyPrint :: !Bool
    , _pzcgUserIP      :: !(Maybe Text)
    , _pzcgZoneId      :: !Text
    , _pzcgKey         :: !(Maybe AuthKey)
    , _pzcgClusterId   :: !Text
    , _pzcgProjectId   :: !Text
    , _pzcgOAuthToken  :: !(Maybe OAuthToken)
    , _pzcgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcgQuotaUser'
--
-- * 'pzcgPrettyPrint'
--
-- * 'pzcgUserIP'
--
-- * 'pzcgZoneId'
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
projectsZonesClustersGet'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'clusterId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersGet'
projectsZonesClustersGet' pPzcgZoneId_ pPzcgClusterId_ pPzcgProjectId_ =
    ProjectsZonesClustersGet'
    { _pzcgQuotaUser = Nothing
    , _pzcgPrettyPrint = True
    , _pzcgUserIP = Nothing
    , _pzcgZoneId = pPzcgZoneId_
    , _pzcgKey = Nothing
    , _pzcgClusterId = pPzcgClusterId_
    , _pzcgProjectId = pPzcgProjectId_
    , _pzcgOAuthToken = Nothing
    , _pzcgFields = Nothing
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
pzcgUserIP :: Lens' ProjectsZonesClustersGet' (Maybe Text)
pzcgUserIP
  = lens _pzcgUserIP (\ s a -> s{_pzcgUserIP = a})

-- | The name of the Google Compute Engine zone in which the cluster resides.
pzcgZoneId :: Lens' ProjectsZonesClustersGet' Text
pzcgZoneId
  = lens _pzcgZoneId (\ s a -> s{_pzcgZoneId = a})

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

-- | The Google Developers Console project ID or project number.
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

instance GoogleAuth ProjectsZonesClustersGet' where
        authKey = pzcgKey . _Just
        authToken = pzcgOAuthToken . _Just

instance GoogleRequest ProjectsZonesClustersGet'
         where
        type Rs ProjectsZonesClustersGet' = Cluster
        request = requestWith containerRequest
        requestWith rq ProjectsZonesClustersGet'{..}
          = go _pzcgProjectId _pzcgZoneId _pzcgClusterId
              _pzcgQuotaUser
              (Just _pzcgPrettyPrint)
              _pzcgUserIP
              _pzcgFields
              _pzcgKey
              _pzcgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsZonesClustersGetResource)
                      rq
