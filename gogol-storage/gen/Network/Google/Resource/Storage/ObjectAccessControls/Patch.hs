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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an ACL entry on the specified object. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectAccessControlsPatch@.
module Network.Google.Resource.Storage.ObjectAccessControls.Patch
    (
    -- * REST Resource
      ObjectAccessControlsPatchResource

    -- * Creating a Request
    , objectAccessControlsPatch'
    , ObjectAccessControlsPatch'

    -- * Request Lenses
    , oacpQuotaUser
    , oacpPrettyPrint
    , oacpUserIP
    , oacpBucket
    , oacpPayload
    , oacpKey
    , oacpObject
    , oacpOAuthToken
    , oacpEntity
    , oacpGeneration
    , oacpFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsPatch@ which the
-- 'ObjectAccessControlsPatch'' request conforms to.
type ObjectAccessControlsPatchResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               Capture "entity" Text :>
                 QueryParam "generation" Word64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ObjectAccessControl :>
                                   Patch '[JSON] ObjectAccessControl

-- | Updates an ACL entry on the specified object. This method supports patch
-- semantics.
--
-- /See:/ 'objectAccessControlsPatch'' smart constructor.
data ObjectAccessControlsPatch' = ObjectAccessControlsPatch'
    { _oacpQuotaUser   :: !(Maybe Text)
    , _oacpPrettyPrint :: !Bool
    , _oacpUserIP      :: !(Maybe Text)
    , _oacpBucket      :: !Text
    , _oacpPayload     :: !ObjectAccessControl
    , _oacpKey         :: !(Maybe Key)
    , _oacpObject      :: !Text
    , _oacpOAuthToken  :: !(Maybe OAuthToken)
    , _oacpEntity      :: !Text
    , _oacpGeneration  :: !(Maybe Word64)
    , _oacpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacpQuotaUser'
--
-- * 'oacpPrettyPrint'
--
-- * 'oacpUserIP'
--
-- * 'oacpBucket'
--
-- * 'oacpPayload'
--
-- * 'oacpKey'
--
-- * 'oacpObject'
--
-- * 'oacpOAuthToken'
--
-- * 'oacpEntity'
--
-- * 'oacpGeneration'
--
-- * 'oacpFields'
objectAccessControlsPatch'
    :: Text -- ^ 'bucket'
    -> ObjectAccessControl -- ^ 'payload'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControlsPatch'
objectAccessControlsPatch' pOacpBucket_ pOacpPayload_ pOacpObject_ pOacpEntity_ =
    ObjectAccessControlsPatch'
    { _oacpQuotaUser = Nothing
    , _oacpPrettyPrint = True
    , _oacpUserIP = Nothing
    , _oacpBucket = pOacpBucket_
    , _oacpPayload = pOacpPayload_
    , _oacpKey = Nothing
    , _oacpObject = pOacpObject_
    , _oacpOAuthToken = Nothing
    , _oacpEntity = pOacpEntity_
    , _oacpGeneration = Nothing
    , _oacpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oacpQuotaUser :: Lens' ObjectAccessControlsPatch' (Maybe Text)
oacpQuotaUser
  = lens _oacpQuotaUser
      (\ s a -> s{_oacpQuotaUser = a})

-- | Returns response with indentations and line breaks.
oacpPrettyPrint :: Lens' ObjectAccessControlsPatch' Bool
oacpPrettyPrint
  = lens _oacpPrettyPrint
      (\ s a -> s{_oacpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oacpUserIP :: Lens' ObjectAccessControlsPatch' (Maybe Text)
oacpUserIP
  = lens _oacpUserIP (\ s a -> s{_oacpUserIP = a})

-- | Name of a bucket.
oacpBucket :: Lens' ObjectAccessControlsPatch' Text
oacpBucket
  = lens _oacpBucket (\ s a -> s{_oacpBucket = a})

-- | Multipart request metadata.
oacpPayload :: Lens' ObjectAccessControlsPatch' ObjectAccessControl
oacpPayload
  = lens _oacpPayload (\ s a -> s{_oacpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacpKey :: Lens' ObjectAccessControlsPatch' (Maybe Key)
oacpKey = lens _oacpKey (\ s a -> s{_oacpKey = a})

-- | Name of the object.
oacpObject :: Lens' ObjectAccessControlsPatch' Text
oacpObject
  = lens _oacpObject (\ s a -> s{_oacpObject = a})

-- | OAuth 2.0 token for the current user.
oacpOAuthToken :: Lens' ObjectAccessControlsPatch' (Maybe OAuthToken)
oacpOAuthToken
  = lens _oacpOAuthToken
      (\ s a -> s{_oacpOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacpEntity :: Lens' ObjectAccessControlsPatch' Text
oacpEntity
  = lens _oacpEntity (\ s a -> s{_oacpEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacpGeneration :: Lens' ObjectAccessControlsPatch' (Maybe Word64)
oacpGeneration
  = lens _oacpGeneration
      (\ s a -> s{_oacpGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oacpFields :: Lens' ObjectAccessControlsPatch' (Maybe Text)
oacpFields
  = lens _oacpFields (\ s a -> s{_oacpFields = a})

instance GoogleAuth ObjectAccessControlsPatch' where
        authKey = oacpKey . _Just
        authToken = oacpOAuthToken . _Just

instance GoogleRequest ObjectAccessControlsPatch'
         where
        type Rs ObjectAccessControlsPatch' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsPatch'{..}
          = go _oacpBucket _oacpObject _oacpEntity
              _oacpGeneration
              _oacpQuotaUser
              (Just _oacpPrettyPrint)
              _oacpUserIP
              _oacpFields
              _oacpKey
              _oacpOAuthToken
              (Just AltJSON)
              _oacpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsPatchResource)
                      r
                      u
