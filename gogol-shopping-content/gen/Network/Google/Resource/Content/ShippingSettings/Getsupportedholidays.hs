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
-- Module      : Network.Google.Resource.Content.ShippingSettings.Getsupportedholidays
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves supported holidays for an account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.shippingsettings.getsupportedholidays@.
module Network.Google.Resource.Content.ShippingSettings.Getsupportedholidays
    (
    -- * REST Resource
      ShippingSettingsGetsupportedholidaysResource

    -- * Creating a Request
    , shippingSettingsGetsupportedholidays
    , ShippingSettingsGetsupportedholidays

    -- * Request Lenses
    , ssgMerchantId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.getsupportedholidays@ method which the
-- 'ShippingSettingsGetsupportedholidays' request conforms to.
type ShippingSettingsGetsupportedholidaysResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "supportedHolidays" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON]
                 ShippingSettingsGetSupportedHolidaysResponse

-- | Retrieves supported holidays for an account.
--
-- /See:/ 'shippingSettingsGetsupportedholidays' smart constructor.
newtype ShippingSettingsGetsupportedholidays =
  ShippingSettingsGetsupportedholidays'
    { _ssgMerchantId :: Textual Word64
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGetsupportedholidays' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgMerchantId'
shippingSettingsGetsupportedholidays
    :: Word64 -- ^ 'ssgMerchantId'
    -> ShippingSettingsGetsupportedholidays
shippingSettingsGetsupportedholidays pSsgMerchantId_ =
  ShippingSettingsGetsupportedholidays'
    {_ssgMerchantId = _Coerce # pSsgMerchantId_}


-- | The ID of the account for which to retrieve the supported holidays.
ssgMerchantId :: Lens' ShippingSettingsGetsupportedholidays Word64
ssgMerchantId
  = lens _ssgMerchantId
      (\ s a -> s{_ssgMerchantId = a})
      . _Coerce

instance GoogleRequest
           ShippingSettingsGetsupportedholidays
         where
        type Rs ShippingSettingsGetsupportedholidays =
             ShippingSettingsGetSupportedHolidaysResponse
        type Scopes ShippingSettingsGetsupportedholidays =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          ShippingSettingsGetsupportedholidays'{..}
          = go _ssgMerchantId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ShippingSettingsGetsupportedholidaysResource)
                      mempty
