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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists of subscriptions managed by the reseller. The list can be all
-- subscriptions, all of a customer\'s subscriptions, or all of a
-- customer\'s transferable subscriptions. Optionally, this method can
-- filter the response by a \`customerNamePrefix\`. For more information,
-- see [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.list@.
module Network.Google.Resource.Reseller.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListResource

    -- * Creating a Request
    , subscriptionsList
    , SubscriptionsList

    -- * Request Lenses
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slCustomerNamePrefix
    , slUploadType
    , slCustomerId
    , slCustomerAuthToken
    , slPageToken
    , slMaxResults
    , slCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.list@ method which the
-- 'SubscriptionsList' request conforms to.
type SubscriptionsListResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "subscriptions" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "customerNamePrefix" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "customerId" Text :>
                         QueryParam "customerAuthToken" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Subscriptions

-- | Lists of subscriptions managed by the reseller. The list can be all
-- subscriptions, all of a customer\'s subscriptions, or all of a
-- customer\'s transferable subscriptions. Optionally, this method can
-- filter the response by a \`customerNamePrefix\`. For more information,
-- see [manage
-- subscriptions](\/admin-sdk\/reseller\/v1\/how-tos\/manage_subscriptions).
--
-- /See:/ 'subscriptionsList' smart constructor.
data SubscriptionsList =
  SubscriptionsList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slCustomerNamePrefix :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slCustomerId :: !(Maybe Text)
    , _slCustomerAuthToken :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slMaxResults :: !(Maybe (Textual Word32))
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slCustomerNamePrefix'
--
-- * 'slUploadType'
--
-- * 'slCustomerId'
--
-- * 'slCustomerAuthToken'
--
-- * 'slPageToken'
--
-- * 'slMaxResults'
--
-- * 'slCallback'
subscriptionsList
    :: SubscriptionsList
subscriptionsList =
  SubscriptionsList'
    { _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slCustomerNamePrefix = Nothing
    , _slUploadType = Nothing
    , _slCustomerId = Nothing
    , _slCustomerAuthToken = Nothing
    , _slPageToken = Nothing
    , _slMaxResults = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' SubscriptionsList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' SubscriptionsList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' SubscriptionsList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | When retrieving all of your subscriptions and filtering for specific
-- customers, you can enter a prefix for a customer name. Using an example
-- customer group that includes \`exam.com\`, \`example20.com\` and
-- \`example.com\`: - \`exa\` -- Returns all customer names that start with
-- \'exa\' which could include \`exam.com\`, \`example20.com\`, and
-- \`example.com\`. A name prefix is similar to using a regular
-- expression\'s asterisk, exa*. - \`example\` -- Returns \`example20.com\`
-- and \`example.com\`.
slCustomerNamePrefix :: Lens' SubscriptionsList (Maybe Text)
slCustomerNamePrefix
  = lens _slCustomerNamePrefix
      (\ s a -> s{_slCustomerNamePrefix = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' SubscriptionsList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
slCustomerId :: Lens' SubscriptionsList (Maybe Text)
slCustomerId
  = lens _slCustomerId (\ s a -> s{_slCustomerId = a})

-- | The \`customerAuthToken\` query string is required when creating a
-- resold account that transfers a direct customer\'s subscription or
-- transfers another reseller customer\'s subscription to your reseller
-- management. This is a hexadecimal authentication token needed to
-- complete the subscription transfer. For more information, see the
-- administrator help center.
slCustomerAuthToken :: Lens' SubscriptionsList (Maybe Text)
slCustomerAuthToken
  = lens _slCustomerAuthToken
      (\ s a -> s{_slCustomerAuthToken = a})

-- | Token to specify next page in the list
slPageToken :: Lens' SubscriptionsList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | When retrieving a large list, the \`maxResults\` is the maximum number
-- of results per page. The \`nextPageToken\` value takes you to the next
-- page. The default is 20.
slMaxResults :: Lens' SubscriptionsList (Maybe Word32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Coerce

-- | JSONP
slCallback :: Lens' SubscriptionsList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest SubscriptionsList where
        type Rs SubscriptionsList = Subscriptions
        type Scopes SubscriptionsList =
             '["https://www.googleapis.com/auth/apps.order",
               "https://www.googleapis.com/auth/apps.order.readonly"]
        requestClient SubscriptionsList'{..}
          = go _slXgafv _slUploadProtocol _slAccessToken
              _slCustomerNamePrefix
              _slUploadType
              _slCustomerId
              _slCustomerAuthToken
              _slPageToken
              _slMaxResults
              _slCallback
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsListResource)
                      mempty
