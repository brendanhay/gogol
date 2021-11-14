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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Suspend
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Suspends an active subscription. You can use this method to suspend a
-- paid subscription that is currently in the \`ACTIVE\` state. * For
-- \`FLEXIBLE\` subscriptions, billing is paused. * For
-- \`ANNUAL_MONTHLY_PAY\` or \`ANNUAL_YEARLY_PAY\` subscriptions: *
-- Suspending the subscription does not change the renewal date that was
-- originally committed to. * A suspended subscription does not renew. If
-- you activate the subscription after the original renewal date, a new
-- annual subscription will be created, starting on the day of activation.
-- We strongly encourage you to suspend subscriptions only for short
-- periods of time as suspensions over 60 days may result in the
-- subscription being cancelled.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.suspend@.
module Network.Google.Resource.Reseller.Subscriptions.Suspend
    (
    -- * REST Resource
      SubscriptionsSuspendResource

    -- * Creating a Request
    , subscriptionsSuspend
    , SubscriptionsSuspend

    -- * Request Lenses
    , ssXgafv
    , ssUploadProtocol
    , ssAccessToken
    , ssUploadType
    , ssCustomerId
    , ssSubscriptionId
    , ssCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.suspend@ method which the
-- 'SubscriptionsSuspend' request conforms to.
type SubscriptionsSuspendResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "suspend" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] Subscription

-- | Suspends an active subscription. You can use this method to suspend a
-- paid subscription that is currently in the \`ACTIVE\` state. * For
-- \`FLEXIBLE\` subscriptions, billing is paused. * For
-- \`ANNUAL_MONTHLY_PAY\` or \`ANNUAL_YEARLY_PAY\` subscriptions: *
-- Suspending the subscription does not change the renewal date that was
-- originally committed to. * A suspended subscription does not renew. If
-- you activate the subscription after the original renewal date, a new
-- annual subscription will be created, starting on the day of activation.
-- We strongly encourage you to suspend subscriptions only for short
-- periods of time as suspensions over 60 days may result in the
-- subscription being cancelled.
--
-- /See:/ 'subscriptionsSuspend' smart constructor.
data SubscriptionsSuspend =
  SubscriptionsSuspend'
    { _ssXgafv :: !(Maybe Xgafv)
    , _ssUploadProtocol :: !(Maybe Text)
    , _ssAccessToken :: !(Maybe Text)
    , _ssUploadType :: !(Maybe Text)
    , _ssCustomerId :: !Text
    , _ssSubscriptionId :: !Text
    , _ssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsSuspend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssXgafv'
--
-- * 'ssUploadProtocol'
--
-- * 'ssAccessToken'
--
-- * 'ssUploadType'
--
-- * 'ssCustomerId'
--
-- * 'ssSubscriptionId'
--
-- * 'ssCallback'
subscriptionsSuspend
    :: Text -- ^ 'ssCustomerId'
    -> Text -- ^ 'ssSubscriptionId'
    -> SubscriptionsSuspend
subscriptionsSuspend pSsCustomerId_ pSsSubscriptionId_ =
  SubscriptionsSuspend'
    { _ssXgafv = Nothing
    , _ssUploadProtocol = Nothing
    , _ssAccessToken = Nothing
    , _ssUploadType = Nothing
    , _ssCustomerId = pSsCustomerId_
    , _ssSubscriptionId = pSsSubscriptionId_
    , _ssCallback = Nothing
    }


-- | V1 error format.
ssXgafv :: Lens' SubscriptionsSuspend (Maybe Xgafv)
ssXgafv = lens _ssXgafv (\ s a -> s{_ssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssUploadProtocol :: Lens' SubscriptionsSuspend (Maybe Text)
ssUploadProtocol
  = lens _ssUploadProtocol
      (\ s a -> s{_ssUploadProtocol = a})

-- | OAuth access token.
ssAccessToken :: Lens' SubscriptionsSuspend (Maybe Text)
ssAccessToken
  = lens _ssAccessToken
      (\ s a -> s{_ssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssUploadType :: Lens' SubscriptionsSuspend (Maybe Text)
ssUploadType
  = lens _ssUploadType (\ s a -> s{_ssUploadType = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
ssCustomerId :: Lens' SubscriptionsSuspend Text
ssCustomerId
  = lens _ssCustomerId (\ s a -> s{_ssCustomerId = a})

-- | This is a required property. The \`subscriptionId\` is the subscription
-- identifier and is unique for each customer. Since a \`subscriptionId\`
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the \`subscriptionId\` can be found
-- using the retrieve all reseller subscriptions method.
ssSubscriptionId :: Lens' SubscriptionsSuspend Text
ssSubscriptionId
  = lens _ssSubscriptionId
      (\ s a -> s{_ssSubscriptionId = a})

-- | JSONP
ssCallback :: Lens' SubscriptionsSuspend (Maybe Text)
ssCallback
  = lens _ssCallback (\ s a -> s{_ssCallback = a})

instance GoogleRequest SubscriptionsSuspend where
        type Rs SubscriptionsSuspend = Subscription
        type Scopes SubscriptionsSuspend =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsSuspend'{..}
          = go _ssCustomerId _ssSubscriptionId _ssXgafv
              _ssUploadProtocol
              _ssAccessToken
              _ssUploadType
              _ssCallback
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsSuspendResource)
                      mempty
