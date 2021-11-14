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
-- Module      : Network.Google.Resource.AppState.States.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the data corresponding to the passed key. If the key does not
-- exist on the server, an HTTP 404 will be returned.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.get@.
module Network.Google.Resource.AppState.States.Get
    (
    -- * REST Resource
      StatesGetResource

    -- * Creating a Request
    , statesGet
    , StatesGet

    -- * Request Lenses
    , sgStateKey
    ) where

import Network.Google.AppState.Types
import Network.Google.Prelude

-- | A resource alias for @appstate.states.get@ method which the
-- 'StatesGet' request conforms to.
type StatesGetResource =
     "appstate" :>
       "v1" :>
         "states" :>
           Capture "stateKey" (Textual Int32) :>
             QueryParam "alt" AltJSON :> Get '[JSON] GetResponse

-- | Retrieves the data corresponding to the passed key. If the key does not
-- exist on the server, an HTTP 404 will be returned.
--
-- /See:/ 'statesGet' smart constructor.
newtype StatesGet =
  StatesGet'
    { _sgStateKey :: Textual Int32
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgStateKey'
statesGet
    :: Int32 -- ^ 'sgStateKey'
    -> StatesGet
statesGet pSgStateKey_ = StatesGet' {_sgStateKey = _Coerce # pSgStateKey_}


-- | The key for the data to be retrieved.
sgStateKey :: Lens' StatesGet Int32
sgStateKey
  = lens _sgStateKey (\ s a -> s{_sgStateKey = a}) .
      _Coerce

instance GoogleRequest StatesGet where
        type Rs StatesGet = GetResponse
        type Scopes StatesGet =
             '["https://www.googleapis.com/auth/appstate"]
        requestClient StatesGet'{..}
          = go _sgStateKey (Just AltJSON) appStateService
          where go
                  = buildClient (Proxy :: Proxy StatesGetResource)
                      mempty
