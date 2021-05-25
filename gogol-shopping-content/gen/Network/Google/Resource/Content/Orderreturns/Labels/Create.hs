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
-- Module      : Network.Google.Resource.Content.Orderreturns.Labels.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Links a return shipping label to a return id. You can only create one
-- return label per return id. Since the label is sent to the buyer, the
-- linked return label cannot be updated or deleted. If you try to create
-- multiple return shipping labels for a single return id, every create
-- request except the first will fail.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.labels.create@.
module Network.Google.Resource.Content.Orderreturns.Labels.Create
    (
    -- * REST Resource
      OrderreturnsLabelsCreateResource

    -- * Creating a Request
    , orderreturnsLabelsCreate
    , OrderreturnsLabelsCreate

    -- * Request Lenses
    , olcXgafv
    , olcMerchantId
    , olcUploadProtocol
    , olcAccessToken
    , olcUploadType
    , olcPayload
    , olcReturnId
    , olcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.labels.create@ method which the
-- 'OrderreturnsLabelsCreate' request conforms to.
type OrderreturnsLabelsCreateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "orderreturns" :>
             Capture "returnId" Text :>
               "labels" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ReturnShippingLabel :>
                               Post '[JSON] ReturnShippingLabel

-- | Links a return shipping label to a return id. You can only create one
-- return label per return id. Since the label is sent to the buyer, the
-- linked return label cannot be updated or deleted. If you try to create
-- multiple return shipping labels for a single return id, every create
-- request except the first will fail.
--
-- /See:/ 'orderreturnsLabelsCreate' smart constructor.
data OrderreturnsLabelsCreate =
  OrderreturnsLabelsCreate'
    { _olcXgafv :: !(Maybe Xgafv)
    , _olcMerchantId :: !(Textual Int64)
    , _olcUploadProtocol :: !(Maybe Text)
    , _olcAccessToken :: !(Maybe Text)
    , _olcUploadType :: !(Maybe Text)
    , _olcPayload :: !ReturnShippingLabel
    , _olcReturnId :: !Text
    , _olcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsLabelsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcXgafv'
--
-- * 'olcMerchantId'
--
-- * 'olcUploadProtocol'
--
-- * 'olcAccessToken'
--
-- * 'olcUploadType'
--
-- * 'olcPayload'
--
-- * 'olcReturnId'
--
-- * 'olcCallback'
orderreturnsLabelsCreate
    :: Int64 -- ^ 'olcMerchantId'
    -> ReturnShippingLabel -- ^ 'olcPayload'
    -> Text -- ^ 'olcReturnId'
    -> OrderreturnsLabelsCreate
orderreturnsLabelsCreate pOlcMerchantId_ pOlcPayload_ pOlcReturnId_ =
  OrderreturnsLabelsCreate'
    { _olcXgafv = Nothing
    , _olcMerchantId = _Coerce # pOlcMerchantId_
    , _olcUploadProtocol = Nothing
    , _olcAccessToken = Nothing
    , _olcUploadType = Nothing
    , _olcPayload = pOlcPayload_
    , _olcReturnId = pOlcReturnId_
    , _olcCallback = Nothing
    }


-- | V1 error format.
olcXgafv :: Lens' OrderreturnsLabelsCreate (Maybe Xgafv)
olcXgafv = lens _olcXgafv (\ s a -> s{_olcXgafv = a})

-- | Required. The merchant the Return Shipping Label belongs to.
olcMerchantId :: Lens' OrderreturnsLabelsCreate Int64
olcMerchantId
  = lens _olcMerchantId
      (\ s a -> s{_olcMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olcUploadProtocol :: Lens' OrderreturnsLabelsCreate (Maybe Text)
olcUploadProtocol
  = lens _olcUploadProtocol
      (\ s a -> s{_olcUploadProtocol = a})

-- | OAuth access token.
olcAccessToken :: Lens' OrderreturnsLabelsCreate (Maybe Text)
olcAccessToken
  = lens _olcAccessToken
      (\ s a -> s{_olcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olcUploadType :: Lens' OrderreturnsLabelsCreate (Maybe Text)
olcUploadType
  = lens _olcUploadType
      (\ s a -> s{_olcUploadType = a})

-- | Multipart request metadata.
olcPayload :: Lens' OrderreturnsLabelsCreate ReturnShippingLabel
olcPayload
  = lens _olcPayload (\ s a -> s{_olcPayload = a})

-- | Required. Provide the Google-generated merchant order return ID.
olcReturnId :: Lens' OrderreturnsLabelsCreate Text
olcReturnId
  = lens _olcReturnId (\ s a -> s{_olcReturnId = a})

-- | JSONP
olcCallback :: Lens' OrderreturnsLabelsCreate (Maybe Text)
olcCallback
  = lens _olcCallback (\ s a -> s{_olcCallback = a})

instance GoogleRequest OrderreturnsLabelsCreate where
        type Rs OrderreturnsLabelsCreate =
             ReturnShippingLabel
        type Scopes OrderreturnsLabelsCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsLabelsCreate'{..}
          = go _olcMerchantId _olcReturnId _olcXgafv
              _olcUploadProtocol
              _olcAccessToken
              _olcUploadType
              _olcCallback
              (Just AltJSON)
              _olcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreturnsLabelsCreateResource)
                      mempty
