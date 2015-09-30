{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectAccessControlsGet@.
module Storage.ObjectAccessControls.Get
    (
    -- * REST Resource
      ObjectAccessControlsGetAPI

    -- * Creating a Request
    , objectAccessControlsGet
    , ObjectAccessControlsGet

    -- * Request Lenses
    , oacgQuotaUser
    , oacgPrettyPrint
    , oacgUserIp
    , oacgBucket
    , oacgKey
    , oacgObject
    , oacgOauthToken
    , oacgEntity
    , oacgGeneration
    , oacgFields
    , oacgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsGet@ which the
-- 'ObjectAccessControlsGet' request conforms to.
type ObjectAccessControlsGetAPI =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               Capture "entity" Text :>
                 QueryParam "generation" Word64 :>
                   Get '[JSON] ObjectAccessControl

-- | Returns the ACL entry for the specified entity on the specified object.
--
-- /See:/ 'objectAccessControlsGet' smart constructor.
data ObjectAccessControlsGet = ObjectAccessControlsGet
    { _oacgQuotaUser   :: !(Maybe Text)
    , _oacgPrettyPrint :: !Bool
    , _oacgUserIp      :: !(Maybe Text)
    , _oacgBucket      :: !Text
    , _oacgKey         :: !(Maybe Text)
    , _oacgObject      :: !Text
    , _oacgOauthToken  :: !(Maybe Text)
    , _oacgEntity      :: !Text
    , _oacgGeneration  :: !(Maybe Word64)
    , _oacgFields      :: !(Maybe Text)
    , _oacgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacgQuotaUser'
--
-- * 'oacgPrettyPrint'
--
-- * 'oacgUserIp'
--
-- * 'oacgBucket'
--
-- * 'oacgKey'
--
-- * 'oacgObject'
--
-- * 'oacgOauthToken'
--
-- * 'oacgEntity'
--
-- * 'oacgGeneration'
--
-- * 'oacgFields'
--
-- * 'oacgAlt'
objectAccessControlsGet
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> Text -- ^ 'entity'
    -> ObjectAccessControlsGet
objectAccessControlsGet pOacgBucket_ pOacgObject_ pOacgEntity_ =
    ObjectAccessControlsGet
    { _oacgQuotaUser = Nothing
    , _oacgPrettyPrint = True
    , _oacgUserIp = Nothing
    , _oacgBucket = pOacgBucket_
    , _oacgKey = Nothing
    , _oacgObject = pOacgObject_
    , _oacgOauthToken = Nothing
    , _oacgEntity = pOacgEntity_
    , _oacgGeneration = Nothing
    , _oacgFields = Nothing
    , _oacgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oacgQuotaUser :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgQuotaUser
  = lens _oacgQuotaUser
      (\ s a -> s{_oacgQuotaUser = a})

-- | Returns response with indentations and line breaks.
oacgPrettyPrint :: Lens' ObjectAccessControlsGet' Bool
oacgPrettyPrint
  = lens _oacgPrettyPrint
      (\ s a -> s{_oacgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oacgUserIp :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgUserIp
  = lens _oacgUserIp (\ s a -> s{_oacgUserIp = a})

-- | Name of a bucket.
oacgBucket :: Lens' ObjectAccessControlsGet' Text
oacgBucket
  = lens _oacgBucket (\ s a -> s{_oacgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oacgKey :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgKey = lens _oacgKey (\ s a -> s{_oacgKey = a})

-- | Name of the object.
oacgObject :: Lens' ObjectAccessControlsGet' Text
oacgObject
  = lens _oacgObject (\ s a -> s{_oacgObject = a})

-- | OAuth 2.0 token for the current user.
oacgOauthToken :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgOauthToken
  = lens _oacgOauthToken
      (\ s a -> s{_oacgOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
oacgEntity :: Lens' ObjectAccessControlsGet' Text
oacgEntity
  = lens _oacgEntity (\ s a -> s{_oacgEntity = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oacgGeneration :: Lens' ObjectAccessControlsGet' (Maybe Word64)
oacgGeneration
  = lens _oacgGeneration
      (\ s a -> s{_oacgGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oacgFields :: Lens' ObjectAccessControlsGet' (Maybe Text)
oacgFields
  = lens _oacgFields (\ s a -> s{_oacgFields = a})

-- | Data format for the response.
oacgAlt :: Lens' ObjectAccessControlsGet' Text
oacgAlt = lens _oacgAlt (\ s a -> s{_oacgAlt = a})

instance GoogleRequest ObjectAccessControlsGet' where
        type Rs ObjectAccessControlsGet' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsGet{..}
          = go _oacgQuotaUser _oacgPrettyPrint _oacgUserIp
              _oacgBucket
              _oacgKey
              _oacgObject
              _oacgOauthToken
              _oacgEntity
              _oacgGeneration
              _oacgFields
              _oacgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsGetAPI)
                      r
                      u
