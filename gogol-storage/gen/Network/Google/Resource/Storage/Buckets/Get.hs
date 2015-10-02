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
-- Module      : Network.Google.Resource.Storage.Buckets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns metadata for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketsGet@.
module Network.Google.Resource.Storage.Buckets.Get
    (
    -- * REST Resource
      BucketsGetResource

    -- * Creating a Request
    , bucketsGet'
    , BucketsGet'

    -- * Request Lenses
    , bgQuotaUser
    , bgIfMetagenerationMatch
    , bgPrettyPrint
    , bgUserIP
    , bgBucket
    , bgKey
    , bgIfMetagenerationNotMatch
    , bgProjection
    , bgOAuthToken
    , bgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsGet@ which the
-- 'BucketsGet'' request conforms to.
type BucketsGetResource =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "ifMetagenerationMatch" Word64 :>
           QueryParam "ifMetagenerationNotMatch" Word64 :>
             QueryParam "projection" StorageBucketsGetProjection
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Bucket

-- | Returns metadata for the specified bucket.
--
-- /See:/ 'bucketsGet'' smart constructor.
data BucketsGet' = BucketsGet'
    { _bgQuotaUser                :: !(Maybe Text)
    , _bgIfMetagenerationMatch    :: !(Maybe Word64)
    , _bgPrettyPrint              :: !Bool
    , _bgUserIP                   :: !(Maybe Text)
    , _bgBucket                   :: !Text
    , _bgKey                      :: !(Maybe Key)
    , _bgIfMetagenerationNotMatch :: !(Maybe Word64)
    , _bgProjection               :: !(Maybe StorageBucketsGetProjection)
    , _bgOAuthToken               :: !(Maybe OAuthToken)
    , _bgFields                   :: !(Maybe Text)
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
-- * 'bgUserIP'
--
-- * 'bgBucket'
--
-- * 'bgKey'
--
-- * 'bgIfMetagenerationNotMatch'
--
-- * 'bgProjection'
--
-- * 'bgOAuthToken'
--
-- * 'bgFields'
bucketsGet'
    :: Text -- ^ 'bucket'
    -> BucketsGet'
bucketsGet' pBgBucket_ =
    BucketsGet'
    { _bgQuotaUser = Nothing
    , _bgIfMetagenerationMatch = Nothing
    , _bgPrettyPrint = True
    , _bgUserIP = Nothing
    , _bgBucket = pBgBucket_
    , _bgKey = Nothing
    , _bgIfMetagenerationNotMatch = Nothing
    , _bgProjection = Nothing
    , _bgOAuthToken = Nothing
    , _bgFields = Nothing
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
bgUserIP :: Lens' BucketsGet' (Maybe Text)
bgUserIP = lens _bgUserIP (\ s a -> s{_bgUserIP = a})

-- | Name of a bucket.
bgBucket :: Lens' BucketsGet' Text
bgBucket = lens _bgBucket (\ s a -> s{_bgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BucketsGet' (Maybe Key)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bgIfMetagenerationNotMatch :: Lens' BucketsGet' (Maybe Word64)
bgIfMetagenerationNotMatch
  = lens _bgIfMetagenerationNotMatch
      (\ s a -> s{_bgIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to noAcl.
bgProjection :: Lens' BucketsGet' (Maybe StorageBucketsGetProjection)
bgProjection
  = lens _bgProjection (\ s a -> s{_bgProjection = a})

-- | OAuth 2.0 token for the current user.
bgOAuthToken :: Lens' BucketsGet' (Maybe OAuthToken)
bgOAuthToken
  = lens _bgOAuthToken (\ s a -> s{_bgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BucketsGet' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

instance GoogleAuth BucketsGet' where
        authKey = bgKey . _Just
        authToken = bgOAuthToken . _Just

instance GoogleRequest BucketsGet' where
        type Rs BucketsGet' = Bucket
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsGet'{..}
          = go _bgIfMetagenerationMatch
              _bgIfMetagenerationNotMatch
              _bgProjection
              _bgBucket
              _bgQuotaUser
              (Just _bgPrettyPrint)
              _bgUserIP
              _bgFields
              _bgKey
              _bgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy BucketsGetResource)
                      r
                      u
