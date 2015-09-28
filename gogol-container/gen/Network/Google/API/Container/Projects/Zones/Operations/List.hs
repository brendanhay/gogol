{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Container.Projects.Zones.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all operations in a project in a specific zone.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @container.projects.zones.operations.list@.
module Network.Google.API.Container.Projects.Zones.Operations.List
    (
    -- * REST Resource
      ProjectsZonesOperationsListAPI

    -- * Creating a Request
    , projectsZonesOperationsList'
    , ProjectsZonesOperationsList'

    -- * Request Lenses
    , pzolQuotaUser
    , pzolPrettyPrint
    , pzolUserIp
    , pzolZoneId
    , pzolKey
    , pzolProjectId
    , pzolOauthToken
    , pzolFields
    , pzolAlt
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for container.projects.zones.operations.list which the
-- 'ProjectsZonesOperationsList'' request conforms to.
type ProjectsZonesOperationsListAPI =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "operations" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] ListOperationsResponse

-- | Lists all operations in a project in a specific zone.
--
-- /See:/ 'projectsZonesOperationsList'' smart constructor.
data ProjectsZonesOperationsList' = ProjectsZonesOperationsList'
    { _pzolQuotaUser   :: !(Maybe Text)
    , _pzolPrettyPrint :: !Bool
    , _pzolUserIp      :: !(Maybe Text)
    , _pzolZoneId      :: !Text
    , _pzolKey         :: !(Maybe Text)
    , _pzolProjectId   :: !Text
    , _pzolOauthToken  :: !(Maybe Text)
    , _pzolFields      :: !(Maybe Text)
    , _pzolAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzolQuotaUser'
--
-- * 'pzolPrettyPrint'
--
-- * 'pzolUserIp'
--
-- * 'pzolZoneId'
--
-- * 'pzolKey'
--
-- * 'pzolProjectId'
--
-- * 'pzolOauthToken'
--
-- * 'pzolFields'
--
-- * 'pzolAlt'
projectsZonesOperationsList'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesOperationsList'
projectsZonesOperationsList' pPzolZoneId_ pPzolProjectId_ =
    ProjectsZonesOperationsList'
    { _pzolQuotaUser = Nothing
    , _pzolPrettyPrint = True
    , _pzolUserIp = Nothing
    , _pzolZoneId = pPzolZoneId_
    , _pzolKey = Nothing
    , _pzolProjectId = pPzolProjectId_
    , _pzolOauthToken = Nothing
    , _pzolFields = Nothing
    , _pzolAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pzolQuotaUser :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolQuotaUser
  = lens _pzolQuotaUser
      (\ s a -> s{_pzolQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzolPrettyPrint :: Lens' ProjectsZonesOperationsList' Bool
pzolPrettyPrint
  = lens _pzolPrettyPrint
      (\ s a -> s{_pzolPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pzolUserIp :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolUserIp
  = lens _pzolUserIp (\ s a -> s{_pzolUserIp = a})

-- | The name of the Google Compute Engine zone to return operations for.
pzolZoneId :: Lens' ProjectsZonesOperationsList' Text
pzolZoneId
  = lens _pzolZoneId (\ s a -> s{_pzolZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzolKey :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolKey = lens _pzolKey (\ s a -> s{_pzolKey = a})

-- | The Google Developers Console project ID or project number.
pzolProjectId :: Lens' ProjectsZonesOperationsList' Text
pzolProjectId
  = lens _pzolProjectId
      (\ s a -> s{_pzolProjectId = a})

-- | OAuth 2.0 token for the current user.
pzolOauthToken :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolOauthToken
  = lens _pzolOauthToken
      (\ s a -> s{_pzolOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzolFields :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolFields
  = lens _pzolFields (\ s a -> s{_pzolFields = a})

-- | Data format for the response.
pzolAlt :: Lens' ProjectsZonesOperationsList' Alt
pzolAlt = lens _pzolAlt (\ s a -> s{_pzolAlt = a})

instance GoogleRequest ProjectsZonesOperationsList'
         where
        type Rs ProjectsZonesOperationsList' =
             ListOperationsResponse
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesOperationsList'{..}
          = go _pzolQuotaUser (Just _pzolPrettyPrint)
              _pzolUserIp
              _pzolZoneId
              _pzolKey
              _pzolProjectId
              _pzolOauthToken
              _pzolFields
              (Just _pzolAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesOperationsListAPI)
                      r
                      u
