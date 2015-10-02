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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a default object ACL entry on the specified bucket. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsPatch@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch
    (
    -- * REST Resource
      DefaultObjectAccessControlsPatchResource

    -- * Creating a Request
    , defaultObjectAccessControlsPatch'
    , DefaultObjectAccessControlsPatch'

    -- * Request Lenses
    , doacpQuotaUser
    , doacpPrettyPrint
    , doacpUserIP
    , doacpBucket
    , doacpKey
    , doacpOAuthToken
    , doacpEntity
    , doacpObjectAccessControl
    , doacpFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsPatch@ which the
-- 'DefaultObjectAccessControlsPatch'' request conforms to.
type DefaultObjectAccessControlsPatchResource =
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
                           ReqBody '[JSON] ObjectAccessControl :>
                             Patch '[JSON] ObjectAccessControl

-- | Updates a default object ACL entry on the specified bucket. This method
-- supports patch semantics.
--
-- /See:/ 'defaultObjectAccessControlsPatch'' smart constructor.
data DefaultObjectAccessControlsPatch' = DefaultObjectAccessControlsPatch'
    { _doacpQuotaUser           :: !(Maybe Text)
    , _doacpPrettyPrint         :: !Bool
    , _doacpUserIP              :: !(Maybe Text)
    , _doacpBucket              :: !Text
    , _doacpKey                 :: !(Maybe Key)
    , _doacpOAuthToken          :: !(Maybe OAuthToken)
    , _doacpEntity              :: !Text
    , _doacpObjectAccessControl :: !ObjectAccessControl
    , _doacpFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacpQuotaUser'
--
-- * 'doacpPrettyPrint'
--
-- * 'doacpUserIP'
--
-- * 'doacpBucket'
--
-- * 'doacpKey'
--
-- * 'doacpOAuthToken'
--
-- * 'doacpEntity'
--
-- * 'doacpObjectAccessControl'
--
-- * 'doacpFields'
defaultObjectAccessControlsPatch'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> ObjectAccessControl -- ^ 'ObjectAccessControl'
    -> DefaultObjectAccessControlsPatch'
defaultObjectAccessControlsPatch' pDoacpBucket_ pDoacpEntity_ pDoacpObjectAccessControl_ =
    DefaultObjectAccessControlsPatch'
    { _doacpQuotaUser = Nothing
    , _doacpPrettyPrint = True
    , _doacpUserIP = Nothing
    , _doacpBucket = pDoacpBucket_
    , _doacpKey = Nothing
    , _doacpOAuthToken = Nothing
    , _doacpEntity = pDoacpEntity_
    , _doacpObjectAccessControl = pDoacpObjectAccessControl_
    , _doacpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doacpQuotaUser :: Lens' DefaultObjectAccessControlsPatch' (Maybe Text)
doacpQuotaUser
  = lens _doacpQuotaUser
      (\ s a -> s{_doacpQuotaUser = a})

-- | Returns response with indentations and line breaks.
doacpPrettyPrint :: Lens' DefaultObjectAccessControlsPatch' Bool
doacpPrettyPrint
  = lens _doacpPrettyPrint
      (\ s a -> s{_doacpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doacpUserIP :: Lens' DefaultObjectAccessControlsPatch' (Maybe Text)
doacpUserIP
  = lens _doacpUserIP (\ s a -> s{_doacpUserIP = a})

-- | Name of a bucket.
doacpBucket :: Lens' DefaultObjectAccessControlsPatch' Text
doacpBucket
  = lens _doacpBucket (\ s a -> s{_doacpBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doacpKey :: Lens' DefaultObjectAccessControlsPatch' (Maybe Key)
doacpKey = lens _doacpKey (\ s a -> s{_doacpKey = a})

-- | OAuth 2.0 token for the current user.
doacpOAuthToken :: Lens' DefaultObjectAccessControlsPatch' (Maybe OAuthToken)
doacpOAuthToken
  = lens _doacpOAuthToken
      (\ s a -> s{_doacpOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacpEntity :: Lens' DefaultObjectAccessControlsPatch' Text
doacpEntity
  = lens _doacpEntity (\ s a -> s{_doacpEntity = a})

-- | Multipart request metadata.
doacpObjectAccessControl :: Lens' DefaultObjectAccessControlsPatch' ObjectAccessControl
doacpObjectAccessControl
  = lens _doacpObjectAccessControl
      (\ s a -> s{_doacpObjectAccessControl = a})

-- | Selector specifying which fields to include in a partial response.
doacpFields :: Lens' DefaultObjectAccessControlsPatch' (Maybe Text)
doacpFields
  = lens _doacpFields (\ s a -> s{_doacpFields = a})

instance GoogleAuth DefaultObjectAccessControlsPatch'
         where
        authKey = doacpKey . _Just
        authToken = doacpOAuthToken . _Just

instance GoogleRequest
         DefaultObjectAccessControlsPatch' where
        type Rs DefaultObjectAccessControlsPatch' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsPatch'{..}
          = go _doacpBucket _doacpEntity _doacpQuotaUser
              (Just _doacpPrettyPrint)
              _doacpUserIP
              _doacpFields
              _doacpKey
              _doacpOAuthToken
              (Just AltJSON)
              _doacpObjectAccessControl
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsPatchResource)
                      r
                      u
