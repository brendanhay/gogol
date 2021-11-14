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
-- Module      : Network.Google.Resource.Content.ShippingSettings.GetsupportedpickupServices
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves supported pickup services for an account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.getsupportedpickupservices@.
module Network.Google.Resource.Content.ShippingSettings.GetsupportedpickupServices
    (
    -- * REST Resource
      ShippingSettingsGetsupportedpickupServicesResource

    -- * Creating a Request
    , shippingSettingsGetsupportedpickupServices
    , ShippingSettingsGetsupportedpickupServices

    -- * Request Lenses
    , ssgsXgafv
    , ssgsMerchantId
    , ssgsUploadProtocol
    , ssgsAccessToken
    , ssgsUploadType
    , ssgsCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.getsupportedpickupservices@ method which the
-- 'ShippingSettingsGetsupportedpickupServices' request conforms to.
type ShippingSettingsGetsupportedpickupServicesResource
     =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "supportedPickupServices" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON]
                           ShippingSettingsGetSupportedPickupServicesResponse

-- | Retrieves supported pickup services for an account.
--
-- /See:/ 'shippingSettingsGetsupportedpickupServices' smart constructor.
data ShippingSettingsGetsupportedpickupServices =
  ShippingSettingsGetsupportedpickupServices'
    { _ssgsXgafv :: !(Maybe Xgafv)
    , _ssgsMerchantId :: !(Textual Word64)
    , _ssgsUploadProtocol :: !(Maybe Text)
    , _ssgsAccessToken :: !(Maybe Text)
    , _ssgsUploadType :: !(Maybe Text)
    , _ssgsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGetsupportedpickupServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgsXgafv'
--
-- * 'ssgsMerchantId'
--
-- * 'ssgsUploadProtocol'
--
-- * 'ssgsAccessToken'
--
-- * 'ssgsUploadType'
--
-- * 'ssgsCallback'
shippingSettingsGetsupportedpickupServices
    :: Word64 -- ^ 'ssgsMerchantId'
    -> ShippingSettingsGetsupportedpickupServices
shippingSettingsGetsupportedpickupServices pSsgsMerchantId_ =
  ShippingSettingsGetsupportedpickupServices'
    { _ssgsXgafv = Nothing
    , _ssgsMerchantId = _Coerce # pSsgsMerchantId_
    , _ssgsUploadProtocol = Nothing
    , _ssgsAccessToken = Nothing
    , _ssgsUploadType = Nothing
    , _ssgsCallback = Nothing
    }


-- | V1 error format.
ssgsXgafv :: Lens' ShippingSettingsGetsupportedpickupServices (Maybe Xgafv)
ssgsXgafv
  = lens _ssgsXgafv (\ s a -> s{_ssgsXgafv = a})

-- | The ID of the account for which to retrieve the supported pickup
-- services.
ssgsMerchantId :: Lens' ShippingSettingsGetsupportedpickupServices Word64
ssgsMerchantId
  = lens _ssgsMerchantId
      (\ s a -> s{_ssgsMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssgsUploadProtocol :: Lens' ShippingSettingsGetsupportedpickupServices (Maybe Text)
ssgsUploadProtocol
  = lens _ssgsUploadProtocol
      (\ s a -> s{_ssgsUploadProtocol = a})

-- | OAuth access token.
ssgsAccessToken :: Lens' ShippingSettingsGetsupportedpickupServices (Maybe Text)
ssgsAccessToken
  = lens _ssgsAccessToken
      (\ s a -> s{_ssgsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssgsUploadType :: Lens' ShippingSettingsGetsupportedpickupServices (Maybe Text)
ssgsUploadType
  = lens _ssgsUploadType
      (\ s a -> s{_ssgsUploadType = a})

-- | JSONP
ssgsCallback :: Lens' ShippingSettingsGetsupportedpickupServices (Maybe Text)
ssgsCallback
  = lens _ssgsCallback (\ s a -> s{_ssgsCallback = a})

instance GoogleRequest
           ShippingSettingsGetsupportedpickupServices
         where
        type Rs ShippingSettingsGetsupportedpickupServices =
             ShippingSettingsGetSupportedPickupServicesResponse
        type Scopes
               ShippingSettingsGetsupportedpickupServices
             = '["https://www.googleapis.com/auth/content"]
        requestClient
          ShippingSettingsGetsupportedpickupServices'{..}
          = go _ssgsMerchantId _ssgsXgafv _ssgsUploadProtocol
              _ssgsAccessToken
              _ssgsUploadType
              _ssgsCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ShippingSettingsGetsupportedpickupServicesResource)
                      mempty
