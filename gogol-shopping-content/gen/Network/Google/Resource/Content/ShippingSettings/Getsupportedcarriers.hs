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
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.getsupportedcarriers@.
module Network.Google.Resource.Content.ShippingSettings.Getsupportedcarriers
    (
    -- * REST Resource
      ShippingSettingsGetsupportedcarriersResource

    -- * Creating a Request
    , shippingSettingsGetsupportedcarriers
    , ShippingSettingsGetsupportedcarriers

    -- * Request Lenses
    , sXgafv
    , sMerchantId
    , sUploadProtocol
    , sAccessToken
    , sUploadType
    , sCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.getsupportedcarriers@ method which the
-- 'ShippingSettingsGetsupportedcarriers' request conforms to.
type ShippingSettingsGetsupportedcarriersResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "supportedCarriers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON]
                           ShippingSettingsGetSupportedCarriersResponse

-- | Retrieves supported carriers and carrier services for an account.
--
-- /See:/ 'shippingSettingsGetsupportedcarriers' smart constructor.
data ShippingSettingsGetsupportedcarriers =
  ShippingSettingsGetsupportedcarriers'
    { _sXgafv :: !(Maybe Xgafv)
    , _sMerchantId :: !(Textual Word64)
    , _sUploadProtocol :: !(Maybe Text)
    , _sAccessToken :: !(Maybe Text)
    , _sUploadType :: !(Maybe Text)
    , _sCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGetsupportedcarriers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sXgafv'
--
-- * 'sMerchantId'
--
-- * 'sUploadProtocol'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sCallback'
shippingSettingsGetsupportedcarriers
    :: Word64 -- ^ 'sMerchantId'
    -> ShippingSettingsGetsupportedcarriers
shippingSettingsGetsupportedcarriers pSMerchantId_ =
  ShippingSettingsGetsupportedcarriers'
    { _sXgafv = Nothing
    , _sMerchantId = _Coerce # pSMerchantId_
    , _sUploadProtocol = Nothing
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sCallback = Nothing
    }


-- | V1 error format.
sXgafv :: Lens' ShippingSettingsGetsupportedcarriers (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | The ID of the account for which to retrieve the supported carriers.
sMerchantId :: Lens' ShippingSettingsGetsupportedcarriers Word64
sMerchantId
  = lens _sMerchantId (\ s a -> s{_sMerchantId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' ShippingSettingsGetsupportedcarriers (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | OAuth access token.
sAccessToken :: Lens' ShippingSettingsGetsupportedcarriers (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' ShippingSettingsGetsupportedcarriers (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | JSONP
sCallback :: Lens' ShippingSettingsGetsupportedcarriers (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest
           ShippingSettingsGetsupportedcarriers
         where
        type Rs ShippingSettingsGetsupportedcarriers =
             ShippingSettingsGetSupportedCarriersResponse
        type Scopes ShippingSettingsGetsupportedcarriers =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          ShippingSettingsGetsupportedcarriers'{..}
          = go _sMerchantId _sXgafv _sUploadProtocol
              _sAccessToken
              _sUploadType
              _sCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ShippingSettingsGetsupportedcarriersResource)
                      mempty
