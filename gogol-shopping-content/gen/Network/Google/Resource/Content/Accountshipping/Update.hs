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
-- Module      : Network.Google.Resource.Content.Accountshipping.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingUpdate@.
module Network.Google.Resource.Content.Accountshipping.Update
    (
    -- * REST Resource
      AccountshippingUpdateResource

    -- * Creating a Request
    , accountshippingUpdate'
    , AccountshippingUpdate'

    -- * Request Lenses
    , auuMerchantId
    , auuPayload
    , auuAccountId
    , auuDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingUpdate@ method which the
-- 'AccountshippingUpdate'' request conforms to.
type AccountshippingUpdateResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AccountShipping :>
                 Put '[JSON] AccountShipping

-- | Updates the shipping settings of the account.
--
-- /See:/ 'accountshippingUpdate'' smart constructor.
data AccountshippingUpdate' = AccountshippingUpdate'
    { _auuMerchantId :: !Word64
    , _auuPayload    :: !AccountShipping
    , _auuAccountId  :: !Word64
    , _auuDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingUpdate'' with the minimum fields required to make a request.
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
accountshippingUpdate'
    :: Word64 -- ^ 'merchantId'
    -> AccountShipping -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccountshippingUpdate'
accountshippingUpdate' pAuuMerchantId_ pAuuPayload_ pAuuAccountId_ =
    AccountshippingUpdate'
    { _auuMerchantId = pAuuMerchantId_
    , _auuPayload = pAuuPayload_
    , _auuAccountId = pAuuAccountId_
    , _auuDryRun = Nothing
    }

-- | The ID of the managing account.
auuMerchantId :: Lens' AccountshippingUpdate' Word64
auuMerchantId
  = lens _auuMerchantId
      (\ s a -> s{_auuMerchantId = a})

-- | Multipart request metadata.
auuPayload :: Lens' AccountshippingUpdate' AccountShipping
auuPayload
  = lens _auuPayload (\ s a -> s{_auuPayload = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
auuAccountId :: Lens' AccountshippingUpdate' Word64
auuAccountId
  = lens _auuAccountId (\ s a -> s{_auuAccountId = a})

-- | Flag to run the request in dry-run mode.
auuDryRun :: Lens' AccountshippingUpdate' (Maybe Bool)
auuDryRun
  = lens _auuDryRun (\ s a -> s{_auuDryRun = a})

instance GoogleRequest AccountshippingUpdate' where
        type Rs AccountshippingUpdate' = AccountShipping
        requestClient AccountshippingUpdate'{..}
          = go _auuMerchantId _auuAccountId _auuDryRun
              (Just AltJSON)
              _auuPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingUpdateResource)
                      mempty
