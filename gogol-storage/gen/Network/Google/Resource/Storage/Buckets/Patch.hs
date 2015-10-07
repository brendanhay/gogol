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
-- Module      : Network.Google.Resource.Storage.Buckets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a bucket. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageBucketsPatch@.
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
    , bpPredefinedACL
    , bpBucket
    , bpPayload
    , bpPredefinedDefaultObjectACL
    , bpKey
    , bpIfMetagenerationNotMatch
    , bpProjection
    , bpOAuthToken
    , bpFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsPatch@ method which the
-- 'BucketsPatch'' request conforms to.
type BucketsPatchResource =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "ifMetagenerationMatch" Int64 :>
           QueryParam "predefinedAcl" BucketsPatchPredefinedACL
             :>
             QueryParam "predefinedDefaultObjectAcl"
               BucketsPatchPredefinedDefaultObjectACL
               :>
               QueryParam "ifMetagenerationNotMatch" Int64 :>
                 QueryParam "projection" BucketsPatchProjection :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Bucket :> Patch '[JSON] Bucket

-- | Updates a bucket. This method supports patch semantics.
--
-- /See:/ 'bucketsPatch'' smart constructor.
data BucketsPatch' = BucketsPatch'
    { _bpQuotaUser                  :: !(Maybe Text)
    , _bpIfMetagenerationMatch      :: !(Maybe Int64)
    , _bpPrettyPrint                :: !Bool
    , _bpUserIP                     :: !(Maybe Text)
    , _bpPredefinedACL              :: !(Maybe BucketsPatchPredefinedACL)
    , _bpBucket                     :: !Text
    , _bpPayload                    :: !Bucket
    , _bpPredefinedDefaultObjectACL :: !(Maybe BucketsPatchPredefinedDefaultObjectACL)
    , _bpKey                        :: !(Maybe AuthKey)
    , _bpIfMetagenerationNotMatch   :: !(Maybe Int64)
    , _bpProjection                 :: !(Maybe BucketsPatchProjection)
    , _bpOAuthToken                 :: !(Maybe OAuthToken)
    , _bpFields                     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'bpPredefinedACL'
--
-- * 'bpBucket'
--
-- * 'bpPayload'
--
-- * 'bpPredefinedDefaultObjectACL'
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
    :: Text -- ^ 'bucket'
    -> Bucket -- ^ 'payload'
    -> BucketsPatch'
bucketsPatch' pBpBucket_ pBpPayload_ =
    BucketsPatch'
    { _bpQuotaUser = Nothing
    , _bpIfMetagenerationMatch = Nothing
    , _bpPrettyPrint = True
    , _bpUserIP = Nothing
    , _bpPredefinedACL = Nothing
    , _bpBucket = pBpBucket_
    , _bpPayload = pBpPayload_
    , _bpPredefinedDefaultObjectACL = Nothing
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
bpIfMetagenerationMatch :: Lens' BucketsPatch' (Maybe Int64)
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

-- | Apply a predefined set of access controls to this bucket.
bpPredefinedACL :: Lens' BucketsPatch' (Maybe BucketsPatchPredefinedACL)
bpPredefinedACL
  = lens _bpPredefinedACL
      (\ s a -> s{_bpPredefinedACL = a})

-- | Name of a bucket.
bpBucket :: Lens' BucketsPatch' Text
bpBucket = lens _bpBucket (\ s a -> s{_bpBucket = a})

-- | Multipart request metadata.
bpPayload :: Lens' BucketsPatch' Bucket
bpPayload
  = lens _bpPayload (\ s a -> s{_bpPayload = a})

-- | Apply a predefined set of default object access controls to this bucket.
bpPredefinedDefaultObjectACL :: Lens' BucketsPatch' (Maybe BucketsPatchPredefinedDefaultObjectACL)
bpPredefinedDefaultObjectACL
  = lens _bpPredefinedDefaultObjectACL
      (\ s a -> s{_bpPredefinedDefaultObjectACL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bpKey :: Lens' BucketsPatch' (Maybe AuthKey)
bpKey = lens _bpKey (\ s a -> s{_bpKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bpIfMetagenerationNotMatch :: Lens' BucketsPatch' (Maybe Int64)
bpIfMetagenerationNotMatch
  = lens _bpIfMetagenerationNotMatch
      (\ s a -> s{_bpIfMetagenerationNotMatch = a})

-- | Set of properties to return. Defaults to full.
bpProjection :: Lens' BucketsPatch' (Maybe BucketsPatchProjection)
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
        _AuthKey = bpKey . _Just
        _AuthToken = bpOAuthToken . _Just

instance GoogleRequest BucketsPatch' where
        type Rs BucketsPatch' = Bucket
        request = requestWith storageRequest
        requestWith rq BucketsPatch'{..}
          = go _bpBucket _bpIfMetagenerationMatch
              _bpPredefinedACL
              _bpPredefinedDefaultObjectACL
              _bpIfMetagenerationNotMatch
              _bpProjection
              _bpQuotaUser
              (Just _bpPrettyPrint)
              _bpUserIP
              _bpFields
              _bpKey
              _bpOAuthToken
              (Just AltJSON)
              _bpPayload
          where go
                  = clientBuild (Proxy :: Proxy BucketsPatchResource)
                      rq
