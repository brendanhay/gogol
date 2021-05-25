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
-- Module      : Network.Google.Resource.Content.Buyongoogleprograms.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a status of the BoG program for your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.get@.
module Network.Google.Resource.Content.Buyongoogleprograms.Get
    (
    -- * REST Resource
      BuyongoogleprogramsGetResource

    -- * Creating a Request
    , buyongoogleprogramsGet
    , BuyongoogleprogramsGet

    -- * Request Lenses
    , bgXgafv
    , bgMerchantId
    , bgUploadProtocol
    , bgRegionCode
    , bgAccessToken
    , bgUploadType
    , bgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.get@ method which the
-- 'BuyongoogleprogramsGet' request conforms to.
type BuyongoogleprogramsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "buyongoogleprograms" :>
             Capture "regionCode" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] BuyOnGoogleProgramStatus

-- | Retrieves a status of the BoG program for your Merchant Center account.
--
-- /See:/ 'buyongoogleprogramsGet' smart constructor.
data BuyongoogleprogramsGet =
  BuyongoogleprogramsGet'
    { _bgXgafv :: !(Maybe Xgafv)
    , _bgMerchantId :: !(Textual Int64)
    , _bgUploadProtocol :: !(Maybe Text)
    , _bgRegionCode :: !Text
    , _bgAccessToken :: !(Maybe Text)
    , _bgUploadType :: !(Maybe Text)
    , _bgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuyongoogleprogramsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgXgafv'
--
-- * 'bgMerchantId'
--
-- * 'bgUploadProtocol'
--
-- * 'bgRegionCode'
--
-- * 'bgAccessToken'
--
-- * 'bgUploadType'
--
-- * 'bgCallback'
buyongoogleprogramsGet
    :: Int64 -- ^ 'bgMerchantId'
    -> Text -- ^ 'bgRegionCode'
    -> BuyongoogleprogramsGet
buyongoogleprogramsGet pBgMerchantId_ pBgRegionCode_ =
  BuyongoogleprogramsGet'
    { _bgXgafv = Nothing
    , _bgMerchantId = _Coerce # pBgMerchantId_
    , _bgUploadProtocol = Nothing
    , _bgRegionCode = pBgRegionCode_
    , _bgAccessToken = Nothing
    , _bgUploadType = Nothing
    , _bgCallback = Nothing
    }


-- | V1 error format.
bgXgafv :: Lens' BuyongoogleprogramsGet (Maybe Xgafv)
bgXgafv = lens _bgXgafv (\ s a -> s{_bgXgafv = a})

-- | Required. The ID of the account.
bgMerchantId :: Lens' BuyongoogleprogramsGet Int64
bgMerchantId
  = lens _bgMerchantId (\ s a -> s{_bgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgUploadProtocol :: Lens' BuyongoogleprogramsGet (Maybe Text)
bgUploadProtocol
  = lens _bgUploadProtocol
      (\ s a -> s{_bgUploadProtocol = a})

-- | The Program region code [ISO 3166-1
-- alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2).
-- Currently only US is available.
bgRegionCode :: Lens' BuyongoogleprogramsGet Text
bgRegionCode
  = lens _bgRegionCode (\ s a -> s{_bgRegionCode = a})

-- | OAuth access token.
bgAccessToken :: Lens' BuyongoogleprogramsGet (Maybe Text)
bgAccessToken
  = lens _bgAccessToken
      (\ s a -> s{_bgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgUploadType :: Lens' BuyongoogleprogramsGet (Maybe Text)
bgUploadType
  = lens _bgUploadType (\ s a -> s{_bgUploadType = a})

-- | JSONP
bgCallback :: Lens' BuyongoogleprogramsGet (Maybe Text)
bgCallback
  = lens _bgCallback (\ s a -> s{_bgCallback = a})

instance GoogleRequest BuyongoogleprogramsGet where
        type Rs BuyongoogleprogramsGet =
             BuyOnGoogleProgramStatus
        type Scopes BuyongoogleprogramsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient BuyongoogleprogramsGet'{..}
          = go _bgMerchantId _bgRegionCode _bgXgafv
              _bgUploadProtocol
              _bgAccessToken
              _bgUploadType
              _bgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy BuyongoogleprogramsGetResource)
                      mempty
