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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an ACL entry on the specified bucket. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsPatch@.
module Network.Google.Resource.Storage.BucketAccessControls.Patch
    (
    -- * REST Resource
      BucketAccessControlsPatchResource

    -- * Creating a Request
    , bucketAccessControlsPatch'
    , BucketAccessControlsPatch'

    -- * Request Lenses
    , bacpQuotaUser
    , bacpPrettyPrint
    , bacpUserIp
    , bacpBucket
    , bacpKey
    , bacpOauthToken
    , bacpEntity
    , bacpFields
    , bacpAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsPatch@ which the
-- 'BucketAccessControlsPatch'' request conforms to.
type BucketAccessControlsPatchResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Patch '[JSON] BucketAccessControl

-- | Updates an ACL entry on the specified bucket. This method supports patch
-- semantics.
--
-- /See:/ 'bucketAccessControlsPatch'' smart constructor.
data BucketAccessControlsPatch' = BucketAccessControlsPatch'
    { _bacpQuotaUser   :: !(Maybe Text)
    , _bacpPrettyPrint :: !Bool
    , _bacpUserIp      :: !(Maybe Text)
    , _bacpBucket      :: !Text
    , _bacpKey         :: !(Maybe Text)
    , _bacpOauthToken  :: !(Maybe Text)
    , _bacpEntity      :: !Text
    , _bacpFields      :: !(Maybe Text)
    , _bacpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacpQuotaUser'
--
-- * 'bacpPrettyPrint'
--
-- * 'bacpUserIp'
--
-- * 'bacpBucket'
--
-- * 'bacpKey'
--
-- * 'bacpOauthToken'
--
-- * 'bacpEntity'
--
-- * 'bacpFields'
--
-- * 'bacpAlt'
bucketAccessControlsPatch'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsPatch'
bucketAccessControlsPatch' pBacpBucket_ pBacpEntity_ =
    BucketAccessControlsPatch'
    { _bacpQuotaUser = Nothing
    , _bacpPrettyPrint = True
    , _bacpUserIp = Nothing
    , _bacpBucket = pBacpBucket_
    , _bacpKey = Nothing
    , _bacpOauthToken = Nothing
    , _bacpEntity = pBacpEntity_
    , _bacpFields = Nothing
    , _bacpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bacpQuotaUser :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpQuotaUser
  = lens _bacpQuotaUser
      (\ s a -> s{_bacpQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacpPrettyPrint :: Lens' BucketAccessControlsPatch' Bool
bacpPrettyPrint
  = lens _bacpPrettyPrint
      (\ s a -> s{_bacpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bacpUserIp :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpUserIp
  = lens _bacpUserIp (\ s a -> s{_bacpUserIp = a})

-- | Name of a bucket.
bacpBucket :: Lens' BucketAccessControlsPatch' Text
bacpBucket
  = lens _bacpBucket (\ s a -> s{_bacpBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacpKey :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpKey = lens _bacpKey (\ s a -> s{_bacpKey = a})

-- | OAuth 2.0 token for the current user.
bacpOauthToken :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpOauthToken
  = lens _bacpOauthToken
      (\ s a -> s{_bacpOauthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacpEntity :: Lens' BucketAccessControlsPatch' Text
bacpEntity
  = lens _bacpEntity (\ s a -> s{_bacpEntity = a})

-- | Selector specifying which fields to include in a partial response.
bacpFields :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpFields
  = lens _bacpFields (\ s a -> s{_bacpFields = a})

-- | Data format for the response.
bacpAlt :: Lens' BucketAccessControlsPatch' Alt
bacpAlt = lens _bacpAlt (\ s a -> s{_bacpAlt = a})

instance GoogleRequest BucketAccessControlsPatch'
         where
        type Rs BucketAccessControlsPatch' =
             BucketAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsPatch'{..}
          = go _bacpQuotaUser (Just _bacpPrettyPrint)
              _bacpUserIp
              _bacpBucket
              _bacpKey
              _bacpOauthToken
              _bacpEntity
              _bacpFields
              (Just _bacpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsPatchResource)
                      r
                      u
