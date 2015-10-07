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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectAccessControlsUpdate@.
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
    , oacuPayload
    , oacuKey
    , oacuObject
    , oacuOAuthToken
    , oacuEntity
    , oacuGeneration
    , oacuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsUpdate@ method which the
-- 'ObjectAccessControlsUpdate'' request conforms to.
type ObjectAccessControlsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               Capture "entity" Text :>
                 QueryParam "generation" Int64 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ObjectAccessControl :>
                                   Put '[JSON] ObjectAccessControl

-- | Updates an ACL entry on the specified object.
--
-- /See:/ 'objectAccessControlsUpdate'' smart constructor.
data ObjectAccessControlsUpdate' = ObjectAccessControlsUpdate'
    { _oacuQuotaUser   :: !(Maybe Text)
    , _oacuPrettyPrint :: !Bool
    , _oacuUserIP      :: !(Maybe Text)
    , _oacuBucket      :: !Text
    , _oacuPayload     :: !ObjectAccessControl
    , _oacuKey         :: !(Maybe AuthKey)
    , _oacuObject      :: !Text
    , _oacuOAuthToken  :: !(Maybe OAuthToken)
    , _oacuEntity      :: !Text
    , _oacuGeneration  :: !(Maybe Int64)
    , _oacuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'oacuPayload'
--
-- * 'oacuKey'
--
-- * 'oacuObject'
--
-- * 'oacuOAuthToken'
--
-- * 'oacuEntity'
--
-- * 'oacuGeneration'
--
-- * 'oacuFields'
objectAccessControlsUpdate'
    :: Text -- ^ 'bucket'
    -> ObjectAccessControl -- ^ 'payload'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControlsUpdate'
objectAccessControlsUpdate' pOacuBucket_ pOacuPayload_ pOacuObject_ pOacuEntity_ =
    ObjectAccessControlsUpdate'
    { _oacuQuotaUser = Nothing
    , _oacuPrettyPrint = True
    , _oacuUserIP = Nothing
    , _oacuBucket = pOacuBucket_
    , _oacuPayload = pOacuPayload_
    , _oacuKey = Nothing
    , _oacuObject = pOacuObject_
    , _oacuOAuthToken = Nothing
    , _oacuEntity = pOacuEntity_
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

-- | Multipart request metadata.
oacuPayload :: Lens' ObjectAccessControlsUpdate' ObjectAccessControl
oacuPayload
  = lens _oacuPayload (\ s a -> s{_oacuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacuKey :: Lens' ObjectAccessControlsUpdate' (Maybe AuthKey)
oacuKey = lens _oacuKey (\ s a -> s{_oacuKey = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
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

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacuGeneration :: Lens' ObjectAccessControlsUpdate' (Maybe Int64)
oacuGeneration
  = lens _oacuGeneration
      (\ s a -> s{_oacuGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oacuFields :: Lens' ObjectAccessControlsUpdate' (Maybe Text)
oacuFields
  = lens _oacuFields (\ s a -> s{_oacuFields = a})

instance GoogleAuth ObjectAccessControlsUpdate' where
        _AuthKey = oacuKey . _Just
        _AuthToken = oacuOAuthToken . _Just

instance GoogleRequest ObjectAccessControlsUpdate'
         where
        type Rs ObjectAccessControlsUpdate' =
             ObjectAccessControl
        request = requestWith storageRequest
        requestWith rq ObjectAccessControlsUpdate'{..}
          = go _oacuBucket _oacuObject _oacuEntity
              _oacuGeneration
              _oacuQuotaUser
              (Just _oacuPrettyPrint)
              _oacuUserIP
              _oacuFields
              _oacuKey
              _oacuOAuthToken
              (Just AltJSON)
              _oacuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ObjectAccessControlsUpdateResource)
                      rq
