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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Acknowledge
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acknowledges a subscription purchase.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.acknowledge@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Acknowledge
    (
    -- * REST Resource
      PurchasesSubscriptionsAcknowledgeResource

    -- * Creating a Request
    , purchasesSubscriptionsAcknowledge
    , PurchasesSubscriptionsAcknowledge

    -- * Request Lenses
    , psaXgafv
    , psaUploadProtocol
    , psaPackageName
    , psaAccessToken
    , psaToken
    , psaUploadType
    , psaPayload
    , psaSubscriptionId
    , psaCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.acknowledge@ method which the
-- 'PurchasesSubscriptionsAcknowledge' request conforms to.
type PurchasesSubscriptionsAcknowledgeResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     CaptureMode "token" "acknowledge" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     SubscriptionPurchasesAcknowledgeRequest
                                     :> Post '[JSON] ()

-- | Acknowledges a subscription purchase.
--
-- /See:/ 'purchasesSubscriptionsAcknowledge' smart constructor.
data PurchasesSubscriptionsAcknowledge =
  PurchasesSubscriptionsAcknowledge'
    { _psaXgafv :: !(Maybe Xgafv)
    , _psaUploadProtocol :: !(Maybe Text)
    , _psaPackageName :: !Text
    , _psaAccessToken :: !(Maybe Text)
    , _psaToken :: !Text
    , _psaUploadType :: !(Maybe Text)
    , _psaPayload :: !SubscriptionPurchasesAcknowledgeRequest
    , _psaSubscriptionId :: !Text
    , _psaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PurchasesSubscriptionsAcknowledge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psaXgafv'
--
-- * 'psaUploadProtocol'
--
-- * 'psaPackageName'
--
-- * 'psaAccessToken'
--
-- * 'psaToken'
--
-- * 'psaUploadType'
--
-- * 'psaPayload'
--
-- * 'psaSubscriptionId'
--
-- * 'psaCallback'
purchasesSubscriptionsAcknowledge
    :: Text -- ^ 'psaPackageName'
    -> Text -- ^ 'psaToken'
    -> SubscriptionPurchasesAcknowledgeRequest -- ^ 'psaPayload'
    -> Text -- ^ 'psaSubscriptionId'
    -> PurchasesSubscriptionsAcknowledge
purchasesSubscriptionsAcknowledge pPsaPackageName_ pPsaToken_ pPsaPayload_ pPsaSubscriptionId_ =
  PurchasesSubscriptionsAcknowledge'
    { _psaXgafv = Nothing
    , _psaUploadProtocol = Nothing
    , _psaPackageName = pPsaPackageName_
    , _psaAccessToken = Nothing
    , _psaToken = pPsaToken_
    , _psaUploadType = Nothing
    , _psaPayload = pPsaPayload_
    , _psaSubscriptionId = pPsaSubscriptionId_
    , _psaCallback = Nothing
    }


-- | V1 error format.
psaXgafv :: Lens' PurchasesSubscriptionsAcknowledge (Maybe Xgafv)
psaXgafv = lens _psaXgafv (\ s a -> s{_psaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psaUploadProtocol :: Lens' PurchasesSubscriptionsAcknowledge (Maybe Text)
psaUploadProtocol
  = lens _psaUploadProtocol
      (\ s a -> s{_psaUploadProtocol = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psaPackageName :: Lens' PurchasesSubscriptionsAcknowledge Text
psaPackageName
  = lens _psaPackageName
      (\ s a -> s{_psaPackageName = a})

-- | OAuth access token.
psaAccessToken :: Lens' PurchasesSubscriptionsAcknowledge (Maybe Text)
psaAccessToken
  = lens _psaAccessToken
      (\ s a -> s{_psaAccessToken = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psaToken :: Lens' PurchasesSubscriptionsAcknowledge Text
psaToken = lens _psaToken (\ s a -> s{_psaToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psaUploadType :: Lens' PurchasesSubscriptionsAcknowledge (Maybe Text)
psaUploadType
  = lens _psaUploadType
      (\ s a -> s{_psaUploadType = a})

-- | Multipart request metadata.
psaPayload :: Lens' PurchasesSubscriptionsAcknowledge SubscriptionPurchasesAcknowledgeRequest
psaPayload
  = lens _psaPayload (\ s a -> s{_psaPayload = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psaSubscriptionId :: Lens' PurchasesSubscriptionsAcknowledge Text
psaSubscriptionId
  = lens _psaSubscriptionId
      (\ s a -> s{_psaSubscriptionId = a})

-- | JSONP
psaCallback :: Lens' PurchasesSubscriptionsAcknowledge (Maybe Text)
psaCallback
  = lens _psaCallback (\ s a -> s{_psaCallback = a})

instance GoogleRequest
           PurchasesSubscriptionsAcknowledge
         where
        type Rs PurchasesSubscriptionsAcknowledge = ()
        type Scopes PurchasesSubscriptionsAcknowledge =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesSubscriptionsAcknowledge'{..}
          = go _psaPackageName _psaSubscriptionId _psaToken
              _psaXgafv
              _psaUploadProtocol
              _psaAccessToken
              _psaUploadType
              _psaCallback
              (Just AltJSON)
              _psaPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PurchasesSubscriptionsAcknowledgeResource)
                      mempty
