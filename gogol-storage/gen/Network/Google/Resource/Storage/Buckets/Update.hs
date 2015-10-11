{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Storage.Buckets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageBucketsUpdate@.
module Network.Google.Resource.Storage.Buckets.Update
    (
    -- * REST Resource
      BucketsUpdateResource

    -- * Creating a Request
    , bucketsUpdate'
    , BucketsUpdate'

    -- * Request Lenses
    , buQuotaUser
    , buIfMetagenerationMatch
    , buPrettyPrint
    , buUserIP
    , buPredefinedACL
    , buBucket
    , buPayload
    , buPredefinedDefaultObjectACL
    , buKey
    , buIfMetagenerationNotMatch
    , buProjection
    , buOAuthToken
    , buFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsUpdate@ method which the
-- 'BucketsUpdate'' request conforms to.
type BucketsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "ifMetagenerationMatch" Int64 :>
           QueryParam "predefinedAcl" BucketsUpdatePredefinedACL
             :>
             QueryParam "predefinedDefaultObjectAcl"
               BucketsUpdatePredefinedDefaultObjectACL
               :>
               QueryParam "ifMetagenerationNotMatch" Int64 :>
                 QueryParam "projection" BucketsUpdateProjection :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Bucket :> Put '[JSON] Bucket

-- | Updates a bucket.
--
-- /See:/ 'bucketsUpdate'' smart constructor.
data BucketsUpdate' = BucketsUpdate'
    { _buQuotaUser                  :: !(Maybe Text)
    , _buIfMetagenerationMatch      :: !(Maybe Int64)
    , _buPrettyPrint                :: !Bool
    , _buUserIP                     :: !(Maybe Text)
    , _buPredefinedACL              :: !(Maybe BucketsUpdatePredefinedACL)
    , _buBucket                     :: !Text
    , _buPayload                    :: !Bucket
    , _buPredefinedDefaultObjectACL :: !(Maybe BucketsUpdatePredefinedDefaultObjectACL)
    , _buKey                        :: !(Maybe AuthKey)
    , _buIfMetagenerationNotMatch   :: !(Maybe Int64)
    , _buProjection                 :: !(Maybe BucketsUpdateProjection)
    , _buOAuthToken                 :: !(Maybe OAuthToken)
    , _buFields                     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'buUserIP'
--
-- * 'buPredefinedACL'
--
-- * 'buBucket'
--
-- * 'buPayload'
--
-- * 'buPredefinedDefaultObjectACL'
--
-- * 'buKey'
--
-- * 'buIfMetagenerationNotMatch'
--
-- * 'buProjection'
--
-- * 'buOAuthToken'
--
-- * 'buFields'
bucketsUpdate'
    :: Text -- ^ 'bucket'
    -> Bucket -- ^ 'payload'
    -> BucketsUpdate'
bucketsUpdate' pBuBucket_ pBuPayload_ =
    BucketsUpdate'
    { _buQuotaUser = Nothing
    , _buIfMetagenerationMatch = Nothing
    , _buPrettyPrint = True
    , _buUserIP = Nothing
    , _buPredefinedACL = Nothing
    , _buBucket = pBuBucket_
    , _buPayload = pBuPayload_
    , _buPredefinedDefaultObjectACL = Nothing
    , _buKey = Nothing
    , _buIfMetagenerationNotMatch = Nothing
    , _buProjection = Nothing
    , _buOAuthToken = Nothing
    , _buFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
buQuotaUser :: Lens' BucketsUpdate' (Maybe Text)
buQuotaUser
  = lens _buQuotaUser (\ s a -> s{_buQuotaUser = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
buIfMetagenerationMatch :: Lens' BucketsUpdate' (Maybe Int64)
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
buUserIP :: Lens' BucketsUpdate' (Maybe Text)
buUserIP = lens _buUserIP (\ s a -> s{_buUserIP = a})

-- | Apply a predefined set of access controls to this bucket.
buPredefinedACL :: Lens' BucketsUpdate' (Maybe BucketsUpdatePredefinedACL)
buPredefinedACL
  = lens _buPredefinedACL
      (\ s a -> s{_buPredefinedACL = a})

-- | Name of a bucket.
buBucket :: Lens' BucketsUpdate' Text
buBucket = lens _buBucket (\ s a -> s{_buBucket = a})

-- | Multipart request metadata.
buPayload :: Lens' BucketsUpdate' Bucket
buPayload
  = lens _buPayload (\ s a -> s{_buPayload = a})

-- | Apply a predefined set of default object access controls to this bucket.
buPredefinedDefaultObjectACL :: Lens' BucketsUpdate' (Maybe BucketsUpdatePredefinedDefaultObjectACL)
buPredefinedDefaultObjectACL
  = lens _buPredefinedDefaultObjectACL
      (\ s a -> s{_buPredefinedDefaultObjectACL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
buKey :: Lens' BucketsUpdate' (Maybe AuthKey)
buKey = lens _buKey (\ s a -> s{_buKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
buIfMetagenerationNotMatch :: Lens' BucketsUpdate' (Maybe Int64)
buIfMetagenerationNotMatch
  = lens _buIfMetagenerationNotMatch
      (\ s a -> s{_buIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to full.
buProjection :: Lens' BucketsUpdate' (Maybe BucketsUpdateProjection)
buProjection
  = lens _buProjection (\ s a -> s{_buProjection = a})

-- | OAuth 2.0 token for the current user.
buOAuthToken :: Lens' BucketsUpdate' (Maybe OAuthToken)
buOAuthToken
  = lens _buOAuthToken (\ s a -> s{_buOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
buFields :: Lens' BucketsUpdate' (Maybe Text)
buFields = lens _buFields (\ s a -> s{_buFields = a})

instance GoogleAuth BucketsUpdate' where
        _AuthKey = buKey . _Just
        _AuthToken = buOAuthToken . _Just

instance GoogleRequest BucketsUpdate' where
        type Rs BucketsUpdate' = Bucket
        request = requestWith storageRequest
        requestWith rq BucketsUpdate'{..}
          = go _buBucket _buIfMetagenerationMatch
              _buPredefinedACL
              _buPredefinedDefaultObjectACL
              _buIfMetagenerationNotMatch
              _buProjection
              _buQuotaUser
              (Just _buPrettyPrint)
              _buUserIP
              _buFields
              _buKey
              _buOAuthToken
              (Just AltJSON)
              _buPayload
          where go
                  = clientBuild (Proxy :: Proxy BucketsUpdateResource)
                      rq
