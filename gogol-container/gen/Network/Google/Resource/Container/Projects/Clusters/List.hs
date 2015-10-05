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
-- Module      : Network.Google.Resource.Container.Projects.Clusters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all clusters owned by a project across all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsClustersList@.
module Network.Google.Resource.Container.Projects.Clusters.List
    (
    -- * REST Resource
      ProjectsClustersListResource

    -- * Creating a Request
    , projectsClustersList'
    , ProjectsClustersList'

    -- * Request Lenses
    , pclQuotaUser
    , pclPrettyPrint
    , pclUserIP
    , pclKey
    , pclProjectId
    , pclOAuthToken
    , pclFields
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @ContainerProjectsClustersList@ which the
-- 'ProjectsClustersList'' request conforms to.
type ProjectsClustersListResource =
     Capture "projectId" Text :>
       "clusters" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListAggregatedClustersResponse

-- | Lists all clusters owned by a project across all zones.
--
-- /See:/ 'projectsClustersList'' smart constructor.
data ProjectsClustersList' = ProjectsClustersList'
    { _pclQuotaUser :: !(Maybe Text)
    , _pclPrettyPrint :: !Bool
    , _pclUserIP :: !(Maybe Text)
    , _pclKey :: !(Maybe Key)
    , _pclProjectId :: !Text
    , _pclOAuthToken :: !(Maybe OAuthToken)
    , _pclFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsClustersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclQuotaUser'
--
-- * 'pclPrettyPrint'
--
-- * 'pclUserIP'
--
-- * 'pclKey'
--
-- * 'pclProjectId'
--
-- * 'pclOAuthToken'
--
-- * 'pclFields'
projectsClustersList'
    :: Text -- ^ 'projectId'
    -> ProjectsClustersList'
projectsClustersList' pPclProjectId_ = 
    ProjectsClustersList'
    { _pclQuotaUser = Nothing
    , _pclPrettyPrint = True
    , _pclUserIP = Nothing
    , _pclKey = Nothing
    , _pclProjectId = pPclProjectId_
    , _pclOAuthToken = Nothing
    , _pclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pclQuotaUser :: Lens' ProjectsClustersList' (Maybe Text)
pclQuotaUser
  = lens _pclQuotaUser (\ s a -> s{_pclQuotaUser = a})

-- | Returns response with indentations and line breaks.
pclPrettyPrint :: Lens' ProjectsClustersList' Bool
pclPrettyPrint
  = lens _pclPrettyPrint
      (\ s a -> s{_pclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pclUserIP :: Lens' ProjectsClustersList' (Maybe Text)
pclUserIP
  = lens _pclUserIP (\ s a -> s{_pclUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pclKey :: Lens' ProjectsClustersList' (Maybe Key)
pclKey = lens _pclKey (\ s a -> s{_pclKey = a})

-- | The Google Developers Console project ID or project number.
pclProjectId :: Lens' ProjectsClustersList' Text
pclProjectId
  = lens _pclProjectId (\ s a -> s{_pclProjectId = a})

-- | OAuth 2.0 token for the current user.
pclOAuthToken :: Lens' ProjectsClustersList' (Maybe OAuthToken)
pclOAuthToken
  = lens _pclOAuthToken
      (\ s a -> s{_pclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pclFields :: Lens' ProjectsClustersList' (Maybe Text)
pclFields
  = lens _pclFields (\ s a -> s{_pclFields = a})

instance GoogleAuth ProjectsClustersList' where
        authKey = pclKey . _Just
        authToken = pclOAuthToken . _Just

instance GoogleRequest ProjectsClustersList' where
        type Rs ProjectsClustersList' =
             ListAggregatedClustersResponse
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsClustersList'{..}
          = go _pclProjectId _pclQuotaUser
              (Just _pclPrettyPrint)
              _pclUserIP
              _pclFields
              _pclKey
              _pclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsClustersListResource)
                      r
                      u
