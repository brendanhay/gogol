{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Container.Projects.Zones.Operations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @container.projects.zones.operations.get@.
module Network.Google.API.Container.Projects.Zones.Operations.Get
    (
    -- * REST Resource
      ProjectsZonesOperationsGetAPI

    -- * Creating a Request
    , projectsZonesOperationsGet'
    , ProjectsZonesOperationsGet'

    -- * Request Lenses
    , pzogQuotaUser
    , pzogPrettyPrint
    , pzogUserIp
    , pzogZoneId
    , pzogKey
    , pzogProjectId
    , pzogOperationId
    , pzogOauthToken
    , pzogFields
    , pzogAlt
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for container.projects.zones.operations.get which the
-- 'ProjectsZonesOperationsGet'' request conforms to.
type ProjectsZonesOperationsGetAPI =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "operations" :>
             Capture "operationId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Operation

-- | Gets the specified operation.
--
-- /See:/ 'projectsZonesOperationsGet'' smart constructor.
data ProjectsZonesOperationsGet' = ProjectsZonesOperationsGet'
    { _pzogQuotaUser   :: !(Maybe Text)
    , _pzogPrettyPrint :: !Bool
    , _pzogUserIp      :: !(Maybe Text)
    , _pzogZoneId      :: !Text
    , _pzogKey         :: !(Maybe Text)
    , _pzogProjectId   :: !Text
    , _pzogOperationId :: !Text
    , _pzogOauthToken  :: !(Maybe Text)
    , _pzogFields      :: !(Maybe Text)
    , _pzogAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzogQuotaUser'
--
-- * 'pzogPrettyPrint'
--
-- * 'pzogUserIp'
--
-- * 'pzogZoneId'
--
-- * 'pzogKey'
--
-- * 'pzogProjectId'
--
-- * 'pzogOperationId'
--
-- * 'pzogOauthToken'
--
-- * 'pzogFields'
--
-- * 'pzogAlt'
projectsZonesOperationsGet'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'operationId'
    -> ProjectsZonesOperationsGet'
projectsZonesOperationsGet' pPzogZoneId_ pPzogProjectId_ pPzogOperationId_ =
    ProjectsZonesOperationsGet'
    { _pzogQuotaUser = Nothing
    , _pzogPrettyPrint = True
    , _pzogUserIp = Nothing
    , _pzogZoneId = pPzogZoneId_
    , _pzogKey = Nothing
    , _pzogProjectId = pPzogProjectId_
    , _pzogOperationId = pPzogOperationId_
    , _pzogOauthToken = Nothing
    , _pzogFields = Nothing
    , _pzogAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pzogQuotaUser :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogQuotaUser
  = lens _pzogQuotaUser
      (\ s a -> s{_pzogQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzogPrettyPrint :: Lens' ProjectsZonesOperationsGet' Bool
pzogPrettyPrint
  = lens _pzogPrettyPrint
      (\ s a -> s{_pzogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pzogUserIp :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogUserIp
  = lens _pzogUserIp (\ s a -> s{_pzogUserIp = a})

-- | The name of the Google Compute Engine zone in which the operation
-- resides. This is always the same zone as the cluster with which the
-- operation is associated.
pzogZoneId :: Lens' ProjectsZonesOperationsGet' Text
pzogZoneId
  = lens _pzogZoneId (\ s a -> s{_pzogZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzogKey :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogKey = lens _pzogKey (\ s a -> s{_pzogKey = a})

-- | The Google Developers Console project ID or project number.
pzogProjectId :: Lens' ProjectsZonesOperationsGet' Text
pzogProjectId
  = lens _pzogProjectId
      (\ s a -> s{_pzogProjectId = a})

-- | The server-assigned name of the operation.
pzogOperationId :: Lens' ProjectsZonesOperationsGet' Text
pzogOperationId
  = lens _pzogOperationId
      (\ s a -> s{_pzogOperationId = a})

-- | OAuth 2.0 token for the current user.
pzogOauthToken :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogOauthToken
  = lens _pzogOauthToken
      (\ s a -> s{_pzogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzogFields :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogFields
  = lens _pzogFields (\ s a -> s{_pzogFields = a})

-- | Data format for the response.
pzogAlt :: Lens' ProjectsZonesOperationsGet' Alt
pzogAlt = lens _pzogAlt (\ s a -> s{_pzogAlt = a})

instance GoogleRequest ProjectsZonesOperationsGet'
         where
        type Rs ProjectsZonesOperationsGet' = Operation
        request = requestWithRoute defReq containerURL
        requestWithRoute r u ProjectsZonesOperationsGet'{..}
          = go _pzogQuotaUser (Just _pzogPrettyPrint)
              _pzogUserIp
              _pzogZoneId
              _pzogKey
              _pzogProjectId
              _pzogOperationId
              _pzogOauthToken
              _pzogFields
              (Just _pzogAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsZonesOperationsGetAPI)
                      r
                      u
