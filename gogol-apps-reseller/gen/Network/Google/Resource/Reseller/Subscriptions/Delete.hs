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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels\/Downgrades a subscription.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsDelete@.
module Network.Google.Resource.Reseller.Subscriptions.Delete
    (
    -- * REST Resource
      SubscriptionsDeleteResource

    -- * Creating a Request
    , subscriptionsDelete'
    , SubscriptionsDelete'

    -- * Request Lenses
    , sdCustomerId
    , sdDeletionType
    , sdSubscriptionId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsDelete@ method which the
-- 'SubscriptionsDelete'' request conforms to.
type SubscriptionsDeleteResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             QueryParam "deletionType"
               SubscriptionsDeleteDeletionType
               :> QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Cancels\/Downgrades a subscription.
--
-- /See:/ 'subscriptionsDelete'' smart constructor.
data SubscriptionsDelete' = SubscriptionsDelete'
    { _sdCustomerId     :: !Text
    , _sdDeletionType   :: !SubscriptionsDeleteDeletionType
    , _sdSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdCustomerId'
--
-- * 'sdDeletionType'
--
-- * 'sdSubscriptionId'
subscriptionsDelete'
    :: Text -- ^ 'customerId'
    -> SubscriptionsDeleteDeletionType -- ^ 'deletionType'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsDelete'
subscriptionsDelete' pSdCustomerId_ pSdDeletionType_ pSdSubscriptionId_ =
    SubscriptionsDelete'
    { _sdCustomerId = pSdCustomerId_
    , _sdDeletionType = pSdDeletionType_
    , _sdSubscriptionId = pSdSubscriptionId_
    }

-- | Id of the Customer
sdCustomerId :: Lens' SubscriptionsDelete' Text
sdCustomerId
  = lens _sdCustomerId (\ s a -> s{_sdCustomerId = a})

-- | Whether the subscription is to be fully cancelled or downgraded
sdDeletionType :: Lens' SubscriptionsDelete' SubscriptionsDeleteDeletionType
sdDeletionType
  = lens _sdDeletionType
      (\ s a -> s{_sdDeletionType = a})

-- | Id of the subscription, which is unique for a customer
sdSubscriptionId :: Lens' SubscriptionsDelete' Text
sdSubscriptionId
  = lens _sdSubscriptionId
      (\ s a -> s{_sdSubscriptionId = a})

instance GoogleRequest SubscriptionsDelete' where
        type Rs SubscriptionsDelete' = ()
        requestClient SubscriptionsDelete'{..}
          = go _sdCustomerId _sdSubscriptionId
              (Just _sdDeletionType)
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsDeleteResource)
                      mempty
