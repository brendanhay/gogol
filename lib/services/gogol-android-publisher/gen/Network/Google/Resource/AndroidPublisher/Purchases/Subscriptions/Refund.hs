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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.refund@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
    (
    -- * REST Resource
      PurchasesSubscriptionsRefundResource

    -- * Creating a Request
    , purchasesSubscriptionsRefund
    , PurchasesSubscriptionsRefund

    -- * Request Lenses
    , psrXgafv
    , psrUploadProtocol
    , psrPackageName
    , psrAccessToken
    , psrToken
    , psrUploadType
    , psrSubscriptionId
    , psrCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.refund@ method which the
-- 'PurchasesSubscriptionsRefund' request conforms to.
type PurchasesSubscriptionsRefundResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     CaptureMode "token" "refund" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ 'purchasesSubscriptionsRefund' smart constructor.
data PurchasesSubscriptionsRefund =
  PurchasesSubscriptionsRefund'
    { _psrXgafv :: !(Maybe Xgafv)
    , _psrUploadProtocol :: !(Maybe Text)
    , _psrPackageName :: !Text
    , _psrAccessToken :: !(Maybe Text)
    , _psrToken :: !Text
    , _psrUploadType :: !(Maybe Text)
    , _psrSubscriptionId :: !Text
    , _psrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PurchasesSubscriptionsRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrXgafv'
--
-- * 'psrUploadProtocol'
--
-- * 'psrPackageName'
--
-- * 'psrAccessToken'
--
-- * 'psrToken'
--
-- * 'psrUploadType'
--
-- * 'psrSubscriptionId'
--
-- * 'psrCallback'
purchasesSubscriptionsRefund
    :: Text -- ^ 'psrPackageName'
    -> Text -- ^ 'psrToken'
    -> Text -- ^ 'psrSubscriptionId'
    -> PurchasesSubscriptionsRefund
purchasesSubscriptionsRefund pPsrPackageName_ pPsrToken_ pPsrSubscriptionId_ =
  PurchasesSubscriptionsRefund'
    { _psrXgafv = Nothing
    , _psrUploadProtocol = Nothing
    , _psrPackageName = pPsrPackageName_
    , _psrAccessToken = Nothing
    , _psrToken = pPsrToken_
    , _psrUploadType = Nothing
    , _psrSubscriptionId = pPsrSubscriptionId_
    , _psrCallback = Nothing
    }


-- | V1 error format.
psrXgafv :: Lens' PurchasesSubscriptionsRefund (Maybe Xgafv)
psrXgafv = lens _psrXgafv (\ s a -> s{_psrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psrUploadProtocol :: Lens' PurchasesSubscriptionsRefund (Maybe Text)
psrUploadProtocol
  = lens _psrUploadProtocol
      (\ s a -> s{_psrUploadProtocol = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psrPackageName :: Lens' PurchasesSubscriptionsRefund Text
psrPackageName
  = lens _psrPackageName
      (\ s a -> s{_psrPackageName = a})

-- | OAuth access token.
psrAccessToken :: Lens' PurchasesSubscriptionsRefund (Maybe Text)
psrAccessToken
  = lens _psrAccessToken
      (\ s a -> s{_psrAccessToken = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psrToken :: Lens' PurchasesSubscriptionsRefund Text
psrToken = lens _psrToken (\ s a -> s{_psrToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psrUploadType :: Lens' PurchasesSubscriptionsRefund (Maybe Text)
psrUploadType
  = lens _psrUploadType
      (\ s a -> s{_psrUploadType = a})

-- | \"The purchased subscription ID (for example, \'monthly001\').
psrSubscriptionId :: Lens' PurchasesSubscriptionsRefund Text
psrSubscriptionId
  = lens _psrSubscriptionId
      (\ s a -> s{_psrSubscriptionId = a})

-- | JSONP
psrCallback :: Lens' PurchasesSubscriptionsRefund (Maybe Text)
psrCallback
  = lens _psrCallback (\ s a -> s{_psrCallback = a})

instance GoogleRequest PurchasesSubscriptionsRefund
         where
        type Rs PurchasesSubscriptionsRefund = ()
        type Scopes PurchasesSubscriptionsRefund =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesSubscriptionsRefund'{..}
          = go _psrPackageName _psrSubscriptionId _psrToken
              _psrXgafv
              _psrUploadProtocol
              _psrAccessToken
              _psrUploadType
              _psrCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsRefundResource)
                      mempty
