{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , doaciPayload
    , doaciKey
    , doaciOAuthToken
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
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ObjectAccessControl :>
                           Post '[JSON] ObjectAccessControl

-- | Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsInsert'' smart constructor.
data DefaultObjectAccessControlsInsert' = DefaultObjectAccessControlsInsert'
    { _doaciQuotaUser   :: !(Maybe Text)
    , _doaciPrettyPrint :: !Bool
    , _doaciUserIP      :: !(Maybe Text)
    , _doaciBucket      :: !Text
    , _doaciPayload     :: !ObjectAccessControl
    , _doaciKey         :: !(Maybe AuthKey)
    , _doaciOAuthToken  :: !(Maybe OAuthToken)
    , _doaciFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'doaciPayload'
--
-- * 'doaciKey'
--
-- * 'doaciOAuthToken'
--
-- * 'doaciFields'
defaultObjectAccessControlsInsert'
    :: Text -- ^ 'bucket'
    -> ObjectAccessControl -- ^ 'payload'
    -> DefaultObjectAccessControlsInsert'
defaultObjectAccessControlsInsert' pDoaciBucket_ pDoaciPayload_ =
    DefaultObjectAccessControlsInsert'
    { _doaciQuotaUser = Nothing
    , _doaciPrettyPrint = True
    , _doaciUserIP = Nothing
    , _doaciBucket = pDoaciBucket_
    , _doaciPayload = pDoaciPayload_
    , _doaciKey = Nothing
    , _doaciOAuthToken = Nothing
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

-- | Multipart request metadata.
doaciPayload :: Lens' DefaultObjectAccessControlsInsert' ObjectAccessControl
doaciPayload
  = lens _doaciPayload (\ s a -> s{_doaciPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doaciKey :: Lens' DefaultObjectAccessControlsInsert' (Maybe AuthKey)
doaciKey = lens _doaciKey (\ s a -> s{_doaciKey = a})

-- | OAuth 2.0 token for the current user.
doaciOAuthToken :: Lens' DefaultObjectAccessControlsInsert' (Maybe OAuthToken)
doaciOAuthToken
  = lens _doaciOAuthToken
      (\ s a -> s{_doaciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
doaciFields :: Lens' DefaultObjectAccessControlsInsert' (Maybe Text)
doaciFields
  = lens _doaciFields (\ s a -> s{_doaciFields = a})

instance GoogleAuth
         DefaultObjectAccessControlsInsert' where
        _AuthKey = doaciKey . _Just
        _AuthToken = doaciOAuthToken . _Just

instance GoogleRequest
         DefaultObjectAccessControlsInsert' where
        type Rs DefaultObjectAccessControlsInsert' =
             ObjectAccessControl
        request = requestWith storageRequest
        requestWith rq DefaultObjectAccessControlsInsert'{..}
          = go _doaciBucket _doaciQuotaUser
              (Just _doaciPrettyPrint)
              _doaciUserIP
              _doaciFields
              _doaciKey
              _doaciOAuthToken
              (Just AltJSON)
              _doaciPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsInsertResource)
                      rq
