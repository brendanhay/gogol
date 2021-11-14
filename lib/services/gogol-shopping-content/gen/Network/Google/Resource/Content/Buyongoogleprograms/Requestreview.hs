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
-- Module      : Network.Google.Resource.Content.Buyongoogleprograms.Requestreview
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests review and then activates the BoG program in your Merchant
-- Center account for the first time. Moves the program to the
-- REVIEW_PENDING state. Important: This method is only whitelisted for
-- selected merchants.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.requestreview@.
module Network.Google.Resource.Content.Buyongoogleprograms.Requestreview
    (
    -- * REST Resource
      BuyongoogleprogramsRequestreviewResource

    -- * Creating a Request
    , buyongoogleprogramsRequestreview
    , BuyongoogleprogramsRequestreview

    -- * Request Lenses
    , brXgafv
    , brMerchantId
    , brUploadProtocol
    , brRegionCode
    , brAccessToken
    , brUploadType
    , brPayload
    , brCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.requestreview@ method which the
-- 'BuyongoogleprogramsRequestreview' request conforms to.
type BuyongoogleprogramsRequestreviewResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "buyongoogleprograms" :>
             Capture "regionCode" Text :>
               "requestreview" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               RequestReviewBuyOnGoogleProgramRequest
                               :> Post '[JSON] ()

-- | Requests review and then activates the BoG program in your Merchant
-- Center account for the first time. Moves the program to the
-- REVIEW_PENDING state. Important: This method is only whitelisted for
-- selected merchants.
--
-- /See:/ 'buyongoogleprogramsRequestreview' smart constructor.
data BuyongoogleprogramsRequestreview =
  BuyongoogleprogramsRequestreview'
    { _brXgafv :: !(Maybe Xgafv)
    , _brMerchantId :: !(Textual Int64)
    , _brUploadProtocol :: !(Maybe Text)
    , _brRegionCode :: !Text
    , _brAccessToken :: !(Maybe Text)
    , _brUploadType :: !(Maybe Text)
    , _brPayload :: !RequestReviewBuyOnGoogleProgramRequest
    , _brCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuyongoogleprogramsRequestreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brXgafv'
--
-- * 'brMerchantId'
--
-- * 'brUploadProtocol'
--
-- * 'brRegionCode'
--
-- * 'brAccessToken'
--
-- * 'brUploadType'
--
-- * 'brPayload'
--
-- * 'brCallback'
buyongoogleprogramsRequestreview
    :: Int64 -- ^ 'brMerchantId'
    -> Text -- ^ 'brRegionCode'
    -> RequestReviewBuyOnGoogleProgramRequest -- ^ 'brPayload'
    -> BuyongoogleprogramsRequestreview
buyongoogleprogramsRequestreview pBrMerchantId_ pBrRegionCode_ pBrPayload_ =
  BuyongoogleprogramsRequestreview'
    { _brXgafv = Nothing
    , _brMerchantId = _Coerce # pBrMerchantId_
    , _brUploadProtocol = Nothing
    , _brRegionCode = pBrRegionCode_
    , _brAccessToken = Nothing
    , _brUploadType = Nothing
    , _brPayload = pBrPayload_
    , _brCallback = Nothing
    }


-- | V1 error format.
brXgafv :: Lens' BuyongoogleprogramsRequestreview (Maybe Xgafv)
brXgafv = lens _brXgafv (\ s a -> s{_brXgafv = a})

-- | Required. The ID of the account.
brMerchantId :: Lens' BuyongoogleprogramsRequestreview Int64
brMerchantId
  = lens _brMerchantId (\ s a -> s{_brMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
brUploadProtocol :: Lens' BuyongoogleprogramsRequestreview (Maybe Text)
brUploadProtocol
  = lens _brUploadProtocol
      (\ s a -> s{_brUploadProtocol = a})

-- | The program region code [ISO 3166-1
-- alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2).
-- Currently only US is available.
brRegionCode :: Lens' BuyongoogleprogramsRequestreview Text
brRegionCode
  = lens _brRegionCode (\ s a -> s{_brRegionCode = a})

-- | OAuth access token.
brAccessToken :: Lens' BuyongoogleprogramsRequestreview (Maybe Text)
brAccessToken
  = lens _brAccessToken
      (\ s a -> s{_brAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
brUploadType :: Lens' BuyongoogleprogramsRequestreview (Maybe Text)
brUploadType
  = lens _brUploadType (\ s a -> s{_brUploadType = a})

-- | Multipart request metadata.
brPayload :: Lens' BuyongoogleprogramsRequestreview RequestReviewBuyOnGoogleProgramRequest
brPayload
  = lens _brPayload (\ s a -> s{_brPayload = a})

-- | JSONP
brCallback :: Lens' BuyongoogleprogramsRequestreview (Maybe Text)
brCallback
  = lens _brCallback (\ s a -> s{_brCallback = a})

instance GoogleRequest
           BuyongoogleprogramsRequestreview
         where
        type Rs BuyongoogleprogramsRequestreview = ()
        type Scopes BuyongoogleprogramsRequestreview =
             '["https://www.googleapis.com/auth/content"]
        requestClient BuyongoogleprogramsRequestreview'{..}
          = go _brMerchantId _brRegionCode _brXgafv
              _brUploadProtocol
              _brAccessToken
              _brUploadType
              _brCallback
              (Just AltJSON)
              _brPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BuyongoogleprogramsRequestreviewResource)
                      mempty
