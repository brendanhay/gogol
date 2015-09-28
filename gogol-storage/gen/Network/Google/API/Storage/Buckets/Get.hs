{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.Buckets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns metadata for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.buckets.get@.
module Network.Google.API.Storage.Buckets.Get
    (
    -- * REST Resource
      BucketsGetAPI

    -- * Creating a Request
    , bucketsGet'
    , BucketsGet'

    -- * Request Lenses
    , bgQuotaUser
    , bgIfMetagenerationMatch
    , bgPrettyPrint
    , bgUserIp
    , bgBucket
    , bgKey
    , bgIfMetagenerationNotMatch
    , bgProjection
    , bgOauthToken
    , bgFields
    , bgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.buckets.get which the
-- 'BucketsGet'' request conforms to.
type BucketsGetAPI =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "ifMetagenerationMatch" Word64 :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "projection" BucketsGet'Projection :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Bucket

-- | Returns metadata for the specified bucket.
--
-- /See:/ 'bucketsGet'' smart constructor.
data BucketsGet' = BucketsGet'
    { _bgQuotaUser                :: !(Maybe Text)
    , _bgIfMetagenerationMatch    :: !(Maybe Word64)
    , _bgPrettyPrint              :: !Bool
    , _bgUserIp                   :: !(Maybe Text)
    , _bgBucket                   :: !Text
    , _bgKey                      :: !(Maybe Text)
    , _bgIfMetagenerationNotMatch :: !(Maybe Word64)
    , _bgProjection               :: !(Maybe BucketsGet'Projection)
    , _bgOauthToken               :: !(Maybe Text)
    , _bgFields                   :: !(Maybe Text)
    , _bgAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgQuotaUser'
--
-- * 'bgIfMetagenerationMatch'
--
-- * 'bgPrettyPrint'
--
-- * 'bgUserIp'
--
-- * 'bgBucket'
--
-- * 'bgKey'
--
-- * 'bgIfMetagenerationNotMatch'
--
-- * 'bgProjection'
--
-- * 'bgOauthToken'
--
-- * 'bgFields'
--
-- * 'bgAlt'
bucketsGet'
    :: Text -- ^ 'bucket'
    -> BucketsGet'
bucketsGet' pBgBucket_ =
    BucketsGet'
    { _bgQuotaUser = Nothing
    , _bgIfMetagenerationMatch = Nothing
    , _bgPrettyPrint = True
    , _bgUserIp = Nothing
    , _bgBucket = pBgBucket_
    , _bgKey = Nothing
    , _bgIfMetagenerationNotMatch = Nothing
    , _bgProjection = Nothing
    , _bgOauthToken = Nothing
    , _bgFields = Nothing
    , _bgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bgQuotaUser :: Lens' BucketsGet' (Maybe Text)
bgQuotaUser
  = lens _bgQuotaUser (\ s a -> s{_bgQuotaUser = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
bgIfMetagenerationMatch :: Lens' BucketsGet' (Maybe Word64)
bgIfMetagenerationMatch
  = lens _bgIfMetagenerationMatch
      (\ s a -> s{_bgIfMetagenerationMatch = a})

-- | Returns response with indentations and line breaks.
bgPrettyPrint :: Lens' BucketsGet' Bool
bgPrettyPrint
  = lens _bgPrettyPrint
      (\ s a -> s{_bgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bgUserIp :: Lens' BucketsGet' (Maybe Text)
bgUserIp = lens _bgUserIp (\ s a -> s{_bgUserIp = a})

-- | Name of a bucket.
bgBucket :: Lens' BucketsGet' Text
bgBucket = lens _bgBucket (\ s a -> s{_bgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BucketsGet' (Maybe Text)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bgIfMetagenerationNotMatch :: Lens' BucketsGet' (Maybe Word64)
bgIfMetagenerationNotMatch
  = lens _bgIfMetagenerationNotMatch
      (\ s a -> s{_bgIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to noAcl.
bgProjection :: Lens' BucketsGet' (Maybe BucketsGet'Projection)
bgProjection
  = lens _bgProjection (\ s a -> s{_bgProjection = a})

-- | OAuth 2.0 token for the current user.
bgOauthToken :: Lens' BucketsGet' (Maybe Text)
bgOauthToken
  = lens _bgOauthToken (\ s a -> s{_bgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BucketsGet' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

-- | Data format for the response.
bgAlt :: Lens' BucketsGet' Alt
bgAlt = lens _bgAlt (\ s a -> s{_bgAlt = a})

instance GoogleRequest BucketsGet' where
        type Rs BucketsGet' = Bucket
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsGet'{..}
          = go _bgQuotaUser _bgIfMetagenerationMatch
              (Just _bgPrettyPrint)
              _bgUserIp
              _bgBucket
              _bgKey
              _bgIfMetagenerationNotMatch
              _bgProjection
              _bgOauthToken
              _bgFields
              (Just _bgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy BucketsGetAPI) r u
