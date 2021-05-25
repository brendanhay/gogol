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
-- Module      : Network.Google.Resource.Content.Shoppingadsprogram.Requestreview
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a review for Shopping Ads program in the provided country.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shoppingadsprogram.requestreview@.
module Network.Google.Resource.Content.Shoppingadsprogram.Requestreview
    (
    -- * REST Resource
      ShoppingadsprogramRequestreviewResource

    -- * Creating a Request
    , shoppingadsprogramRequestreview
    , ShoppingadsprogramRequestreview

    -- * Request Lenses
    , srXgafv
    , srMerchantId
    , srUploadProtocol
    , srAccessToken
    , srUploadType
    , srPayload
    , srCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shoppingadsprogram.requestreview@ method which the
-- 'ShoppingadsprogramRequestreview' request conforms to.
type ShoppingadsprogramRequestreviewResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "shoppingadsprogram" :>
             "requestreview" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RequestReviewShoppingAdsRequest :>
                             Post '[JSON] ()

-- | Requests a review for Shopping Ads program in the provided country.
--
-- /See:/ 'shoppingadsprogramRequestreview' smart constructor.
data ShoppingadsprogramRequestreview =
  ShoppingadsprogramRequestreview'
    { _srXgafv :: !(Maybe Xgafv)
    , _srMerchantId :: !(Textual Int64)
    , _srUploadProtocol :: !(Maybe Text)
    , _srAccessToken :: !(Maybe Text)
    , _srUploadType :: !(Maybe Text)
    , _srPayload :: !RequestReviewShoppingAdsRequest
    , _srCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShoppingadsprogramRequestreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srXgafv'
--
-- * 'srMerchantId'
--
-- * 'srUploadProtocol'
--
-- * 'srAccessToken'
--
-- * 'srUploadType'
--
-- * 'srPayload'
--
-- * 'srCallback'
shoppingadsprogramRequestreview
    :: Int64 -- ^ 'srMerchantId'
    -> RequestReviewShoppingAdsRequest -- ^ 'srPayload'
    -> ShoppingadsprogramRequestreview
shoppingadsprogramRequestreview pSrMerchantId_ pSrPayload_ =
  ShoppingadsprogramRequestreview'
    { _srXgafv = Nothing
    , _srMerchantId = _Coerce # pSrMerchantId_
    , _srUploadProtocol = Nothing
    , _srAccessToken = Nothing
    , _srUploadType = Nothing
    , _srPayload = pSrPayload_
    , _srCallback = Nothing
    }


-- | V1 error format.
srXgafv :: Lens' ShoppingadsprogramRequestreview (Maybe Xgafv)
srXgafv = lens _srXgafv (\ s a -> s{_srXgafv = a})

-- | Required. The ID of the account.
srMerchantId :: Lens' ShoppingadsprogramRequestreview Int64
srMerchantId
  = lens _srMerchantId (\ s a -> s{_srMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srUploadProtocol :: Lens' ShoppingadsprogramRequestreview (Maybe Text)
srUploadProtocol
  = lens _srUploadProtocol
      (\ s a -> s{_srUploadProtocol = a})

-- | OAuth access token.
srAccessToken :: Lens' ShoppingadsprogramRequestreview (Maybe Text)
srAccessToken
  = lens _srAccessToken
      (\ s a -> s{_srAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srUploadType :: Lens' ShoppingadsprogramRequestreview (Maybe Text)
srUploadType
  = lens _srUploadType (\ s a -> s{_srUploadType = a})

-- | Multipart request metadata.
srPayload :: Lens' ShoppingadsprogramRequestreview RequestReviewShoppingAdsRequest
srPayload
  = lens _srPayload (\ s a -> s{_srPayload = a})

-- | JSONP
srCallback :: Lens' ShoppingadsprogramRequestreview (Maybe Text)
srCallback
  = lens _srCallback (\ s a -> s{_srCallback = a})

instance GoogleRequest
           ShoppingadsprogramRequestreview
         where
        type Rs ShoppingadsprogramRequestreview = ()
        type Scopes ShoppingadsprogramRequestreview =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShoppingadsprogramRequestreview'{..}
          = go _srMerchantId _srXgafv _srUploadProtocol
              _srAccessToken
              _srUploadType
              _srCallback
              (Just AltJSON)
              _srPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ShoppingadsprogramRequestreviewResource)
                      mempty
