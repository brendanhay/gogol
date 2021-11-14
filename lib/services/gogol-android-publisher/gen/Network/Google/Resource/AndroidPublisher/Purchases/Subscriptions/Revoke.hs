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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.revoke@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke
    (
    -- * REST Resource
      PurchasesSubscriptionsRevokeResource

    -- * Creating a Request
    , purchasesSubscriptionsRevoke
    , PurchasesSubscriptionsRevoke

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pPackageName
    , pAccessToken
    , pToken
    , pUploadType
    , pSubscriptionId
    , pCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.revoke@ method which the
-- 'PurchasesSubscriptionsRevoke' request conforms to.
type PurchasesSubscriptionsRevokeResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     CaptureMode "token" "revoke" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ 'purchasesSubscriptionsRevoke' smart constructor.
data PurchasesSubscriptionsRevoke =
  PurchasesSubscriptionsRevoke'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pPackageName :: !Text
    , _pAccessToken :: !(Maybe Text)
    , _pToken :: !Text
    , _pUploadType :: !(Maybe Text)
    , _pSubscriptionId :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PurchasesSubscriptionsRevoke' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pPackageName'
--
-- * 'pAccessToken'
--
-- * 'pToken'
--
-- * 'pUploadType'
--
-- * 'pSubscriptionId'
--
-- * 'pCallback'
purchasesSubscriptionsRevoke
    :: Text -- ^ 'pPackageName'
    -> Text -- ^ 'pToken'
    -> Text -- ^ 'pSubscriptionId'
    -> PurchasesSubscriptionsRevoke
purchasesSubscriptionsRevoke pPPackageName_ pPToken_ pPSubscriptionId_ =
  PurchasesSubscriptionsRevoke'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pPackageName = pPPackageName_
    , _pAccessToken = Nothing
    , _pToken = pPToken_
    , _pUploadType = Nothing
    , _pSubscriptionId = pPSubscriptionId_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' PurchasesSubscriptionsRevoke (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' PurchasesSubscriptionsRevoke (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pPackageName :: Lens' PurchasesSubscriptionsRevoke Text
pPackageName
  = lens _pPackageName (\ s a -> s{_pPackageName = a})

-- | OAuth access token.
pAccessToken :: Lens' PurchasesSubscriptionsRevoke (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pToken :: Lens' PurchasesSubscriptionsRevoke Text
pToken = lens _pToken (\ s a -> s{_pToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' PurchasesSubscriptionsRevoke (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pSubscriptionId :: Lens' PurchasesSubscriptionsRevoke Text
pSubscriptionId
  = lens _pSubscriptionId
      (\ s a -> s{_pSubscriptionId = a})

-- | JSONP
pCallback :: Lens' PurchasesSubscriptionsRevoke (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest PurchasesSubscriptionsRevoke
         where
        type Rs PurchasesSubscriptionsRevoke = ()
        type Scopes PurchasesSubscriptionsRevoke =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesSubscriptionsRevoke'{..}
          = go _pPackageName _pSubscriptionId _pToken _pXgafv
              _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsRevokeResource)
                      mempty
