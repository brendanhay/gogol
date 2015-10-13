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
-- Module      : Network.Google.Resource.Content.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Merchant Center account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsPatch@.
module Network.Google.Resource.Content.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch'
    , AccountsPatch'

    -- * Request Lenses
    , ap1MerchantId
    , ap1Payload
    , ap1AccountId
    , ap1DryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsPatch@ method which the
-- 'AccountsPatch'' request conforms to.
type AccountsPatchResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates a Merchant Center account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _ap1MerchantId :: !Word64
    , _ap1Payload    :: !Account
    , _ap1AccountId  :: !Word64
    , _ap1DryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ap1MerchantId'
--
-- * 'ap1Payload'
--
-- * 'ap1AccountId'
--
-- * 'ap1DryRun'
accountsPatch'
    :: Word64 -- ^ 'merchantId'
    -> Account -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccountsPatch'
accountsPatch' pAp1MerchantId_ pAp1Payload_ pAp1AccountId_ =
    AccountsPatch'
    { _ap1MerchantId = pAp1MerchantId_
    , _ap1Payload = pAp1Payload_
    , _ap1AccountId = pAp1AccountId_
    , _ap1DryRun = Nothing
    }

-- | The ID of the managing account.
ap1MerchantId :: Lens' AccountsPatch' Word64
ap1MerchantId
  = lens _ap1MerchantId
      (\ s a -> s{_ap1MerchantId = a})

-- | Multipart request metadata.
ap1Payload :: Lens' AccountsPatch' Account
ap1Payload
  = lens _ap1Payload (\ s a -> s{_ap1Payload = a})

-- | The ID of the account.
ap1AccountId :: Lens' AccountsPatch' Word64
ap1AccountId
  = lens _ap1AccountId (\ s a -> s{_ap1AccountId = a})

-- | Flag to run the request in dry-run mode.
ap1DryRun :: Lens' AccountsPatch' (Maybe Bool)
ap1DryRun
  = lens _ap1DryRun (\ s a -> s{_ap1DryRun = a})

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        requestClient AccountsPatch'{..}
          = go _ap1MerchantId _ap1AccountId _ap1DryRun
              (Just AltJSON)
              _ap1Payload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsPatchResource)
                      mempty
