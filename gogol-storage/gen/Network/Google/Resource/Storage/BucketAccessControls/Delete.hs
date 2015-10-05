{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsDelete@.
module Network.Google.Resource.Storage.BucketAccessControls.Delete
    (
    -- * REST Resource
      BucketAccessControlsDeleteResource

    -- * Creating a Request
    , bucketAccessControlsDelete'
    , BucketAccessControlsDelete'

    -- * Request Lenses
    , bacdQuotaUser
    , bacdPrettyPrint
    , bacdUserIP
    , bacdBucket
    , bacdKey
    , bacdOAuthToken
    , bacdEntity
    , bacdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsDelete@ which the
-- 'BucketAccessControlsDelete'' request conforms to.
type BucketAccessControlsDeleteResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ 'bucketAccessControlsDelete'' smart constructor.
data BucketAccessControlsDelete' = BucketAccessControlsDelete'
    { _bacdQuotaUser   :: !(Maybe Text)
    , _bacdPrettyPrint :: !Bool
    , _bacdUserIP      :: !(Maybe Text)
    , _bacdBucket      :: !Text
    , _bacdKey         :: !(Maybe Key)
    , _bacdOAuthToken  :: !(Maybe OAuthToken)
    , _bacdEntity      :: !Text
    , _bacdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacdQuotaUser'
--
-- * 'bacdPrettyPrint'
--
-- * 'bacdUserIP'
--
-- * 'bacdBucket'
--
-- * 'bacdKey'
--
-- * 'bacdOAuthToken'
--
-- * 'bacdEntity'
--
-- * 'bacdFields'
bucketAccessControlsDelete'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsDelete'
bucketAccessControlsDelete' pBacdBucket_ pBacdEntity_ =
    BucketAccessControlsDelete'
    { _bacdQuotaUser = Nothing
    , _bacdPrettyPrint = True
    , _bacdUserIP = Nothing
    , _bacdBucket = pBacdBucket_
    , _bacdKey = Nothing
    , _bacdOAuthToken = Nothing
    , _bacdEntity = pBacdEntity_
    , _bacdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bacdQuotaUser :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdQuotaUser
  = lens _bacdQuotaUser
      (\ s a -> s{_bacdQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacdPrettyPrint :: Lens' BucketAccessControlsDelete' Bool
bacdPrettyPrint
  = lens _bacdPrettyPrint
      (\ s a -> s{_bacdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bacdUserIP :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdUserIP
  = lens _bacdUserIP (\ s a -> s{_bacdUserIP = a})

-- | Name of a bucket.
bacdBucket :: Lens' BucketAccessControlsDelete' Text
bacdBucket
  = lens _bacdBucket (\ s a -> s{_bacdBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacdKey :: Lens' BucketAccessControlsDelete' (Maybe Key)
bacdKey = lens _bacdKey (\ s a -> s{_bacdKey = a})

-- | OAuth 2.0 token for the current user.
bacdOAuthToken :: Lens' BucketAccessControlsDelete' (Maybe OAuthToken)
bacdOAuthToken
  = lens _bacdOAuthToken
      (\ s a -> s{_bacdOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacdEntity :: Lens' BucketAccessControlsDelete' Text
bacdEntity
  = lens _bacdEntity (\ s a -> s{_bacdEntity = a})

-- | Selector specifying which fields to include in a partial response.
bacdFields :: Lens' BucketAccessControlsDelete' (Maybe Text)
bacdFields
  = lens _bacdFields (\ s a -> s{_bacdFields = a})

instance GoogleAuth BucketAccessControlsDelete' where
        authKey = bacdKey . _Just
        authToken = bacdOAuthToken . _Just

instance GoogleRequest BucketAccessControlsDelete'
         where
        type Rs BucketAccessControlsDelete' = ()
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsDelete'{..}
          = go _bacdBucket _bacdEntity _bacdQuotaUser
              (Just _bacdPrettyPrint)
              _bacdUserIP
              _bacdFields
              _bacdKey
              _bacdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsDeleteResource)
                      r
                      u
