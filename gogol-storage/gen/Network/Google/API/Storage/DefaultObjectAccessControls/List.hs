{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.DefaultObjectAccessControls.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.defaultObjectAccessControls.list@.
module Network.Google.API.Storage.DefaultObjectAccessControls.List
    (
    -- * REST Resource
      DefaultObjectAccessControlsListAPI

    -- * Creating a Request
    , defaultObjectAccessControlsList'
    , DefaultObjectAccessControlsList'

    -- * Request Lenses
    , doaclQuotaUser
    , doaclIfMetagenerationMatch
    , doaclPrettyPrint
    , doaclUserIp
    , doaclBucket
    , doaclKey
    , doaclIfMetagenerationNotMatch
    , doaclOauthToken
    , doaclFields
    , doaclAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.defaultObjectAccessControls.list which the
-- 'DefaultObjectAccessControlsList'' request conforms to.
type DefaultObjectAccessControlsListAPI =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           QueryParam "quotaUser" Text :>
             QueryParam "ifMetagenerationMatch" Int64 :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "ifMetagenerationNotMatch" Int64 :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ObjectAccessControls

-- | Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsList'' smart constructor.
data DefaultObjectAccessControlsList' = DefaultObjectAccessControlsList'
    { _doaclQuotaUser                :: !(Maybe Text)
    , _doaclIfMetagenerationMatch    :: !(Maybe Int64)
    , _doaclPrettyPrint              :: !Bool
    , _doaclUserIp                   :: !(Maybe Text)
    , _doaclBucket                   :: !Text
    , _doaclKey                      :: !(Maybe Text)
    , _doaclIfMetagenerationNotMatch :: !(Maybe Int64)
    , _doaclOauthToken               :: !(Maybe Text)
    , _doaclFields                   :: !(Maybe Text)
    , _doaclAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doaclQuotaUser'
--
-- * 'doaclIfMetagenerationMatch'
--
-- * 'doaclPrettyPrint'
--
-- * 'doaclUserIp'
--
-- * 'doaclBucket'
--
-- * 'doaclKey'
--
-- * 'doaclIfMetagenerationNotMatch'
--
-- * 'doaclOauthToken'
--
-- * 'doaclFields'
--
-- * 'doaclAlt'
defaultObjectAccessControlsList'
    :: Text -- ^ 'bucket'
    -> DefaultObjectAccessControlsList'
defaultObjectAccessControlsList' pDoaclBucket_ =
    DefaultObjectAccessControlsList'
    { _doaclQuotaUser = Nothing
    , _doaclIfMetagenerationMatch = Nothing
    , _doaclPrettyPrint = True
    , _doaclUserIp = Nothing
    , _doaclBucket = pDoaclBucket_
    , _doaclKey = Nothing
    , _doaclIfMetagenerationNotMatch = Nothing
    , _doaclOauthToken = Nothing
    , _doaclFields = Nothing
    , _doaclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doaclQuotaUser :: Lens' DefaultObjectAccessControlsList' (Maybe Text)
doaclQuotaUser
  = lens _doaclQuotaUser
      (\ s a -> s{_doaclQuotaUser = a})

-- | If present, only return default ACL listing if the bucket\'s current
-- metageneration matches this value.
doaclIfMetagenerationMatch :: Lens' DefaultObjectAccessControlsList' (Maybe Int64)
doaclIfMetagenerationMatch
  = lens _doaclIfMetagenerationMatch
      (\ s a -> s{_doaclIfMetagenerationMatch = a})

-- | Returns response with indentations and line breaks.
doaclPrettyPrint :: Lens' DefaultObjectAccessControlsList' Bool
doaclPrettyPrint
  = lens _doaclPrettyPrint
      (\ s a -> s{_doaclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doaclUserIp :: Lens' DefaultObjectAccessControlsList' (Maybe Text)
doaclUserIp
  = lens _doaclUserIp (\ s a -> s{_doaclUserIp = a})

-- | Name of a bucket.
doaclBucket :: Lens' DefaultObjectAccessControlsList' Text
doaclBucket
  = lens _doaclBucket (\ s a -> s{_doaclBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doaclKey :: Lens' DefaultObjectAccessControlsList' (Maybe Text)
doaclKey = lens _doaclKey (\ s a -> s{_doaclKey = a})

-- | If present, only return default ACL listing if the bucket\'s current
-- metageneration does not match the given value.
doaclIfMetagenerationNotMatch :: Lens' DefaultObjectAccessControlsList' (Maybe Int64)
doaclIfMetagenerationNotMatch
  = lens _doaclIfMetagenerationNotMatch
      (\ s a -> s{_doaclIfMetagenerationNotMatch = a})

-- | OAuth 2.0 token for the current user.
doaclOauthToken :: Lens' DefaultObjectAccessControlsList' (Maybe Text)
doaclOauthToken
  = lens _doaclOauthToken
      (\ s a -> s{_doaclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
doaclFields :: Lens' DefaultObjectAccessControlsList' (Maybe Text)
doaclFields
  = lens _doaclFields (\ s a -> s{_doaclFields = a})

-- | Data format for the response.
doaclAlt :: Lens' DefaultObjectAccessControlsList' Alt
doaclAlt = lens _doaclAlt (\ s a -> s{_doaclAlt = a})

instance GoogleRequest
         DefaultObjectAccessControlsList' where
        type Rs DefaultObjectAccessControlsList' =
             ObjectAccessControls
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsList'{..}
          = go _doaclQuotaUser _doaclIfMetagenerationMatch
              (Just _doaclPrettyPrint)
              _doaclUserIp
              _doaclBucket
              _doaclKey
              _doaclIfMetagenerationNotMatch
              _doaclOauthToken
              _doaclFields
              (Just _doaclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DefaultObjectAccessControlsListAPI)
                      r
                      u
