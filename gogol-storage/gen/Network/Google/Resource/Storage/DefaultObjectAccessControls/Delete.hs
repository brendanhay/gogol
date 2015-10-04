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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes the default object ACL entry for the specified
-- entity on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsDelete@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete
    (
    -- * REST Resource
      DefaultObjectAccessControlsDeleteResource

    -- * Creating a Request
    , defaultObjectAccessControlsDelete'
    , DefaultObjectAccessControlsDelete'

    -- * Request Lenses
    , doacdQuotaUser
    , doacdPrettyPrint
    , doacdUserIP
    , doacdBucket
    , doacdKey
    , doacdOAuthToken
    , doacdEntity
    , doacdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsDelete@ which the
-- 'DefaultObjectAccessControlsDelete'' request conforms to.
type DefaultObjectAccessControlsDeleteResource =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes the default object ACL entry for the specified
-- entity on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsDelete'' smart constructor.
data DefaultObjectAccessControlsDelete' = DefaultObjectAccessControlsDelete'
    { _doacdQuotaUser   :: !(Maybe Text)
    , _doacdPrettyPrint :: !Bool
    , _doacdUserIP      :: !(Maybe Text)
    , _doacdBucket      :: !Text
    , _doacdKey         :: !(Maybe Key)
    , _doacdOAuthToken  :: !(Maybe OAuthToken)
    , _doacdEntity      :: !Text
    , _doacdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacdQuotaUser'
--
-- * 'doacdPrettyPrint'
--
-- * 'doacdUserIP'
--
-- * 'doacdBucket'
--
-- * 'doacdKey'
--
-- * 'doacdOAuthToken'
--
-- * 'doacdEntity'
--
-- * 'doacdFields'
defaultObjectAccessControlsDelete'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> DefaultObjectAccessControlsDelete'
defaultObjectAccessControlsDelete' pDoacdBucket_ pDoacdEntity_ =
    DefaultObjectAccessControlsDelete'
    { _doacdQuotaUser = Nothing
    , _doacdPrettyPrint = True
    , _doacdUserIP = Nothing
    , _doacdBucket = pDoacdBucket_
    , _doacdKey = Nothing
    , _doacdOAuthToken = Nothing
    , _doacdEntity = pDoacdEntity_
    , _doacdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doacdQuotaUser :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdQuotaUser
  = lens _doacdQuotaUser
      (\ s a -> s{_doacdQuotaUser = a})

-- | Returns response with indentations and line breaks.
doacdPrettyPrint :: Lens' DefaultObjectAccessControlsDelete' Bool
doacdPrettyPrint
  = lens _doacdPrettyPrint
      (\ s a -> s{_doacdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doacdUserIP :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdUserIP
  = lens _doacdUserIP (\ s a -> s{_doacdUserIP = a})

-- | Name of a bucket.
doacdBucket :: Lens' DefaultObjectAccessControlsDelete' Text
doacdBucket
  = lens _doacdBucket (\ s a -> s{_doacdBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doacdKey :: Lens' DefaultObjectAccessControlsDelete' (Maybe Key)
doacdKey = lens _doacdKey (\ s a -> s{_doacdKey = a})

-- | OAuth 2.0 token for the current user.
doacdOAuthToken :: Lens' DefaultObjectAccessControlsDelete' (Maybe OAuthToken)
doacdOAuthToken
  = lens _doacdOAuthToken
      (\ s a -> s{_doacdOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacdEntity :: Lens' DefaultObjectAccessControlsDelete' Text
doacdEntity
  = lens _doacdEntity (\ s a -> s{_doacdEntity = a})

-- | Selector specifying which fields to include in a partial response.
doacdFields :: Lens' DefaultObjectAccessControlsDelete' (Maybe Text)
doacdFields
  = lens _doacdFields (\ s a -> s{_doacdFields = a})

instance GoogleAuth
         DefaultObjectAccessControlsDelete' where
        authKey = doacdKey . _Just
        authToken = doacdOAuthToken . _Just

instance GoogleRequest
         DefaultObjectAccessControlsDelete' where
        type Rs DefaultObjectAccessControlsDelete' = ()
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsDelete'{..}
          = go _doacdBucket _doacdEntity _doacdQuotaUser
              (Just _doacdPrettyPrint)
              _doacdUserIP
              _doacdFields
              _doacdKey
              _doacdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsDeleteResource)
                      r
                      u
