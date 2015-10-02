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
-- Module      : Network.Google.Resource.Storage.Buckets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a bucket. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketsPatch@.
module Network.Google.Resource.Storage.Buckets.Patch
    (
    -- * REST Resource
      BucketsPatchResource

    -- * Creating a Request
    , bucketsPatch'
    , BucketsPatch'

    -- * Request Lenses
    , bpQuotaUser
    , bpIfMetagenerationMatch
    , bpPrettyPrint
    , bpUserIP
    , bpBucket
    , bpBucket
    , bpKey
    , bpIfMetagenerationNotMatch
    , bpProjection
    , bpOAuthToken
    , bpFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsPatch@ which the
-- 'BucketsPatch'' request conforms to.
type BucketsPatchResource =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "ifMetagenerationMatch" Word64 :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "projection" StorageBucketsPatchProjection
                       :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Bucket :> Patch '[JSON] Bucket

-- | Updates a bucket. This method supports patch semantics.
--
-- /See:/ 'bucketsPatch'' smart constructor.
data BucketsPatch' = BucketsPatch'
    { _bpQuotaUser                :: !(Maybe Text)
    , _bpIfMetagenerationMatch    :: !(Maybe Word64)
    , _bpPrettyPrint              :: !Bool
    , _bpUserIP                   :: !(Maybe Text)
    , _bpBucket                   :: !Bucket
    , _bpBucket                   :: !Text
    , _bpKey                      :: !(Maybe Key)
    , _bpIfMetagenerationNotMatch :: !(Maybe Word64)
    , _bpProjection               :: !(Maybe StorageBucketsPatchProjection)
    , _bpOAuthToken               :: !(Maybe OAuthToken)
    , _bpFields                   :: !(Maybe Text)
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
-- * 'bpUserIP'
--
-- * 'bpBucket'
--
-- * 'bpBucket'
--
-- * 'bpKey'
--
-- * 'bpIfMetagenerationNotMatch'
--
-- * 'bpProjection'
--
-- * 'bpOAuthToken'
--
-- * 'bpFields'
bucketsPatch'
    :: Bucket -- ^ 'Bucket'
    -> Text -- ^ 'bucket'
    -> BucketsPatch'
bucketsPatch' pBpBucket_ pBpBucket_ =
    BucketsPatch'
    { _bpQuotaUser = Nothing
    , _bpIfMetagenerationMatch = Nothing
    , _bpPrettyPrint = True
    , _bpUserIP = Nothing
    , _bpBucket = pBpBucket_
    , _bpBucket = pBpBucket_
    , _bpKey = Nothing
    , _bpIfMetagenerationNotMatch = Nothing
    , _bpProjection = Nothing
    , _bpOAuthToken = Nothing
    , _bpFields = Nothing
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
bpUserIP :: Lens' BucketsPatch' (Maybe Text)
bpUserIP = lens _bpUserIP (\ s a -> s{_bpUserIP = a})

-- | Multipart request metadata.
bpBucket :: Lens' BucketsPatch' Bucket
bpBucket = lens _bpBucket (\ s a -> s{_bpBucket = a})

-- | Name of a bucket.
bpBucket :: Lens' BucketsPatch' Text
bpBucket = lens _bpBucket (\ s a -> s{_bpBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bpKey :: Lens' BucketsPatch' (Maybe Key)
bpKey = lens _bpKey (\ s a -> s{_bpKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bpIfMetagenerationNotMatch :: Lens' BucketsPatch' (Maybe Word64)
bpIfMetagenerationNotMatch
  = lens _bpIfMetagenerationNotMatch
      (\ s a -> s{_bpIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to full.
bpProjection :: Lens' BucketsPatch' (Maybe StorageBucketsPatchProjection)
bpProjection
  = lens _bpProjection (\ s a -> s{_bpProjection = a})

-- | OAuth 2.0 token for the current user.
bpOAuthToken :: Lens' BucketsPatch' (Maybe OAuthToken)
bpOAuthToken
  = lens _bpOAuthToken (\ s a -> s{_bpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bpFields :: Lens' BucketsPatch' (Maybe Text)
bpFields = lens _bpFields (\ s a -> s{_bpFields = a})

instance GoogleAuth BucketsPatch' where
        authKey = bpKey . _Just
        authToken = bpOAuthToken . _Just

instance GoogleRequest BucketsPatch' where
        type Rs BucketsPatch' = Bucket
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsPatch'{..}
          = go _bpQuotaUser _bpIfMetagenerationMatch
              (Just _bpPrettyPrint)
              _bpUserIP
              _bpBucket
              _bpKey
              _bpIfMetagenerationNotMatch
              _bpProjection
              _bpOAuthToken
              _bpFields
              (Just AltJSON)
              _bpBucket
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketsPatchResource)
                      r
                      u
