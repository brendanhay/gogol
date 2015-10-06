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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Create
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
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersCreate@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Create
    (
    -- * REST Resource
      ProjectsZonesClustersCreateResource

    -- * Creating a Request
    , projectsZonesClustersCreate'
    , ProjectsZonesClustersCreate'

    -- * Request Lenses
    , pzccQuotaUser
    , pzccPrettyPrint
    , pzccUserIP
    , pzccZoneId
    , pzccPayload
    , pzccKey
    , pzccProjectId
    , pzccOAuthToken
    , pzccFields
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersCreate@ which the
-- 'ProjectsZonesClustersCreate'' request conforms to.
type ProjectsZonesClustersCreateResource =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "clusters" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CreateClusterRequest :>
                             Post '[JSON] Operation

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
    , _pzccUserIP      :: !(Maybe Text)
    , _pzccZoneId      :: !Text
    , _pzccPayload     :: !CreateClusterRequest
    , _pzccKey         :: !(Maybe AuthKey)
    , _pzccProjectId   :: !Text
    , _pzccOAuthToken  :: !(Maybe OAuthToken)
    , _pzccFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzccQuotaUser'
--
-- * 'pzccPrettyPrint'
--
-- * 'pzccUserIP'
--
-- * 'pzccZoneId'
--
-- * 'pzccPayload'
--
-- * 'pzccKey'
--
-- * 'pzccProjectId'
--
-- * 'pzccOAuthToken'
--
-- * 'pzccFields'
projectsZonesClustersCreate'
    :: Text -- ^ 'zoneId'
    -> CreateClusterRequest -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersCreate'
projectsZonesClustersCreate' pPzccZoneId_ pPzccPayload_ pPzccProjectId_ =
    ProjectsZonesClustersCreate'
    { _pzccQuotaUser = Nothing
    , _pzccPrettyPrint = True
    , _pzccUserIP = Nothing
    , _pzccZoneId = pPzccZoneId_
    , _pzccPayload = pPzccPayload_
    , _pzccKey = Nothing
    , _pzccProjectId = pPzccProjectId_
    , _pzccOAuthToken = Nothing
    , _pzccFields = Nothing
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
pzccUserIP :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccUserIP
  = lens _pzccUserIP (\ s a -> s{_pzccUserIP = a})

-- | The name of the Google Compute Engine zone in which the cluster resides.
pzccZoneId :: Lens' ProjectsZonesClustersCreate' Text
pzccZoneId
  = lens _pzccZoneId (\ s a -> s{_pzccZoneId = a})

-- | Multipart request metadata.
pzccPayload :: Lens' ProjectsZonesClustersCreate' CreateClusterRequest
pzccPayload
  = lens _pzccPayload (\ s a -> s{_pzccPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzccKey :: Lens' ProjectsZonesClustersCreate' (Maybe AuthKey)
pzccKey = lens _pzccKey (\ s a -> s{_pzccKey = a})

-- | The Google Developers Console project ID or project number.
pzccProjectId :: Lens' ProjectsZonesClustersCreate' Text
pzccProjectId
  = lens _pzccProjectId
      (\ s a -> s{_pzccProjectId = a})

-- | OAuth 2.0 token for the current user.
pzccOAuthToken :: Lens' ProjectsZonesClustersCreate' (Maybe OAuthToken)
pzccOAuthToken
  = lens _pzccOAuthToken
      (\ s a -> s{_pzccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzccFields :: Lens' ProjectsZonesClustersCreate' (Maybe Text)
pzccFields
  = lens _pzccFields (\ s a -> s{_pzccFields = a})

instance GoogleAuth ProjectsZonesClustersCreate'
         where
        authKey = pzccKey . _Just
        authToken = pzccOAuthToken . _Just

instance GoogleRequest ProjectsZonesClustersCreate'
         where
        type Rs ProjectsZonesClustersCreate' = Operation
        request = requestWith containerRequest
        requestWith rq ProjectsZonesClustersCreate'{..}
          = go _pzccProjectId _pzccZoneId _pzccQuotaUser
              (Just _pzccPrettyPrint)
              _pzccUserIP
              _pzccFields
              _pzccKey
              _pzccOAuthToken
              (Just AltJSON)
              _pzccPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsZonesClustersCreateResource)
                      rq
