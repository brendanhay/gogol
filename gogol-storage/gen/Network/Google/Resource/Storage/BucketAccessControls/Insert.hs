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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsInsert@.
module Network.Google.Resource.Storage.BucketAccessControls.Insert
    (
    -- * REST Resource
      BucketAccessControlsInsertResource

    -- * Creating a Request
    , bucketAccessControlsInsert'
    , BucketAccessControlsInsert'

    -- * Request Lenses
    , baciQuotaUser
    , baciPrettyPrint
    , baciUserIP
    , baciBucket
    , baciKey
    , baciBucketAccessControl
    , baciOAuthToken
    , baciFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsInsert@ which the
-- 'BucketAccessControlsInsert'' request conforms to.
type BucketAccessControlsInsertResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BucketAccessControl :>
                           Post '[JSON] BucketAccessControl

-- | Creates a new ACL entry on the specified bucket.
--
-- /See:/ 'bucketAccessControlsInsert'' smart constructor.
data BucketAccessControlsInsert' = BucketAccessControlsInsert'
    { _baciQuotaUser           :: !(Maybe Text)
    , _baciPrettyPrint         :: !Bool
    , _baciUserIP              :: !(Maybe Text)
    , _baciBucket              :: !Text
    , _baciKey                 :: !(Maybe Key)
    , _baciBucketAccessControl :: !BucketAccessControl
    , _baciOAuthToken          :: !(Maybe OAuthToken)
    , _baciFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baciQuotaUser'
--
-- * 'baciPrettyPrint'
--
-- * 'baciUserIP'
--
-- * 'baciBucket'
--
-- * 'baciKey'
--
-- * 'baciBucketAccessControl'
--
-- * 'baciOAuthToken'
--
-- * 'baciFields'
bucketAccessControlsInsert'
    :: Text -- ^ 'bucket'
    -> BucketAccessControl -- ^ 'BucketAccessControl'
    -> BucketAccessControlsInsert'
bucketAccessControlsInsert' pBaciBucket_ pBaciBucketAccessControl_ =
    BucketAccessControlsInsert'
    { _baciQuotaUser = Nothing
    , _baciPrettyPrint = True
    , _baciUserIP = Nothing
    , _baciBucket = pBaciBucket_
    , _baciKey = Nothing
    , _baciBucketAccessControl = pBaciBucketAccessControl_
    , _baciOAuthToken = Nothing
    , _baciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
baciQuotaUser :: Lens' BucketAccessControlsInsert' (Maybe Text)
baciQuotaUser
  = lens _baciQuotaUser
      (\ s a -> s{_baciQuotaUser = a})

-- | Returns response with indentations and line breaks.
baciPrettyPrint :: Lens' BucketAccessControlsInsert' Bool
baciPrettyPrint
  = lens _baciPrettyPrint
      (\ s a -> s{_baciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
baciUserIP :: Lens' BucketAccessControlsInsert' (Maybe Text)
baciUserIP
  = lens _baciUserIP (\ s a -> s{_baciUserIP = a})

-- | Name of a bucket.
baciBucket :: Lens' BucketAccessControlsInsert' Text
baciBucket
  = lens _baciBucket (\ s a -> s{_baciBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
baciKey :: Lens' BucketAccessControlsInsert' (Maybe Key)
baciKey = lens _baciKey (\ s a -> s{_baciKey = a})

-- | Multipart request metadata.
baciBucketAccessControl :: Lens' BucketAccessControlsInsert' BucketAccessControl
baciBucketAccessControl
  = lens _baciBucketAccessControl
      (\ s a -> s{_baciBucketAccessControl = a})

-- | OAuth 2.0 token for the current user.
baciOAuthToken :: Lens' BucketAccessControlsInsert' (Maybe OAuthToken)
baciOAuthToken
  = lens _baciOAuthToken
      (\ s a -> s{_baciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
baciFields :: Lens' BucketAccessControlsInsert' (Maybe Text)
baciFields
  = lens _baciFields (\ s a -> s{_baciFields = a})

instance GoogleAuth BucketAccessControlsInsert' where
        authKey = baciKey . _Just
        authToken = baciOAuthToken . _Just

instance GoogleRequest BucketAccessControlsInsert'
         where
        type Rs BucketAccessControlsInsert' =
             BucketAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsInsert'{..}
          = go _baciQuotaUser (Just _baciPrettyPrint)
              _baciUserIP
              _baciBucket
              _baciKey
              _baciOAuthToken
              _baciFields
              (Just AltJSON)
              _baciBucketAccessControl
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsInsertResource)
                      r
                      u
