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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Accounts.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.update@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auPayload
    , auConfirmUnsafeAccountChange
    , auId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           Capture "id" (Textual Int32) :>
             QueryParam "confirmUnsafeAccountChange" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates an existing account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate =
  AccountsUpdate'
    { _auPayload :: !Account
    , _auConfirmUnsafeAccountChange :: !(Maybe Bool)
    , _auId :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auPayload'
--
-- * 'auConfirmUnsafeAccountChange'
--
-- * 'auId'
accountsUpdate
    :: Account -- ^ 'auPayload'
    -> Int32 -- ^ 'auId'
    -> AccountsUpdate
accountsUpdate pAuPayload_ pAuId_ =
  AccountsUpdate'
    { _auPayload = pAuPayload_
    , _auConfirmUnsafeAccountChange = Nothing
    , _auId = _Coerce # pAuId_
    }


-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | Confirmation for erasing bidder and cookie matching urls.
auConfirmUnsafeAccountChange :: Lens' AccountsUpdate (Maybe Bool)
auConfirmUnsafeAccountChange
  = lens _auConfirmUnsafeAccountChange
      (\ s a -> s{_auConfirmUnsafeAccountChange = a})

-- | The account id
auId :: Lens' AccountsUpdate Int32
auId = lens _auId (\ s a -> s{_auId = a}) . _Coerce

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        type Scopes AccountsUpdate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsUpdate'{..}
          = go _auId _auConfirmUnsafeAccountChange
              (Just AltJSON)
              _auPayload
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
