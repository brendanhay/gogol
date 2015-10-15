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
-- Module      : Network.Google.Resource.Content.Accounttax.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the tax settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccounttaxUpdate@.
module Network.Google.Resource.Content.Accounttax.Update
    (
    -- * REST Resource
      AccounttaxUpdateResource

    -- * Creating a Request
    , accounttaxUpdate'
    , AccounttaxUpdate'

    -- * Request Lenses
    , aMerchantId
    , aPayload
    , aAccountId
    , aDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccounttaxUpdate@ method which the
-- 'AccounttaxUpdate'' request conforms to.
type AccounttaxUpdateResource =
     Capture "merchantId" Word64 :>
       "accounttax" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AccountTax :> Put '[JSON] AccountTax

-- | Updates the tax settings of the account.
--
-- /See:/ 'accounttaxUpdate'' smart constructor.
data AccounttaxUpdate' = AccounttaxUpdate'
    { _aMerchantId :: !Word64
    , _aPayload    :: !AccountTax
    , _aAccountId  :: !Word64
    , _aDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aMerchantId'
--
-- * 'aPayload'
--
-- * 'aAccountId'
--
-- * 'aDryRun'
accounttaxUpdate'
    :: Word64 -- ^ 'merchantId'
    -> AccountTax -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccounttaxUpdate'
accounttaxUpdate' pAMerchantId_ pAPayload_ pAAccountId_ =
    AccounttaxUpdate'
    { _aMerchantId = pAMerchantId_
    , _aPayload = pAPayload_
    , _aAccountId = pAAccountId_
    , _aDryRun = Nothing
    }

-- | The ID of the managing account.
aMerchantId :: Lens' AccounttaxUpdate' Word64
aMerchantId
  = lens _aMerchantId (\ s a -> s{_aMerchantId = a})

-- | Multipart request metadata.
aPayload :: Lens' AccounttaxUpdate' AccountTax
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | The ID of the account for which to get\/update account tax settings.
aAccountId :: Lens' AccounttaxUpdate' Word64
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | Flag to run the request in dry-run mode.
aDryRun :: Lens' AccounttaxUpdate' (Maybe Bool)
aDryRun = lens _aDryRun (\ s a -> s{_aDryRun = a})

instance GoogleRequest AccounttaxUpdate' where
        type Rs AccounttaxUpdate' = AccountTax
        requestClient AccounttaxUpdate'{..}
          = go _aMerchantId _aAccountId _aDryRun (Just AltJSON)
              _aPayload
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxUpdateResource)
                      mempty
