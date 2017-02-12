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
-- Module      : Network.Google.Resource.Content.ShippingSettings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the shipping settings of the account. This method can only be
-- called for accounts to which the managing account has access: either the
-- managing account itself or sub-accounts if the managing account is a
-- multi-client account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.shippingsettings.get@.
module Network.Google.Resource.Content.ShippingSettings.Get
    (
    -- * REST Resource
      ShippingSettingsGetResource

    -- * Creating a Request
    , shippingSettingsGet
    , ShippingSettingsGet

    -- * Request Lenses
    , sMerchantId
    , sAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.get@ method which the
-- 'ShippingSettingsGet' request conforms to.
type ShippingSettingsGetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "shippingsettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ShippingSettings

-- | Retrieves the shipping settings of the account. This method can only be
-- called for accounts to which the managing account has access: either the
-- managing account itself or sub-accounts if the managing account is a
-- multi-client account.
--
-- /See:/ 'shippingSettingsGet' smart constructor.
data ShippingSettingsGet = ShippingSettingsGet'
    { _sMerchantId :: !(Textual Word64)
    , _sAccountId  :: !(Textual Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShippingSettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sMerchantId'
--
-- * 'sAccountId'
shippingSettingsGet
    :: Word64 -- ^ 'sMerchantId'
    -> Word64 -- ^ 'sAccountId'
    -> ShippingSettingsGet
shippingSettingsGet pSMerchantId_ pSAccountId_ =
    ShippingSettingsGet'
    { _sMerchantId = _Coerce # pSMerchantId_
    , _sAccountId = _Coerce # pSAccountId_
    }

-- | The ID of the managing account.
sMerchantId :: Lens' ShippingSettingsGet Word64
sMerchantId
  = lens _sMerchantId (\ s a -> s{_sMerchantId = a}) .
      _Coerce

-- | The ID of the account for which to get\/update shipping settings.
sAccountId :: Lens' ShippingSettingsGet Word64
sAccountId
  = lens _sAccountId (\ s a -> s{_sAccountId = a}) .
      _Coerce

instance GoogleRequest ShippingSettingsGet where
        type Rs ShippingSettingsGet = ShippingSettings
        type Scopes ShippingSettingsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShippingSettingsGet'{..}
          = go _sMerchantId _sAccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShippingSettingsGetResource)
                      mempty
