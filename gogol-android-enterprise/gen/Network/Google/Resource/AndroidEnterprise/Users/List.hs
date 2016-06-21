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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up a user by their primary email address.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.list@.
module Network.Google.Resource.AndroidEnterprise.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulEmail
    , ulEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.list@ method which the
-- 'UsersList' request conforms to.
type UsersListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               QueryParam "email" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] UsersListResponse

-- | Looks up a user by their primary email address.
--
-- /See:/ 'usersList' smart constructor.
data UsersList = UsersList'
    { _ulEmail        :: !Text
    , _ulEnterpriseId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulEmail'
--
-- * 'ulEnterpriseId'
usersList
    :: Text -- ^ 'ulEmail'
    -> Text -- ^ 'ulEnterpriseId'
    -> UsersList
usersList pUlEmail_ pUlEnterpriseId_ =
    UsersList'
    { _ulEmail = pUlEmail_
    , _ulEnterpriseId = pUlEnterpriseId_
    }

-- | The exact primary email address of the user to look up.
ulEmail :: Lens' UsersList Text
ulEmail = lens _ulEmail (\ s a -> s{_ulEmail = a})

-- | The ID of the enterprise.
ulEnterpriseId :: Lens' UsersList Text
ulEnterpriseId
  = lens _ulEnterpriseId
      (\ s a -> s{_ulEnterpriseId = a})

instance GoogleRequest UsersList where
        type Rs UsersList = UsersListResponse
        type Scopes UsersList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersList'{..}
          = go _ulEnterpriseId (Just _ulEmail) (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
