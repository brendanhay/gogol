{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Storage.DefaultObjectAccessControls.Patch
    (
    -- * REST Resource
      DefaultObjectAccessControlsPatchAPI

    -- * Creating a Request
    , defaultObjectAccessControlsPatch
    , DefaultObjectAccessControlsPatch

    -- * Request Lenses
    , doacpQuotaUser
    , doacpPrettyPrint
    , doacpUserIp
    , doacpBucket
    , doacpKey
    , doacpOauthToken
    , doacpEntity
    , doacpFields
    , doacpAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsPatch@ which the
-- 'DefaultObjectAccessControlsPatch' request conforms to.
type DefaultObjectAccessControlsPatchAPI =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Capture "entity" Text :>
             Patch '[JSON] ObjectAccessControl

-- | Updates a default object ACL entry on the specified bucket. This method
-- supports patch semantics.
--
-- /See:/ 'defaultObjectAccessControlsPatch' smart constructor.
data DefaultObjectAccessControlsPatch = DefaultObjectAccessControlsPatch
    { _doacpQuotaUser   :: !(Maybe Text)
    , _doacpPrettyPrint :: !Bool
    , _doacpUserIp      :: !(Maybe Text)
    , _doacpBucket      :: !Text
    , _doacpKey         :: !(Maybe Text)
    , _doacpOauthToken  :: !(Maybe Text)
    , _doacpEntity      :: !Text
    , _doacpFields      :: !(Maybe Text)
    , _doacpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacpQuotaUser'
--
-- * 'doacpPrettyPrint'
--
-- * 'doacpUserIp'
--
-- * 'doacpBucket'
--
-- * 'doacpKey'
--
-- * 'doacpOauthToken'
--
-- * 'doacpEntity'
--
-- * 'doacpFields'
--
-- * 'doacpAlt'
defaultObjectAccessControlsPatch
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> DefaultObjectAccessControlsPatch
defaultObjectAccessControlsPatch pDoacpBucket_ pDoacpEntity_ =
    DefaultObjectAccessControlsPatch
    { _doacpQuotaUser = Nothing
    , _doacpPrettyPrint = True
    , _doacpUserIp = Nothing
    , _doacpBucket = pDoacpBucket_
    , _doacpKey = Nothing
    , _doacpOauthToken = Nothing
    , _doacpEntity = pDoacpEntity_
    , _doacpFields = Nothing
    , _doacpAlt = "json"
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
doacpUserIp :: Lens' DefaultObjectAccessControlsPatch' (Maybe Text)
doacpUserIp
  = lens _doacpUserIp (\ s a -> s{_doacpUserIp = a})

-- | Name of a bucket.
doacpBucket :: Lens' DefaultObjectAccessControlsPatch' Text
doacpBucket
  = lens _doacpBucket (\ s a -> s{_doacpBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doacpKey :: Lens' DefaultObjectAccessControlsPatch' (Maybe Text)
doacpKey = lens _doacpKey (\ s a -> s{_doacpKey = a})

-- | OAuth 2.0 token for the current user.
doacpOauthToken :: Lens' DefaultObjectAccessControlsPatch' (Maybe Text)
doacpOauthToken
  = lens _doacpOauthToken
      (\ s a -> s{_doacpOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacpEntity :: Lens' DefaultObjectAccessControlsPatch' Text
doacpEntity
  = lens _doacpEntity (\ s a -> s{_doacpEntity = a})

-- | Selector specifying which fields to include in a partial response.
doacpFields :: Lens' DefaultObjectAccessControlsPatch' (Maybe Text)
doacpFields
  = lens _doacpFields (\ s a -> s{_doacpFields = a})

-- | Data format for the response.
doacpAlt :: Lens' DefaultObjectAccessControlsPatch' Text
doacpAlt = lens _doacpAlt (\ s a -> s{_doacpAlt = a})

instance GoogleRequest
         DefaultObjectAccessControlsPatch' where
        type Rs DefaultObjectAccessControlsPatch' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsPatch{..}
          = go _doacpQuotaUser _doacpPrettyPrint _doacpUserIp
              _doacpBucket
              _doacpKey
              _doacpOauthToken
              _doacpEntity
              _doacpFields
              _doacpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DefaultObjectAccessControlsPatchAPI)
                      r
                      u
