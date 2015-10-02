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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectAccessControlsUpdate@.
module Network.Google.Resource.Storage.ObjectAccessControls.Update
    (
    -- * REST Resource
      ObjectAccessControlsUpdateResource

    -- * Creating a Request
    , objectAccessControlsUpdate'
    , ObjectAccessControlsUpdate'

    -- * Request Lenses
    , oacuQuotaUser
    , oacuPrettyPrint
    , oacuUserIP
    , oacuBucket
    , oacuKey
    , oacuObject
    , oacuOAuthToken
    , oacuEntity
    , oacuObjectAccessControl
    , oacuGeneration
    , oacuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsUpdate@ which the
-- 'ObjectAccessControlsUpdate'' request conforms to.
type ObjectAccessControlsUpdateResource =
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
                                   Put '[JSON] ObjectAccessControl

-- | Updates an ACL entry on the specified object.
--
-- /See:/ 'objectAccessControlsUpdate'' smart constructor.
data ObjectAccessControlsUpdate' = ObjectAccessControlsUpdate'
    { _oacuQuotaUser           :: !(Maybe Text)
    , _oacuPrettyPrint         :: !Bool
    , _oacuUserIP              :: !(Maybe Text)
    , _oacuBucket              :: !Text
    , _oacuKey                 :: !(Maybe Key)
    , _oacuObject              :: !Text
    , _oacuOAuthToken          :: !(Maybe OAuthToken)
    , _oacuEntity              :: !Text
    , _oacuObjectAccessControl :: !ObjectAccessControl
    , _oacuGeneration          :: !(Maybe Word64)
    , _oacuFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacuQuotaUser'
--
-- * 'oacuPrettyPrint'
--
-- * 'oacuUserIP'
--
-- * 'oacuBucket'
--
-- * 'oacuKey'
--
-- * 'oacuObject'
--
-- * 'oacuOAuthToken'
--
-- * 'oacuEntity'
--
-- * 'oacuObjectAccessControl'
--
-- * 'oacuGeneration'
--
-- * 'oacuFields'
objectAccessControlsUpdate'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControl -- ^ 'ObjectAccessControl'
    -> ObjectAccessControlsUpdate'
objectAccessControlsUpdate' pOacuBucket_ pOacuObject_ pOacuEntity_ pOacuObjectAccessControl_ =
    ObjectAccessControlsUpdate'
    { _oacuQuotaUser = Nothing
    , _oacuPrettyPrint = True
    , _oacuUserIP = Nothing
    , _oacuBucket = pOacuBucket_
    , _oacuKey = Nothing
    , _oacuObject = pOacuObject_
    , _oacuOAuthToken = Nothing
    , _oacuEntity = pOacuEntity_
    , _oacuObjectAccessControl = pOacuObjectAccessControl_
    , _oacuGeneration = Nothing
    , _oacuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oacuQuotaUser :: Lens' ObjectAccessControlsUpdate' (Maybe Text)
oacuQuotaUser
  = lens _oacuQuotaUser
      (\ s a -> s{_oacuQuotaUser = a})

-- | Returns response with indentations and line breaks.
oacuPrettyPrint :: Lens' ObjectAccessControlsUpdate' Bool
oacuPrettyPrint
  = lens _oacuPrettyPrint
      (\ s a -> s{_oacuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oacuUserIP :: Lens' ObjectAccessControlsUpdate' (Maybe Text)
oacuUserIP
  = lens _oacuUserIP (\ s a -> s{_oacuUserIP = a})

-- | Name of a bucket.
oacuBucket :: Lens' ObjectAccessControlsUpdate' Text
oacuBucket
  = lens _oacuBucket (\ s a -> s{_oacuBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacuKey :: Lens' ObjectAccessControlsUpdate' (Maybe Key)
oacuKey = lens _oacuKey (\ s a -> s{_oacuKey = a})

-- | Name of the object.
oacuObject :: Lens' ObjectAccessControlsUpdate' Text
oacuObject
  = lens _oacuObject (\ s a -> s{_oacuObject = a})

-- | OAuth 2.0 token for the current user.
oacuOAuthToken :: Lens' ObjectAccessControlsUpdate' (Maybe OAuthToken)
oacuOAuthToken
  = lens _oacuOAuthToken
      (\ s a -> s{_oacuOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacuEntity :: Lens' ObjectAccessControlsUpdate' Text
oacuEntity
  = lens _oacuEntity (\ s a -> s{_oacuEntity = a})

-- | Multipart request metadata.
oacuObjectAccessControl :: Lens' ObjectAccessControlsUpdate' ObjectAccessControl
oacuObjectAccessControl
  = lens _oacuObjectAccessControl
      (\ s a -> s{_oacuObjectAccessControl = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacuGeneration :: Lens' ObjectAccessControlsUpdate' (Maybe Word64)
oacuGeneration
  = lens _oacuGeneration
      (\ s a -> s{_oacuGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oacuFields :: Lens' ObjectAccessControlsUpdate' (Maybe Text)
oacuFields
  = lens _oacuFields (\ s a -> s{_oacuFields = a})

instance GoogleAuth ObjectAccessControlsUpdate' where
        authKey = oacuKey . _Just
        authToken = oacuOAuthToken . _Just

instance GoogleRequest ObjectAccessControlsUpdate'
         where
        type Rs ObjectAccessControlsUpdate' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsUpdate'{..}
          = go _oacuGeneration _oacuBucket _oacuObject
              _oacuEntity
              _oacuQuotaUser
              (Just _oacuPrettyPrint)
              _oacuUserIP
              _oacuFields
              _oacuKey
              _oacuOAuthToken
              (Just AltJSON)
              _oacuObjectAccessControl
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsUpdateResource)
                      r
                      u
