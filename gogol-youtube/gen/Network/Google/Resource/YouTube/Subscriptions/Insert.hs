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
-- Module      : Network.Google.Resource.YouTube.Subscriptions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a subscription for the authenticated user\'s channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.subscriptions.insert@.
module Network.Google.Resource.YouTube.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertResource

    -- * Creating a Request
    , subscriptionsInsert
    , SubscriptionsInsert

    -- * Request Lenses
    , siPart
    , siPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.subscriptions.insert@ method which the
-- 'SubscriptionsInsert' request conforms to.
type SubscriptionsInsertResource =
     "subscriptions" :>
       QueryParam "part" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Subscription :>
             Post '[JSON] Subscription

-- | Adds a subscription for the authenticated user\'s channel.
--
-- /See:/ 'subscriptionsInsert' smart constructor.
data SubscriptionsInsert = SubscriptionsInsert
    { _siPart    :: !Text
    , _siPayload :: !Subscription
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siPart'
--
-- * 'siPayload'
subscriptionsInsert
    :: Text -- ^ 'siPart'
    -> Subscription -- ^ 'siPayload'
    -> SubscriptionsInsert
subscriptionsInsert pSiPart_ pSiPayload_ =
    SubscriptionsInsert
    { _siPart = pSiPart_
    , _siPayload = pSiPayload_
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
siPart :: Lens' SubscriptionsInsert Text
siPart = lens _siPart (\ s a -> s{_siPart = a})

-- | Multipart request metadata.
siPayload :: Lens' SubscriptionsInsert Subscription
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

instance GoogleRequest SubscriptionsInsert where
        type Rs SubscriptionsInsert = Subscription
        requestClient SubscriptionsInsert{..}
          = go (Just _siPart) (Just AltJSON) _siPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsInsertResource)
                      mempty
