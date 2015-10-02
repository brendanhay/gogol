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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves ACL entries on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsList@.
module Network.Google.Resource.Storage.BucketAccessControls.List
    (
    -- * REST Resource
      BucketAccessControlsListResource

    -- * Creating a Request
    , bucketAccessControlsList'
    , BucketAccessControlsList'

    -- * Request Lenses
    , baclQuotaUser
    , baclPrettyPrint
    , baclUserIP
    , baclBucket
    , baclKey
    , baclOAuthToken
    , baclFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsList@ which the
-- 'BucketAccessControlsList'' request conforms to.
type BucketAccessControlsListResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BucketAccessControls

-- | Retrieves ACL entries on the specified bucket.
--
-- /See:/ 'bucketAccessControlsList'' smart constructor.
data BucketAccessControlsList' = BucketAccessControlsList'
    { _baclQuotaUser   :: !(Maybe Text)
    , _baclPrettyPrint :: !Bool
    , _baclUserIP      :: !(Maybe Text)
    , _baclBucket      :: !Text
    , _baclKey         :: !(Maybe Key)
    , _baclOAuthToken  :: !(Maybe OAuthToken)
    , _baclFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baclQuotaUser'
--
-- * 'baclPrettyPrint'
--
-- * 'baclUserIP'
--
-- * 'baclBucket'
--
-- * 'baclKey'
--
-- * 'baclOAuthToken'
--
-- * 'baclFields'
bucketAccessControlsList'
    :: Text -- ^ 'bucket'
    -> BucketAccessControlsList'
bucketAccessControlsList' pBaclBucket_ =
    BucketAccessControlsList'
    { _baclQuotaUser = Nothing
    , _baclPrettyPrint = True
    , _baclUserIP = Nothing
    , _baclBucket = pBaclBucket_
    , _baclKey = Nothing
    , _baclOAuthToken = Nothing
    , _baclFields = Nothing
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
baclUserIP :: Lens' BucketAccessControlsList' (Maybe Text)
baclUserIP
  = lens _baclUserIP (\ s a -> s{_baclUserIP = a})

-- | Name of a bucket.
baclBucket :: Lens' BucketAccessControlsList' Text
baclBucket
  = lens _baclBucket (\ s a -> s{_baclBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
baclKey :: Lens' BucketAccessControlsList' (Maybe Key)
baclKey = lens _baclKey (\ s a -> s{_baclKey = a})

-- | OAuth 2.0 token for the current user.
baclOAuthToken :: Lens' BucketAccessControlsList' (Maybe OAuthToken)
baclOAuthToken
  = lens _baclOAuthToken
      (\ s a -> s{_baclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
baclFields :: Lens' BucketAccessControlsList' (Maybe Text)
baclFields
  = lens _baclFields (\ s a -> s{_baclFields = a})

instance GoogleAuth BucketAccessControlsList' where
        authKey = baclKey . _Just
        authToken = baclOAuthToken . _Just

instance GoogleRequest BucketAccessControlsList'
         where
        type Rs BucketAccessControlsList' =
             BucketAccessControls
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsList'{..}
          = go _baclBucket _baclQuotaUser
              (Just _baclPrettyPrint)
              _baclUserIP
              _baclFields
              _baclKey
              _baclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsListResource)
                      r
                      u
