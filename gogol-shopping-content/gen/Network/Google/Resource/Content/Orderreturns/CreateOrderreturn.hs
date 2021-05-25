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
-- Module      : Network.Google.Resource.Content.Orderreturns.CreateOrderreturn
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create return in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.createorderreturn@.
module Network.Google.Resource.Content.Orderreturns.CreateOrderreturn
    (
    -- * REST Resource
      OrderreturnsCreateOrderreturnResource

    -- * Creating a Request
    , orderreturnsCreateOrderreturn
    , OrderreturnsCreateOrderreturn

    -- * Request Lenses
    , ordrXgafv
    , ordrMerchantId
    , ordrUploadProtocol
    , ordrAccessToken
    , ordrUploadType
    , ordrPayload
    , ordrCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.createorderreturn@ method which the
-- 'OrderreturnsCreateOrderreturn' request conforms to.
type OrderreturnsCreateOrderreturnResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreturns" :>
             "createOrderReturn" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrderreturnsCreateOrderReturnRequest
                             :>
                             Post '[JSON] OrderreturnsCreateOrderReturnResponse

-- | Create return in your Merchant Center account.
--
-- /See:/ 'orderreturnsCreateOrderreturn' smart constructor.
data OrderreturnsCreateOrderreturn =
  OrderreturnsCreateOrderreturn'
    { _ordrXgafv :: !(Maybe Xgafv)
    , _ordrMerchantId :: !(Textual Word64)
    , _ordrUploadProtocol :: !(Maybe Text)
    , _ordrAccessToken :: !(Maybe Text)
    , _ordrUploadType :: !(Maybe Text)
    , _ordrPayload :: !OrderreturnsCreateOrderReturnRequest
    , _ordrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsCreateOrderreturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordrXgafv'
--
-- * 'ordrMerchantId'
--
-- * 'ordrUploadProtocol'
--
-- * 'ordrAccessToken'
--
-- * 'ordrUploadType'
--
-- * 'ordrPayload'
--
-- * 'ordrCallback'
orderreturnsCreateOrderreturn
    :: Word64 -- ^ 'ordrMerchantId'
    -> OrderreturnsCreateOrderReturnRequest -- ^ 'ordrPayload'
    -> OrderreturnsCreateOrderreturn
orderreturnsCreateOrderreturn pOrdrMerchantId_ pOrdrPayload_ =
  OrderreturnsCreateOrderreturn'
    { _ordrXgafv = Nothing
    , _ordrMerchantId = _Coerce # pOrdrMerchantId_
    , _ordrUploadProtocol = Nothing
    , _ordrAccessToken = Nothing
    , _ordrUploadType = Nothing
    , _ordrPayload = pOrdrPayload_
    , _ordrCallback = Nothing
    }


-- | V1 error format.
ordrXgafv :: Lens' OrderreturnsCreateOrderreturn (Maybe Xgafv)
ordrXgafv
  = lens _ordrXgafv (\ s a -> s{_ordrXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ordrMerchantId :: Lens' OrderreturnsCreateOrderreturn Word64
ordrMerchantId
  = lens _ordrMerchantId
      (\ s a -> s{_ordrMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ordrUploadProtocol :: Lens' OrderreturnsCreateOrderreturn (Maybe Text)
ordrUploadProtocol
  = lens _ordrUploadProtocol
      (\ s a -> s{_ordrUploadProtocol = a})

-- | OAuth access token.
ordrAccessToken :: Lens' OrderreturnsCreateOrderreturn (Maybe Text)
ordrAccessToken
  = lens _ordrAccessToken
      (\ s a -> s{_ordrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ordrUploadType :: Lens' OrderreturnsCreateOrderreturn (Maybe Text)
ordrUploadType
  = lens _ordrUploadType
      (\ s a -> s{_ordrUploadType = a})

-- | Multipart request metadata.
ordrPayload :: Lens' OrderreturnsCreateOrderreturn OrderreturnsCreateOrderReturnRequest
ordrPayload
  = lens _ordrPayload (\ s a -> s{_ordrPayload = a})

-- | JSONP
ordrCallback :: Lens' OrderreturnsCreateOrderreturn (Maybe Text)
ordrCallback
  = lens _ordrCallback (\ s a -> s{_ordrCallback = a})

instance GoogleRequest OrderreturnsCreateOrderreturn
         where
        type Rs OrderreturnsCreateOrderreturn =
             OrderreturnsCreateOrderReturnResponse
        type Scopes OrderreturnsCreateOrderreturn =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsCreateOrderreturn'{..}
          = go _ordrMerchantId _ordrXgafv _ordrUploadProtocol
              _ordrAccessToken
              _ordrUploadType
              _ordrCallback
              (Just AltJSON)
              _ordrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderreturnsCreateOrderreturnResource)
                      mempty
