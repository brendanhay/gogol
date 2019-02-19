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
-- Module      : Network.Google.Resource.Mirror.Subscriptions.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subscription in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.subscriptions.update@.
module Network.Google.Resource.Mirror.Subscriptions.Update
    (
    -- * REST Resource
      SubscriptionsUpdateResource

    -- * Creating a Request
    , subscriptionsUpdate
    , SubscriptionsUpdate

    -- * Request Lenses
    , suPayload
    , suId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.subscriptions.update@ method which the
-- 'SubscriptionsUpdate' request conforms to.
type SubscriptionsUpdateResource =
     "mirror" :>
       "v1" :>
         "subscriptions" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Subscription :>
                 Put '[JSON] Subscription

-- | Updates an existing subscription in place.
--
-- /See:/ 'subscriptionsUpdate' smart constructor.
data SubscriptionsUpdate =
  SubscriptionsUpdate'
    { _suPayload :: !Subscription
    , _suId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suPayload'
--
-- * 'suId'
subscriptionsUpdate
    :: Subscription -- ^ 'suPayload'
    -> Text -- ^ 'suId'
    -> SubscriptionsUpdate
subscriptionsUpdate pSuPayload_ pSuId_ =
  SubscriptionsUpdate' {_suPayload = pSuPayload_, _suId = pSuId_}


-- | Multipart request metadata.
suPayload :: Lens' SubscriptionsUpdate Subscription
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | The ID of the subscription.
suId :: Lens' SubscriptionsUpdate Text
suId = lens _suId (\ s a -> s{_suId = a})

instance GoogleRequest SubscriptionsUpdate where
        type Rs SubscriptionsUpdate = Subscription
        type Scopes SubscriptionsUpdate =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient SubscriptionsUpdate'{..}
          = go _suId (Just AltJSON) _suPayload mirrorService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsUpdateResource)
                      mempty
