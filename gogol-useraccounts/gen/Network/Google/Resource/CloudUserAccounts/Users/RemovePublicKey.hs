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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.RemovePublicKey
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the specified public key from the user.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsUsersRemovePublicKey@.
module Network.Google.Resource.CloudUserAccounts.Users.RemovePublicKey
    (
    -- * REST Resource
      UsersRemovePublicKeyResource

    -- * Creating a Request
    , usersRemovePublicKey'
    , UsersRemovePublicKey'

    -- * Request Lenses
    , urpkProject
    , urpkFingerprint
    , urpkUser
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsUsersRemovePublicKey@ method which the
-- 'UsersRemovePublicKey'' request conforms to.
type UsersRemovePublicKeyResource =
     Capture "project" Text :>
       "global" :>
         "users" :>
           Capture "user" Text :>
             "removePublicKey" :>
               QueryParam "fingerprint" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Removes the specified public key from the user.
--
-- /See:/ 'usersRemovePublicKey'' smart constructor.
data UsersRemovePublicKey' = UsersRemovePublicKey'
    { _urpkProject     :: !Text
    , _urpkFingerprint :: !Text
    , _urpkUser        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersRemovePublicKey'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpkProject'
--
-- * 'urpkFingerprint'
--
-- * 'urpkUser'
usersRemovePublicKey'
    :: Text -- ^ 'project'
    -> Text -- ^ 'fingerprint'
    -> Text -- ^ 'user'
    -> UsersRemovePublicKey'
usersRemovePublicKey' pUrpkProject_ pUrpkFingerprint_ pUrpkUser_ =
    UsersRemovePublicKey'
    { _urpkProject = pUrpkProject_
    , _urpkFingerprint = pUrpkFingerprint_
    , _urpkUser = pUrpkUser_
    }

-- | Project ID for this request.
urpkProject :: Lens' UsersRemovePublicKey' Text
urpkProject
  = lens _urpkProject (\ s a -> s{_urpkProject = a})

-- | The fingerprint of the public key to delete. Public keys are identified
-- by their fingerprint, which is defined by RFC4716 to be the MD5 digest
-- of the public key.
urpkFingerprint :: Lens' UsersRemovePublicKey' Text
urpkFingerprint
  = lens _urpkFingerprint
      (\ s a -> s{_urpkFingerprint = a})

-- | Name of the user for this request.
urpkUser :: Lens' UsersRemovePublicKey' Text
urpkUser = lens _urpkUser (\ s a -> s{_urpkUser = a})

instance GoogleRequest UsersRemovePublicKey' where
        type Rs UsersRemovePublicKey' = Operation
        requestClient UsersRemovePublicKey'{..}
          = go _urpkProject _urpkUser (Just _urpkFingerprint)
              (Just AltJSON)
              userAccounts
          where go
                  = buildClient
                      (Proxy :: Proxy UsersRemovePublicKeyResource)
                      mempty
