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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user license\'s renewal settings. This is applicable for
-- accounts with annual commitment plans only. For more information, see
-- the description in [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#update_renewal).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.changeRenewalSettings@.
module Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings
    (
    -- * REST Resource
      SubscriptionsChangeRenewalSettingsResource

    -- * Creating a Request
    , subscriptionsChangeRenewalSettings
    , SubscriptionsChangeRenewalSettings

    -- * Request Lenses
    , scrsXgafv
    , scrsUploadProtocol
    , scrsAccessToken
    , scrsUploadType
    , scrsPayload
    , scrsCustomerId
    , scrsSubscriptionId
    , scrsCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.changeRenewalSettings@ method which the
-- 'SubscriptionsChangeRenewalSettings' request conforms to.
type SubscriptionsChangeRenewalSettingsResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "changeRenewalSettings" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] RenewalSettings :>
                                   Post '[JSON] Subscription

-- | Updates a user license\'s renewal settings. This is applicable for
-- accounts with annual commitment plans only. For more information, see
-- the description in [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#update_renewal).
--
-- /See:/ 'subscriptionsChangeRenewalSettings' smart constructor.
data SubscriptionsChangeRenewalSettings =
  SubscriptionsChangeRenewalSettings'
    { _scrsXgafv :: !(Maybe Xgafv)
    , _scrsUploadProtocol :: !(Maybe Text)
    , _scrsAccessToken :: !(Maybe Text)
    , _scrsUploadType :: !(Maybe Text)
    , _scrsPayload :: !RenewalSettings
    , _scrsCustomerId :: !Text
    , _scrsSubscriptionId :: !Text
    , _scrsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsChangeRenewalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrsXgafv'
--
-- * 'scrsUploadProtocol'
--
-- * 'scrsAccessToken'
--
-- * 'scrsUploadType'
--
-- * 'scrsPayload'
--
-- * 'scrsCustomerId'
--
-- * 'scrsSubscriptionId'
--
-- * 'scrsCallback'
subscriptionsChangeRenewalSettings
    :: RenewalSettings -- ^ 'scrsPayload'
    -> Text -- ^ 'scrsCustomerId'
    -> Text -- ^ 'scrsSubscriptionId'
    -> SubscriptionsChangeRenewalSettings
subscriptionsChangeRenewalSettings pScrsPayload_ pScrsCustomerId_ pScrsSubscriptionId_ =
  SubscriptionsChangeRenewalSettings'
    { _scrsXgafv = Nothing
    , _scrsUploadProtocol = Nothing
    , _scrsAccessToken = Nothing
    , _scrsUploadType = Nothing
    , _scrsPayload = pScrsPayload_
    , _scrsCustomerId = pScrsCustomerId_
    , _scrsSubscriptionId = pScrsSubscriptionId_
    , _scrsCallback = Nothing
    }


-- | V1 error format.
scrsXgafv :: Lens' SubscriptionsChangeRenewalSettings (Maybe Xgafv)
scrsXgafv
  = lens _scrsXgafv (\ s a -> s{_scrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scrsUploadProtocol :: Lens' SubscriptionsChangeRenewalSettings (Maybe Text)
scrsUploadProtocol
  = lens _scrsUploadProtocol
      (\ s a -> s{_scrsUploadProtocol = a})

-- | OAuth access token.
scrsAccessToken :: Lens' SubscriptionsChangeRenewalSettings (Maybe Text)
scrsAccessToken
  = lens _scrsAccessToken
      (\ s a -> s{_scrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scrsUploadType :: Lens' SubscriptionsChangeRenewalSettings (Maybe Text)
scrsUploadType
  = lens _scrsUploadType
      (\ s a -> s{_scrsUploadType = a})

-- | Multipart request metadata.
scrsPayload :: Lens' SubscriptionsChangeRenewalSettings RenewalSettings
scrsPayload
  = lens _scrsPayload (\ s a -> s{_scrsPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
scrsCustomerId :: Lens' SubscriptionsChangeRenewalSettings Text
scrsCustomerId
  = lens _scrsCustomerId
      (\ s a -> s{_scrsCustomerId = a})

-- | This is a required property. The \`subscriptionId\` is the subscription
-- identifier and is unique for each customer. Since a \`subscriptionId\`
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the \`subscriptionId\` can be found
-- using the retrieve all reseller subscriptions method.
scrsSubscriptionId :: Lens' SubscriptionsChangeRenewalSettings Text
scrsSubscriptionId
  = lens _scrsSubscriptionId
      (\ s a -> s{_scrsSubscriptionId = a})

-- | JSONP
scrsCallback :: Lens' SubscriptionsChangeRenewalSettings (Maybe Text)
scrsCallback
  = lens _scrsCallback (\ s a -> s{_scrsCallback = a})

instance GoogleRequest
           SubscriptionsChangeRenewalSettings
         where
        type Rs SubscriptionsChangeRenewalSettings =
             Subscription
        type Scopes SubscriptionsChangeRenewalSettings =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsChangeRenewalSettings'{..}
          = go _scrsCustomerId _scrsSubscriptionId _scrsXgafv
              _scrsUploadProtocol
              _scrsAccessToken
              _scrsUploadType
              _scrsCallback
              (Just AltJSON)
              _scrsPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SubscriptionsChangeRenewalSettingsResource)
                      mempty
