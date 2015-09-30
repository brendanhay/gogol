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
-- Module      : Network.Google.Resource.Mapsengine.Maps.Permissions.BatchUpdate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsPermissionsBatchUpdate@.
module Network.Google.Resource.Mapsengine.Maps.Permissions.BatchUpdate
    (
    -- * REST Resource
      MapsPermissionsBatchUpdateResource

    -- * Creating a Request
    , mapsPermissionsBatchUpdate'
    , MapsPermissionsBatchUpdate'

    -- * Request Lenses
    , mpbuQuotaUser
    , mpbuPrettyPrint
    , mpbuUserIp
    , mpbuKey
    , mpbuId
    , mpbuOauthToken
    , mpbuFields
    , mpbuAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsPermissionsBatchUpdate@ which the
-- 'MapsPermissionsBatchUpdate'' request conforms to.
type MapsPermissionsBatchUpdateResource =
     "maps" :>
       Capture "id" Text :>
         "permissions" :>
           "batchUpdate" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] PermissionsBatchUpdateResponse

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ 'mapsPermissionsBatchUpdate'' smart constructor.
data MapsPermissionsBatchUpdate' = MapsPermissionsBatchUpdate'
    { _mpbuQuotaUser   :: !(Maybe Text)
    , _mpbuPrettyPrint :: !Bool
    , _mpbuUserIp      :: !(Maybe Text)
    , _mpbuKey         :: !(Maybe Text)
    , _mpbuId          :: !Text
    , _mpbuOauthToken  :: !(Maybe Text)
    , _mpbuFields      :: !(Maybe Text)
    , _mpbuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbuQuotaUser'
--
-- * 'mpbuPrettyPrint'
--
-- * 'mpbuUserIp'
--
-- * 'mpbuKey'
--
-- * 'mpbuId'
--
-- * 'mpbuOauthToken'
--
-- * 'mpbuFields'
--
-- * 'mpbuAlt'
mapsPermissionsBatchUpdate'
    :: Text -- ^ 'id'
    -> MapsPermissionsBatchUpdate'
mapsPermissionsBatchUpdate' pMpbuId_ =
    MapsPermissionsBatchUpdate'
    { _mpbuQuotaUser = Nothing
    , _mpbuPrettyPrint = True
    , _mpbuUserIp = Nothing
    , _mpbuKey = Nothing
    , _mpbuId = pMpbuId_
    , _mpbuOauthToken = Nothing
    , _mpbuFields = Nothing
    , _mpbuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpbuQuotaUser :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuQuotaUser
  = lens _mpbuQuotaUser
      (\ s a -> s{_mpbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpbuPrettyPrint :: Lens' MapsPermissionsBatchUpdate' Bool
mpbuPrettyPrint
  = lens _mpbuPrettyPrint
      (\ s a -> s{_mpbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpbuUserIp :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuUserIp
  = lens _mpbuUserIp (\ s a -> s{_mpbuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpbuKey :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuKey = lens _mpbuKey (\ s a -> s{_mpbuKey = a})

-- | The ID of the asset to which permissions will be added.
mpbuId :: Lens' MapsPermissionsBatchUpdate' Text
mpbuId = lens _mpbuId (\ s a -> s{_mpbuId = a})

-- | OAuth 2.0 token for the current user.
mpbuOauthToken :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuOauthToken
  = lens _mpbuOauthToken
      (\ s a -> s{_mpbuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpbuFields :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuFields
  = lens _mpbuFields (\ s a -> s{_mpbuFields = a})

-- | Data format for the response.
mpbuAlt :: Lens' MapsPermissionsBatchUpdate' Alt
mpbuAlt = lens _mpbuAlt (\ s a -> s{_mpbuAlt = a})

instance GoogleRequest MapsPermissionsBatchUpdate'
         where
        type Rs MapsPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsPermissionsBatchUpdate'{..}
          = go _mpbuQuotaUser (Just _mpbuPrettyPrint)
              _mpbuUserIp
              _mpbuKey
              _mpbuId
              _mpbuOauthToken
              _mpbuFields
              (Just _mpbuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsPermissionsBatchUpdateResource)
                      r
                      u
