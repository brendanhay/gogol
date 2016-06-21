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
-- Lists subscriptions of a reseller, optionally filtered by a customer
-- name prefix.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.list@.
module Network.Google.Resource.Reseller.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListResource

    -- * Creating a Request
    , subscriptionsList
    , SubscriptionsList

    -- * Request Lenses
    , slCustomerNamePrefix
    , slCustomerId
    , slCustomerAuthToken
    , slPageToken
    , slMaxResults
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.list@ method which the
-- 'SubscriptionsList' request conforms to.
type SubscriptionsListResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "subscriptions" :>
             QueryParam "customerNamePrefix" Text :>
               QueryParam "customerId" Text :>
                 QueryParam "customerAuthToken" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Subscriptions

-- | Lists subscriptions of a reseller, optionally filtered by a customer
-- name prefix.
--
-- /See:/ 'subscriptionsList' smart constructor.
data SubscriptionsList = SubscriptionsList'
    { _slCustomerNamePrefix :: !(Maybe Text)
    , _slCustomerId         :: !(Maybe Text)
    , _slCustomerAuthToken  :: !(Maybe Text)
    , _slPageToken          :: !(Maybe Text)
    , _slMaxResults         :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slCustomerNamePrefix'
--
-- * 'slCustomerId'
--
-- * 'slCustomerAuthToken'
--
-- * 'slPageToken'
--
-- * 'slMaxResults'
subscriptionsList
    :: SubscriptionsList
subscriptionsList =
    SubscriptionsList'
    { _slCustomerNamePrefix = Nothing
    , _slCustomerId = Nothing
    , _slCustomerAuthToken = Nothing
    , _slPageToken = Nothing
    , _slMaxResults = Nothing
    }

-- | Prefix of the customer\'s domain name by which the subscriptions should
-- be filtered. Optional
slCustomerNamePrefix :: Lens' SubscriptionsList (Maybe Text)
slCustomerNamePrefix
  = lens _slCustomerNamePrefix
      (\ s a -> s{_slCustomerNamePrefix = a})

-- | Id of the Customer
slCustomerId :: Lens' SubscriptionsList (Maybe Text)
slCustomerId
  = lens _slCustomerId (\ s a -> s{_slCustomerId = a})

-- | An auth token needed if the customer is not a resold customer of this
-- reseller. Can be generated at
-- https:\/\/www.google.com\/a\/cpanel\/customer-domain\/TransferToken.Optional.
slCustomerAuthToken :: Lens' SubscriptionsList (Maybe Text)
slCustomerAuthToken
  = lens _slCustomerAuthToken
      (\ s a -> s{_slCustomerAuthToken = a})

-- | Token to specify next page in the list
slPageToken :: Lens' SubscriptionsList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Maximum number of results to return
slMaxResults :: Lens' SubscriptionsList (Maybe Word32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Coerce

instance GoogleRequest SubscriptionsList where
        type Rs SubscriptionsList = Subscriptions
        type Scopes SubscriptionsList =
             '["https://www.googleapis.com/auth/apps.order",
               "https://www.googleapis.com/auth/apps.order.readonly"]
        requestClient SubscriptionsList'{..}
          = go _slCustomerNamePrefix _slCustomerId
              _slCustomerAuthToken
              _slPageToken
              _slMaxResults
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsListResource)
                      mempty
