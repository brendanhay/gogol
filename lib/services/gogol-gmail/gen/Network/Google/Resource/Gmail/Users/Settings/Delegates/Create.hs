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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Delegates.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a delegate with its verification status set directly to
-- \`accepted\`, without sending any verification email. The delegate user
-- must be a member of the same G Suite organization as the delegator user.
-- Gmail imposes limitations on the number of delegates and delegators each
-- user in a G Suite organization can have. These limits depend on your
-- organization, but in general each user can have up to 25 delegates and
-- up to 10 delegators. Note that a delegate user must be referred to by
-- their primary email address, and not an email alias. Also note that when
-- a new delegate is created, there may be up to a one minute delay before
-- the new delegate is available for use. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.delegates.create@.
module Network.Google.Resource.Gmail.Users.Settings.Delegates.Create
    (
    -- * REST Resource
      UsersSettingsDelegatesCreateResource

    -- * Creating a Request
    , usersSettingsDelegatesCreate
    , UsersSettingsDelegatesCreate

    -- * Request Lenses
    , usdcXgafv
    , usdcUploadProtocol
    , usdcAccessToken
    , usdcUploadType
    , usdcPayload
    , usdcUserId
    , usdcCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.delegates.create@ method which the
-- 'UsersSettingsDelegatesCreate' request conforms to.
type UsersSettingsDelegatesCreateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "delegates" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Delegate :> Post '[JSON] Delegate

-- | Adds a delegate with its verification status set directly to
-- \`accepted\`, without sending any verification email. The delegate user
-- must be a member of the same G Suite organization as the delegator user.
-- Gmail imposes limitations on the number of delegates and delegators each
-- user in a G Suite organization can have. These limits depend on your
-- organization, but in general each user can have up to 25 delegates and
-- up to 10 delegators. Note that a delegate user must be referred to by
-- their primary email address, and not an email alias. Also note that when
-- a new delegate is created, there may be up to a one minute delay before
-- the new delegate is available for use. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsDelegatesCreate' smart constructor.
data UsersSettingsDelegatesCreate =
  UsersSettingsDelegatesCreate'
    { _usdcXgafv :: !(Maybe Xgafv)
    , _usdcUploadProtocol :: !(Maybe Text)
    , _usdcAccessToken :: !(Maybe Text)
    , _usdcUploadType :: !(Maybe Text)
    , _usdcPayload :: !Delegate
    , _usdcUserId :: !Text
    , _usdcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsDelegatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdcXgafv'
--
-- * 'usdcUploadProtocol'
--
-- * 'usdcAccessToken'
--
-- * 'usdcUploadType'
--
-- * 'usdcPayload'
--
-- * 'usdcUserId'
--
-- * 'usdcCallback'
usersSettingsDelegatesCreate
    :: Delegate -- ^ 'usdcPayload'
    -> UsersSettingsDelegatesCreate
usersSettingsDelegatesCreate pUsdcPayload_ =
  UsersSettingsDelegatesCreate'
    { _usdcXgafv = Nothing
    , _usdcUploadProtocol = Nothing
    , _usdcAccessToken = Nothing
    , _usdcUploadType = Nothing
    , _usdcPayload = pUsdcPayload_
    , _usdcUserId = "me"
    , _usdcCallback = Nothing
    }


-- | V1 error format.
usdcXgafv :: Lens' UsersSettingsDelegatesCreate (Maybe Xgafv)
usdcXgafv
  = lens _usdcXgafv (\ s a -> s{_usdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usdcUploadProtocol :: Lens' UsersSettingsDelegatesCreate (Maybe Text)
usdcUploadProtocol
  = lens _usdcUploadProtocol
      (\ s a -> s{_usdcUploadProtocol = a})

-- | OAuth access token.
usdcAccessToken :: Lens' UsersSettingsDelegatesCreate (Maybe Text)
usdcAccessToken
  = lens _usdcAccessToken
      (\ s a -> s{_usdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usdcUploadType :: Lens' UsersSettingsDelegatesCreate (Maybe Text)
usdcUploadType
  = lens _usdcUploadType
      (\ s a -> s{_usdcUploadType = a})

-- | Multipart request metadata.
usdcPayload :: Lens' UsersSettingsDelegatesCreate Delegate
usdcPayload
  = lens _usdcPayload (\ s a -> s{_usdcPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usdcUserId :: Lens' UsersSettingsDelegatesCreate Text
usdcUserId
  = lens _usdcUserId (\ s a -> s{_usdcUserId = a})

-- | JSONP
usdcCallback :: Lens' UsersSettingsDelegatesCreate (Maybe Text)
usdcCallback
  = lens _usdcCallback (\ s a -> s{_usdcCallback = a})

instance GoogleRequest UsersSettingsDelegatesCreate
         where
        type Rs UsersSettingsDelegatesCreate = Delegate
        type Scopes UsersSettingsDelegatesCreate =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsDelegatesCreate'{..}
          = go _usdcUserId _usdcXgafv _usdcUploadProtocol
              _usdcAccessToken
              _usdcUploadType
              _usdcCallback
              (Just AltJSON)
              _usdcPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsDelegatesCreateResource)
                      mempty
