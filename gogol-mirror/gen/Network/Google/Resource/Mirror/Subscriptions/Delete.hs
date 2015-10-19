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
-- Module      : Network.Google.Resource.Mirror.Subscriptions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a subscription.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorSubscriptionsDelete@.
module Network.Google.Resource.Mirror.Subscriptions.Delete
    (
    -- * REST Resource
      SubscriptionsDeleteResource

    -- * Creating a Request
    , subscriptionsDelete'
    , SubscriptionsDelete'

    -- * Request Lenses
    , sdId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorSubscriptionsDelete@ method which the
-- 'SubscriptionsDelete'' request conforms to.
type SubscriptionsDeleteResource =
     "subscriptions" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a subscription.
--
-- /See:/ 'subscriptionsDelete'' smart constructor.
newtype SubscriptionsDelete' = SubscriptionsDelete'
    { _sdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdId'
subscriptionsDelete'
    :: Text -- ^ 'id'
    -> SubscriptionsDelete'
subscriptionsDelete' pSdId_ =
    SubscriptionsDelete'
    { _sdId = pSdId_
    }

-- | The ID of the subscription.
sdId :: Lens' SubscriptionsDelete' Text
sdId = lens _sdId (\ s a -> s{_sdId = a})

instance GoogleRequest SubscriptionsDelete' where
        type Rs SubscriptionsDelete' = ()
        requestClient SubscriptionsDelete'{..}
          = go _sdId (Just AltJSON) mirrorService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsDeleteResource)
                      mempty
