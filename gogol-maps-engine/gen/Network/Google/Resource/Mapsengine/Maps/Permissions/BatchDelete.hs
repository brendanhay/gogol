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
-- Module      : Network.Google.Resource.Mapsengine.Maps.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsPermissionsBatchDelete@.
module Network.Google.Resource.Mapsengine.Maps.Permissions.BatchDelete
    (
    -- * REST Resource
      MapsPermissionsBatchDeleteResource

    -- * Creating a Request
    , mapsPermissionsBatchDelete'
    , MapsPermissionsBatchDelete'

    -- * Request Lenses
    , mpbdQuotaUser
    , mpbdPrettyPrint
    , mpbdUserIp
    , mpbdKey
    , mpbdId
    , mpbdOauthToken
    , mpbdFields
    , mpbdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsPermissionsBatchDelete@ which the
-- 'MapsPermissionsBatchDelete'' request conforms to.
type MapsPermissionsBatchDeleteResource =
     "maps" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'mapsPermissionsBatchDelete'' smart constructor.
data MapsPermissionsBatchDelete' = MapsPermissionsBatchDelete'
    { _mpbdQuotaUser   :: !(Maybe Text)
    , _mpbdPrettyPrint :: !Bool
    , _mpbdUserIp      :: !(Maybe Text)
    , _mpbdKey         :: !(Maybe Text)
    , _mpbdId          :: !Text
    , _mpbdOauthToken  :: !(Maybe Text)
    , _mpbdFields      :: !(Maybe Text)
    , _mpbdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbdQuotaUser'
--
-- * 'mpbdPrettyPrint'
--
-- * 'mpbdUserIp'
--
-- * 'mpbdKey'
--
-- * 'mpbdId'
--
-- * 'mpbdOauthToken'
--
-- * 'mpbdFields'
--
-- * 'mpbdAlt'
mapsPermissionsBatchDelete'
    :: Text -- ^ 'id'
    -> MapsPermissionsBatchDelete'
mapsPermissionsBatchDelete' pMpbdId_ =
    MapsPermissionsBatchDelete'
    { _mpbdQuotaUser = Nothing
    , _mpbdPrettyPrint = True
    , _mpbdUserIp = Nothing
    , _mpbdKey = Nothing
    , _mpbdId = pMpbdId_
    , _mpbdOauthToken = Nothing
    , _mpbdFields = Nothing
    , _mpbdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpbdQuotaUser :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdQuotaUser
  = lens _mpbdQuotaUser
      (\ s a -> s{_mpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpbdPrettyPrint :: Lens' MapsPermissionsBatchDelete' Bool
mpbdPrettyPrint
  = lens _mpbdPrettyPrint
      (\ s a -> s{_mpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpbdUserIp :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdUserIp
  = lens _mpbdUserIp (\ s a -> s{_mpbdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpbdKey :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdKey = lens _mpbdKey (\ s a -> s{_mpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
mpbdId :: Lens' MapsPermissionsBatchDelete' Text
mpbdId = lens _mpbdId (\ s a -> s{_mpbdId = a})

-- | OAuth 2.0 token for the current user.
mpbdOauthToken :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdOauthToken
  = lens _mpbdOauthToken
      (\ s a -> s{_mpbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpbdFields :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdFields
  = lens _mpbdFields (\ s a -> s{_mpbdFields = a})

-- | Data format for the response.
mpbdAlt :: Lens' MapsPermissionsBatchDelete' Alt
mpbdAlt = lens _mpbdAlt (\ s a -> s{_mpbdAlt = a})

instance GoogleRequest MapsPermissionsBatchDelete'
         where
        type Rs MapsPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsPermissionsBatchDelete'{..}
          = go _mpbdQuotaUser (Just _mpbdPrettyPrint)
              _mpbdUserIp
              _mpbdKey
              _mpbdId
              _mpbdOauthToken
              _mpbdFields
              (Just _mpbdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsPermissionsBatchDeleteResource)
                      r
                      u
