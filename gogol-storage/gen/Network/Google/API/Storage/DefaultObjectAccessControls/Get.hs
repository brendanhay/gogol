{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.DefaultObjectAccessControls.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the default object ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.defaultObjectAccessControls.get@.
module Network.Google.API.Storage.DefaultObjectAccessControls.Get
    (
    -- * REST Resource
      DefaultObjectAccessControlsGetAPI

    -- * Creating a Request
    , defaultObjectAccessControlsGet'
    , DefaultObjectAccessControlsGet'

    -- * Request Lenses
    , doacgQuotaUser
    , doacgPrettyPrint
    , doacgUserIp
    , doacgBucket
    , doacgKey
    , doacgOauthToken
    , doacgEntity
    , doacgFields
    , doacgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.defaultObjectAccessControls.get which the
-- 'DefaultObjectAccessControlsGet'' request conforms to.
type DefaultObjectAccessControlsGetAPI =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] ObjectAccessControl

-- | Returns the default object ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsGet'' smart constructor.
data DefaultObjectAccessControlsGet' = DefaultObjectAccessControlsGet'
    { _doacgQuotaUser   :: !(Maybe Text)
    , _doacgPrettyPrint :: !Bool
    , _doacgUserIp      :: !(Maybe Text)
    , _doacgBucket      :: !Text
    , _doacgKey         :: !(Maybe Text)
    , _doacgOauthToken  :: !(Maybe Text)
    , _doacgEntity      :: !Text
    , _doacgFields      :: !(Maybe Text)
    , _doacgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacgQuotaUser'
--
-- * 'doacgPrettyPrint'
--
-- * 'doacgUserIp'
--
-- * 'doacgBucket'
--
-- * 'doacgKey'
--
-- * 'doacgOauthToken'
--
-- * 'doacgEntity'
--
-- * 'doacgFields'
--
-- * 'doacgAlt'
defaultObjectAccessControlsGet'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> DefaultObjectAccessControlsGet'
defaultObjectAccessControlsGet' pDoacgBucket_ pDoacgEntity_ =
    DefaultObjectAccessControlsGet'
    { _doacgQuotaUser = Nothing
    , _doacgPrettyPrint = True
    , _doacgUserIp = Nothing
    , _doacgBucket = pDoacgBucket_
    , _doacgKey = Nothing
    , _doacgOauthToken = Nothing
    , _doacgEntity = pDoacgEntity_
    , _doacgFields = Nothing
    , _doacgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doacgQuotaUser :: Lens' DefaultObjectAccessControlsGet' (Maybe Text)
doacgQuotaUser
  = lens _doacgQuotaUser
      (\ s a -> s{_doacgQuotaUser = a})

-- | Returns response with indentations and line breaks.
doacgPrettyPrint :: Lens' DefaultObjectAccessControlsGet' Bool
doacgPrettyPrint
  = lens _doacgPrettyPrint
      (\ s a -> s{_doacgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doacgUserIp :: Lens' DefaultObjectAccessControlsGet' (Maybe Text)
doacgUserIp
  = lens _doacgUserIp (\ s a -> s{_doacgUserIp = a})

-- | Name of a bucket.
doacgBucket :: Lens' DefaultObjectAccessControlsGet' Text
doacgBucket
  = lens _doacgBucket (\ s a -> s{_doacgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doacgKey :: Lens' DefaultObjectAccessControlsGet' (Maybe Text)
doacgKey = lens _doacgKey (\ s a -> s{_doacgKey = a})

-- | OAuth 2.0 token for the current user.
doacgOauthToken :: Lens' DefaultObjectAccessControlsGet' (Maybe Text)
doacgOauthToken
  = lens _doacgOauthToken
      (\ s a -> s{_doacgOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacgEntity :: Lens' DefaultObjectAccessControlsGet' Text
doacgEntity
  = lens _doacgEntity (\ s a -> s{_doacgEntity = a})

-- | Selector specifying which fields to include in a partial response.
doacgFields :: Lens' DefaultObjectAccessControlsGet' (Maybe Text)
doacgFields
  = lens _doacgFields (\ s a -> s{_doacgFields = a})

-- | Data format for the response.
doacgAlt :: Lens' DefaultObjectAccessControlsGet' Alt
doacgAlt = lens _doacgAlt (\ s a -> s{_doacgAlt = a})

instance GoogleRequest
         DefaultObjectAccessControlsGet' where
        type Rs DefaultObjectAccessControlsGet' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsGet'{..}
          = go _doacgQuotaUser (Just _doacgPrettyPrint)
              _doacgUserIp
              _doacgBucket
              _doacgKey
              _doacgOauthToken
              _doacgEntity
              _doacgFields
              (Just _doacgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DefaultObjectAccessControlsGetAPI)
                      r
                      u
