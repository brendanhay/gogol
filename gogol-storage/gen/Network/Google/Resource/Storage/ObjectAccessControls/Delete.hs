{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectAccessControlsDelete@.
module Storage.ObjectAccessControls.Delete
    (
    -- * REST Resource
      ObjectAccessControlsDeleteAPI

    -- * Creating a Request
    , objectAccessControlsDelete
    , ObjectAccessControlsDelete

    -- * Request Lenses
    , oacdQuotaUser
    , oacdPrettyPrint
    , oacdUserIp
    , oacdBucket
    , oacdKey
    , oacdObject
    , oacdOauthToken
    , oacdEntity
    , oacdGeneration
    , oacdFields
    , oacdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsDelete@ which the
-- 'ObjectAccessControlsDelete' request conforms to.
type ObjectAccessControlsDeleteAPI =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               Capture "entity" Text :>
                 QueryParam "generation" Word64 :> Delete '[JSON] ()

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified object.
--
-- /See:/ 'objectAccessControlsDelete' smart constructor.
data ObjectAccessControlsDelete = ObjectAccessControlsDelete
    { _oacdQuotaUser   :: !(Maybe Text)
    , _oacdPrettyPrint :: !Bool
    , _oacdUserIp      :: !(Maybe Text)
    , _oacdBucket      :: !Text
    , _oacdKey         :: !(Maybe Text)
    , _oacdObject      :: !Text
    , _oacdOauthToken  :: !(Maybe Text)
    , _oacdEntity      :: !Text
    , _oacdGeneration  :: !(Maybe Word64)
    , _oacdFields      :: !(Maybe Text)
    , _oacdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacdQuotaUser'
--
-- * 'oacdPrettyPrint'
--
-- * 'oacdUserIp'
--
-- * 'oacdBucket'
--
-- * 'oacdKey'
--
-- * 'oacdObject'
--
-- * 'oacdOauthToken'
--
-- * 'oacdEntity'
--
-- * 'oacdGeneration'
--
-- * 'oacdFields'
--
-- * 'oacdAlt'
objectAccessControlsDelete
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControlsDelete
objectAccessControlsDelete pOacdBucket_ pOacdObject_ pOacdEntity_ =
    ObjectAccessControlsDelete
    { _oacdQuotaUser = Nothing
    , _oacdPrettyPrint = True
    , _oacdUserIp = Nothing
    , _oacdBucket = pOacdBucket_
    , _oacdKey = Nothing
    , _oacdObject = pOacdObject_
    , _oacdOauthToken = Nothing
    , _oacdEntity = pOacdEntity_
    , _oacdGeneration = Nothing
    , _oacdFields = Nothing
    , _oacdAlt = "json"
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
oacdUserIp :: Lens' ObjectAccessControlsDelete' (Maybe Text)
oacdUserIp
  = lens _oacdUserIp (\ s a -> s{_oacdUserIp = a})

-- | Name of a bucket.
oacdBucket :: Lens' ObjectAccessControlsDelete' Text
oacdBucket
  = lens _oacdBucket (\ s a -> s{_oacdBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacdKey :: Lens' ObjectAccessControlsDelete' (Maybe Text)
oacdKey = lens _oacdKey (\ s a -> s{_oacdKey = a})

-- | Name of the object.
oacdObject :: Lens' ObjectAccessControlsDelete' Text
oacdObject
  = lens _oacdObject (\ s a -> s{_oacdObject = a})

-- | OAuth 2.0 token for the current user.
oacdOauthToken :: Lens' ObjectAccessControlsDelete' (Maybe Text)
oacdOauthToken
  = lens _oacdOauthToken
      (\ s a -> s{_oacdOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacdEntity :: Lens' ObjectAccessControlsDelete' Text
oacdEntity
  = lens _oacdEntity (\ s a -> s{_oacdEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacdGeneration :: Lens' ObjectAccessControlsDelete' (Maybe Word64)
oacdGeneration
  = lens _oacdGeneration
      (\ s a -> s{_oacdGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oacdFields :: Lens' ObjectAccessControlsDelete' (Maybe Text)
oacdFields
  = lens _oacdFields (\ s a -> s{_oacdFields = a})

-- | Data format for the response.
oacdAlt :: Lens' ObjectAccessControlsDelete' Text
oacdAlt = lens _oacdAlt (\ s a -> s{_oacdAlt = a})

instance GoogleRequest ObjectAccessControlsDelete'
         where
        type Rs ObjectAccessControlsDelete' = ()
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsDelete{..}
          = go _oacdQuotaUser _oacdPrettyPrint _oacdUserIp
              _oacdBucket
              _oacdKey
              _oacdObject
              _oacdOauthToken
              _oacdEntity
              _oacdGeneration
              _oacdFields
              _oacdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsDeleteAPI)
                      r
                      u
