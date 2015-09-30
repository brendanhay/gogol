{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersPermissionsList@.
module Mapsengine.Rasters.Permissions.List
    (
    -- * REST Resource
      RastersPermissionsListAPI

    -- * Creating a Request
    , rastersPermissionsList
    , RastersPermissionsList

    -- * Request Lenses
    , rasQuotaUser
    , rasPrettyPrint
    , rasUserIp
    , rasKey
    , rasId
    , rasOauthToken
    , rasFields
    , rasAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersPermissionsList@ which the
-- 'RastersPermissionsList' request conforms to.
type RastersPermissionsListAPI =
     "rasters" :>
       Capture "id" Text :>
         "permissions" :> Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'rastersPermissionsList' smart constructor.
data RastersPermissionsList = RastersPermissionsList
    { _rasQuotaUser   :: !(Maybe Text)
    , _rasPrettyPrint :: !Bool
    , _rasUserIp      :: !(Maybe Text)
    , _rasKey         :: !(Maybe Text)
    , _rasId          :: !Text
    , _rasOauthToken  :: !(Maybe Text)
    , _rasFields      :: !(Maybe Text)
    , _rasAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rasQuotaUser'
--
-- * 'rasPrettyPrint'
--
-- * 'rasUserIp'
--
-- * 'rasKey'
--
-- * 'rasId'
--
-- * 'rasOauthToken'
--
-- * 'rasFields'
--
-- * 'rasAlt'
rastersPermissionsList
    :: Text -- ^ 'id'
    -> RastersPermissionsList
rastersPermissionsList pRasId_ =
    RastersPermissionsList
    { _rasQuotaUser = Nothing
    , _rasPrettyPrint = True
    , _rasUserIp = Nothing
    , _rasKey = Nothing
    , _rasId = pRasId_
    , _rasOauthToken = Nothing
    , _rasFields = Nothing
    , _rasAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rasQuotaUser :: Lens' RastersPermissionsList' (Maybe Text)
rasQuotaUser
  = lens _rasQuotaUser (\ s a -> s{_rasQuotaUser = a})

-- | Returns response with indentations and line breaks.
rasPrettyPrint :: Lens' RastersPermissionsList' Bool
rasPrettyPrint
  = lens _rasPrettyPrint
      (\ s a -> s{_rasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rasUserIp :: Lens' RastersPermissionsList' (Maybe Text)
rasUserIp
  = lens _rasUserIp (\ s a -> s{_rasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rasKey :: Lens' RastersPermissionsList' (Maybe Text)
rasKey = lens _rasKey (\ s a -> s{_rasKey = a})

-- | The ID of the asset whose permissions will be listed.
rasId :: Lens' RastersPermissionsList' Text
rasId = lens _rasId (\ s a -> s{_rasId = a})

-- | OAuth 2.0 token for the current user.
rasOauthToken :: Lens' RastersPermissionsList' (Maybe Text)
rasOauthToken
  = lens _rasOauthToken
      (\ s a -> s{_rasOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rasFields :: Lens' RastersPermissionsList' (Maybe Text)
rasFields
  = lens _rasFields (\ s a -> s{_rasFields = a})

-- | Data format for the response.
rasAlt :: Lens' RastersPermissionsList' Text
rasAlt = lens _rasAlt (\ s a -> s{_rasAlt = a})

instance GoogleRequest RastersPermissionsList' where
        type Rs RastersPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersPermissionsList{..}
          = go _rasQuotaUser _rasPrettyPrint _rasUserIp _rasKey
              _rasId
              _rasOauthToken
              _rasFields
              _rasAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersPermissionsListAPI)
                      r
                      u
