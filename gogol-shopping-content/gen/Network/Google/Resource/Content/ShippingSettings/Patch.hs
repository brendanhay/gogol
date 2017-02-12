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
-- Module      : Network.Google.Resource.Content.ShippingSettings.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the shipping settings of the account. This method can only be
-- called for accounts to which the managing account has access: either the
-- managing account itself or sub-accounts if the managing account is a
-- multi-client account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.shippingsettings.patch@.
module Network.Google.Resource.Content.ShippingSettings.Patch
    (
    -- * REST Resource
      ShippingSettingsPatchResource

    -- * Creating a Request
    , shippingSettingsPatch
    , ShippingSettingsPatch

    -- * Request Lenses
    , sspMerchantId
    , sspPayload
    , sspAccountId
    , sspDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.patch@ method which the
-- 'ShippingSettingsPatch' request conforms to.
type ShippingSettingsPatchResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "shippingsettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ShippingSettings :>
                     Patch '[JSON] ShippingSettings

-- | Updates the shipping settings of the account. This method can only be
-- called for accounts to which the managing account has access: either the
-- managing account itself or sub-accounts if the managing account is a
-- multi-client account. This method supports patch semantics.
--
-- /See:/ 'shippingSettingsPatch' smart constructor.
data ShippingSettingsPatch = ShippingSettingsPatch'
    { _sspMerchantId :: !(Textual Word64)
    , _sspPayload    :: !ShippingSettings
    , _sspAccountId  :: !(Textual Word64)
    , _sspDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShippingSettingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sspMerchantId'
--
-- * 'sspPayload'
--
-- * 'sspAccountId'
--
-- * 'sspDryRun'
shippingSettingsPatch
    :: Word64 -- ^ 'sspMerchantId'
    -> ShippingSettings -- ^ 'sspPayload'
    -> Word64 -- ^ 'sspAccountId'
    -> ShippingSettingsPatch
shippingSettingsPatch pSspMerchantId_ pSspPayload_ pSspAccountId_ =
    ShippingSettingsPatch'
    { _sspMerchantId = _Coerce # pSspMerchantId_
    , _sspPayload = pSspPayload_
    , _sspAccountId = _Coerce # pSspAccountId_
    , _sspDryRun = Nothing
    }

-- | The ID of the managing account.
sspMerchantId :: Lens' ShippingSettingsPatch Word64
sspMerchantId
  = lens _sspMerchantId
      (\ s a -> s{_sspMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
sspPayload :: Lens' ShippingSettingsPatch ShippingSettings
sspPayload
  = lens _sspPayload (\ s a -> s{_sspPayload = a})

-- | The ID of the account for which to get\/update shipping settings.
sspAccountId :: Lens' ShippingSettingsPatch Word64
sspAccountId
  = lens _sspAccountId (\ s a -> s{_sspAccountId = a})
      . _Coerce

-- | Flag to run the request in dry-run mode.
sspDryRun :: Lens' ShippingSettingsPatch (Maybe Bool)
sspDryRun
  = lens _sspDryRun (\ s a -> s{_sspDryRun = a})

instance GoogleRequest ShippingSettingsPatch where
        type Rs ShippingSettingsPatch = ShippingSettings
        type Scopes ShippingSettingsPatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShippingSettingsPatch'{..}
          = go _sspMerchantId _sspAccountId _sspDryRun
              (Just AltJSON)
              _sspPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShippingSettingsPatchResource)
                      mempty
