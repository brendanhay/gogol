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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.AddPublicKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a public key to the specified User resource with the data included
-- in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.users.addPublicKey@.
module Network.Google.Resource.CloudUserAccounts.Users.AddPublicKey
    (
    -- * REST Resource
      UsersAddPublicKeyResource

    -- * Creating a Request
    , usersAddPublicKey
    , UsersAddPublicKey

    -- * Request Lenses
    , uapkProject
    , uapkPayload
    , uapkUser
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.users.addPublicKey@ method which the
-- 'UsersAddPublicKey' request conforms to.
type UsersAddPublicKeyResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "users" :>
                 Capture "user" Text :>
                   "addPublicKey" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PublicKey :> Post '[JSON] Operation

-- | Adds a public key to the specified User resource with the data included
-- in the request.
--
-- /See:/ 'usersAddPublicKey' smart constructor.
data UsersAddPublicKey = UsersAddPublicKey'
    { _uapkProject :: !Text
    , _uapkPayload :: !PublicKey
    , _uapkUser    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAddPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uapkProject'
--
-- * 'uapkPayload'
--
-- * 'uapkUser'
usersAddPublicKey
    :: Text -- ^ 'uapkProject'
    -> PublicKey -- ^ 'uapkPayload'
    -> Text -- ^ 'uapkUser'
    -> UsersAddPublicKey
usersAddPublicKey pUapkProject_ pUapkPayload_ pUapkUser_ =
    UsersAddPublicKey'
    { _uapkProject = pUapkProject_
    , _uapkPayload = pUapkPayload_
    , _uapkUser = pUapkUser_
    }

-- | Project ID for this request.
uapkProject :: Lens' UsersAddPublicKey Text
uapkProject
  = lens _uapkProject (\ s a -> s{_uapkProject = a})

-- | Multipart request metadata.
uapkPayload :: Lens' UsersAddPublicKey PublicKey
uapkPayload
  = lens _uapkPayload (\ s a -> s{_uapkPayload = a})

-- | Name of the user for this request.
uapkUser :: Lens' UsersAddPublicKey Text
uapkUser = lens _uapkUser (\ s a -> s{_uapkUser = a})

instance GoogleRequest UsersAddPublicKey where
        type Rs UsersAddPublicKey = Operation
        type Scopes UsersAddPublicKey =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud.useraccounts"]
        requestClient UsersAddPublicKey'{..}
          = go _uapkProject _uapkUser (Just AltJSON)
              _uapkPayload
              userAccountsService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAddPublicKeyResource)
                      mempty
