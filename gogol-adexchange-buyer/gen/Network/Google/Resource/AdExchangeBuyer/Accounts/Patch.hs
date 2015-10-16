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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerAccountsPatch@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch'
    , AccountsPatch'

    -- * Request Lenses
    , apPayload
    , apId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerAccountsPatch@ method which the
-- 'AccountsPatch'' request conforms to.
type AccountsPatchResource =
     "accounts" :>
       Capture "id" Int32 :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _apPayload :: !Account
    , _apId      :: !Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apPayload'
--
-- * 'apId'
accountsPatch'
    :: Account -- ^ 'payload'
    -> Int32 -- ^ 'id'
    -> AccountsPatch'
accountsPatch' pApPayload_ pApId_ =
    AccountsPatch'
    { _apPayload = pApPayload_
    , _apId = pApId_
    }

-- | Multipart request metadata.
apPayload :: Lens' AccountsPatch' Account
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | The account id
apId :: Lens' AccountsPatch' Int32
apId = lens _apId (\ s a -> s{_apId = a})

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        requestClient AccountsPatch'{..}
          = go _apId (Just AltJSON) _apPayload
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy AccountsPatchResource)
                      mempty
