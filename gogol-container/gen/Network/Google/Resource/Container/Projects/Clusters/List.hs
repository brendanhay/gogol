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
    , pclUserIp
    , pclKey
    , pclProjectId
    , pclOauthToken
    , pclFields
    , pclAlt
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsClustersList@ which the
-- 'ProjectsClustersList'' request conforms to.
type ProjectsClustersListResource =
     Capture "projectId" Text :>
       "clusters" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] ListAggregatedClustersResponse

-- | Lists all clusters owned by a project across all zones.
--
-- /See:/ 'projectsClustersList'' smart constructor.
data ProjectsClustersList' = ProjectsClustersList'
    { _pclQuotaUser   :: !(Maybe Text)
    , _pclPrettyPrint :: !Bool
    , _pclUserIp      :: !(Maybe Text)
    , _pclKey         :: !(Maybe Text)
    , _pclProjectId   :: !Text
    , _pclOauthToken  :: !(Maybe Text)
    , _pclFields      :: !(Maybe Text)
    , _pclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsClustersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclQuotaUser'
--
-- * 'pclPrettyPrint'
--
-- * 'pclUserIp'
--
-- * 'pclKey'
--
-- * 'pclProjectId'
--
-- * 'pclOauthToken'
--
-- * 'pclFields'
--
-- * 'pclAlt'
projectsClustersList'
    :: Text -- ^ 'projectId'
    -> ProjectsClustersList'
projectsClustersList' pPclProjectId_ =
    ProjectsClustersList'
    { _pclQuotaUser = Nothing
    , _pclPrettyPrint = True
    , _pclUserIp = Nothing
    , _pclKey = Nothing
    , _pclProjectId = pPclProjectId_
    , _pclOauthToken = Nothing
    , _pclFields = Nothing
    , _pclAlt = JSON
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
pclUserIp :: Lens' ProjectsClustersList' (Maybe Text)
pclUserIp
  = lens _pclUserIp (\ s a -> s{_pclUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pclKey :: Lens' ProjectsClustersList' (Maybe Text)
pclKey = lens _pclKey (\ s a -> s{_pclKey = a})

-- | The Google Developers Console project ID or project number.
pclProjectId :: Lens' ProjectsClustersList' Text
pclProjectId
  = lens _pclProjectId (\ s a -> s{_pclProjectId = a})

-- | OAuth 2.0 token for the current user.
pclOauthToken :: Lens' ProjectsClustersList' (Maybe Text)
pclOauthToken
  = lens _pclOauthToken
      (\ s a -> s{_pclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pclFields :: Lens' ProjectsClustersList' (Maybe Text)
pclFields
  = lens _pclFields (\ s a -> s{_pclFields = a})

-- | Data format for the response.
pclAlt :: Lens' ProjectsClustersList' Alt
pclAlt = lens _pclAlt (\ s a -> s{_pclAlt = a})

instance GoogleRequest ProjectsClustersList' where
        type Rs ProjectsClustersList' =
             ListAggregatedClustersResponse
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsClustersList'{..}
          = go _pclQuotaUser (Just _pclPrettyPrint) _pclUserIp
              _pclKey
              _pclProjectId
              _pclOauthToken
              _pclFields
              (Just _pclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsClustersListResource)
                      r
                      u
