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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Activate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates a subscription previously suspended by the reseller. If you
-- did not suspend the customer subscription and it is suspended for any
-- other reason, such as for abuse or a pending ToS acceptance, this call
-- will not reactivate the customer subscription.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.activate@.
module Network.Google.Resource.Reseller.Subscriptions.Activate
    (
    -- * REST Resource
      SubscriptionsActivateResource

    -- * Creating a Request
    , subscriptionsActivate
    , SubscriptionsActivate

    -- * Request Lenses
    , saXgafv
    , saUploadProtocol
    , saAccessToken
    , saUploadType
    , saCustomerId
    , saSubscriptionId
    , saCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.activate@ method which the
-- 'SubscriptionsActivate' request conforms to.
type SubscriptionsActivateResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "activate" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] Subscription

-- | Activates a subscription previously suspended by the reseller. If you
-- did not suspend the customer subscription and it is suspended for any
-- other reason, such as for abuse or a pending ToS acceptance, this call
-- will not reactivate the customer subscription.
--
-- /See:/ 'subscriptionsActivate' smart constructor.
data SubscriptionsActivate =
  SubscriptionsActivate'
    { _saXgafv :: !(Maybe Xgafv)
    , _saUploadProtocol :: !(Maybe Text)
    , _saAccessToken :: !(Maybe Text)
    , _saUploadType :: !(Maybe Text)
    , _saCustomerId :: !Text
    , _saSubscriptionId :: !Text
    , _saCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsActivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saXgafv'
--
-- * 'saUploadProtocol'
--
-- * 'saAccessToken'
--
-- * 'saUploadType'
--
-- * 'saCustomerId'
--
-- * 'saSubscriptionId'
--
-- * 'saCallback'
subscriptionsActivate
    :: Text -- ^ 'saCustomerId'
    -> Text -- ^ 'saSubscriptionId'
    -> SubscriptionsActivate
subscriptionsActivate pSaCustomerId_ pSaSubscriptionId_ =
  SubscriptionsActivate'
    { _saXgafv = Nothing
    , _saUploadProtocol = Nothing
    , _saAccessToken = Nothing
    , _saUploadType = Nothing
    , _saCustomerId = pSaCustomerId_
    , _saSubscriptionId = pSaSubscriptionId_
    , _saCallback = Nothing
    }


-- | V1 error format.
saXgafv :: Lens' SubscriptionsActivate (Maybe Xgafv)
saXgafv = lens _saXgafv (\ s a -> s{_saXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
saUploadProtocol :: Lens' SubscriptionsActivate (Maybe Text)
saUploadProtocol
  = lens _saUploadProtocol
      (\ s a -> s{_saUploadProtocol = a})

-- | OAuth access token.
saAccessToken :: Lens' SubscriptionsActivate (Maybe Text)
saAccessToken
  = lens _saAccessToken
      (\ s a -> s{_saAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
saUploadType :: Lens' SubscriptionsActivate (Maybe Text)
saUploadType
  = lens _saUploadType (\ s a -> s{_saUploadType = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
saCustomerId :: Lens' SubscriptionsActivate Text
saCustomerId
  = lens _saCustomerId (\ s a -> s{_saCustomerId = a})

-- | This is a required property. The \`subscriptionId\` is the subscription
-- identifier and is unique for each customer. Since a \`subscriptionId\`
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the \`subscriptionId\` can be found
-- using the retrieve all reseller subscriptions method.
saSubscriptionId :: Lens' SubscriptionsActivate Text
saSubscriptionId
  = lens _saSubscriptionId
      (\ s a -> s{_saSubscriptionId = a})

-- | JSONP
saCallback :: Lens' SubscriptionsActivate (Maybe Text)
saCallback
  = lens _saCallback (\ s a -> s{_saCallback = a})

instance GoogleRequest SubscriptionsActivate where
        type Rs SubscriptionsActivate = Subscription
        type Scopes SubscriptionsActivate =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsActivate'{..}
          = go _saCustomerId _saSubscriptionId _saXgafv
              _saUploadProtocol
              _saAccessToken
              _saUploadType
              _saCallback
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsActivateResource)
                      mempty
