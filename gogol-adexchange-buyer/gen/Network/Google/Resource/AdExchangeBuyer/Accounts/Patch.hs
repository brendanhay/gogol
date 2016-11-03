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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Accounts.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.accounts.patch@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch
    , AccountsPatch

    -- * Request Lenses
    , apPayload
    , apConfirmUnsafeAccountChange
    , apId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.accounts.patch@ method which the
-- 'AccountsPatch' request conforms to.
type AccountsPatchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "accounts" :>
           Capture "id" (Textual Int32) :>
             QueryParam "confirmUnsafeAccountChange" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch' smart constructor.
data AccountsPatch = AccountsPatch'
    { _apPayload                    :: !Account
    , _apConfirmUnsafeAccountChange :: !(Maybe Bool)
    , _apId                         :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apPayload'
--
-- * 'apConfirmUnsafeAccountChange'
--
-- * 'apId'
accountsPatch
    :: Account -- ^ 'apPayload'
    -> Int32 -- ^ 'apId'
    -> AccountsPatch
accountsPatch pApPayload_ pApId_ =
    AccountsPatch'
    { _apPayload = pApPayload_
    , _apConfirmUnsafeAccountChange = Nothing
    , _apId = _Coerce # pApId_
    }

-- | Multipart request metadata.
apPayload :: Lens' AccountsPatch Account
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | Confirmation for erasing bidder and cookie matching urls.
apConfirmUnsafeAccountChange :: Lens' AccountsPatch (Maybe Bool)
apConfirmUnsafeAccountChange
  = lens _apConfirmUnsafeAccountChange
      (\ s a -> s{_apConfirmUnsafeAccountChange = a})

-- | The account id
apId :: Lens' AccountsPatch Int32
apId = lens _apId (\ s a -> s{_apId = a}) . _Coerce

instance GoogleRequest AccountsPatch where
        type Rs AccountsPatch = Account
        type Scopes AccountsPatch =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsPatch'{..}
          = go _apId _apConfirmUnsafeAccountChange
              (Just AltJSON)
              _apPayload
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy AccountsPatchResource)
                      mempty
