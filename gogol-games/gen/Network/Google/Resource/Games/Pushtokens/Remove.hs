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
-- Module      : Network.Google.Resource.Games.Pushtokens.Remove
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a push token for the current user and application. Removing a
-- non-existent push token will report success.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.pushtokens.remove@.
module Network.Google.Resource.Games.Pushtokens.Remove
    (
    -- * REST Resource
      PushtokensRemoveResource

    -- * Creating a Request
    , pushtokensRemove
    , PushtokensRemove

    -- * Request Lenses
    , prPayload
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.pushtokens.remove@ method which the
-- 'PushtokensRemove' request conforms to.
type PushtokensRemoveResource =
     "games" :>
       "v1" :>
         "pushtokens" :>
           "remove" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] PushTokenId :> Post '[JSON] ()

-- | Removes a push token for the current user and application. Removing a
-- non-existent push token will report success.
--
-- /See:/ 'pushtokensRemove' smart constructor.
newtype PushtokensRemove = PushtokensRemove
    { _prPayload :: PushTokenId
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushtokensRemove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prPayload'
pushtokensRemove
    :: PushTokenId -- ^ 'prPayload'
    -> PushtokensRemove
pushtokensRemove pPrPayload_ =
    PushtokensRemove
    { _prPayload = pPrPayload_
    }

-- | Multipart request metadata.
prPayload :: Lens' PushtokensRemove PushTokenId
prPayload
  = lens _prPayload (\ s a -> s{_prPayload = a})

instance GoogleRequest PushtokensRemove where
        type Rs PushtokensRemove = ()
        requestClient PushtokensRemove{..}
          = go (Just AltJSON) _prPayload gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy PushtokensRemoveResource)
                      mempty
