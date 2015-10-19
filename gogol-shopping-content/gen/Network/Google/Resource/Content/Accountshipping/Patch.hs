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
-- Module      : Network.Google.Resource.Content.Accountshipping.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the shipping settings of the account. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingPatch@.
module Network.Google.Resource.Content.Accountshipping.Patch
    (
    -- * REST Resource
      AccountshippingPatchResource

    -- * Creating a Request
    , accountshippingPatch'
    , AccountshippingPatch'

    -- * Request Lenses
    , apMerchantId
    , apPayload
    , apAccountId
    , apDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingPatch@ method which the
-- 'AccountshippingPatch'' request conforms to.
type AccountshippingPatchResource =
     Capture "merchantId" Word64 :>
       "accountshipping" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AccountShipping :>
                 Patch '[JSON] AccountShipping

-- | Updates the shipping settings of the account. This method supports patch
-- semantics.
--
-- /See:/ 'accountshippingPatch'' smart constructor.
data AccountshippingPatch' = AccountshippingPatch'
    { _apMerchantId :: !Word64
    , _apPayload    :: !AccountShipping
    , _apAccountId  :: !Word64
    , _apDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apMerchantId'
--
-- * 'apPayload'
--
-- * 'apAccountId'
--
-- * 'apDryRun'
accountshippingPatch'
    :: Word64 -- ^ 'merchantId'
    -> AccountShipping -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccountshippingPatch'
accountshippingPatch' pApMerchantId_ pApPayload_ pApAccountId_ =
    AccountshippingPatch'
    { _apMerchantId = pApMerchantId_
    , _apPayload = pApPayload_
    , _apAccountId = pApAccountId_
    , _apDryRun = Nothing
    }

-- | The ID of the managing account.
apMerchantId :: Lens' AccountshippingPatch' Word64
apMerchantId
  = lens _apMerchantId (\ s a -> s{_apMerchantId = a})

-- | Multipart request metadata.
apPayload :: Lens' AccountshippingPatch' AccountShipping
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
apAccountId :: Lens' AccountshippingPatch' Word64
apAccountId
  = lens _apAccountId (\ s a -> s{_apAccountId = a})

-- | Flag to run the request in dry-run mode.
apDryRun :: Lens' AccountshippingPatch' (Maybe Bool)
apDryRun = lens _apDryRun (\ s a -> s{_apDryRun = a})

instance GoogleRequest AccountshippingPatch' where
        type Rs AccountshippingPatch' = AccountShipping
        requestClient AccountshippingPatch'{..}
          = go _apMerchantId _apAccountId _apDryRun
              (Just AltJSON)
              _apPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingPatchResource)
                      mempty
