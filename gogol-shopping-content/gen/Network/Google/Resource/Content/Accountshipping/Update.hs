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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountshipping.update@.
module Network.Google.Resource.Content.Accountshipping.Update
    (
    -- * REST Resource
      AccountshippingUpdateResource

    -- * Creating a Request
    , accountshippingUpdate
    , AccountshippingUpdate

    -- * Request Lenses
    , auMerchantId
    , auPayload
    , auAccountId
    , auDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountshipping.update@ method which the
-- 'AccountshippingUpdate' request conforms to.
type AccountshippingUpdateResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "accountshipping" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] AccountShipping :>
                     Put '[JSON] AccountShipping

-- | Updates the shipping settings of the account.
--
-- /See:/ 'accountshippingUpdate' smart constructor.
data AccountshippingUpdate = AccountshippingUpdate
    { _auMerchantId :: !(Textual Word64)
    , _auPayload    :: !AccountShipping
    , _auAccountId  :: !(Textual Word64)
    , _auDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auMerchantId'
--
-- * 'auPayload'
--
-- * 'auAccountId'
--
-- * 'auDryRun'
accountshippingUpdate
    :: Word64 -- ^ 'auMerchantId'
    -> AccountShipping -- ^ 'auPayload'
    -> Word64 -- ^ 'auAccountId'
    -> AccountshippingUpdate
accountshippingUpdate pAuMerchantId_ pAuPayload_ pAuAccountId_ =
    AccountshippingUpdate
    { _auMerchantId = _Coerce # pAuMerchantId_
    , _auPayload = pAuPayload_
    , _auAccountId = _Coerce # pAuAccountId_
    , _auDryRun = Nothing
    }

-- | The ID of the managing account.
auMerchantId :: Lens' AccountshippingUpdate Word64
auMerchantId
  = lens _auMerchantId (\ s a -> s{_auMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
auPayload :: Lens' AccountshippingUpdate AccountShipping
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
auAccountId :: Lens' AccountshippingUpdate Word64
auAccountId
  = lens _auAccountId (\ s a -> s{_auAccountId = a}) .
      _Coerce

-- | Flag to run the request in dry-run mode.
auDryRun :: Lens' AccountshippingUpdate (Maybe Bool)
auDryRun = lens _auDryRun (\ s a -> s{_auDryRun = a})

instance GoogleRequest AccountshippingUpdate where
        type Rs AccountshippingUpdate = AccountShipping
        type Scopes AccountshippingUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountshippingUpdate{..}
          = go _auMerchantId _auAccountId _auDryRun
              (Just AltJSON)
              _auPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingUpdateResource)
                      mempty
