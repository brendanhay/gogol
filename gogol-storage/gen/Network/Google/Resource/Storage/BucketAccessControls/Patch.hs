{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an ACL entry on the specified bucket. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsPatch@.
module Network.Google.Resource.Storage.BucketAccessControls.Patch
    (
    -- * REST Resource
      BucketAccessControlsPatchResource

    -- * Creating a Request
    , bucketAccessControlsPatch'
    , BucketAccessControlsPatch'

    -- * Request Lenses
    , bacpQuotaUser
    , bacpPrettyPrint
    , bacpUserIP
    , bacpBucket
    , bacpPayload
    , bacpKey
    , bacpOAuthToken
    , bacpEntity
    , bacpFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsPatch@ which the
-- 'BucketAccessControlsPatch'' request conforms to.
type BucketAccessControlsPatchResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BucketAccessControl :>
                             Patch '[JSON] BucketAccessControl

-- | Updates an ACL entry on the specified bucket. This method supports patch
-- semantics.
--
-- /See:/ 'bucketAccessControlsPatch'' smart constructor.
data BucketAccessControlsPatch' = BucketAccessControlsPatch'
    { _bacpQuotaUser   :: !(Maybe Text)
    , _bacpPrettyPrint :: !Bool
    , _bacpUserIP      :: !(Maybe Text)
    , _bacpBucket      :: !Text
    , _bacpPayload     :: !BucketAccessControl
    , _bacpKey         :: !(Maybe Key)
    , _bacpOAuthToken  :: !(Maybe OAuthToken)
    , _bacpEntity      :: !Text
    , _bacpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacpQuotaUser'
--
-- * 'bacpPrettyPrint'
--
-- * 'bacpUserIP'
--
-- * 'bacpBucket'
--
-- * 'bacpPayload'
--
-- * 'bacpKey'
--
-- * 'bacpOAuthToken'
--
-- * 'bacpEntity'
--
-- * 'bacpFields'
bucketAccessControlsPatch'
    :: Text -- ^ 'bucket'
    -> BucketAccessControl -- ^ 'payload'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsPatch'
bucketAccessControlsPatch' pBacpBucket_ pBacpPayload_ pBacpEntity_ =
    BucketAccessControlsPatch'
    { _bacpQuotaUser = Nothing
    , _bacpPrettyPrint = True
    , _bacpUserIP = Nothing
    , _bacpBucket = pBacpBucket_
    , _bacpPayload = pBacpPayload_
    , _bacpKey = Nothing
    , _bacpOAuthToken = Nothing
    , _bacpEntity = pBacpEntity_
    , _bacpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bacpQuotaUser :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpQuotaUser
  = lens _bacpQuotaUser
      (\ s a -> s{_bacpQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacpPrettyPrint :: Lens' BucketAccessControlsPatch' Bool
bacpPrettyPrint
  = lens _bacpPrettyPrint
      (\ s a -> s{_bacpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bacpUserIP :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpUserIP
  = lens _bacpUserIP (\ s a -> s{_bacpUserIP = a})

-- | Name of a bucket.
bacpBucket :: Lens' BucketAccessControlsPatch' Text
bacpBucket
  = lens _bacpBucket (\ s a -> s{_bacpBucket = a})

-- | Multipart request metadata.
bacpPayload :: Lens' BucketAccessControlsPatch' BucketAccessControl
bacpPayload
  = lens _bacpPayload (\ s a -> s{_bacpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacpKey :: Lens' BucketAccessControlsPatch' (Maybe Key)
bacpKey = lens _bacpKey (\ s a -> s{_bacpKey = a})

-- | OAuth 2.0 token for the current user.
bacpOAuthToken :: Lens' BucketAccessControlsPatch' (Maybe OAuthToken)
bacpOAuthToken
  = lens _bacpOAuthToken
      (\ s a -> s{_bacpOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacpEntity :: Lens' BucketAccessControlsPatch' Text
bacpEntity
  = lens _bacpEntity (\ s a -> s{_bacpEntity = a})

-- | Selector specifying which fields to include in a partial response.
bacpFields :: Lens' BucketAccessControlsPatch' (Maybe Text)
bacpFields
  = lens _bacpFields (\ s a -> s{_bacpFields = a})

instance GoogleAuth BucketAccessControlsPatch' where
        authKey = bacpKey . _Just
        authToken = bacpOAuthToken . _Just

instance GoogleRequest BucketAccessControlsPatch'
         where
        type Rs BucketAccessControlsPatch' =
             BucketAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsPatch'{..}
          = go _bacpBucket _bacpEntity _bacpQuotaUser
              (Just _bacpPrettyPrint)
              _bacpUserIP
              _bacpFields
              _bacpKey
              _bacpOAuthToken
              (Just AltJSON)
              _bacpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsPatchResource)
                      r
                      u
