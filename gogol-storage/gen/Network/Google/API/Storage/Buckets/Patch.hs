{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.Buckets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a bucket. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.buckets.patch@.
module Network.Google.API.Storage.Buckets.Patch
    (
    -- * REST Resource
      BucketsPatchAPI

    -- * Creating a Request
    , bucketsPatch'
    , BucketsPatch'

    -- * Request Lenses
    , bpQuotaUser
    , bpIfMetagenerationMatch
    , bpPrettyPrint
    , bpUserIp
    , bpBucket
    , bpKey
    , bpIfMetagenerationNotMatch
    , bpProjection
    , bpOauthToken
    , bpFields
    , bpAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.buckets.patch which the
-- 'BucketsPatch'' request conforms to.
type BucketsPatchAPI =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "ifMetagenerationMatch" Word64 :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "projection" BucketsPatch'Projection :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Patch '[JSON] Bucket

-- | Updates a bucket. This method supports patch semantics.
--
-- /See:/ 'bucketsPatch'' smart constructor.
data BucketsPatch' = BucketsPatch'
    { _bpQuotaUser                :: !(Maybe Text)
    , _bpIfMetagenerationMatch    :: !(Maybe Word64)
    , _bpPrettyPrint              :: !Bool
    , _bpUserIp                   :: !(Maybe Text)
    , _bpBucket                   :: !Text
    , _bpKey                      :: !(Maybe Text)
    , _bpIfMetagenerationNotMatch :: !(Maybe Word64)
    , _bpProjection               :: !(Maybe BucketsPatch'Projection)
    , _bpOauthToken               :: !(Maybe Text)
    , _bpFields                   :: !(Maybe Text)
    , _bpAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpQuotaUser'
--
-- * 'bpIfMetagenerationMatch'
--
-- * 'bpPrettyPrint'
--
-- * 'bpUserIp'
--
-- * 'bpBucket'
--
-- * 'bpKey'
--
-- * 'bpIfMetagenerationNotMatch'
--
-- * 'bpProjection'
--
-- * 'bpOauthToken'
--
-- * 'bpFields'
--
-- * 'bpAlt'
bucketsPatch'
    :: Text -- ^ 'bucket'
    -> BucketsPatch'
bucketsPatch' pBpBucket_ =
    BucketsPatch'
    { _bpQuotaUser = Nothing
    , _bpIfMetagenerationMatch = Nothing
    , _bpPrettyPrint = True
    , _bpUserIp = Nothing
    , _bpBucket = pBpBucket_
    , _bpKey = Nothing
    , _bpIfMetagenerationNotMatch = Nothing
    , _bpProjection = Nothing
    , _bpOauthToken = Nothing
    , _bpFields = Nothing
    , _bpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bpQuotaUser :: Lens' BucketsPatch' (Maybe Text)
bpQuotaUser
  = lens _bpQuotaUser (\ s a -> s{_bpQuotaUser = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
bpIfMetagenerationMatch :: Lens' BucketsPatch' (Maybe Word64)
bpIfMetagenerationMatch
  = lens _bpIfMetagenerationMatch
      (\ s a -> s{_bpIfMetagenerationMatch = a})

-- | Returns response with indentations and line breaks.
bpPrettyPrint :: Lens' BucketsPatch' Bool
bpPrettyPrint
  = lens _bpPrettyPrint
      (\ s a -> s{_bpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bpUserIp :: Lens' BucketsPatch' (Maybe Text)
bpUserIp = lens _bpUserIp (\ s a -> s{_bpUserIp = a})

-- | Name of a bucket.
bpBucket :: Lens' BucketsPatch' Text
bpBucket = lens _bpBucket (\ s a -> s{_bpBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bpKey :: Lens' BucketsPatch' (Maybe Text)
bpKey = lens _bpKey (\ s a -> s{_bpKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bpIfMetagenerationNotMatch :: Lens' BucketsPatch' (Maybe Word64)
bpIfMetagenerationNotMatch
  = lens _bpIfMetagenerationNotMatch
      (\ s a -> s{_bpIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to full.
bpProjection :: Lens' BucketsPatch' (Maybe BucketsPatch'Projection)
bpProjection
  = lens _bpProjection (\ s a -> s{_bpProjection = a})

-- | OAuth 2.0 token for the current user.
bpOauthToken :: Lens' BucketsPatch' (Maybe Text)
bpOauthToken
  = lens _bpOauthToken (\ s a -> s{_bpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bpFields :: Lens' BucketsPatch' (Maybe Text)
bpFields = lens _bpFields (\ s a -> s{_bpFields = a})

-- | Data format for the response.
bpAlt :: Lens' BucketsPatch' Alt
bpAlt = lens _bpAlt (\ s a -> s{_bpAlt = a})

instance GoogleRequest BucketsPatch' where
        type Rs BucketsPatch' = Bucket
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsPatch'{..}
          = go _bpQuotaUser _bpIfMetagenerationMatch
              (Just _bpPrettyPrint)
              _bpUserIp
              _bpBucket
              _bpKey
              _bpIfMetagenerationNotMatch
              _bpProjection
              _bpOauthToken
              _bpFields
              (Just _bpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy BucketsPatchAPI) r
                      u
