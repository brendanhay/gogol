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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the renewal settings of a subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.changeRenewalSettings@.
module Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings
    (
    -- * REST Resource
      SubscriptionsChangeRenewalSettingsResource

    -- * Creating a Request
    , subscriptionsChangeRenewalSettings
    , SubscriptionsChangeRenewalSettings

    -- * Request Lenses
    , scrsPayload
    , scrsCustomerId
    , scrsSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.changeRenewalSettings@ method which the
-- 'SubscriptionsChangeRenewalSettings' request conforms to.
type SubscriptionsChangeRenewalSettingsResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changeRenewalSettings" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] RenewalSettings :>
                   Post '[JSON] Subscription

-- | Changes the renewal settings of a subscription
--
-- /See:/ 'subscriptionsChangeRenewalSettings' smart constructor.
data SubscriptionsChangeRenewalSettings = SubscriptionsChangeRenewalSettings
    { _scrsPayload        :: !RenewalSettings
    , _scrsCustomerId     :: !Text
    , _scrsSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangeRenewalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrsPayload'
--
-- * 'scrsCustomerId'
--
-- * 'scrsSubscriptionId'
subscriptionsChangeRenewalSettings
    :: RenewalSettings -- ^ 'scrsPayload'
    -> Text -- ^ 'scrsCustomerId'
    -> Text -- ^ 'scrsSubscriptionId'
    -> SubscriptionsChangeRenewalSettings
subscriptionsChangeRenewalSettings pScrsPayload_ pScrsCustomerId_ pScrsSubscriptionId_ =
    SubscriptionsChangeRenewalSettings
    { _scrsPayload = pScrsPayload_
    , _scrsCustomerId = pScrsCustomerId_
    , _scrsSubscriptionId = pScrsSubscriptionId_
    }

-- | Multipart request metadata.
scrsPayload :: Lens' SubscriptionsChangeRenewalSettings RenewalSettings
scrsPayload
  = lens _scrsPayload (\ s a -> s{_scrsPayload = a})

-- | Id of the Customer
scrsCustomerId :: Lens' SubscriptionsChangeRenewalSettings Text
scrsCustomerId
  = lens _scrsCustomerId
      (\ s a -> s{_scrsCustomerId = a})

-- | Id of the subscription, which is unique for a customer
scrsSubscriptionId :: Lens' SubscriptionsChangeRenewalSettings Text
scrsSubscriptionId
  = lens _scrsSubscriptionId
      (\ s a -> s{_scrsSubscriptionId = a})

instance GoogleRequest
         SubscriptionsChangeRenewalSettings where
        type Rs SubscriptionsChangeRenewalSettings =
             Subscription
        requestClient SubscriptionsChangeRenewalSettings{..}
          = go _scrsCustomerId _scrsSubscriptionId
              (Just AltJSON)
              _scrsPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy SubscriptionsChangeRenewalSettingsResource)
                      mempty
