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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves ACL entries on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectAccessControlsList@.
module Network.Google.Resource.Storage.ObjectAccessControls.List
    (
    -- * REST Resource
      ObjectAccessControlsListResource

    -- * Creating a Request
    , objectAccessControlsList'
    , ObjectAccessControlsList'

    -- * Request Lenses
    , oaclQuotaUser
    , oaclPrettyPrint
    , oaclUserIP
    , oaclBucket
    , oaclKey
    , oaclObject
    , oaclOAuthToken
    , oaclGeneration
    , oaclFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsList@ which the
-- 'ObjectAccessControlsList'' request conforms to.
type ObjectAccessControlsListResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "generation" Word64 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ObjectAccessControls

-- | Retrieves ACL entries on the specified object.
--
-- /See:/ 'objectAccessControlsList'' smart constructor.
data ObjectAccessControlsList' = ObjectAccessControlsList'
    { _oaclQuotaUser   :: !(Maybe Text)
    , _oaclPrettyPrint :: !Bool
    , _oaclUserIP      :: !(Maybe Text)
    , _oaclBucket      :: !Text
    , _oaclKey         :: !(Maybe Key)
    , _oaclObject      :: !Text
    , _oaclOAuthToken  :: !(Maybe OAuthToken)
    , _oaclGeneration  :: !(Maybe Word64)
    , _oaclFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaclQuotaUser'
--
-- * 'oaclPrettyPrint'
--
-- * 'oaclUserIP'
--
-- * 'oaclBucket'
--
-- * 'oaclKey'
--
-- * 'oaclObject'
--
-- * 'oaclOAuthToken'
--
-- * 'oaclGeneration'
--
-- * 'oaclFields'
objectAccessControlsList'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> ObjectAccessControlsList'
objectAccessControlsList' pOaclBucket_ pOaclObject_ =
    ObjectAccessControlsList'
    { _oaclQuotaUser = Nothing
    , _oaclPrettyPrint = True
    , _oaclUserIP = Nothing
    , _oaclBucket = pOaclBucket_
    , _oaclKey = Nothing
    , _oaclObject = pOaclObject_
    , _oaclOAuthToken = Nothing
    , _oaclGeneration = Nothing
    , _oaclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oaclQuotaUser :: Lens' ObjectAccessControlsList' (Maybe Text)
oaclQuotaUser
  = lens _oaclQuotaUser
      (\ s a -> s{_oaclQuotaUser = a})

-- | Returns response with indentations and line breaks.
oaclPrettyPrint :: Lens' ObjectAccessControlsList' Bool
oaclPrettyPrint
  = lens _oaclPrettyPrint
      (\ s a -> s{_oaclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaclUserIP :: Lens' ObjectAccessControlsList' (Maybe Text)
oaclUserIP
  = lens _oaclUserIP (\ s a -> s{_oaclUserIP = a})

-- | Name of a bucket.
oaclBucket :: Lens' ObjectAccessControlsList' Text
oaclBucket
  = lens _oaclBucket (\ s a -> s{_oaclBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaclKey :: Lens' ObjectAccessControlsList' (Maybe Key)
oaclKey = lens _oaclKey (\ s a -> s{_oaclKey = a})

-- | Name of the object.
oaclObject :: Lens' ObjectAccessControlsList' Text
oaclObject
  = lens _oaclObject (\ s a -> s{_oaclObject = a})

-- | OAuth 2.0 token for the current user.
oaclOAuthToken :: Lens' ObjectAccessControlsList' (Maybe OAuthToken)
oaclOAuthToken
  = lens _oaclOAuthToken
      (\ s a -> s{_oaclOAuthToken = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oaclGeneration :: Lens' ObjectAccessControlsList' (Maybe Word64)
oaclGeneration
  = lens _oaclGeneration
      (\ s a -> s{_oaclGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oaclFields :: Lens' ObjectAccessControlsList' (Maybe Text)
oaclFields
  = lens _oaclFields (\ s a -> s{_oaclFields = a})

instance GoogleAuth ObjectAccessControlsList' where
        authKey = oaclKey . _Just
        authToken = oaclOAuthToken . _Just

instance GoogleRequest ObjectAccessControlsList'
         where
        type Rs ObjectAccessControlsList' =
             ObjectAccessControls
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsList'{..}
          = go _oaclQuotaUser (Just _oaclPrettyPrint)
              _oaclUserIP
              _oaclBucket
              _oaclKey
              _oaclObject
              _oaclOAuthToken
              _oaclGeneration
              _oaclFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsListResource)
                      r
                      u
