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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the tax settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounttax.update@.
module Network.Google.Resource.Content.Accounttax.Update
    (
    -- * REST Resource
      AccounttaxUpdateResource

    -- * Creating a Request
    , accounttaxUpdate
    , AccounttaxUpdate

    -- * Request Lenses
    , auuMerchantId
    , auuPayload
    , auuAccountId
    , auuDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.update@ method which the
-- 'AccounttaxUpdate' request conforms to.
type AccounttaxUpdateResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "accounttax" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] AccountTax :> Put '[JSON] AccountTax

-- | Updates the tax settings of the account.
--
-- /See:/ 'accounttaxUpdate' smart constructor.
data AccounttaxUpdate = AccounttaxUpdate
    { _auuMerchantId :: !(Textual Word64)
    , _auuPayload    :: !AccountTax
    , _auuAccountId  :: !(Textual Word64)
    , _auuDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuMerchantId'
--
-- * 'auuPayload'
--
-- * 'auuAccountId'
--
-- * 'auuDryRun'
accounttaxUpdate
    :: Word64 -- ^ 'auuMerchantId'
    -> AccountTax -- ^ 'auuPayload'
    -> Word64 -- ^ 'auuAccountId'
    -> AccounttaxUpdate
accounttaxUpdate pAuuMerchantId_ pAuuPayload_ pAuuAccountId_ =
    AccounttaxUpdate
    { _auuMerchantId = _Coerce # pAuuMerchantId_
    , _auuPayload = pAuuPayload_
    , _auuAccountId = _Coerce # pAuuAccountId_
    , _auuDryRun = Nothing
    }

-- | The ID of the managing account.
auuMerchantId :: Lens' AccounttaxUpdate Word64
auuMerchantId
  = lens _auuMerchantId
      (\ s a -> s{_auuMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
auuPayload :: Lens' AccounttaxUpdate AccountTax
auuPayload
  = lens _auuPayload (\ s a -> s{_auuPayload = a})

-- | The ID of the account for which to get\/update account tax settings.
auuAccountId :: Lens' AccounttaxUpdate Word64
auuAccountId
  = lens _auuAccountId (\ s a -> s{_auuAccountId = a})
      . _Coerce

-- | Flag to run the request in dry-run mode.
auuDryRun :: Lens' AccounttaxUpdate (Maybe Bool)
auuDryRun
  = lens _auuDryRun (\ s a -> s{_auuDryRun = a})

instance GoogleRequest AccounttaxUpdate where
        type Rs AccounttaxUpdate = AccountTax
        requestClient AccounttaxUpdate{..}
          = go _auuMerchantId _auuAccountId _auuDryRun
              (Just AltJSON)
              _auuPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxUpdateResource)
                      mempty
