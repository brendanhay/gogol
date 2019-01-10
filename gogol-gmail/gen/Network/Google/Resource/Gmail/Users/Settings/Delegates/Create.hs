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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a delegate with its verification status set directly to accepted,
-- without sending any verification email. The delegate user must be a
-- member of the same G Suite organization as the delegator user. Gmail
-- imposes limtations on the number of delegates and delegators each user
-- in a G Suite organization can have. These limits depend on your
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
    , usdcPayload
    , usdcUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.delegates.create@ method which the
-- 'UsersSettingsDelegatesCreate' request conforms to.
type UsersSettingsDelegatesCreateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "delegates" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Delegate :> Post '[JSON] Delegate

-- | Adds a delegate with its verification status set directly to accepted,
-- without sending any verification email. The delegate user must be a
-- member of the same G Suite organization as the delegator user. Gmail
-- imposes limtations on the number of delegates and delegators each user
-- in a G Suite organization can have. These limits depend on your
-- organization, but in general each user can have up to 25 delegates and
-- up to 10 delegators. Note that a delegate user must be referred to by
-- their primary email address, and not an email alias. Also note that when
-- a new delegate is created, there may be up to a one minute delay before
-- the new delegate is available for use. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsDelegatesCreate' smart constructor.
data UsersSettingsDelegatesCreate = UsersSettingsDelegatesCreate'
    { _usdcPayload :: !Delegate
    , _usdcUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsDelegatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdcPayload'
--
-- * 'usdcUserId'
usersSettingsDelegatesCreate
    :: Delegate -- ^ 'usdcPayload'
    -> UsersSettingsDelegatesCreate
usersSettingsDelegatesCreate pUsdcPayload_ =
    UsersSettingsDelegatesCreate'
    { _usdcPayload = pUsdcPayload_
    , _usdcUserId = "me"
    }

-- | Multipart request metadata.
usdcPayload :: Lens' UsersSettingsDelegatesCreate Delegate
usdcPayload
  = lens _usdcPayload (\ s a -> s{_usdcPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usdcUserId :: Lens' UsersSettingsDelegatesCreate Text
usdcUserId
  = lens _usdcUserId (\ s a -> s{_usdcUserId = a})

instance GoogleRequest UsersSettingsDelegatesCreate
         where
        type Rs UsersSettingsDelegatesCreate = Delegate
        type Scopes UsersSettingsDelegatesCreate =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsDelegatesCreate'{..}
          = go _usdcUserId (Just AltJSON) _usdcPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsDelegatesCreateResource)
                      mempty
