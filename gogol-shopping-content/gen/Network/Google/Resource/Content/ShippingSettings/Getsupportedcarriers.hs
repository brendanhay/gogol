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
-- Module      : Network.Google.Resource.Content.ShippingSettings.Getsupportedcarriers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves supported carriers and carrier services for an account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.shippingsettings.getsupportedcarriers@.
module Network.Google.Resource.Content.ShippingSettings.Getsupportedcarriers
    (
    -- * REST Resource
      ShippingSettingsGetsupportedcarriersResource

    -- * Creating a Request
    , shippingSettingsGetsupportedcarriers
    , ShippingSettingsGetsupportedcarriers

    -- * Request Lenses
    , sMerchantId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.getsupportedcarriers@ method which the
-- 'ShippingSettingsGetsupportedcarriers' request conforms to.
type ShippingSettingsGetsupportedcarriersResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "supportedCarriers" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON]
                 ShippingSettingsGetSupportedCarriersResponse

-- | Retrieves supported carriers and carrier services for an account.
--
-- /See:/ 'shippingSettingsGetsupportedcarriers' smart constructor.
newtype ShippingSettingsGetsupportedcarriers = ShippingSettingsGetsupportedcarriers'
    { _sMerchantId :: Textual Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShippingSettingsGetsupportedcarriers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sMerchantId'
shippingSettingsGetsupportedcarriers
    :: Word64 -- ^ 'sMerchantId'
    -> ShippingSettingsGetsupportedcarriers
shippingSettingsGetsupportedcarriers pSMerchantId_ =
    ShippingSettingsGetsupportedcarriers'
    { _sMerchantId = _Coerce # pSMerchantId_
    }

-- | The ID of the account for which to retrieve the supported carriers.
sMerchantId :: Lens' ShippingSettingsGetsupportedcarriers Word64
sMerchantId
  = lens _sMerchantId (\ s a -> s{_sMerchantId = a}) .
      _Coerce

instance GoogleRequest
         ShippingSettingsGetsupportedcarriers where
        type Rs ShippingSettingsGetsupportedcarriers =
             ShippingSettingsGetSupportedCarriersResponse
        type Scopes ShippingSettingsGetsupportedcarriers =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          ShippingSettingsGetsupportedcarriers'{..}
          = go _sMerchantId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ShippingSettingsGetsupportedcarriersResource)
                      mempty
