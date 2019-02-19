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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Filters.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a filter.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.filters.create@.
module Network.Google.Resource.Gmail.Users.Settings.Filters.Create
    (
    -- * REST Resource
      UsersSettingsFiltersCreateResource

    -- * Creating a Request
    , usersSettingsFiltersCreate
    , UsersSettingsFiltersCreate

    -- * Request Lenses
    , usfcPayload
    , usfcUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.filters.create@ method which the
-- 'UsersSettingsFiltersCreate' request conforms to.
type UsersSettingsFiltersCreateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "filters" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Filter :> Post '[JSON] Filter

-- | Creates a filter.
--
-- /See:/ 'usersSettingsFiltersCreate' smart constructor.
data UsersSettingsFiltersCreate =
  UsersSettingsFiltersCreate'
    { _usfcPayload :: !Filter
    , _usfcUserId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersSettingsFiltersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfcPayload'
--
-- * 'usfcUserId'
usersSettingsFiltersCreate
    :: Filter -- ^ 'usfcPayload'
    -> UsersSettingsFiltersCreate
usersSettingsFiltersCreate pUsfcPayload_ =
  UsersSettingsFiltersCreate' {_usfcPayload = pUsfcPayload_, _usfcUserId = "me"}

-- | Multipart request metadata.
usfcPayload :: Lens' UsersSettingsFiltersCreate Filter
usfcPayload
  = lens _usfcPayload (\ s a -> s{_usfcPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfcUserId :: Lens' UsersSettingsFiltersCreate Text
usfcUserId
  = lens _usfcUserId (\ s a -> s{_usfcUserId = a})

instance GoogleRequest UsersSettingsFiltersCreate
         where
        type Rs UsersSettingsFiltersCreate = Filter
        type Scopes UsersSettingsFiltersCreate =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsFiltersCreate'{..}
          = go _usfcUserId (Just AltJSON) _usfcPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsFiltersCreateResource)
                      mempty
