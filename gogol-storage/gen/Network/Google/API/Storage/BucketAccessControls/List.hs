{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.BucketAccessControls.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves ACL entries on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.bucketAccessControls.list@.
module Network.Google.API.Storage.BucketAccessControls.List
    (
    -- * REST Resource
      BucketAccessControlsListAPI

    -- * Creating a Request
    , bucketAccessControlsList'
    , BucketAccessControlsList'

    -- * Request Lenses
    , baclQuotaUser
    , baclPrettyPrint
    , baclUserIp
    , baclBucket
    , baclKey
    , baclOauthToken
    , baclFields
    , baclAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.bucketAccessControls.list which the
-- 'BucketAccessControlsList'' request conforms to.
type BucketAccessControlsListAPI =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] BucketAccessControls

-- | Retrieves ACL entries on the specified bucket.
--
-- /See:/ 'bucketAccessControlsList'' smart constructor.
data BucketAccessControlsList' = BucketAccessControlsList'
    { _baclQuotaUser   :: !(Maybe Text)
    , _baclPrettyPrint :: !Bool
    , _baclUserIp      :: !(Maybe Text)
    , _baclBucket      :: !Text
    , _baclKey         :: !(Maybe Text)
    , _baclOauthToken  :: !(Maybe Text)
    , _baclFields      :: !(Maybe Text)
    , _baclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baclQuotaUser'
--
-- * 'baclPrettyPrint'
--
-- * 'baclUserIp'
--
-- * 'baclBucket'
--
-- * 'baclKey'
--
-- * 'baclOauthToken'
--
-- * 'baclFields'
--
-- * 'baclAlt'
bucketAccessControlsList'
    :: Text -- ^ 'bucket'
    -> BucketAccessControlsList'
bucketAccessControlsList' pBaclBucket_ =
    BucketAccessControlsList'
    { _baclQuotaUser = Nothing
    , _baclPrettyPrint = True
    , _baclUserIp = Nothing
    , _baclBucket = pBaclBucket_
    , _baclKey = Nothing
    , _baclOauthToken = Nothing
    , _baclFields = Nothing
    , _baclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
baclQuotaUser :: Lens' BucketAccessControlsList' (Maybe Text)
baclQuotaUser
  = lens _baclQuotaUser
      (\ s a -> s{_baclQuotaUser = a})

-- | Returns response with indentations and line breaks.
baclPrettyPrint :: Lens' BucketAccessControlsList' Bool
baclPrettyPrint
  = lens _baclPrettyPrint
      (\ s a -> s{_baclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
baclUserIp :: Lens' BucketAccessControlsList' (Maybe Text)
baclUserIp
  = lens _baclUserIp (\ s a -> s{_baclUserIp = a})

-- | Name of a bucket.
baclBucket :: Lens' BucketAccessControlsList' Text
baclBucket
  = lens _baclBucket (\ s a -> s{_baclBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
baclKey :: Lens' BucketAccessControlsList' (Maybe Text)
baclKey = lens _baclKey (\ s a -> s{_baclKey = a})

-- | OAuth 2.0 token for the current user.
baclOauthToken :: Lens' BucketAccessControlsList' (Maybe Text)
baclOauthToken
  = lens _baclOauthToken
      (\ s a -> s{_baclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
baclFields :: Lens' BucketAccessControlsList' (Maybe Text)
baclFields
  = lens _baclFields (\ s a -> s{_baclFields = a})

-- | Data format for the response.
baclAlt :: Lens' BucketAccessControlsList' Alt
baclAlt = lens _baclAlt (\ s a -> s{_baclAlt = a})

instance GoogleRequest BucketAccessControlsList'
         where
        type Rs BucketAccessControlsList' =
             BucketAccessControls
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsList'{..}
          = go _baclQuotaUser (Just _baclPrettyPrint)
              _baclUserIp
              _baclBucket
              _baclKey
              _baclOauthToken
              _baclFields
              (Just _baclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsListAPI)
                      r
                      u
