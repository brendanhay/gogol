{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.BucketAccessControls.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the ACL entry for the specified entity on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.bucketAccessControls.get@.
module Network.Google.API.Storage.BucketAccessControls.Get
    (
    -- * REST Resource
      BucketAccessControlsGetAPI

    -- * Creating a Request
    , bucketAccessControlsGet'
    , BucketAccessControlsGet'

    -- * Request Lenses
    , bacgQuotaUser
    , bacgPrettyPrint
    , bacgUserIp
    , bacgBucket
    , bacgKey
    , bacgOauthToken
    , bacgEntity
    , bacgFields
    , bacgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.bucketAccessControls.get which the
-- 'BucketAccessControlsGet'' request conforms to.
type BucketAccessControlsGetAPI =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] BucketAccessControl

-- | Returns the ACL entry for the specified entity on the specified bucket.
--
-- /See:/ 'bucketAccessControlsGet'' smart constructor.
data BucketAccessControlsGet' = BucketAccessControlsGet'
    { _bacgQuotaUser   :: !(Maybe Text)
    , _bacgPrettyPrint :: !Bool
    , _bacgUserIp      :: !(Maybe Text)
    , _bacgBucket      :: !Text
    , _bacgKey         :: !(Maybe Text)
    , _bacgOauthToken  :: !(Maybe Text)
    , _bacgEntity      :: !Text
    , _bacgFields      :: !(Maybe Text)
    , _bacgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacgQuotaUser'
--
-- * 'bacgPrettyPrint'
--
-- * 'bacgUserIp'
--
-- * 'bacgBucket'
--
-- * 'bacgKey'
--
-- * 'bacgOauthToken'
--
-- * 'bacgEntity'
--
-- * 'bacgFields'
--
-- * 'bacgAlt'
bucketAccessControlsGet'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsGet'
bucketAccessControlsGet' pBacgBucket_ pBacgEntity_ =
    BucketAccessControlsGet'
    { _bacgQuotaUser = Nothing
    , _bacgPrettyPrint = True
    , _bacgUserIp = Nothing
    , _bacgBucket = pBacgBucket_
    , _bacgKey = Nothing
    , _bacgOauthToken = Nothing
    , _bacgEntity = pBacgEntity_
    , _bacgFields = Nothing
    , _bacgAlt = JSON
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
bacgUserIp :: Lens' BucketAccessControlsGet' (Maybe Text)
bacgUserIp
  = lens _bacgUserIp (\ s a -> s{_bacgUserIp = a})

-- | Name of a bucket.
bacgBucket :: Lens' BucketAccessControlsGet' Text
bacgBucket
  = lens _bacgBucket (\ s a -> s{_bacgBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacgKey :: Lens' BucketAccessControlsGet' (Maybe Text)
bacgKey = lens _bacgKey (\ s a -> s{_bacgKey = a})

-- | OAuth 2.0 token for the current user.
bacgOauthToken :: Lens' BucketAccessControlsGet' (Maybe Text)
bacgOauthToken
  = lens _bacgOauthToken
      (\ s a -> s{_bacgOauthToken = a})

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

-- | Data format for the response.
bacgAlt :: Lens' BucketAccessControlsGet' Alt
bacgAlt = lens _bacgAlt (\ s a -> s{_bacgAlt = a})

instance GoogleRequest BucketAccessControlsGet' where
        type Rs BucketAccessControlsGet' =
             BucketAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketAccessControlsGet'{..}
          = go _bacgQuotaUser (Just _bacgPrettyPrint)
              _bacgUserIp
              _bacgBucket
              _bacgKey
              _bacgOauthToken
              _bacgEntity
              _bacgFields
              (Just _bacgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketAccessControlsGetAPI)
                      r
                      u
