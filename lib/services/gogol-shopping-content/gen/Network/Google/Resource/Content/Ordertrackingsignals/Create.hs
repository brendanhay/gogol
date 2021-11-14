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
-- Module      : Network.Google.Resource.Content.Ordertrackingsignals.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new order tracking signal.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.ordertrackingsignals.create@.
module Network.Google.Resource.Content.Ordertrackingsignals.Create
    (
    -- * REST Resource
      OrdertrackingsignalsCreateResource

    -- * Creating a Request
    , ordertrackingsignalsCreate
    , OrdertrackingsignalsCreate

    -- * Request Lenses
    , occXgafv
    , occMerchantId
    , occUploadProtocol
    , occAccessToken
    , occUploadType
    , occPayload
    , occCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.ordertrackingsignals.create@ method which the
-- 'OrdertrackingsignalsCreate' request conforms to.
type OrdertrackingsignalsCreateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "ordertrackingsignals" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] OrderTrackingSignal :>
                           Post '[JSON] OrderTrackingSignal

-- | Creates new order tracking signal.
--
-- /See:/ 'ordertrackingsignalsCreate' smart constructor.
data OrdertrackingsignalsCreate =
  OrdertrackingsignalsCreate'
    { _occXgafv :: !(Maybe Xgafv)
    , _occMerchantId :: !(Textual Int64)
    , _occUploadProtocol :: !(Maybe Text)
    , _occAccessToken :: !(Maybe Text)
    , _occUploadType :: !(Maybe Text)
    , _occPayload :: !OrderTrackingSignal
    , _occCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdertrackingsignalsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occXgafv'
--
-- * 'occMerchantId'
--
-- * 'occUploadProtocol'
--
-- * 'occAccessToken'
--
-- * 'occUploadType'
--
-- * 'occPayload'
--
-- * 'occCallback'
ordertrackingsignalsCreate
    :: Int64 -- ^ 'occMerchantId'
    -> OrderTrackingSignal -- ^ 'occPayload'
    -> OrdertrackingsignalsCreate
ordertrackingsignalsCreate pOccMerchantId_ pOccPayload_ =
  OrdertrackingsignalsCreate'
    { _occXgafv = Nothing
    , _occMerchantId = _Coerce # pOccMerchantId_
    , _occUploadProtocol = Nothing
    , _occAccessToken = Nothing
    , _occUploadType = Nothing
    , _occPayload = pOccPayload_
    , _occCallback = Nothing
    }


-- | V1 error format.
occXgafv :: Lens' OrdertrackingsignalsCreate (Maybe Xgafv)
occXgafv = lens _occXgafv (\ s a -> s{_occXgafv = a})

-- | The ID of the merchant for which the order signal is created.
occMerchantId :: Lens' OrdertrackingsignalsCreate Int64
occMerchantId
  = lens _occMerchantId
      (\ s a -> s{_occMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
occUploadProtocol :: Lens' OrdertrackingsignalsCreate (Maybe Text)
occUploadProtocol
  = lens _occUploadProtocol
      (\ s a -> s{_occUploadProtocol = a})

-- | OAuth access token.
occAccessToken :: Lens' OrdertrackingsignalsCreate (Maybe Text)
occAccessToken
  = lens _occAccessToken
      (\ s a -> s{_occAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
occUploadType :: Lens' OrdertrackingsignalsCreate (Maybe Text)
occUploadType
  = lens _occUploadType
      (\ s a -> s{_occUploadType = a})

-- | Multipart request metadata.
occPayload :: Lens' OrdertrackingsignalsCreate OrderTrackingSignal
occPayload
  = lens _occPayload (\ s a -> s{_occPayload = a})

-- | JSONP
occCallback :: Lens' OrdertrackingsignalsCreate (Maybe Text)
occCallback
  = lens _occCallback (\ s a -> s{_occCallback = a})

instance GoogleRequest OrdertrackingsignalsCreate
         where
        type Rs OrdertrackingsignalsCreate =
             OrderTrackingSignal
        type Scopes OrdertrackingsignalsCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdertrackingsignalsCreate'{..}
          = go _occMerchantId _occXgafv _occUploadProtocol
              _occAccessToken
              _occUploadType
              _occCallback
              (Just AltJSON)
              _occPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdertrackingsignalsCreateResource)
                      mempty
