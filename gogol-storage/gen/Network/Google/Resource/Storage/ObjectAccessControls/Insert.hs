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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectAccessControlsInsert@.
module Network.Google.Resource.Storage.ObjectAccessControls.Insert
    (
    -- * REST Resource
      ObjectAccessControlsInsertResource

    -- * Creating a Request
    , objectAccessControlsInsert'
    , ObjectAccessControlsInsert'

    -- * Request Lenses
    , oaciQuotaUser
    , oaciPrettyPrint
    , oaciUserIP
    , oaciBucket
    , oaciPayload
    , oaciKey
    , oaciObject
    , oaciOAuthToken
    , oaciGeneration
    , oaciFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectAccessControlsInsert@ which the
-- 'ObjectAccessControlsInsert'' request conforms to.
type ObjectAccessControlsInsertResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             "acl" :>
               QueryParam "generation" Word64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ObjectAccessControl :>
                                 Post '[JSON] ObjectAccessControl

-- | Creates a new ACL entry on the specified object.
--
-- /See:/ 'objectAccessControlsInsert'' smart constructor.
data ObjectAccessControlsInsert' = ObjectAccessControlsInsert'
    { _oaciQuotaUser   :: !(Maybe Text)
    , _oaciPrettyPrint :: !Bool
    , _oaciUserIP      :: !(Maybe Text)
    , _oaciBucket      :: !Text
    , _oaciPayload     :: !ObjectAccessControl
    , _oaciKey         :: !(Maybe Key)
    , _oaciObject      :: !Text
    , _oaciOAuthToken  :: !(Maybe OAuthToken)
    , _oaciGeneration  :: !(Maybe Word64)
    , _oaciFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaciQuotaUser'
--
-- * 'oaciPrettyPrint'
--
-- * 'oaciUserIP'
--
-- * 'oaciBucket'
--
-- * 'oaciPayload'
--
-- * 'oaciKey'
--
-- * 'oaciObject'
--
-- * 'oaciOAuthToken'
--
-- * 'oaciGeneration'
--
-- * 'oaciFields'
objectAccessControlsInsert'
    :: Text -- ^ 'bucket'
    -> ObjectAccessControl -- ^ 'payload'
    -> Text -- ^ 'object'
    -> ObjectAccessControlsInsert'
objectAccessControlsInsert' pOaciBucket_ pOaciPayload_ pOaciObject_ =
    ObjectAccessControlsInsert'
    { _oaciQuotaUser = Nothing
    , _oaciPrettyPrint = True
    , _oaciUserIP = Nothing
    , _oaciBucket = pOaciBucket_
    , _oaciPayload = pOaciPayload_
    , _oaciKey = Nothing
    , _oaciObject = pOaciObject_
    , _oaciOAuthToken = Nothing
    , _oaciGeneration = Nothing
    , _oaciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oaciQuotaUser :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciQuotaUser
  = lens _oaciQuotaUser
      (\ s a -> s{_oaciQuotaUser = a})

-- | Returns response with indentations and line breaks.
oaciPrettyPrint :: Lens' ObjectAccessControlsInsert' Bool
oaciPrettyPrint
  = lens _oaciPrettyPrint
      (\ s a -> s{_oaciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaciUserIP :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciUserIP
  = lens _oaciUserIP (\ s a -> s{_oaciUserIP = a})

-- | Name of a bucket.
oaciBucket :: Lens' ObjectAccessControlsInsert' Text
oaciBucket
  = lens _oaciBucket (\ s a -> s{_oaciBucket = a})

-- | Multipart request metadata.
oaciPayload :: Lens' ObjectAccessControlsInsert' ObjectAccessControl
oaciPayload
  = lens _oaciPayload (\ s a -> s{_oaciPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaciKey :: Lens' ObjectAccessControlsInsert' (Maybe Key)
oaciKey = lens _oaciKey (\ s a -> s{_oaciKey = a})

-- | Name of the object.
oaciObject :: Lens' ObjectAccessControlsInsert' Text
oaciObject
  = lens _oaciObject (\ s a -> s{_oaciObject = a})

-- | OAuth 2.0 token for the current user.
oaciOAuthToken :: Lens' ObjectAccessControlsInsert' (Maybe OAuthToken)
oaciOAuthToken
  = lens _oaciOAuthToken
      (\ s a -> s{_oaciOAuthToken = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oaciGeneration :: Lens' ObjectAccessControlsInsert' (Maybe Word64)
oaciGeneration
  = lens _oaciGeneration
      (\ s a -> s{_oaciGeneration = a})

-- | Selector specifying which fields to include in a partial response.
oaciFields :: Lens' ObjectAccessControlsInsert' (Maybe Text)
oaciFields
  = lens _oaciFields (\ s a -> s{_oaciFields = a})

instance GoogleAuth ObjectAccessControlsInsert' where
        authKey = oaciKey . _Just
        authToken = oaciOAuthToken . _Just

instance GoogleRequest ObjectAccessControlsInsert'
         where
        type Rs ObjectAccessControlsInsert' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectAccessControlsInsert'{..}
          = go _oaciBucket _oaciObject _oaciGeneration
              _oaciQuotaUser
              (Just _oaciPrettyPrint)
              _oaciUserIP
              _oaciFields
              _oaciKey
              _oaciOAuthToken
              (Just AltJSON)
              _oaciPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectAccessControlsInsertResource)
                      r
                      u
