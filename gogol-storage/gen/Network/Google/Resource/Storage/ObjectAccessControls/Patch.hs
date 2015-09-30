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
    , oacpUserIp
    , oacpBucket
    , oacpKey
    , oacpObject
    , oacpOauthToken
    , oacpEntity
    , oacpGeneration
    , oacpFields
    , oacpAlt
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
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "generation" Word64 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Patch '[JSON] ObjectAccessControl

-- | Updates an ACL entry on the specified object. This method supports patch
-- semantics.
--
-- /See:/ 'objectAccessControlsPatch'' smart constructor.
data ObjectAccessControlsPatch' = ObjectAccessControlsPatch'
    { _oacpQuotaUser   :: !(Maybe Text)
    , _oacpPrettyPrint :: !Bool
    , _oacpUserIp      :: !(Maybe Text)
    , _oacpBucket      :: !Text
    , _oacpKey         :: !(Maybe Text)
    , _oacpObject      :: !Text
    , _oacpOauthToken  :: !(Maybe Text)
    , _oacpEntity      :: !Text
    , _oacpGeneration  :: !(Maybe Word64)
    , _oacpFields      :: !(Maybe Text)
    , _oacpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacpQuotaUser'
--
-- * 'oacpPrettyPrint'
--
-- * 'oacpUserIp'
--
-- * 'oacpBucket'
--
-- * 'oacpKey'
--
-- * 'oacpObject'
--
-- * 'oacpOauthToken'
--
-- * 'oacpEntity'
--
-- * 'oacpGeneration'
--
-- * 'oacpFields'
--
-- * 'oacpAlt'
objectAccessControlsPatch'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControlsPatch'
objectAccessControlsPatch' pOacpBucket_ pOacpObject_ pOacpEntity_ =
    ObjectAccessControlsPatch'
    { _oacpQuotaUser = Nothing
    , _oacpPrettyPrint = True
    , _oacpUserIp = Nothing
    , _oacpBucket = pOacpBucket_
    , _oacpKey = Nothing
    , _oacpObject = pOacpObject_
    , _oacpOauthToken = Nothing
    , _oacpEntity = pOacpEntity_
    , _oacpGeneration = Nothing
    , _oacpFields = Nothing
    , _oacpAlt = JSON
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
oacpUserIp :: Lens' ObjectAccessControlsPatch' (Maybe Text)
oacpUserIp
  = lens _oacpUserIp (\ s a -> s{_oacpUserIp = a})

-- | Name of a bucket.
oacpBucket :: Lens' ObjectAccessControlsPatch' Text
oacpBucket
  = lens _oacpBucket (\ s a -> s{_oacpBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacpKey :: Lens' ObjectAccessControlsPatch' (Maybe Text)
oacpKey = lens _oacpKey (\ s a -> s{_oacpKey = a})

-- | Name of the object.
oacpObject :: Lens' ObjectAccessControlsPatch' Text
oacpObject
  = lens _oacpObject (\ s a -> s{_oacpObject = a})

-- | OAuth 2.0 token for the current user.
oacpOauthToken :: Lens' ObjectAccessControlsPatch' (Maybe Text)
oacpOauthToken
  = lens _oacpOauthToken
      (\ s a -> s{_oacpOauthToken = a})

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

-- | Data format for the response.
oacpAlt :: Lens' ObjectAccessControlsPatch' Alt
oacpAlt = lens _oacpAlt (\ s a -> s{_oacpAlt = a})

instance GoogleRequest ObjectAccessControlsPatch'
         where
        type Rs ObjectAccessControlsPatch' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsPatch'{..}
          = go _oacpQuotaUser (Just _oacpPrettyPrint)
              _oacpUserIp
              _oacpBucket
              _oacpKey
              _oacpObject
              _oacpOauthToken
              _oacpEntity
              _oacpGeneration
              _oacpFields
              (Just _oacpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsPatchResource)
                      r
                      u
