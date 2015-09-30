{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes the default object ACL entry for the specified
-- entity on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsDelete@.
module Storage.DefaultObjectAccessControls.Delete
    (
    -- * REST Resource
      DefaultObjectAccessControlsDeleteAPI

    -- * Creating a Request
    , defaultObjectAccessControlsDelete
    , DefaultObjectAccessControlsDelete

    -- * Request Lenses
    , doacdQuotaUser
    , doacdPrettyPrint
    , doacdUserIp
    , doacdBucket
    , doacdKey
    , doacdOauthToken
    , doacdEntity
    , doacdFields
    , doacdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsDelete@ which the
-- 'DefaultObjectAccessControlsDelete' request conforms to.
type DefaultObjectAccessControlsDeleteAPI =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Capture "entity" Text :> Delete '[JSON] ()

-- | Permanently deletes the default object ACL entry for the specified
-- entity on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsDelete' smart constructor.
data DefaultObjectAccessControlsDelete = DefaultObjectAccessControlsDelete
    { _doacdQuotaUser   :: !(Maybe Text)
    , _doacdPrettyPrint :: !Bool
    , _doacdUserIp      :: !(Maybe Text)
    , _doacdBucket      :: !Text
    , _doacdKey         :: !(Maybe Text)
    , _doacdOauthToken  :: !(Maybe Text)
    , _doacdEntity      :: !Text
    , _doacdFields      :: !(Maybe Text)
    , _doacdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacdQuotaUser'
--
-- * 'doacdPrettyPrint'
--
-- * 'doacdUserIp'
--
-- * 'doacdBucket'
--
-- * 'doacdKey'
--
-- * 'doacdOauthToken'
--
-- * 'doacdEntity'
--
-- * 'doacdFields'
--
-- * 'doacdAlt'
defaultObjectAccessControlsDelete
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> DefaultObjectAccessControlsDelete
defaultObjectAccessControlsDelete pDoacdBucket_ pDoacdEntity_ =
    DefaultObjectAccessControlsDelete
    { _doacdQuotaUser = Nothing
    , _doacdPrettyPrint = True
    , _doacdUserIp = Nothing
    , _doacdBucket = pDoacdBucket_
    , _doacdKey = Nothing
    , _doacdOauthToken = Nothing
    , _doacdEntity = pDoacdEntity_
    , _doacdFields = Nothing
    , _doacdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doacdQuotaUser :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdQuotaUser
  = lens _doacdQuotaUser
      (\ s a -> s{_doacdQuotaUser = a})

-- | Returns response with indentations and line breaks.
doacdPrettyPrint :: Lens' DefaultObjectAccessControlsDelete' Bool
doacdPrettyPrint
  = lens _doacdPrettyPrint
      (\ s a -> s{_doacdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doacdUserIp :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdUserIp
  = lens _doacdUserIp (\ s a -> s{_doacdUserIp = a})

-- | Name of a bucket.
doacdBucket :: Lens' DefaultObjectAccessControlsDelete' Text
doacdBucket
  = lens _doacdBucket (\ s a -> s{_doacdBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doacdKey :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdKey = lens _doacdKey (\ s a -> s{_doacdKey = a})

-- | OAuth 2.0 token for the current user.
doacdOauthToken :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdOauthToken
  = lens _doacdOauthToken
      (\ s a -> s{_doacdOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacdEntity :: Lens' DefaultObjectAccessControlsDelete' Text
doacdEntity
  = lens _doacdEntity (\ s a -> s{_doacdEntity = a})

-- | Selector specifying which fields to include in a partial response.
doacdFields :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdFields
  = lens _doacdFields (\ s a -> s{_doacdFields = a})

-- | Data format for the response.
doacdAlt :: Lens' DefaultObjectAccessControlsDelete' Text
doacdAlt = lens _doacdAlt (\ s a -> s{_doacdAlt = a})

instance GoogleRequest
         DefaultObjectAccessControlsDelete' where
        type Rs DefaultObjectAccessControlsDelete' = ()
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsDelete{..}
          = go _doacdQuotaUser _doacdPrettyPrint _doacdUserIp
              _doacdBucket
              _doacdKey
              _doacdOauthToken
              _doacdEntity
              _doacdFields
              _doacdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DefaultObjectAccessControlsDeleteAPI)
                      r
                      u
