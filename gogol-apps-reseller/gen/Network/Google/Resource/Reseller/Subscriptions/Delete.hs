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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel, suspend or transfer a subscription to direct.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.delete@.
module Network.Google.Resource.Reseller.Subscriptions.Delete
    (
    -- * REST Resource
      SubscriptionsDeleteResource

    -- * Creating a Request
    , subscriptionsDelete
    , SubscriptionsDelete

    -- * Request Lenses
    , sdCustomerId
    , sdDeletionType
    , sdSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.subscriptions.delete@ method which the
-- 'SubscriptionsDelete' request conforms to.
type SubscriptionsDeleteResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   QueryParam "deletionType"
                     SubscriptionsDeleteDeletionType
                     :> QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Cancel, suspend or transfer a subscription to direct.
--
-- /See:/ 'subscriptionsDelete' smart constructor.
data SubscriptionsDelete =
  SubscriptionsDelete'
    { _sdCustomerId     :: !Text
    , _sdDeletionType   :: !SubscriptionsDeleteDeletionType
    , _sdSubscriptionId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdCustomerId'
--
-- * 'sdDeletionType'
--
-- * 'sdSubscriptionId'
subscriptionsDelete
    :: Text -- ^ 'sdCustomerId'
    -> SubscriptionsDeleteDeletionType -- ^ 'sdDeletionType'
    -> Text -- ^ 'sdSubscriptionId'
    -> SubscriptionsDelete
subscriptionsDelete pSdCustomerId_ pSdDeletionType_ pSdSubscriptionId_ =
  SubscriptionsDelete'
    { _sdCustomerId = pSdCustomerId_
    , _sdDeletionType = pSdDeletionType_
    , _sdSubscriptionId = pSdSubscriptionId_
    }


-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- customerId as a key for persistent data. If the domain name for a
-- customerId is changed, the Google system automatically updates.
sdCustomerId :: Lens' SubscriptionsDelete Text
sdCustomerId
  = lens _sdCustomerId (\ s a -> s{_sdCustomerId = a})

-- | The deletionType query string enables the cancellation, downgrade, or
-- suspension of a subscription.
sdDeletionType :: Lens' SubscriptionsDelete SubscriptionsDeleteDeletionType
sdDeletionType
  = lens _sdDeletionType
      (\ s a -> s{_sdDeletionType = a})

-- | This is a required property. The subscriptionId is the subscription
-- identifier and is unique for each customer. Since a subscriptionId
-- changes when a subscription is updated, we recommend to not use this ID
-- as a key for persistent data. And the subscriptionId can be found using
-- the retrieve all reseller subscriptions method.
sdSubscriptionId :: Lens' SubscriptionsDelete Text
sdSubscriptionId
  = lens _sdSubscriptionId
      (\ s a -> s{_sdSubscriptionId = a})

instance GoogleRequest SubscriptionsDelete where
        type Rs SubscriptionsDelete = ()
        type Scopes SubscriptionsDelete =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient SubscriptionsDelete'{..}
          = go _sdCustomerId _sdSubscriptionId
              (Just _sdDeletionType)
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsDeleteResource)
                      mempty
