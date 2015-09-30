{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsUpdate@.
module Storage.BucketAccessControls.Update
    (
    -- * REST Resource
      BucketAccessControlsUpdateAPI

    -- * Creating a Request
    , bucketAccessControlsUpdate
    , BucketAccessControlsUpdate

    -- * Request Lenses
    , bacuQuotaUser
    , bacuPrettyPrint
    , bacuUserIp
    , bacuBucket
    , bacuKey
    , bacuOauthToken
    , bacuEntity
    , bacuFields
    , bacuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsUpdate@ which the
-- 'BucketAccessControlsUpdate' request conforms to.
type BucketAccessControlsUpdateAPI =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           Capture "entity" Text :>
             Put '[JSON] BucketAccessControl

-- | Updates an ACL entry on the specified bucket.
--
-- /See:/ 'bucketAccessControlsUpdate' smart constructor.
data BucketAccessControlsUpdate = BucketAccessControlsUpdate
    { _bacuQuotaUser   :: !(Maybe Text)
    , _bacuPrettyPrint :: !Bool
    , _bacuUserIp      :: !(Maybe Text)
    , _bacuBucket      :: !Text
    , _bacuKey         :: !(Maybe Text)
    , _bacuOauthToken  :: !(Maybe Text)
    , _bacuEntity      :: !Text
    , _bacuFields      :: !(Maybe Text)
    , _bacuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacuQuotaUser'
--
-- * 'bacuPrettyPrint'
--
-- * 'bacuUserIp'
--
-- * 'bacuBucket'
--
-- * 'bacuKey'
--
-- * 'bacuOauthToken'
--
-- * 'bacuEntity'
--
-- * 'bacuFields'
--
-- * 'bacuAlt'
bucketAccessControlsUpdate
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsUpdate
bucketAccessControlsUpdate pBacuBucket_ pBacuEntity_ =
    BucketAccessControlsUpdate
    { _bacuQuotaUser = Nothing
    , _bacuPrettyPrint = True
    , _bacuUserIp = Nothing
    , _bacuBucket = pBacuBucket_
    , _bacuKey = Nothing
    , _bacuOauthToken = Nothing
    , _bacuEntity = pBacuEntity_
    , _bacuFields = Nothing
    , _bacuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bacuQuotaUser :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuQuotaUser
  = lens _bacuQuotaUser
      (\ s a -> s{_bacuQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacuPrettyPrint :: Lens' BucketAccessControlsUpdate' Bool
bacuPrettyPrint
  = lens _bacuPrettyPrint
      (\ s a -> s{_bacuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bacuUserIp :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuUserIp
  = lens _bacuUserIp (\ s a -> s{_bacuUserIp = a})

-- | Name of a bucket.
bacuBucket :: Lens' BucketAccessControlsUpdate' Text
bacuBucket
  = lens _bacuBucket (\ s a -> s{_bacuBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacuKey :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuKey = lens _bacuKey (\ s a -> s{_bacuKey = a})

-- | OAuth 2.0 token for the current user.
bacuOauthToken :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuOauthToken
  = lens _bacuOauthToken
      (\ s a -> s{_bacuOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacuEntity :: Lens' BucketAccessControlsUpdate' Text
bacuEntity
  = lens _bacuEntity (\ s a -> s{_bacuEntity = a})

-- | Selector specifying which fields to include in a partial response.
bacuFields :: Lens' BucketAccessControlsUpdate' (Maybe Text)
bacuFields
  = lens _bacuFields (\ s a -> s{_bacuFields = a})

-- | Data format for the response.
bacuAlt :: Lens' BucketAccessControlsUpdate' Text
bacuAlt = lens _bacuAlt (\ s a -> s{_bacuAlt = a})

instance GoogleRequest BucketAccessControlsUpdate'
         where
        type Rs BucketAccessControlsUpdate' =
             BucketAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsUpdate{..}
          = go _bacuQuotaUser _bacuPrettyPrint _bacuUserIp
              _bacuBucket
              _bacuKey
              _bacuOauthToken
              _bacuEntity
              _bacuFields
              _bacuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsUpdateAPI)
                      r
                      u
