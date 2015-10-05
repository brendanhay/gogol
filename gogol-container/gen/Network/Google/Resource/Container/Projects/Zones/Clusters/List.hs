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
-- | Lists all clusters owned by a project in the specified zone.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsZonesClustersList@.
module Network.Google.Resource.Container.Projects.Zones.Clusters.List
    (
    -- * REST Resource
      ProjectsZonesClustersListResource

    -- * Creating a Request
    , projectsZonesClustersList'
    , ProjectsZonesClustersList'

    -- * Request Lenses
    , pzclQuotaUser
    , pzclPrettyPrint
    , pzclUserIP
    , pzclZoneId
    , pzclKey
    , pzclProjectId
    , pzclOAuthToken
    , pzclFields
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesClustersList@ which the
-- 'ProjectsZonesClustersList'' request conforms to.
type ProjectsZonesClustersListResource =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "clusters" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListClustersResponse

-- | Lists all clusters owned by a project in the specified zone.
--
-- /See:/ 'projectsZonesClustersList'' smart constructor.
data ProjectsZonesClustersList' = ProjectsZonesClustersList'
    { _pzclQuotaUser :: !(Maybe Text)
    , _pzclPrettyPrint :: !Bool
    , _pzclUserIP :: !(Maybe Text)
    , _pzclZoneId :: !Text
    , _pzclKey :: !(Maybe Key)
    , _pzclProjectId :: !Text
    , _pzclOAuthToken :: !(Maybe OAuthToken)
    , _pzclFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesClustersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzclQuotaUser'
--
-- * 'pzclPrettyPrint'
--
-- * 'pzclUserIP'
--
-- * 'pzclZoneId'
--
-- * 'pzclKey'
--
-- * 'pzclProjectId'
--
-- * 'pzclOAuthToken'
--
-- * 'pzclFields'
projectsZonesClustersList'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesClustersList'
projectsZonesClustersList' pPzclZoneId_ pPzclProjectId_ = 
    ProjectsZonesClustersList'
    { _pzclQuotaUser = Nothing
    , _pzclPrettyPrint = True
    , _pzclUserIP = Nothing
    , _pzclZoneId = pPzclZoneId_
    , _pzclKey = Nothing
    , _pzclProjectId = pPzclProjectId_
    , _pzclOAuthToken = Nothing
    , _pzclFields = Nothing
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
pzclUserIP :: Lens' ProjectsZonesClustersList' (Maybe Text)
pzclUserIP
  = lens _pzclUserIP (\ s a -> s{_pzclUserIP = a})

-- | The name of the Google Compute Engine zone in which the cluster resides.
pzclZoneId :: Lens' ProjectsZonesClustersList' Text
pzclZoneId
  = lens _pzclZoneId (\ s a -> s{_pzclZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzclKey :: Lens' ProjectsZonesClustersList' (Maybe Key)
pzclKey = lens _pzclKey (\ s a -> s{_pzclKey = a})

-- | The Google Developers Console project ID or project number.
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

instance GoogleAuth ProjectsZonesClustersList' where
        authKey = pzclKey . _Just
        authToken = pzclOAuthToken . _Just

instance GoogleRequest ProjectsZonesClustersList'
         where
        type Rs ProjectsZonesClustersList' =
             ListClustersResponse
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesClustersList'{..}
          = go _pzclProjectId _pzclZoneId _pzclQuotaUser
              (Just _pzclPrettyPrint)
              _pzclUserIP
              _pzclFields
              _pzclKey
              _pzclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesClustersListResource)
                      r
                      u
