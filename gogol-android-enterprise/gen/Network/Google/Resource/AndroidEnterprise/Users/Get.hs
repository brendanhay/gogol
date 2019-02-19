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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a user\'s details.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.get@.
module Network.Google.Resource.AndroidEnterprise.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugEnterpriseId
    , ugUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.get@ method which the
-- 'UsersGet' request conforms to.
type UsersGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Retrieves a user\'s details.
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet =
  UsersGet'
    { _ugEnterpriseId :: !Text
    , _ugUserId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugEnterpriseId'
--
-- * 'ugUserId'
usersGet
    :: Text -- ^ 'ugEnterpriseId'
    -> Text -- ^ 'ugUserId'
    -> UsersGet
usersGet pUgEnterpriseId_ pUgUserId_ =
  UsersGet' {_ugEnterpriseId = pUgEnterpriseId_, _ugUserId = pUgUserId_}


-- | The ID of the enterprise.
ugEnterpriseId :: Lens' UsersGet Text
ugEnterpriseId
  = lens _ugEnterpriseId
      (\ s a -> s{_ugEnterpriseId = a})

-- | The ID of the user.
ugUserId :: Lens' UsersGet Text
ugUserId = lens _ugUserId (\ s a -> s{_ugUserId = a})

instance GoogleRequest UsersGet where
        type Rs UsersGet = User
        type Scopes UsersGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersGet'{..}
          = go _ugEnterpriseId _ugUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy UsersGetResource)
                      mempty
