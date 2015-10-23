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
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountshipping.patch@.
module Network.Google.Resource.Content.Accountshipping.Patch
    (
    -- * REST Resource
      AccountshippingPatchResource

    -- * Creating a Request
    , accountshippingPatch
    , AccountshippingPatch

    -- * Request Lenses
    , ap1MerchantId
    , ap1Payload
    , ap1AccountId
    , ap1DryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountshipping.patch@ method which the
-- 'AccountshippingPatch' request conforms to.
type AccountshippingPatchResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (JSONText Word64) :>
           "accountshipping" :>
             Capture "accountId" (JSONText Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] AccountShipping :>
                     Patch '[JSON] AccountShipping

-- | Updates the shipping settings of the account. This method supports patch
-- semantics.
--
-- /See:/ 'accountshippingPatch' smart constructor.
data AccountshippingPatch = AccountshippingPatch
    { _ap1MerchantId :: !(JSONText Word64)
    , _ap1Payload    :: !AccountShipping
    , _ap1AccountId  :: !(JSONText Word64)
    , _ap1DryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingPatch' with the minimum fields required to make a request.
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
accountshippingPatch
    :: Word64 -- ^ 'ap1MerchantId'
    -> AccountShipping -- ^ 'ap1Payload'
    -> Word64 -- ^ 'ap1AccountId'
    -> AccountshippingPatch
accountshippingPatch pAp1MerchantId_ pAp1Payload_ pAp1AccountId_ =
    AccountshippingPatch
    { _ap1MerchantId = _Coerce # pAp1MerchantId_
    , _ap1Payload = pAp1Payload_
    , _ap1AccountId = _Coerce # pAp1AccountId_
    , _ap1DryRun = Nothing
    }

-- | The ID of the managing account.
ap1MerchantId :: Lens' AccountshippingPatch Word64
ap1MerchantId
  = lens _ap1MerchantId
      (\ s a -> s{_ap1MerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ap1Payload :: Lens' AccountshippingPatch AccountShipping
ap1Payload
  = lens _ap1Payload (\ s a -> s{_ap1Payload = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
ap1AccountId :: Lens' AccountshippingPatch Word64
ap1AccountId
  = lens _ap1AccountId (\ s a -> s{_ap1AccountId = a})
      . _Coerce

-- | Flag to run the request in dry-run mode.
ap1DryRun :: Lens' AccountshippingPatch (Maybe Bool)
ap1DryRun
  = lens _ap1DryRun (\ s a -> s{_ap1DryRun = a})

instance GoogleRequest AccountshippingPatch where
        type Rs AccountshippingPatch = AccountShipping
        requestClient AccountshippingPatch{..}
          = go _ap1MerchantId _ap1AccountId _ap1DryRun
              (Just AltJSON)
              _ap1Payload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingPatchResource)
                      mempty
