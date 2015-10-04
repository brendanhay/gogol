{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the default object ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsGet@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Get
    (
    -- * REST Resource
      DefaultObjectAccessControlsGetResource

    -- * Creating a Request
    , defaultObjectAccessControlsGet'
    , DefaultObjectAccessControlsGet'

    -- * Request Lenses
    , doacgQuotaUser
    , doacgPrettyPrint
    , doacgUserIP
    , doacgBucket
    , doacgKey
    , doacgOAuthToken
    , doacgEntity
    , doacgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsGet@ which the
-- 'DefaultObjectAccessControlsGet'' request conforms to.
type DefaultObjectAccessControlsGetResource =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ObjectAccessControl

-- | Returns the default object ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsGet'' smart constructor.
data DefaultObjectAccessControlsGet' = DefaultObjectAccessControlsGet'
    { _doacgQuotaUser   :: !(Maybe Text)
    , _doacgPrettyPrint :: !Bool
    , _doacgUserIP      :: !(Maybe Text)
    , _doacgBucket      :: !Text
    , _doacgKey         :: !(Maybe Key)
    , _doacgOAuthToken  :: !(Maybe OAuthToken)
    , _doacgEntity      :: !Text
    , _doacgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacgQuotaUser'
--
-- * 'doacgPrettyPrint'
--
-- * 'doacgUserIP'
--
-- * 'doacgBucket'
--
-- * 'doacgKey'
--
-- * 'doacgOAuthToken'
--
-- * 'doacgEntity'
--
-- * 'doacgFields'
defaultObjectAccessControlsGet'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> DefaultObjectAccessControlsGet'
defaultObjectAccessControlsGet' pDoacgBucket_ pDoacgEntity_ =
    DefaultObjectAccessControlsGet'
    { _doacgQuotaUser = Nothing
    , _doacgPrettyPrint = True
    , _doacgUserIP = Nothing
    , _doacgBucket = pDoacgBucket_
    , _doacgKey = Nothing
    , _doacgOAuthToken = Nothing
    , _doacgEntity = pDoacgEntity_
    , _doacgFields = Nothing
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
doacgUserIP :: Lens' DefaultObjectAccessControlsGet' (Maybe Text)
doacgUserIP
  = lens _doacgUserIP (\ s a -> s{_doacgUserIP = a})

-- | Name of a bucket.
doacgBucket :: Lens' DefaultObjectAccessControlsGet' Text
doacgBucket
  = lens _doacgBucket (\ s a -> s{_doacgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doacgKey :: Lens' DefaultObjectAccessControlsGet' (Maybe Key)
doacgKey = lens _doacgKey (\ s a -> s{_doacgKey = a})

-- | OAuth 2.0 token for the current user.
doacgOAuthToken :: Lens' DefaultObjectAccessControlsGet' (Maybe OAuthToken)
doacgOAuthToken
  = lens _doacgOAuthToken
      (\ s a -> s{_doacgOAuthToken = a})

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

instance GoogleAuth DefaultObjectAccessControlsGet'
         where
        authKey = doacgKey . _Just
        authToken = doacgOAuthToken . _Just

instance GoogleRequest
         DefaultObjectAccessControlsGet' where
        type Rs DefaultObjectAccessControlsGet' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsGet'{..}
          = go _doacgBucket _doacgEntity _doacgQuotaUser
              (Just _doacgPrettyPrint)
              _doacgUserIP
              _doacgFields
              _doacgKey
              _doacgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsGetResource)
                      r
                      u
