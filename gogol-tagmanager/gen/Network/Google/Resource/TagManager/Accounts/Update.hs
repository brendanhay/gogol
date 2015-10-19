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
-- Module      : Network.Google.Resource.TagManager.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsUpdate@.
module Network.Google.Resource.TagManager.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate'
    , AccountsUpdate'

    -- * Request Lenses
    , auFingerprint
    , auPayload
    , auAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsUpdate@ method which the
-- 'AccountsUpdate'' request conforms to.
type AccountsUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         QueryParam "fingerprint" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a GTM Account.
--
-- /See:/ 'accountsUpdate'' smart constructor.
data AccountsUpdate' = AccountsUpdate'
    { _auFingerprint :: !(Maybe Text)
    , _auPayload     :: !Account
    , _auAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auFingerprint'
--
-- * 'auPayload'
--
-- * 'auAccountId'
accountsUpdate'
    :: Account -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsUpdate'
accountsUpdate' pAuPayload_ pAuAccountId_ =
    AccountsUpdate'
    { _auFingerprint = Nothing
    , _auPayload = pAuPayload_
    , _auAccountId = pAuAccountId_
    }

-- | When provided, this fingerprint must match the fingerprint of the
-- account in storage.
auFingerprint :: Lens' AccountsUpdate' (Maybe Text)
auFingerprint
  = lens _auFingerprint
      (\ s a -> s{_auFingerprint = a})

-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate' Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | The GTM Account ID.
auAccountId :: Lens' AccountsUpdate' Text
auAccountId
  = lens _auAccountId (\ s a -> s{_auAccountId = a})

instance GoogleRequest AccountsUpdate' where
        type Rs AccountsUpdate' = Account
        requestClient AccountsUpdate'{..}
          = go _auAccountId _auFingerprint (Just AltJSON)
              _auPayload
              tagManagerService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
