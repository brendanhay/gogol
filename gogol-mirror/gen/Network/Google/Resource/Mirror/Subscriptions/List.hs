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
-- Module      : Network.Google.Resource.Mirror.Subscriptions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of subscriptions for the authenticated user and
-- service.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.subscriptions.list@.
module Network.Google.Resource.Mirror.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListResource

    -- * Creating a Request
    , subscriptionsList
    , SubscriptionsList

    ) where

import Network.Google.Mirror.Types
import Network.Google.Prelude

-- | A resource alias for @mirror.subscriptions.list@ method which the
-- 'SubscriptionsList' request conforms to.
type SubscriptionsListResource =
     "mirror" :>
       "v1" :>
         "subscriptions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] SubscriptionsListResponse

-- | Retrieves a list of subscriptions for the authenticated user and
-- service.
--
-- /See:/ 'subscriptionsList' smart constructor.
data SubscriptionsList =
  SubscriptionsList'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsList' with the minimum fields required to make a request.
--
subscriptionsList
    :: SubscriptionsList
subscriptionsList = SubscriptionsList'


instance GoogleRequest SubscriptionsList where
        type Rs SubscriptionsList = SubscriptionsListResponse
        type Scopes SubscriptionsList =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient SubscriptionsList'{}
          = go (Just AltJSON) mirrorService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsListResource)
                      mempty
