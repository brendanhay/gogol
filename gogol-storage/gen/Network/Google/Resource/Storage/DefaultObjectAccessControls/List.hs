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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsList@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.List
    (
    -- * REST Resource
      DefaultObjectAccessControlsListResource

    -- * Creating a Request
    , defaultObjectAccessControlsList'
    , DefaultObjectAccessControlsList'

    -- * Request Lenses
    , doaclQuotaUser
    , doaclIfMetagenerationMatch
    , doaclPrettyPrint
    , doaclUserIP
    , doaclBucket
    , doaclKey
    , doaclIfMetagenerationNotMatch
    , doaclOAuthToken
    , doaclFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsList@ which the
-- 'DefaultObjectAccessControlsList'' request conforms to.
type DefaultObjectAccessControlsListResource =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           QueryParam "ifMetagenerationMatch" Int64 :>
             QueryParam "ifMetagenerationNotMatch" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ObjectAccessControls

-- | Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsList'' smart constructor.
data DefaultObjectAccessControlsList' = DefaultObjectAccessControlsList'
    { _doaclQuotaUser                :: !(Maybe Text)
    , _doaclIfMetagenerationMatch    :: !(Maybe Int64)
    , _doaclPrettyPrint              :: !Bool
    , _doaclUserIP                   :: !(Maybe Text)
    , _doaclBucket                   :: !Text
    , _doaclKey                      :: !(Maybe AuthKey)
    , _doaclIfMetagenerationNotMatch :: !(Maybe Int64)
    , _doaclOAuthToken               :: !(Maybe OAuthToken)
    , _doaclFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'doaclUserIP'
--
-- * 'doaclBucket'
--
-- * 'doaclKey'
--
-- * 'doaclIfMetagenerationNotMatch'
--
-- * 'doaclOAuthToken'
--
-- * 'doaclFields'
defaultObjectAccessControlsList'
    :: Text -- ^ 'bucket'
    -> DefaultObjectAccessControlsList'
defaultObjectAccessControlsList' pDoaclBucket_ =
    DefaultObjectAccessControlsList'
    { _doaclQuotaUser = Nothing
    , _doaclIfMetagenerationMatch = Nothing
    , _doaclPrettyPrint = True
    , _doaclUserIP = Nothing
    , _doaclBucket = pDoaclBucket_
    , _doaclKey = Nothing
    , _doaclIfMetagenerationNotMatch = Nothing
    , _doaclOAuthToken = Nothing
    , _doaclFields = Nothing
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
doaclUserIP :: Lens' DefaultObjectAccessControlsList' (Maybe Text)
doaclUserIP
  = lens _doaclUserIP (\ s a -> s{_doaclUserIP = a})

-- | Name of a bucket.
doaclBucket :: Lens' DefaultObjectAccessControlsList' Text
doaclBucket
  = lens _doaclBucket (\ s a -> s{_doaclBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doaclKey :: Lens' DefaultObjectAccessControlsList' (Maybe AuthKey)
doaclKey = lens _doaclKey (\ s a -> s{_doaclKey = a})

-- | If present, only return default ACL listing if the bucket\'s current
-- metageneration does not match the given value.
doaclIfMetagenerationNotMatch :: Lens' DefaultObjectAccessControlsList' (Maybe Int64)
doaclIfMetagenerationNotMatch
  = lens _doaclIfMetagenerationNotMatch
      (\ s a -> s{_doaclIfMetagenerationNotMatch = a})

-- | OAuth 2.0 token for the current user.
doaclOAuthToken :: Lens' DefaultObjectAccessControlsList' (Maybe OAuthToken)
doaclOAuthToken
  = lens _doaclOAuthToken
      (\ s a -> s{_doaclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
doaclFields :: Lens' DefaultObjectAccessControlsList' (Maybe Text)
doaclFields
  = lens _doaclFields (\ s a -> s{_doaclFields = a})

instance GoogleAuth DefaultObjectAccessControlsList'
         where
        authKey = doaclKey . _Just
        authToken = doaclOAuthToken . _Just

instance GoogleRequest
         DefaultObjectAccessControlsList' where
        type Rs DefaultObjectAccessControlsList' =
             ObjectAccessControls
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsList'{..}
          = go _doaclBucket _doaclIfMetagenerationMatch
              _doaclIfMetagenerationNotMatch
              _doaclQuotaUser
              (Just _doaclPrettyPrint)
              _doaclUserIP
              _doaclFields
              _doaclKey
              _doaclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsListResource)
                      r
                      u
