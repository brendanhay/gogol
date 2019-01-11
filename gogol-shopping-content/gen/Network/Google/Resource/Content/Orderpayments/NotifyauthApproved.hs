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
-- Module      : Network.Google.Resource.Content.Orderpayments.NotifyauthApproved
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notify about successfully authorizing user\'s payment method for a given
-- amount.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderpayments.notifyauthapproved@.
module Network.Google.Resource.Content.Orderpayments.NotifyauthApproved
    (
    -- * REST Resource
      OrderpaymentsNotifyauthApprovedResource

    -- * Creating a Request
    , orderpaymentsNotifyauthApproved
    , OrderpaymentsNotifyauthApproved

    -- * Request Lenses
    , onaMerchantId
    , onaPayload
    , onaOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderpayments.notifyauthapproved@ method which the
-- 'OrderpaymentsNotifyauthApproved' request conforms to.
type OrderpaymentsNotifyauthApprovedResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderpayments" :>
             Capture "orderId" Text :>
               "notifyAuthApproved" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     OrderpaymentsNotifyAuthApprovedRequest
                     :>
                     Post '[JSON] OrderpaymentsNotifyAuthApprovedResponse

-- | Notify about successfully authorizing user\'s payment method for a given
-- amount.
--
-- /See:/ 'orderpaymentsNotifyauthApproved' smart constructor.
data OrderpaymentsNotifyauthApproved = OrderpaymentsNotifyauthApproved'
    { _onaMerchantId :: !(Textual Word64)
    , _onaPayload    :: !OrderpaymentsNotifyAuthApprovedRequest
    , _onaOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderpaymentsNotifyauthApproved' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onaMerchantId'
--
-- * 'onaPayload'
--
-- * 'onaOrderId'
orderpaymentsNotifyauthApproved
    :: Word64 -- ^ 'onaMerchantId'
    -> OrderpaymentsNotifyAuthApprovedRequest -- ^ 'onaPayload'
    -> Text -- ^ 'onaOrderId'
    -> OrderpaymentsNotifyauthApproved
orderpaymentsNotifyauthApproved pOnaMerchantId_ pOnaPayload_ pOnaOrderId_ =
    OrderpaymentsNotifyauthApproved'
    { _onaMerchantId = _Coerce # pOnaMerchantId_
    , _onaPayload = pOnaPayload_
    , _onaOrderId = pOnaOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
onaMerchantId :: Lens' OrderpaymentsNotifyauthApproved Word64
onaMerchantId
  = lens _onaMerchantId
      (\ s a -> s{_onaMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
onaPayload :: Lens' OrderpaymentsNotifyauthApproved OrderpaymentsNotifyAuthApprovedRequest
onaPayload
  = lens _onaPayload (\ s a -> s{_onaPayload = a})

-- | The ID of the order for for which payment authorization is happening.
onaOrderId :: Lens' OrderpaymentsNotifyauthApproved Text
onaOrderId
  = lens _onaOrderId (\ s a -> s{_onaOrderId = a})

instance GoogleRequest
         OrderpaymentsNotifyauthApproved where
        type Rs OrderpaymentsNotifyauthApproved =
             OrderpaymentsNotifyAuthApprovedResponse
        type Scopes OrderpaymentsNotifyauthApproved =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderpaymentsNotifyauthApproved'{..}
          = go _onaMerchantId _onaOrderId (Just AltJSON)
              _onaPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderpaymentsNotifyauthApprovedResource)
                      mempty
