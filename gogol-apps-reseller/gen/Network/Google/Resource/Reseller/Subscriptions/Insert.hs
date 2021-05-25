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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or transfer a subscription. Create a subscription for a
-- customer\'s account that you ordered using the [Order a new customer
-- account](\/admin-sdk\/reseller\/v1\/reference\/customers\/insert.html)
-- method. For more information about creating a subscription for different
-- payment plans, see [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#create_subscription).\\
-- If you did not order the customer\'s account using the customer insert
-- method, use the customer\'s \`customerAuthToken\` when creating a
-- subscription for that customer. If transferring a G Suite subscription
-- with an associated Google Drive or Google Vault subscription, use the
-- [batch operation](\/admin-sdk\/reseller\/v1\/how-tos\/batch.html) to
-- transfer all of these subscriptions. For more information, see how to
-- [transfer
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#transfer_a_subscription).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.insert@.
module Network.Google.Resource.Reseller.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertResource

    -- * Creating a Request
    , subscriptionsInsert
    , SubscriptionsInsert

    -- * Request Lenses
    , siXgafv
    , siUploadProtocol
    , siAccessToken
    , siUploadType
    , siPayload
    , siCustomerId
    , siCustomerAuthToken
    , siCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.insert@ method which the
-- 'SubscriptionsInsert' request conforms to.
type SubscriptionsInsertResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "customerAuthToken" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Subscription :>
                                 Post '[JSON] Subscription

-- | Creates or transfer a subscription. Create a subscription for a
-- customer\'s account that you ordered using the [Order a new customer
-- account](\/admin-sdk\/reseller\/v1\/reference\/customers\/insert.html)
-- method. For more information about creating a subscription for different
-- payment plans, see [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#create_subscription).\\
-- If you did not order the customer\'s account using the customer insert
-- method, use the customer\'s \`customerAuthToken\` when creating a
-- subscription for that customer. If transferring a G Suite subscription
-- with an associated Google Drive or Google Vault subscription, use the
-- [batch operation](\/admin-sdk\/reseller\/v1\/how-tos\/batch.html) to
-- transfer all of these subscriptions. For more information, see how to
-- [transfer
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions#transfer_a_subscription).
--
-- /See:/ 'subscriptionsInsert' smart constructor.
data SubscriptionsInsert =
  SubscriptionsInsert'
    { _siXgafv :: !(Maybe Xgafv)
    , _siUploadProtocol :: !(Maybe Text)
    , _siAccessToken :: !(Maybe Text)
    , _siUploadType :: !(Maybe Text)
    , _siPayload :: !Subscription
    , _siCustomerId :: !Text
    , _siCustomerAuthToken :: !(Maybe Text)
    , _siCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siXgafv'
--
-- * 'siUploadProtocol'
--
-- * 'siAccessToken'
--
-- * 'siUploadType'
--
-- * 'siPayload'
--
-- * 'siCustomerId'
--
-- * 'siCustomerAuthToken'
--
-- * 'siCallback'
subscriptionsInsert
    :: Subscription -- ^ 'siPayload'
    -> Text -- ^ 'siCustomerId'
    -> SubscriptionsInsert
subscriptionsInsert pSiPayload_ pSiCustomerId_ =
  SubscriptionsInsert'
    { _siXgafv = Nothing
    , _siUploadProtocol = Nothing
    , _siAccessToken = Nothing
    , _siUploadType = Nothing
    , _siPayload = pSiPayload_
    , _siCustomerId = pSiCustomerId_
    , _siCustomerAuthToken = Nothing
    , _siCallback = Nothing
    }


-- | V1 error format.
siXgafv :: Lens' SubscriptionsInsert (Maybe Xgafv)
siXgafv = lens _siXgafv (\ s a -> s{_siXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
siUploadProtocol :: Lens' SubscriptionsInsert (Maybe Text)
siUploadProtocol
  = lens _siUploadProtocol
      (\ s a -> s{_siUploadProtocol = a})

-- | OAuth access token.
siAccessToken :: Lens' SubscriptionsInsert (Maybe Text)
siAccessToken
  = lens _siAccessToken
      (\ s a -> s{_siAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
siUploadType :: Lens' SubscriptionsInsert (Maybe Text)
siUploadType
  = lens _siUploadType (\ s a -> s{_siUploadType = a})

-- | Multipart request metadata.
siPayload :: Lens' SubscriptionsInsert Subscription
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
siCustomerId :: Lens' SubscriptionsInsert Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | The \`customerAuthToken\` query string is required when creating a
-- resold account that transfers a direct customer\'s subscription or
-- transfers another reseller customer\'s subscription to your reseller
-- management. This is a hexadecimal authentication token needed to
-- complete the subscription transfer. For more information, see the
-- administrator help center.
siCustomerAuthToken :: Lens' SubscriptionsInsert (Maybe Text)
siCustomerAuthToken
  = lens _siCustomerAuthToken
      (\ s a -> s{_siCustomerAuthToken = a})

-- | JSONP
siCallback :: Lens' SubscriptionsInsert (Maybe Text)
siCallback
  = lens _siCallback (\ s a -> s{_siCallback = a})

instance GoogleRequest SubscriptionsInsert where
        type Rs SubscriptionsInsert = Subscription
        type Scopes SubscriptionsInsert =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsInsert'{..}
          = go _siCustomerId _siXgafv _siUploadProtocol
              _siAccessToken
              _siUploadType
              _siCustomerAuthToken
              _siCallback
              (Just AltJSON)
              _siPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsInsertResource)
                      mempty
