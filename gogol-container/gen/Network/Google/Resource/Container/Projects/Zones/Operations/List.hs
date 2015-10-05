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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all operations in a project in a specific zone.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsZonesOperationsList@.
module Network.Google.Resource.Container.Projects.Zones.Operations.List
    (
    -- * REST Resource
      ProjectsZonesOperationsListResource

    -- * Creating a Request
    , projectsZonesOperationsList'
    , ProjectsZonesOperationsList'

    -- * Request Lenses
    , pzolQuotaUser
    , pzolPrettyPrint
    , pzolUserIP
    , pzolZoneId
    , pzolKey
    , pzolProjectId
    , pzolOAuthToken
    , pzolFields
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesOperationsList@ which the
-- 'ProjectsZonesOperationsList'' request conforms to.
type ProjectsZonesOperationsListResource =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "operations" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListOperationsResponse

-- | Lists all operations in a project in a specific zone.
--
-- /See:/ 'projectsZonesOperationsList'' smart constructor.
data ProjectsZonesOperationsList' = ProjectsZonesOperationsList'
    { _pzolQuotaUser   :: !(Maybe Text)
    , _pzolPrettyPrint :: !Bool
    , _pzolUserIP      :: !(Maybe Text)
    , _pzolZoneId      :: !Text
    , _pzolKey         :: !(Maybe AuthKey)
    , _pzolProjectId   :: !Text
    , _pzolOAuthToken  :: !(Maybe OAuthToken)
    , _pzolFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzolQuotaUser'
--
-- * 'pzolPrettyPrint'
--
-- * 'pzolUserIP'
--
-- * 'pzolZoneId'
--
-- * 'pzolKey'
--
-- * 'pzolProjectId'
--
-- * 'pzolOAuthToken'
--
-- * 'pzolFields'
projectsZonesOperationsList'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesOperationsList'
projectsZonesOperationsList' pPzolZoneId_ pPzolProjectId_ =
    ProjectsZonesOperationsList'
    { _pzolQuotaUser = Nothing
    , _pzolPrettyPrint = True
    , _pzolUserIP = Nothing
    , _pzolZoneId = pPzolZoneId_
    , _pzolKey = Nothing
    , _pzolProjectId = pPzolProjectId_
    , _pzolOAuthToken = Nothing
    , _pzolFields = Nothing
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
pzolUserIP :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolUserIP
  = lens _pzolUserIP (\ s a -> s{_pzolUserIP = a})

-- | The name of the Google Compute Engine zone to return operations for.
pzolZoneId :: Lens' ProjectsZonesOperationsList' Text
pzolZoneId
  = lens _pzolZoneId (\ s a -> s{_pzolZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzolKey :: Lens' ProjectsZonesOperationsList' (Maybe AuthKey)
pzolKey = lens _pzolKey (\ s a -> s{_pzolKey = a})

-- | The Google Developers Console project ID or project number.
pzolProjectId :: Lens' ProjectsZonesOperationsList' Text
pzolProjectId
  = lens _pzolProjectId
      (\ s a -> s{_pzolProjectId = a})

-- | OAuth 2.0 token for the current user.
pzolOAuthToken :: Lens' ProjectsZonesOperationsList' (Maybe OAuthToken)
pzolOAuthToken
  = lens _pzolOAuthToken
      (\ s a -> s{_pzolOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzolFields :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolFields
  = lens _pzolFields (\ s a -> s{_pzolFields = a})

instance GoogleAuth ProjectsZonesOperationsList'
         where
        authKey = pzolKey . _Just
        authToken = pzolOAuthToken . _Just

instance GoogleRequest ProjectsZonesOperationsList'
         where
        type Rs ProjectsZonesOperationsList' =
             ListOperationsResponse
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesOperationsList'{..}
          = go _pzolProjectId _pzolZoneId _pzolQuotaUser
              (Just _pzolPrettyPrint)
              _pzolUserIP
              _pzolFields
              _pzolKey
              _pzolOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesOperationsListResource)
                      r
                      u
