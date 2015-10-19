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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.subscriptions.revoke@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke
    (
    -- * REST Resource
      PurchasesSubscriptionsRevokeResource

    -- * Creating a Request
    , purchasesSubscriptionsRevoke'
    , PurchasesSubscriptionsRevoke'

    -- * Request Lenses
    , psrPackageName
    , psrToken
    , psrSubscriptionId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.revoke@ method which the
-- 'PurchasesSubscriptionsRevoke'' request conforms to.
type PurchasesSubscriptionsRevokeResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               CaptureMode "token" "revoke" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ 'purchasesSubscriptionsRevoke'' smart constructor.
data PurchasesSubscriptionsRevoke' = PurchasesSubscriptionsRevoke'
    { _psrPackageName    :: !Text
    , _psrToken          :: !Text
    , _psrSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRevoke'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrPackageName'
--
-- * 'psrToken'
--
-- * 'psrSubscriptionId'
purchasesSubscriptionsRevoke'
    :: Text -- ^ 'psrPackageName'
    -> Text -- ^ 'psrToken'
    -> Text -- ^ 'psrSubscriptionId'
    -> PurchasesSubscriptionsRevoke'
purchasesSubscriptionsRevoke' pPsrPackageName_ pPsrToken_ pPsrSubscriptionId_ =
    PurchasesSubscriptionsRevoke'
    { _psrPackageName = pPsrPackageName_
    , _psrToken = pPsrToken_
    , _psrSubscriptionId = pPsrSubscriptionId_
    }

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psrPackageName :: Lens' PurchasesSubscriptionsRevoke' Text
psrPackageName
  = lens _psrPackageName
      (\ s a -> s{_psrPackageName = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psrToken :: Lens' PurchasesSubscriptionsRevoke' Text
psrToken = lens _psrToken (\ s a -> s{_psrToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psrSubscriptionId :: Lens' PurchasesSubscriptionsRevoke' Text
psrSubscriptionId
  = lens _psrSubscriptionId
      (\ s a -> s{_psrSubscriptionId = a})

instance GoogleRequest PurchasesSubscriptionsRevoke'
         where
        type Rs PurchasesSubscriptionsRevoke' = ()
        requestClient PurchasesSubscriptionsRevoke'{..}
          = go _psrPackageName _psrSubscriptionId _psrToken
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsRevokeResource)
                      mempty
