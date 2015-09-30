{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsDelete@.
module Storage.BucketAccessControls.Delete
    (
    -- * REST Resource
      BucketAccessControlsDeleteAPI

    -- * Creating a Request
    , bucketAccessControlsDelete
    , BucketAccessControlsDelete

    -- * Request Lenses
    , bacdQuotaUser
    , bacdPrettyPrint
    , bacdUserIp
    , bacdBucket
    , bacdKey
    , bacdOauthToken
    , bacdEntity
    , bacdFields
    , bacdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsDelete@ which the
-- 'BucketAccessControlsDelete' request conforms to.
type BucketAccessControlsDeleteAPI =
     "b" :>
       Capture "bucket" Text :>
         "acl" :> Capture "entity" Text :> Delete '[JSON] ()

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ 'bucketAccessControlsDelete' smart constructor.
data BucketAccessControlsDelete = BucketAccessControlsDelete
    { _bacdQuotaUser   :: !(Maybe Text)
    , _bacdPrettyPrint :: !Bool
    , _bacdUserIp      :: !(Maybe Text)
    , _bacdBucket      :: !Text
    , _bacdKey         :: !(Maybe Text)
    , _bacdOauthToken  :: !(Maybe Text)
    , _bacdEntity      :: !Text
    , _bacdFields      :: !(Maybe Text)
    , _bacdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacdQuotaUser'
--
-- * 'bacdPrettyPrint'
--
-- * 'bacdUserIp'
--
-- * 'bacdBucket'
--
-- * 'bacdKey'
--
-- * 'bacdOauthToken'
--
-- * 'bacdEntity'
--
-- * 'bacdFields'
--
-- * 'bacdAlt'
bucketAccessControlsDelete
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsDelete
bucketAccessControlsDelete pBacdBucket_ pBacdEntity_ =
    BucketAccessControlsDelete
    { _bacdQuotaUser = Nothing
    , _bacdPrettyPrint = True
    , _bacdUserIp = Nothing
    , _bacdBucket = pBacdBucket_
    , _bacdKey = Nothing
    , _bacdOauthToken = Nothing
    , _bacdEntity = pBacdEntity_
    , _bacdFields = Nothing
    , _bacdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bacdQuotaUser :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdQuotaUser
  = lens _bacdQuotaUser
      (\ s a -> s{_bacdQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacdPrettyPrint :: Lens' BucketAccessControlsDelete' Bool
bacdPrettyPrint
  = lens _bacdPrettyPrint
      (\ s a -> s{_bacdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bacdUserIp :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdUserIp
  = lens _bacdUserIp (\ s a -> s{_bacdUserIp = a})

-- | Name of a bucket.
bacdBucket :: Lens' BucketAccessControlsDelete' Text
bacdBucket
  = lens _bacdBucket (\ s a -> s{_bacdBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacdKey :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdKey = lens _bacdKey (\ s a -> s{_bacdKey = a})

-- | OAuth 2.0 token for the current user.
bacdOauthToken :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdOauthToken
  = lens _bacdOauthToken
      (\ s a -> s{_bacdOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacdEntity :: Lens' BucketAccessControlsDelete' Text
bacdEntity
  = lens _bacdEntity (\ s a -> s{_bacdEntity = a})

-- | Selector specifying which fields to include in a partial response.
bacdFields :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdFields
  = lens _bacdFields (\ s a -> s{_bacdFields = a})

-- | Data format for the response.
bacdAlt :: Lens' BucketAccessControlsDelete' Text
bacdAlt = lens _bacdAlt (\ s a -> s{_bacdAlt = a})

instance GoogleRequest BucketAccessControlsDelete'
         where
        type Rs BucketAccessControlsDelete' = ()
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsDelete{..}
          = go _bacdQuotaUser _bacdPrettyPrint _bacdUserIp
              _bacdBucket
              _bacdKey
              _bacdOauthToken
              _bacdEntity
              _bacdFields
              _bacdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsDeleteAPI)
                      r
                      u
