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
-- Module      : Network.Google.Resource.Content.Buyongoogleprograms.Pause
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses the BoG program in your Merchant Center account. Important: This
-- method is only whitelisted for selected merchants.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.pause@.
module Network.Google.Resource.Content.Buyongoogleprograms.Pause
    (
    -- * REST Resource
      BuyongoogleprogramsPauseResource

    -- * Creating a Request
    , buyongoogleprogramsPause
    , BuyongoogleprogramsPause

    -- * Request Lenses
    , bpXgafv
    , bpMerchantId
    , bpUploadProtocol
    , bpRegionCode
    , bpAccessToken
    , bpUploadType
    , bpPayload
    , bpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.pause@ method which the
-- 'BuyongoogleprogramsPause' request conforms to.
type BuyongoogleprogramsPauseResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "buyongoogleprograms" :>
             Capture "regionCode" Text :>
               "pause" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PauseBuyOnGoogleProgramRequest :>
                               Post '[JSON] ()

-- | Pauses the BoG program in your Merchant Center account. Important: This
-- method is only whitelisted for selected merchants.
--
-- /See:/ 'buyongoogleprogramsPause' smart constructor.
data BuyongoogleprogramsPause =
  BuyongoogleprogramsPause'
    { _bpXgafv :: !(Maybe Xgafv)
    , _bpMerchantId :: !(Textual Int64)
    , _bpUploadProtocol :: !(Maybe Text)
    , _bpRegionCode :: !Text
    , _bpAccessToken :: !(Maybe Text)
    , _bpUploadType :: !(Maybe Text)
    , _bpPayload :: !PauseBuyOnGoogleProgramRequest
    , _bpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuyongoogleprogramsPause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpXgafv'
--
-- * 'bpMerchantId'
--
-- * 'bpUploadProtocol'
--
-- * 'bpRegionCode'
--
-- * 'bpAccessToken'
--
-- * 'bpUploadType'
--
-- * 'bpPayload'
--
-- * 'bpCallback'
buyongoogleprogramsPause
    :: Int64 -- ^ 'bpMerchantId'
    -> Text -- ^ 'bpRegionCode'
    -> PauseBuyOnGoogleProgramRequest -- ^ 'bpPayload'
    -> BuyongoogleprogramsPause
buyongoogleprogramsPause pBpMerchantId_ pBpRegionCode_ pBpPayload_ =
  BuyongoogleprogramsPause'
    { _bpXgafv = Nothing
    , _bpMerchantId = _Coerce # pBpMerchantId_
    , _bpUploadProtocol = Nothing
    , _bpRegionCode = pBpRegionCode_
    , _bpAccessToken = Nothing
    , _bpUploadType = Nothing
    , _bpPayload = pBpPayload_
    , _bpCallback = Nothing
    }


-- | V1 error format.
bpXgafv :: Lens' BuyongoogleprogramsPause (Maybe Xgafv)
bpXgafv = lens _bpXgafv (\ s a -> s{_bpXgafv = a})

-- | Required. The ID of the account.
bpMerchantId :: Lens' BuyongoogleprogramsPause Int64
bpMerchantId
  = lens _bpMerchantId (\ s a -> s{_bpMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bpUploadProtocol :: Lens' BuyongoogleprogramsPause (Maybe Text)
bpUploadProtocol
  = lens _bpUploadProtocol
      (\ s a -> s{_bpUploadProtocol = a})

-- | The program region code [ISO 3166-1
-- alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2).
-- Currently only US is available.
bpRegionCode :: Lens' BuyongoogleprogramsPause Text
bpRegionCode
  = lens _bpRegionCode (\ s a -> s{_bpRegionCode = a})

-- | OAuth access token.
bpAccessToken :: Lens' BuyongoogleprogramsPause (Maybe Text)
bpAccessToken
  = lens _bpAccessToken
      (\ s a -> s{_bpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bpUploadType :: Lens' BuyongoogleprogramsPause (Maybe Text)
bpUploadType
  = lens _bpUploadType (\ s a -> s{_bpUploadType = a})

-- | Multipart request metadata.
bpPayload :: Lens' BuyongoogleprogramsPause PauseBuyOnGoogleProgramRequest
bpPayload
  = lens _bpPayload (\ s a -> s{_bpPayload = a})

-- | JSONP
bpCallback :: Lens' BuyongoogleprogramsPause (Maybe Text)
bpCallback
  = lens _bpCallback (\ s a -> s{_bpCallback = a})

instance GoogleRequest BuyongoogleprogramsPause where
        type Rs BuyongoogleprogramsPause = ()
        type Scopes BuyongoogleprogramsPause =
             '["https://www.googleapis.com/auth/content"]
        requestClient BuyongoogleprogramsPause'{..}
          = go _bpMerchantId _bpRegionCode _bpXgafv
              _bpUploadProtocol
              _bpAccessToken
              _bpUploadType
              _bpCallback
              (Just AltJSON)
              _bpPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy BuyongoogleprogramsPauseResource)
                      mempty
