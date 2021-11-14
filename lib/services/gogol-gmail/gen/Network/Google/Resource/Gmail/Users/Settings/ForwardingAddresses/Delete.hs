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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified forwarding address and revokes any verification
-- that may have been required. This method is only available to service
-- account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.delete@.
module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Delete
    (
    -- * REST Resource
      UsersSettingsForwardingAddressesDeleteResource

    -- * Creating a Request
    , usersSettingsForwardingAddressesDelete
    , UsersSettingsForwardingAddressesDelete

    -- * Request Lenses
    , usfadXgafv
    , usfadForwardingEmail
    , usfadUploadProtocol
    , usfadAccessToken
    , usfadUploadType
    , usfadUserId
    , usfadCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.forwardingAddresses.delete@ method which the
-- 'UsersSettingsForwardingAddressesDelete' request conforms to.
type UsersSettingsForwardingAddressesDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "forwardingAddresses" :>
                 Capture "forwardingEmail" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified forwarding address and revokes any verification
-- that may have been required. This method is only available to service
-- account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsForwardingAddressesDelete' smart constructor.
data UsersSettingsForwardingAddressesDelete =
  UsersSettingsForwardingAddressesDelete'
    { _usfadXgafv :: !(Maybe Xgafv)
    , _usfadForwardingEmail :: !Text
    , _usfadUploadProtocol :: !(Maybe Text)
    , _usfadAccessToken :: !(Maybe Text)
    , _usfadUploadType :: !(Maybe Text)
    , _usfadUserId :: !Text
    , _usfadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsForwardingAddressesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfadXgafv'
--
-- * 'usfadForwardingEmail'
--
-- * 'usfadUploadProtocol'
--
-- * 'usfadAccessToken'
--
-- * 'usfadUploadType'
--
-- * 'usfadUserId'
--
-- * 'usfadCallback'
usersSettingsForwardingAddressesDelete
    :: Text -- ^ 'usfadForwardingEmail'
    -> UsersSettingsForwardingAddressesDelete
usersSettingsForwardingAddressesDelete pUsfadForwardingEmail_ =
  UsersSettingsForwardingAddressesDelete'
    { _usfadXgafv = Nothing
    , _usfadForwardingEmail = pUsfadForwardingEmail_
    , _usfadUploadProtocol = Nothing
    , _usfadAccessToken = Nothing
    , _usfadUploadType = Nothing
    , _usfadUserId = "me"
    , _usfadCallback = Nothing
    }


-- | V1 error format.
usfadXgafv :: Lens' UsersSettingsForwardingAddressesDelete (Maybe Xgafv)
usfadXgafv
  = lens _usfadXgafv (\ s a -> s{_usfadXgafv = a})

-- | The forwarding address to be deleted.
usfadForwardingEmail :: Lens' UsersSettingsForwardingAddressesDelete Text
usfadForwardingEmail
  = lens _usfadForwardingEmail
      (\ s a -> s{_usfadForwardingEmail = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usfadUploadProtocol :: Lens' UsersSettingsForwardingAddressesDelete (Maybe Text)
usfadUploadProtocol
  = lens _usfadUploadProtocol
      (\ s a -> s{_usfadUploadProtocol = a})

-- | OAuth access token.
usfadAccessToken :: Lens' UsersSettingsForwardingAddressesDelete (Maybe Text)
usfadAccessToken
  = lens _usfadAccessToken
      (\ s a -> s{_usfadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usfadUploadType :: Lens' UsersSettingsForwardingAddressesDelete (Maybe Text)
usfadUploadType
  = lens _usfadUploadType
      (\ s a -> s{_usfadUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfadUserId :: Lens' UsersSettingsForwardingAddressesDelete Text
usfadUserId
  = lens _usfadUserId (\ s a -> s{_usfadUserId = a})

-- | JSONP
usfadCallback :: Lens' UsersSettingsForwardingAddressesDelete (Maybe Text)
usfadCallback
  = lens _usfadCallback
      (\ s a -> s{_usfadCallback = a})

instance GoogleRequest
           UsersSettingsForwardingAddressesDelete
         where
        type Rs UsersSettingsForwardingAddressesDelete = ()
        type Scopes UsersSettingsForwardingAddressesDelete =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient
          UsersSettingsForwardingAddressesDelete'{..}
          = go _usfadUserId _usfadForwardingEmail _usfadXgafv
              _usfadUploadProtocol
              _usfadAccessToken
              _usfadUploadType
              _usfadCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsForwardingAddressesDeleteResource)
                      mempty
