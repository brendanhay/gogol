{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.Buckets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.buckets.update@.
module Network.Google.API.Storage.Buckets.Update
    (
    -- * REST Resource
      BucketsUpdateAPI

    -- * Creating a Request
    , bucketsUpdate'
    , BucketsUpdate'

    -- * Request Lenses
    , buQuotaUser
    , buIfMetagenerationMatch
    , buPrettyPrint
    , buUserIp
    , buBucket
    , buKey
    , buIfMetagenerationNotMatch
    , buProjection
    , buOauthToken
    , buFields
    , buAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.buckets.update which the
-- 'BucketsUpdate'' request conforms to.
type BucketsUpdateAPI =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "ifMetagenerationMatch" Word64 :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "projection" BucketsUpdate'Projection :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] Bucket

-- | Updates a bucket.
--
-- /See:/ 'bucketsUpdate'' smart constructor.
data BucketsUpdate' = BucketsUpdate'
    { _buQuotaUser                :: !(Maybe Text)
    , _buIfMetagenerationMatch    :: !(Maybe Word64)
    , _buPrettyPrint              :: !Bool
    , _buUserIp                   :: !(Maybe Text)
    , _buBucket                   :: !Text
    , _buKey                      :: !(Maybe Text)
    , _buIfMetagenerationNotMatch :: !(Maybe Word64)
    , _buProjection               :: !(Maybe BucketsUpdate'Projection)
    , _buOauthToken               :: !(Maybe Text)
    , _buFields                   :: !(Maybe Text)
    , _buAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buQuotaUser'
--
-- * 'buIfMetagenerationMatch'
--
-- * 'buPrettyPrint'
--
-- * 'buUserIp'
--
-- * 'buBucket'
--
-- * 'buKey'
--
-- * 'buIfMetagenerationNotMatch'
--
-- * 'buProjection'
--
-- * 'buOauthToken'
--
-- * 'buFields'
--
-- * 'buAlt'
bucketsUpdate'
    :: Text -- ^ 'bucket'
    -> BucketsUpdate'
bucketsUpdate' pBuBucket_ =
    BucketsUpdate'
    { _buQuotaUser = Nothing
    , _buIfMetagenerationMatch = Nothing
    , _buPrettyPrint = True
    , _buUserIp = Nothing
    , _buBucket = pBuBucket_
    , _buKey = Nothing
    , _buIfMetagenerationNotMatch = Nothing
    , _buProjection = Nothing
    , _buOauthToken = Nothing
    , _buFields = Nothing
    , _buAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
buQuotaUser :: Lens' BucketsUpdate' (Maybe Text)
buQuotaUser
  = lens _buQuotaUser (\ s a -> s{_buQuotaUser = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
buIfMetagenerationMatch :: Lens' BucketsUpdate' (Maybe Word64)
buIfMetagenerationMatch
  = lens _buIfMetagenerationMatch
      (\ s a -> s{_buIfMetagenerationMatch = a})

-- | Returns response with indentations and line breaks.
buPrettyPrint :: Lens' BucketsUpdate' Bool
buPrettyPrint
  = lens _buPrettyPrint
      (\ s a -> s{_buPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
buUserIp :: Lens' BucketsUpdate' (Maybe Text)
buUserIp = lens _buUserIp (\ s a -> s{_buUserIp = a})

-- | Name of a bucket.
buBucket :: Lens' BucketsUpdate' Text
buBucket = lens _buBucket (\ s a -> s{_buBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
buKey :: Lens' BucketsUpdate' (Maybe Text)
buKey = lens _buKey (\ s a -> s{_buKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
buIfMetagenerationNotMatch :: Lens' BucketsUpdate' (Maybe Word64)
buIfMetagenerationNotMatch
  = lens _buIfMetagenerationNotMatch
      (\ s a -> s{_buIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to full.
buProjection :: Lens' BucketsUpdate' (Maybe BucketsUpdate'Projection)
buProjection
  = lens _buProjection (\ s a -> s{_buProjection = a})

-- | OAuth 2.0 token for the current user.
buOauthToken :: Lens' BucketsUpdate' (Maybe Text)
buOauthToken
  = lens _buOauthToken (\ s a -> s{_buOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
buFields :: Lens' BucketsUpdate' (Maybe Text)
buFields = lens _buFields (\ s a -> s{_buFields = a})

-- | Data format for the response.
buAlt :: Lens' BucketsUpdate' Alt
buAlt = lens _buAlt (\ s a -> s{_buAlt = a})

instance GoogleRequest BucketsUpdate' where
        type Rs BucketsUpdate' = Bucket
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsUpdate'{..}
          = go _buQuotaUser _buIfMetagenerationMatch
              (Just _buPrettyPrint)
              _buUserIp
              _buBucket
              _buKey
              _buIfMetagenerationNotMatch
              _buProjection
              _buOauthToken
              _buFields
              (Just _buAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy BucketsUpdateAPI) r
                      u
