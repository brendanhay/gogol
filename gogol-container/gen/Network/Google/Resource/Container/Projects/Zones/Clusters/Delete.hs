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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the cluster, including the Kubernetes master and all worker
-- nodes. Firewalls and routes that were configured at cluster creation are
-- also deleted.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersDelete@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
    (
    -- * REST Resource
      ProjectsZonesClustersDeleteResource

    -- * Creating a Request
    , projectsZonesClustersDelete'
    , ProjectsZonesClustersDelete'

    -- * Request Lenses
    , pzcdQuotaUser
    , pzcdPrettyPrint
    , pzcdUserIP
    , pzcdZoneId
    , pzcdKey
    , pzcdClusterId
    , pzcdProjectId
    , pzcdOAuthToken
    , pzcdFields
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersDelete@ which the
-- 'ProjectsZonesClustersDelete'' request conforms to.
type ProjectsZonesClustersDeleteResource =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "clusters" :>
             Capture "clusterId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the cluster, including the Kubernetes master and all worker
-- nodes. Firewalls and routes that were configured at cluster creation are
-- also deleted.
--
-- /See:/ 'projectsZonesClustersDelete'' smart constructor.
data ProjectsZonesClustersDelete' = ProjectsZonesClustersDelete'
    { _pzcdQuotaUser   :: !(Maybe Text)
    , _pzcdPrettyPrint :: !Bool
    , _pzcdUserIP      :: !(Maybe Text)
    , _pzcdZoneId      :: !Text
    , _pzcdKey         :: !(Maybe Key)
    , _pzcdClusterId   :: !Text
    , _pzcdProjectId   :: !Text
    , _pzcdOAuthToken  :: !(Maybe OAuthToken)
    , _pzcdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzcdQuotaUser'
--
-- * 'pzcdPrettyPrint'
--
-- * 'pzcdUserIP'
--
-- * 'pzcdZoneId'
--
-- * 'pzcdKey'
--
-- * 'pzcdClusterId'
--
-- * 'pzcdProjectId'
--
-- * 'pzcdOAuthToken'
--
-- * 'pzcdFields'
projectsZonesClustersDelete'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'clusterId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersDelete'
projectsZonesClustersDelete' pPzcdZoneId_ pPzcdClusterId_ pPzcdProjectId_ =
    ProjectsZonesClustersDelete'
    { _pzcdQuotaUser = Nothing
    , _pzcdPrettyPrint = True
    , _pzcdUserIP = Nothing
    , _pzcdZoneId = pPzcdZoneId_
    , _pzcdKey = Nothing
    , _pzcdClusterId = pPzcdClusterId_
    , _pzcdProjectId = pPzcdProjectId_
    , _pzcdOAuthToken = Nothing
    , _pzcdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pzcdQuotaUser :: Lens' ProjectsZonesClustersDelete' (Maybe Text)
pzcdQuotaUser
  = lens _pzcdQuotaUser
      (\ s a -> s{_pzcdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzcdPrettyPrint :: Lens' ProjectsZonesClustersDelete' Bool
pzcdPrettyPrint
  = lens _pzcdPrettyPrint
      (\ s a -> s{_pzcdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pzcdUserIP :: Lens' ProjectsZonesClustersDelete' (Maybe Text)
pzcdUserIP
  = lens _pzcdUserIP (\ s a -> s{_pzcdUserIP = a})

-- | The name of the Google Compute Engine zone in which the cluster resides.
pzcdZoneId :: Lens' ProjectsZonesClustersDelete' Text
pzcdZoneId
  = lens _pzcdZoneId (\ s a -> s{_pzcdZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzcdKey :: Lens' ProjectsZonesClustersDelete' (Maybe Key)
pzcdKey = lens _pzcdKey (\ s a -> s{_pzcdKey = a})

-- | The name of the cluster to delete.
pzcdClusterId :: Lens' ProjectsZonesClustersDelete' Text
pzcdClusterId
  = lens _pzcdClusterId
      (\ s a -> s{_pzcdClusterId = a})

-- | The Google Developers Console project ID or project number.
pzcdProjectId :: Lens' ProjectsZonesClustersDelete' Text
pzcdProjectId
  = lens _pzcdProjectId
      (\ s a -> s{_pzcdProjectId = a})

-- | OAuth 2.0 token for the current user.
pzcdOAuthToken :: Lens' ProjectsZonesClustersDelete' (Maybe OAuthToken)
pzcdOAuthToken
  = lens _pzcdOAuthToken
      (\ s a -> s{_pzcdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzcdFields :: Lens' ProjectsZonesClustersDelete' (Maybe Text)
pzcdFields
  = lens _pzcdFields (\ s a -> s{_pzcdFields = a})

instance GoogleAuth ProjectsZonesClustersDelete'
         where
        authKey = pzcdKey . _Just
        authToken = pzcdOAuthToken . _Just

instance GoogleRequest ProjectsZonesClustersDelete'
         where
        type Rs ProjectsZonesClustersDelete' = Operation
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesClustersDelete'{..}
          = go _pzcdProjectId _pzcdZoneId _pzcdClusterId
              _pzcdQuotaUser
              (Just _pzcdPrettyPrint)
              _pzcdUserIP
              _pzcdFields
              _pzcdKey
              _pzcdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesClustersDeleteResource)
                      r
                      u
