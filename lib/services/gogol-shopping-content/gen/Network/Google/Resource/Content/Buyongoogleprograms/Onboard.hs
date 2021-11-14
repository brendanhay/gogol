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
-- Module      : Network.Google.Resource.Content.Buyongoogleprograms.Onboard
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Onboards the BoG program in your Merchant Center account. By using this
-- method, you agree to the [Terms of
-- Service](https:\/\/merchants.google.com\/mc\/termsofservice\/transactions\/US\/latest).
-- Calling this method is only possible if the authenticated account is the
-- same as the merchant id in the request. Calling this method multiple
-- times will only accept Terms of Service if the latest version is not
-- currently signed.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.onboard@.
module Network.Google.Resource.Content.Buyongoogleprograms.Onboard
    (
    -- * REST Resource
      BuyongoogleprogramsOnboardResource

    -- * Creating a Request
    , buyongoogleprogramsOnboard
    , BuyongoogleprogramsOnboard

    -- * Request Lenses
    , boXgafv
    , boMerchantId
    , boUploadProtocol
    , boRegionCode
    , boAccessToken
    , boUploadType
    , boPayload
    , boCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.onboard@ method which the
-- 'BuyongoogleprogramsOnboard' request conforms to.
type BuyongoogleprogramsOnboardResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "buyongoogleprograms" :>
             Capture "regionCode" Text :>
               "onboard" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OnboardBuyOnGoogleProgramRequest :>
                               Post '[JSON] ()

-- | Onboards the BoG program in your Merchant Center account. By using this
-- method, you agree to the [Terms of
-- Service](https:\/\/merchants.google.com\/mc\/termsofservice\/transactions\/US\/latest).
-- Calling this method is only possible if the authenticated account is the
-- same as the merchant id in the request. Calling this method multiple
-- times will only accept Terms of Service if the latest version is not
-- currently signed.
--
-- /See:/ 'buyongoogleprogramsOnboard' smart constructor.
data BuyongoogleprogramsOnboard =
  BuyongoogleprogramsOnboard'
    { _boXgafv :: !(Maybe Xgafv)
    , _boMerchantId :: !(Textual Int64)
    , _boUploadProtocol :: !(Maybe Text)
    , _boRegionCode :: !Text
    , _boAccessToken :: !(Maybe Text)
    , _boUploadType :: !(Maybe Text)
    , _boPayload :: !OnboardBuyOnGoogleProgramRequest
    , _boCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuyongoogleprogramsOnboard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boXgafv'
--
-- * 'boMerchantId'
--
-- * 'boUploadProtocol'
--
-- * 'boRegionCode'
--
-- * 'boAccessToken'
--
-- * 'boUploadType'
--
-- * 'boPayload'
--
-- * 'boCallback'
buyongoogleprogramsOnboard
    :: Int64 -- ^ 'boMerchantId'
    -> Text -- ^ 'boRegionCode'
    -> OnboardBuyOnGoogleProgramRequest -- ^ 'boPayload'
    -> BuyongoogleprogramsOnboard
buyongoogleprogramsOnboard pBoMerchantId_ pBoRegionCode_ pBoPayload_ =
  BuyongoogleprogramsOnboard'
    { _boXgafv = Nothing
    , _boMerchantId = _Coerce # pBoMerchantId_
    , _boUploadProtocol = Nothing
    , _boRegionCode = pBoRegionCode_
    , _boAccessToken = Nothing
    , _boUploadType = Nothing
    , _boPayload = pBoPayload_
    , _boCallback = Nothing
    }


-- | V1 error format.
boXgafv :: Lens' BuyongoogleprogramsOnboard (Maybe Xgafv)
boXgafv = lens _boXgafv (\ s a -> s{_boXgafv = a})

-- | Required. The ID of the account.
boMerchantId :: Lens' BuyongoogleprogramsOnboard Int64
boMerchantId
  = lens _boMerchantId (\ s a -> s{_boMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
boUploadProtocol :: Lens' BuyongoogleprogramsOnboard (Maybe Text)
boUploadProtocol
  = lens _boUploadProtocol
      (\ s a -> s{_boUploadProtocol = a})

-- | The program region code [ISO 3166-1
-- alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2).
-- Currently only US is available.
boRegionCode :: Lens' BuyongoogleprogramsOnboard Text
boRegionCode
  = lens _boRegionCode (\ s a -> s{_boRegionCode = a})

-- | OAuth access token.
boAccessToken :: Lens' BuyongoogleprogramsOnboard (Maybe Text)
boAccessToken
  = lens _boAccessToken
      (\ s a -> s{_boAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
boUploadType :: Lens' BuyongoogleprogramsOnboard (Maybe Text)
boUploadType
  = lens _boUploadType (\ s a -> s{_boUploadType = a})

-- | Multipart request metadata.
boPayload :: Lens' BuyongoogleprogramsOnboard OnboardBuyOnGoogleProgramRequest
boPayload
  = lens _boPayload (\ s a -> s{_boPayload = a})

-- | JSONP
boCallback :: Lens' BuyongoogleprogramsOnboard (Maybe Text)
boCallback
  = lens _boCallback (\ s a -> s{_boCallback = a})

instance GoogleRequest BuyongoogleprogramsOnboard
         where
        type Rs BuyongoogleprogramsOnboard = ()
        type Scopes BuyongoogleprogramsOnboard =
             '["https://www.googleapis.com/auth/content"]
        requestClient BuyongoogleprogramsOnboard'{..}
          = go _boMerchantId _boRegionCode _boXgafv
              _boUploadProtocol
              _boAccessToken
              _boUploadType
              _boCallback
              (Just AltJSON)
              _boPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy BuyongoogleprogramsOnboardResource)
                      mempty
