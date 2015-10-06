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
-- Module      : Network.Google.Resource.Storage.Buckets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes an empty bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketsDelete@.
module Network.Google.Resource.Storage.Buckets.Delete
    (
    -- * REST Resource
      BucketsDeleteResource

    -- * Creating a Request
    , bucketsDelete'
    , BucketsDelete'

    -- * Request Lenses
    , bdQuotaUser
    , bdIfMetagenerationMatch
    , bdPrettyPrint
    , bdUserIP
    , bdBucket
    , bdKey
    , bdIfMetagenerationNotMatch
    , bdOAuthToken
    , bdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsDelete@ which the
-- 'BucketsDelete'' request conforms to.
type BucketsDeleteResource =
     "b" :>
       Capture "bucket" Text :>
         QueryParam "ifMetagenerationMatch" Word64 :>
           QueryParam "ifMetagenerationNotMatch" Word64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes an empty bucket.
--
-- /See:/ 'bucketsDelete'' smart constructor.
data BucketsDelete' = BucketsDelete'
    { _bdQuotaUser                :: !(Maybe Text)
    , _bdIfMetagenerationMatch    :: !(Maybe Word64)
    , _bdPrettyPrint              :: !Bool
    , _bdUserIP                   :: !(Maybe Text)
    , _bdBucket                   :: !Text
    , _bdKey                      :: !(Maybe AuthKey)
    , _bdIfMetagenerationNotMatch :: !(Maybe Word64)
    , _bdOAuthToken               :: !(Maybe OAuthToken)
    , _bdFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdQuotaUser'
--
-- * 'bdIfMetagenerationMatch'
--
-- * 'bdPrettyPrint'
--
-- * 'bdUserIP'
--
-- * 'bdBucket'
--
-- * 'bdKey'
--
-- * 'bdIfMetagenerationNotMatch'
--
-- * 'bdOAuthToken'
--
-- * 'bdFields'
bucketsDelete'
    :: Text -- ^ 'bucket'
    -> BucketsDelete'
bucketsDelete' pBdBucket_ =
    BucketsDelete'
    { _bdQuotaUser = Nothing
    , _bdIfMetagenerationMatch = Nothing
    , _bdPrettyPrint = True
    , _bdUserIP = Nothing
    , _bdBucket = pBdBucket_
    , _bdKey = Nothing
    , _bdIfMetagenerationNotMatch = Nothing
    , _bdOAuthToken = Nothing
    , _bdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bdQuotaUser :: Lens' BucketsDelete' (Maybe Text)
bdQuotaUser
  = lens _bdQuotaUser (\ s a -> s{_bdQuotaUser = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
bdIfMetagenerationMatch :: Lens' BucketsDelete' (Maybe Word64)
bdIfMetagenerationMatch
  = lens _bdIfMetagenerationMatch
      (\ s a -> s{_bdIfMetagenerationMatch = a})

-- | Returns response with indentations and line breaks.
bdPrettyPrint :: Lens' BucketsDelete' Bool
bdPrettyPrint
  = lens _bdPrettyPrint
      (\ s a -> s{_bdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bdUserIP :: Lens' BucketsDelete' (Maybe Text)
bdUserIP = lens _bdUserIP (\ s a -> s{_bdUserIP = a})

-- | Name of a bucket.
bdBucket :: Lens' BucketsDelete' Text
bdBucket = lens _bdBucket (\ s a -> s{_bdBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bdKey :: Lens' BucketsDelete' (Maybe AuthKey)
bdKey = lens _bdKey (\ s a -> s{_bdKey = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bdIfMetagenerationNotMatch :: Lens' BucketsDelete' (Maybe Word64)
bdIfMetagenerationNotMatch
  = lens _bdIfMetagenerationNotMatch
      (\ s a -> s{_bdIfMetagenerationNotMatch = a})

-- | OAuth 2.0 token for the current user.
bdOAuthToken :: Lens' BucketsDelete' (Maybe OAuthToken)
bdOAuthToken
  = lens _bdOAuthToken (\ s a -> s{_bdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bdFields :: Lens' BucketsDelete' (Maybe Text)
bdFields = lens _bdFields (\ s a -> s{_bdFields = a})

instance GoogleAuth BucketsDelete' where
        _AuthKey = bdKey . _Just
        _AuthToken = bdOAuthToken . _Just

instance GoogleRequest BucketsDelete' where
        type Rs BucketsDelete' = ()
        request = requestWith storageRequest
        requestWith rq BucketsDelete'{..}
          = go _bdBucket _bdIfMetagenerationMatch
              _bdIfMetagenerationNotMatch
              _bdQuotaUser
              (Just _bdPrettyPrint)
              _bdUserIP
              _bdFields
              _bdKey
              _bdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy BucketsDeleteResource)
                      rq
