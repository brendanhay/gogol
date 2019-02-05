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
-- Module      : Network.Google.Resource.Content.ShippingSettings.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.shippingsettings.update@.
module Network.Google.Resource.Content.ShippingSettings.Update
    (
    -- * REST Resource
      ShippingSettingsUpdateResource

    -- * Creating a Request
    , shippingSettingsUpdate
    , ShippingSettingsUpdate

    -- * Request Lenses
    , ssuMerchantId
    , ssuPayload
    , ssuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.update@ method which the
-- 'ShippingSettingsUpdate' request conforms to.
type ShippingSettingsUpdateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "shippingsettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ShippingSettings :>
                   Put '[JSON] ShippingSettings

-- | Updates the shipping settings of the account.
--
-- /See:/ 'shippingSettingsUpdate' smart constructor.
data ShippingSettingsUpdate = ShippingSettingsUpdate'
    { _ssuMerchantId :: !(Textual Word64)
    , _ssuPayload    :: !ShippingSettings
    , _ssuAccountId  :: !(Textual Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShippingSettingsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssuMerchantId'
--
-- * 'ssuPayload'
--
-- * 'ssuAccountId'
shippingSettingsUpdate
    :: Word64 -- ^ 'ssuMerchantId'
    -> ShippingSettings -- ^ 'ssuPayload'
    -> Word64 -- ^ 'ssuAccountId'
    -> ShippingSettingsUpdate
shippingSettingsUpdate pSsuMerchantId_ pSsuPayload_ pSsuAccountId_ =
    ShippingSettingsUpdate'
    { _ssuMerchantId = _Coerce # pSsuMerchantId_
    , _ssuPayload = pSsuPayload_
    , _ssuAccountId = _Coerce # pSsuAccountId_
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
ssuMerchantId :: Lens' ShippingSettingsUpdate Word64
ssuMerchantId
  = lens _ssuMerchantId
      (\ s a -> s{_ssuMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ssuPayload :: Lens' ShippingSettingsUpdate ShippingSettings
ssuPayload
  = lens _ssuPayload (\ s a -> s{_ssuPayload = a})

-- | The ID of the account for which to get\/update shipping settings.
ssuAccountId :: Lens' ShippingSettingsUpdate Word64
ssuAccountId
  = lens _ssuAccountId (\ s a -> s{_ssuAccountId = a})
      . _Coerce

instance GoogleRequest ShippingSettingsUpdate where
        type Rs ShippingSettingsUpdate = ShippingSettings
        type Scopes ShippingSettingsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShippingSettingsUpdate'{..}
          = go _ssuMerchantId _ssuAccountId (Just AltJSON)
              _ssuPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShippingSettingsUpdateResource)
                      mempty
