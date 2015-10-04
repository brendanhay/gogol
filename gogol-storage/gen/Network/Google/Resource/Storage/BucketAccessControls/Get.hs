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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the ACL entry for the specified entity on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketAccessControlsGet@.
module Network.Google.Resource.Storage.BucketAccessControls.Get
    (
    -- * REST Resource
      BucketAccessControlsGetResource

    -- * Creating a Request
    , bucketAccessControlsGet'
    , BucketAccessControlsGet'

    -- * Request Lenses
    , bacgQuotaUser
    , bacgPrettyPrint
    , bacgUserIP
    , bacgBucket
    , bacgKey
    , bacgOAuthToken
    , bacgEntity
    , bacgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsGet@ which the
-- 'BucketAccessControlsGet'' request conforms to.
type BucketAccessControlsGetResource =
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
                           Get '[JSON] BucketAccessControl

-- | Returns the ACL entry for the specified entity on the specified bucket.
--
-- /See:/ 'bucketAccessControlsGet'' smart constructor.
data BucketAccessControlsGet' = BucketAccessControlsGet'
    { _bacgQuotaUser   :: !(Maybe Text)
    , _bacgPrettyPrint :: !Bool
    , _bacgUserIP      :: !(Maybe Text)
    , _bacgBucket      :: !Text
    , _bacgKey         :: !(Maybe Key)
    , _bacgOAuthToken  :: !(Maybe OAuthToken)
    , _bacgEntity      :: !Text
    , _bacgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacgQuotaUser'
--
-- * 'bacgPrettyPrint'
--
-- * 'bacgUserIP'
--
-- * 'bacgBucket'
--
-- * 'bacgKey'
--
-- * 'bacgOAuthToken'
--
-- * 'bacgEntity'
--
-- * 'bacgFields'
bucketAccessControlsGet'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsGet'
bucketAccessControlsGet' pBacgBucket_ pBacgEntity_ =
    BucketAccessControlsGet'
    { _bacgQuotaUser = Nothing
    , _bacgPrettyPrint = True
    , _bacgUserIP = Nothing
    , _bacgBucket = pBacgBucket_
    , _bacgKey = Nothing
    , _bacgOAuthToken = Nothing
    , _bacgEntity = pBacgEntity_
    , _bacgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bacgQuotaUser :: Lens' BucketAccessControlsGet' (Maybe Text)
bacgQuotaUser
  = lens _bacgQuotaUser
      (\ s a -> s{_bacgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacgPrettyPrint :: Lens' BucketAccessControlsGet' Bool
bacgPrettyPrint
  = lens _bacgPrettyPrint
      (\ s a -> s{_bacgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bacgUserIP :: Lens' BucketAccessControlsGet' (Maybe Text)
bacgUserIP
  = lens _bacgUserIP (\ s a -> s{_bacgUserIP = a})

-- | Name of a bucket.
bacgBucket :: Lens' BucketAccessControlsGet' Text
bacgBucket
  = lens _bacgBucket (\ s a -> s{_bacgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacgKey :: Lens' BucketAccessControlsGet' (Maybe Key)
bacgKey = lens _bacgKey (\ s a -> s{_bacgKey = a})

-- | OAuth 2.0 token for the current user.
bacgOAuthToken :: Lens' BucketAccessControlsGet' (Maybe OAuthToken)
bacgOAuthToken
  = lens _bacgOAuthToken
      (\ s a -> s{_bacgOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacgEntity :: Lens' BucketAccessControlsGet' Text
bacgEntity
  = lens _bacgEntity (\ s a -> s{_bacgEntity = a})

-- | Selector specifying which fields to include in a partial response.
bacgFields :: Lens' BucketAccessControlsGet' (Maybe Text)
bacgFields
  = lens _bacgFields (\ s a -> s{_bacgFields = a})

instance GoogleAuth BucketAccessControlsGet' where
        authKey = bacgKey . _Just
        authToken = bacgOAuthToken . _Just

instance GoogleRequest BucketAccessControlsGet' where
        type Rs BucketAccessControlsGet' =
             BucketAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsGet'{..}
          = go _bacgBucket _bacgEntity _bacgQuotaUser
              (Just _bacgPrettyPrint)
              _bacgUserIP
              _bacgFields
              _bacgKey
              _bacgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsGetResource)
                      r
                      u
