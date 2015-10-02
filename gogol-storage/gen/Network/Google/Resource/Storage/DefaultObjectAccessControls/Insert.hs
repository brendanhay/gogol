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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsInsert@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert
    (
    -- * REST Resource
      DefaultObjectAccessControlsInsertResource

    -- * Creating a Request
    , defaultObjectAccessControlsInsert'
    , DefaultObjectAccessControlsInsert'

    -- * Request Lenses
    , doaciQuotaUser
    , doaciPrettyPrint
    , doaciUserIP
    , doaciBucket
    , doaciKey
    , doaciOAuthToken
    , doaciObjectAccessControl
    , doaciFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsInsert@ which the
-- 'DefaultObjectAccessControlsInsert'' request conforms to.
type DefaultObjectAccessControlsInsertResource =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ObjectAccessControl :>
                           Post '[JSON] ObjectAccessControl

-- | Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsInsert'' smart constructor.
data DefaultObjectAccessControlsInsert' = DefaultObjectAccessControlsInsert'
    { _doaciQuotaUser           :: !(Maybe Text)
    , _doaciPrettyPrint         :: !Bool
    , _doaciUserIP              :: !(Maybe Text)
    , _doaciBucket              :: !Text
    , _doaciKey                 :: !(Maybe Key)
    , _doaciOAuthToken          :: !(Maybe OAuthToken)
    , _doaciObjectAccessControl :: !ObjectAccessControl
    , _doaciFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doaciQuotaUser'
--
-- * 'doaciPrettyPrint'
--
-- * 'doaciUserIP'
--
-- * 'doaciBucket'
--
-- * 'doaciKey'
--
-- * 'doaciOAuthToken'
--
-- * 'doaciObjectAccessControl'
--
-- * 'doaciFields'
defaultObjectAccessControlsInsert'
    :: Text -- ^ 'bucket'
    -> ObjectAccessControl -- ^ 'ObjectAccessControl'
    -> DefaultObjectAccessControlsInsert'
defaultObjectAccessControlsInsert' pDoaciBucket_ pDoaciObjectAccessControl_ =
    DefaultObjectAccessControlsInsert'
    { _doaciQuotaUser = Nothing
    , _doaciPrettyPrint = True
    , _doaciUserIP = Nothing
    , _doaciBucket = pDoaciBucket_
    , _doaciKey = Nothing
    , _doaciOAuthToken = Nothing
    , _doaciObjectAccessControl = pDoaciObjectAccessControl_
    , _doaciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doaciQuotaUser :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciQuotaUser
  = lens _doaciQuotaUser
      (\ s a -> s{_doaciQuotaUser = a})

-- | Returns response with indentations and line breaks.
doaciPrettyPrint :: Lens' DefaultObjectAccessControlsInsert' Bool
doaciPrettyPrint
  = lens _doaciPrettyPrint
      (\ s a -> s{_doaciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doaciUserIP :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciUserIP
  = lens _doaciUserIP (\ s a -> s{_doaciUserIP = a})

-- | Name of a bucket.
doaciBucket :: Lens' DefaultObjectAccessControlsInsert' Text
doaciBucket
  = lens _doaciBucket (\ s a -> s{_doaciBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doaciKey :: Lens' DefaultObjectAccessControlsInsert' (Maybe Key)
doaciKey = lens _doaciKey (\ s a -> s{_doaciKey = a})

-- | OAuth 2.0 token for the current user.
doaciOAuthToken :: Lens' DefaultObjectAccessControlsInsert' (Maybe OAuthToken)
doaciOAuthToken
  = lens _doaciOAuthToken
      (\ s a -> s{_doaciOAuthToken = a})

-- | Multipart request metadata.
doaciObjectAccessControl :: Lens' DefaultObjectAccessControlsInsert' ObjectAccessControl
doaciObjectAccessControl
  = lens _doaciObjectAccessControl
      (\ s a -> s{_doaciObjectAccessControl = a})

-- | Selector specifying which fields to include in a partial response.
doaciFields :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciFields
  = lens _doaciFields (\ s a -> s{_doaciFields = a})

instance GoogleAuth
         DefaultObjectAccessControlsInsert' where
        authKey = doaciKey . _Just
        authToken = doaciOAuthToken . _Just

instance GoogleRequest
         DefaultObjectAccessControlsInsert' where
        type Rs DefaultObjectAccessControlsInsert' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsInsert'{..}
          = go _doaciBucket _doaciQuotaUser
              (Just _doaciPrettyPrint)
              _doaciUserIP
              _doaciFields
              _doaciKey
              _doaciOAuthToken
              (Just AltJSON)
              _doaciObjectAccessControl
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsInsertResource)
                      r
                      u
