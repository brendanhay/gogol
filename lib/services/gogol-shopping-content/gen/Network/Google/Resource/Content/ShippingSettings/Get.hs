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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the shipping settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.get@.
module Network.Google.Resource.Content.ShippingSettings.Get
    (
    -- * REST Resource
      ShippingSettingsGetResource

    -- * Creating a Request
    , shippingSettingsGet
    , ShippingSettingsGet

    -- * Request Lenses
    , shiXgafv
    , shiMerchantId
    , shiUploadProtocol
    , shiAccessToken
    , shiUploadType
    , shiAccountId
    , shiCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.get@ method which the
-- 'ShippingSettingsGet' request conforms to.
type ShippingSettingsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "shippingsettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ShippingSettings

-- | Retrieves the shipping settings of the account.
--
-- /See:/ 'shippingSettingsGet' smart constructor.
data ShippingSettingsGet =
  ShippingSettingsGet'
    { _shiXgafv :: !(Maybe Xgafv)
    , _shiMerchantId :: !(Textual Word64)
    , _shiUploadProtocol :: !(Maybe Text)
    , _shiAccessToken :: !(Maybe Text)
    , _shiUploadType :: !(Maybe Text)
    , _shiAccountId :: !(Textual Word64)
    , _shiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shiXgafv'
--
-- * 'shiMerchantId'
--
-- * 'shiUploadProtocol'
--
-- * 'shiAccessToken'
--
-- * 'shiUploadType'
--
-- * 'shiAccountId'
--
-- * 'shiCallback'
shippingSettingsGet
    :: Word64 -- ^ 'shiMerchantId'
    -> Word64 -- ^ 'shiAccountId'
    -> ShippingSettingsGet
shippingSettingsGet pShiMerchantId_ pShiAccountId_ =
  ShippingSettingsGet'
    { _shiXgafv = Nothing
    , _shiMerchantId = _Coerce # pShiMerchantId_
    , _shiUploadProtocol = Nothing
    , _shiAccessToken = Nothing
    , _shiUploadType = Nothing
    , _shiAccountId = _Coerce # pShiAccountId_
    , _shiCallback = Nothing
    }


-- | V1 error format.
shiXgafv :: Lens' ShippingSettingsGet (Maybe Xgafv)
shiXgafv = lens _shiXgafv (\ s a -> s{_shiXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
shiMerchantId :: Lens' ShippingSettingsGet Word64
shiMerchantId
  = lens _shiMerchantId
      (\ s a -> s{_shiMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
shiUploadProtocol :: Lens' ShippingSettingsGet (Maybe Text)
shiUploadProtocol
  = lens _shiUploadProtocol
      (\ s a -> s{_shiUploadProtocol = a})

-- | OAuth access token.
shiAccessToken :: Lens' ShippingSettingsGet (Maybe Text)
shiAccessToken
  = lens _shiAccessToken
      (\ s a -> s{_shiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
shiUploadType :: Lens' ShippingSettingsGet (Maybe Text)
shiUploadType
  = lens _shiUploadType
      (\ s a -> s{_shiUploadType = a})

-- | The ID of the account for which to get\/update shipping settings.
shiAccountId :: Lens' ShippingSettingsGet Word64
shiAccountId
  = lens _shiAccountId (\ s a -> s{_shiAccountId = a})
      . _Coerce

-- | JSONP
shiCallback :: Lens' ShippingSettingsGet (Maybe Text)
shiCallback
  = lens _shiCallback (\ s a -> s{_shiCallback = a})

instance GoogleRequest ShippingSettingsGet where
        type Rs ShippingSettingsGet = ShippingSettings
        type Scopes ShippingSettingsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShippingSettingsGet'{..}
          = go _shiMerchantId _shiAccountId _shiXgafv
              _shiUploadProtocol
              _shiAccessToken
              _shiUploadType
              _shiCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShippingSettingsGetResource)
                      mempty
