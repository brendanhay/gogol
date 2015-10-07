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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes the ACL entry for the specified entity on the
-- specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageObjectAccessControlsDelete@.
module Network.Google.Resource.Storage.ObjectAccessControls.Delete
    (
    -- * REST Resource
      ObjectAccessControlsDeleteResource

    -- * Creating a Request
    , objectAccessControlsDelete'
    , ObjectAccessControlsDelete'

    -- * Request Lenses
    , oacdQuotaUser
    , oacdPrettyPrint
    , oacdUserIP
    , oacdBucket
    , oacdKey
    , oacdObject
    , oacdOAuthToken
    , oacdEntity
    , oacdGeneration
    , oacdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsDelete@ method which the
-- 'ObjectAccessControlsDelete'' request conforms to.
type ObjectAccessControlsDeleteResource =
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
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified object.
--
-- /See:/ 'objectAccessControlsDelete'' smart constructor.
data ObjectAccessControlsDelete' = ObjectAccessControlsDelete'
    { _oacdQuotaUser   :: !(Maybe Text)
    , _oacdPrettyPrint :: !Bool
    , _oacdUserIP      :: !(Maybe Text)
    , _oacdBucket      :: !Text
    , _oacdKey         :: !(Maybe AuthKey)
    , _oacdObject      :: !Text
    , _oacdOAuthToken  :: !(Maybe OAuthToken)
    , _oacdEntity      :: !Text
    , _oacdGeneration  :: !(Maybe Int64)
    , _oacdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacdQuotaUser'
--
-- * 'oacdPrettyPrint'
--
-- * 'oacdUserIP'
--
-- * 'oacdBucket'
--
-- * 'oacdKey'
--
-- * 'oacdObject'
--
-- * 'oacdOAuthToken'
--
-- * 'oacdEntity'
--
-- * 'oacdGeneration'
--
-- * 'oacdFields'
objectAccessControlsDelete'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControlsDelete'
objectAccessControlsDelete' pOacdBucket_ pOacdObject_ pOacdEntity_ =
    ObjectAccessControlsDelete'
    { _oacdQuotaUser = Nothing
    , _oacdPrettyPrint = True
    , _oacdUserIP = Nothing
    , _oacdBucket = pOacdBucket_
    , _oacdKey = Nothing
    , _oacdObject = pOacdObject_
    , _oacdOAuthToken = Nothing
    , _oacdEntity = pOacdEntity_
    , _oacdGeneration = Nothing
    , _oacdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oacdQuotaUser :: Lens' ObjectAccessControlsDelete' (Maybe Text)
oacdQuotaUser
  = lens _oacdQuotaUser
      (\ s a -> s{_oacdQuotaUser = a})

-- | Returns response with indentations and line breaks.
oacdPrettyPrint :: Lens' ObjectAccessControlsDelete' Bool
oacdPrettyPrint
  = lens _oacdPrettyPrint
      (\ s a -> s{_oacdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oacdUserIP :: Lens' ObjectAccessControlsDelete' (Maybe Text)
oacdUserIP
  = lens _oacdUserIP (\ s a -> s{_oacdUserIP = a})

-- | Name of a bucket.
oacdBucket :: Lens' ObjectAccessControlsDelete' Text
oacdBucket
  = lens _oacdBucket (\ s a -> s{_oacdBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacdKey :: Lens' ObjectAccessControlsDelete' (Maybe AuthKey)
oacdKey = lens _oacdKey (\ s a -> s{_oacdKey = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oacdObject :: Lens' ObjectAccessControlsDelete' Text
oacdObject
  = lens _oacdObject (\ s a -> s{_oacdObject = a})

-- | OAuth 2.0 token for the current user.
oacdOAuthToken :: Lens' ObjectAccessControlsDelete' (Maybe OAuthToken)
oacdOAuthToken
  = lens _oacdOAuthToken
      (\ s a -> s{_oacdOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacdEntity :: Lens' ObjectAccessControlsDelete' Text
oacdEntity
  = lens _oacdEntity (\ s a -> s{_oacdEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacdGeneration :: Lens' ObjectAccessControlsDelete' (Maybe Int64)
oacdGeneration
  = lens _oacdGeneration
      (\ s a -> s{_oacdGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oacdFields :: Lens' ObjectAccessControlsDelete' (Maybe Text)
oacdFields
  = lens _oacdFields (\ s a -> s{_oacdFields = a})

instance GoogleAuth ObjectAccessControlsDelete' where
        _AuthKey = oacdKey . _Just
        _AuthToken = oacdOAuthToken . _Just

instance GoogleRequest ObjectAccessControlsDelete'
         where
        type Rs ObjectAccessControlsDelete' = ()
        request = requestWith storageRequest
        requestWith rq ObjectAccessControlsDelete'{..}
          = go _oacdBucket _oacdObject _oacdEntity
              _oacdGeneration
              _oacdQuotaUser
              (Just _oacdPrettyPrint)
              _oacdUserIP
              _oacdFields
              _oacdKey
              _oacdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ObjectAccessControlsDeleteResource)
                      rq
