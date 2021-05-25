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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.cancel@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
    (
    -- * REST Resource
      PurchasesSubscriptionsCancelResource

    -- * Creating a Request
    , purchasesSubscriptionsCancel
    , PurchasesSubscriptionsCancel

    -- * Request Lenses
    , pscXgafv
    , pscUploadProtocol
    , pscPackageName
    , pscAccessToken
    , pscToken
    , pscUploadType
    , pscSubscriptionId
    , pscCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.cancel@ method which the
-- 'PurchasesSubscriptionsCancel' request conforms to.
type PurchasesSubscriptionsCancelResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     CaptureMode "token" "cancel" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ 'purchasesSubscriptionsCancel' smart constructor.
data PurchasesSubscriptionsCancel =
  PurchasesSubscriptionsCancel'
    { _pscXgafv :: !(Maybe Xgafv)
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscPackageName :: !Text
    , _pscAccessToken :: !(Maybe Text)
    , _pscToken :: !Text
    , _pscUploadType :: !(Maybe Text)
    , _pscSubscriptionId :: !Text
    , _pscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PurchasesSubscriptionsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscXgafv'
--
-- * 'pscUploadProtocol'
--
-- * 'pscPackageName'
--
-- * 'pscAccessToken'
--
-- * 'pscToken'
--
-- * 'pscUploadType'
--
-- * 'pscSubscriptionId'
--
-- * 'pscCallback'
purchasesSubscriptionsCancel
    :: Text -- ^ 'pscPackageName'
    -> Text -- ^ 'pscToken'
    -> Text -- ^ 'pscSubscriptionId'
    -> PurchasesSubscriptionsCancel
purchasesSubscriptionsCancel pPscPackageName_ pPscToken_ pPscSubscriptionId_ =
  PurchasesSubscriptionsCancel'
    { _pscXgafv = Nothing
    , _pscUploadProtocol = Nothing
    , _pscPackageName = pPscPackageName_
    , _pscAccessToken = Nothing
    , _pscToken = pPscToken_
    , _pscUploadType = Nothing
    , _pscSubscriptionId = pPscSubscriptionId_
    , _pscCallback = Nothing
    }


-- | V1 error format.
pscXgafv :: Lens' PurchasesSubscriptionsCancel (Maybe Xgafv)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' PurchasesSubscriptionsCancel (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pscPackageName :: Lens' PurchasesSubscriptionsCancel Text
pscPackageName
  = lens _pscPackageName
      (\ s a -> s{_pscPackageName = a})

-- | OAuth access token.
pscAccessToken :: Lens' PurchasesSubscriptionsCancel (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pscToken :: Lens' PurchasesSubscriptionsCancel Text
pscToken = lens _pscToken (\ s a -> s{_pscToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' PurchasesSubscriptionsCancel (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pscSubscriptionId :: Lens' PurchasesSubscriptionsCancel Text
pscSubscriptionId
  = lens _pscSubscriptionId
      (\ s a -> s{_pscSubscriptionId = a})

-- | JSONP
pscCallback :: Lens' PurchasesSubscriptionsCancel (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

instance GoogleRequest PurchasesSubscriptionsCancel
         where
        type Rs PurchasesSubscriptionsCancel = ()
        type Scopes PurchasesSubscriptionsCancel =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesSubscriptionsCancel'{..}
          = go _pscPackageName _pscSubscriptionId _pscToken
              _pscXgafv
              _pscUploadProtocol
              _pscAccessToken
              _pscUploadType
              _pscCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsCancelResource)
                      mempty
