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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details of an EMM-managed user. Can be used with EMM-managed
-- users only (not Google managed users). Pass the new details in the Users
-- resource in the request body. Only the displayName field can be changed.
-- Other fields must either be unset or have the currently active value.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.update@.
module Network.Google.Resource.AndroidEnterprise.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate
    , UsersUpdate

    -- * Request Lenses
    , uuEnterpriseId
    , uuPayload
    , uuUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.update@ method which the
-- 'UsersUpdate' request conforms to.
type UsersUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] User :> Put '[JSON] User

-- | Updates the details of an EMM-managed user. Can be used with EMM-managed
-- users only (not Google managed users). Pass the new details in the Users
-- resource in the request body. Only the displayName field can be changed.
-- Other fields must either be unset or have the currently active value.
--
-- /See:/ 'usersUpdate' smart constructor.
data UsersUpdate =
  UsersUpdate'
    { _uuEnterpriseId :: !Text
    , _uuPayload      :: !User
    , _uuUserId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuEnterpriseId'
--
-- * 'uuPayload'
--
-- * 'uuUserId'
usersUpdate
    :: Text -- ^ 'uuEnterpriseId'
    -> User -- ^ 'uuPayload'
    -> Text -- ^ 'uuUserId'
    -> UsersUpdate
usersUpdate pUuEnterpriseId_ pUuPayload_ pUuUserId_ =
  UsersUpdate'
    { _uuEnterpriseId = pUuEnterpriseId_
    , _uuPayload = pUuPayload_
    , _uuUserId = pUuUserId_
    }


-- | The ID of the enterprise.
uuEnterpriseId :: Lens' UsersUpdate Text
uuEnterpriseId
  = lens _uuEnterpriseId
      (\ s a -> s{_uuEnterpriseId = a})

-- | Multipart request metadata.
uuPayload :: Lens' UsersUpdate User
uuPayload
  = lens _uuPayload (\ s a -> s{_uuPayload = a})

-- | The ID of the user.
uuUserId :: Lens' UsersUpdate Text
uuUserId = lens _uuUserId (\ s a -> s{_uuUserId = a})

instance GoogleRequest UsersUpdate where
        type Rs UsersUpdate = User
        type Scopes UsersUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersUpdate'{..}
          = go _uuEnterpriseId _uuUserId (Just AltJSON)
              _uuPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy UsersUpdateResource)
                      mempty
