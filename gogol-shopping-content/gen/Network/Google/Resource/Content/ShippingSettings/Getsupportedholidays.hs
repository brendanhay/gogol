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
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.getsupportedholidays@.
module Network.Google.Resource.Content.ShippingSettings.Getsupportedholidays
    (
    -- * REST Resource
      ShippingSettingsGetsupportedholidaysResource

    -- * Creating a Request
    , shippingSettingsGetsupportedholidays
    , ShippingSettingsGetsupportedholidays

    -- * Request Lenses
    , ssgXgafv
    , ssgMerchantId
    , ssgUploadProtocol
    , ssgAccessToken
    , ssgUploadType
    , ssgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.getsupportedholidays@ method which the
-- 'ShippingSettingsGetsupportedholidays' request conforms to.
type ShippingSettingsGetsupportedholidaysResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "supportedHolidays" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON]
                           ShippingSettingsGetSupportedHolidaysResponse

-- | Retrieves supported holidays for an account.
--
-- /See:/ 'shippingSettingsGetsupportedholidays' smart constructor.
data ShippingSettingsGetsupportedholidays =
  ShippingSettingsGetsupportedholidays'
    { _ssgXgafv :: !(Maybe Xgafv)
    , _ssgMerchantId :: !(Textual Word64)
    , _ssgUploadProtocol :: !(Maybe Text)
    , _ssgAccessToken :: !(Maybe Text)
    , _ssgUploadType :: !(Maybe Text)
    , _ssgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGetsupportedholidays' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgXgafv'
--
-- * 'ssgMerchantId'
--
-- * 'ssgUploadProtocol'
--
-- * 'ssgAccessToken'
--
-- * 'ssgUploadType'
--
-- * 'ssgCallback'
shippingSettingsGetsupportedholidays
    :: Word64 -- ^ 'ssgMerchantId'
    -> ShippingSettingsGetsupportedholidays
shippingSettingsGetsupportedholidays pSsgMerchantId_ =
  ShippingSettingsGetsupportedholidays'
    { _ssgXgafv = Nothing
    , _ssgMerchantId = _Coerce # pSsgMerchantId_
    , _ssgUploadProtocol = Nothing
    , _ssgAccessToken = Nothing
    , _ssgUploadType = Nothing
    , _ssgCallback = Nothing
    }


-- | V1 error format.
ssgXgafv :: Lens' ShippingSettingsGetsupportedholidays (Maybe Xgafv)
ssgXgafv = lens _ssgXgafv (\ s a -> s{_ssgXgafv = a})

-- | The ID of the account for which to retrieve the supported holidays.
ssgMerchantId :: Lens' ShippingSettingsGetsupportedholidays Word64
ssgMerchantId
  = lens _ssgMerchantId
      (\ s a -> s{_ssgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssgUploadProtocol :: Lens' ShippingSettingsGetsupportedholidays (Maybe Text)
ssgUploadProtocol
  = lens _ssgUploadProtocol
      (\ s a -> s{_ssgUploadProtocol = a})

-- | OAuth access token.
ssgAccessToken :: Lens' ShippingSettingsGetsupportedholidays (Maybe Text)
ssgAccessToken
  = lens _ssgAccessToken
      (\ s a -> s{_ssgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssgUploadType :: Lens' ShippingSettingsGetsupportedholidays (Maybe Text)
ssgUploadType
  = lens _ssgUploadType
      (\ s a -> s{_ssgUploadType = a})

-- | JSONP
ssgCallback :: Lens' ShippingSettingsGetsupportedholidays (Maybe Text)
ssgCallback
  = lens _ssgCallback (\ s a -> s{_ssgCallback = a})

instance GoogleRequest
           ShippingSettingsGetsupportedholidays
         where
        type Rs ShippingSettingsGetsupportedholidays =
             ShippingSettingsGetSupportedHolidaysResponse
        type Scopes ShippingSettingsGetsupportedholidays =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          ShippingSettingsGetsupportedholidays'{..}
          = go _ssgMerchantId _ssgXgafv _ssgUploadProtocol
              _ssgAccessToken
              _ssgUploadType
              _ssgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ShippingSettingsGetsupportedholidaysResource)
                      mempty
