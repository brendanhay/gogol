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
-- Module      : Network.Google.Resource.AppState.States.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the data associated with the input key if and only if the passed
-- version matches the currently stored version. This method is safe in the
-- face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.update@.
module Network.Google.Resource.AppState.States.Update
    (
    -- * REST Resource
      StatesUpdateResource

    -- * Creating a Request
    , statesUpdate
    , StatesUpdate

    -- * Request Lenses
    , suCurrentStateVersion
    , suStateKey
    , suPayload
    ) where

import Network.Google.AppState.Types
import Network.Google.Prelude

-- | A resource alias for @appstate.states.update@ method which the
-- 'StatesUpdate' request conforms to.
type StatesUpdateResource =
     "appstate" :>
       "v1" :>
         "states" :>
           Capture "stateKey" (Textual Int32) :>
             QueryParam "currentStateVersion" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] UpdateRequest :>
                   Put '[JSON] WriteResult

-- | Update the data associated with the input key if and only if the passed
-- version matches the currently stored version. This method is safe in the
-- face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ 'statesUpdate' smart constructor.
data StatesUpdate =
  StatesUpdate'
    { _suCurrentStateVersion :: !(Maybe Text)
    , _suStateKey :: !(Textual Int32)
    , _suPayload :: !UpdateRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suCurrentStateVersion'
--
-- * 'suStateKey'
--
-- * 'suPayload'
statesUpdate
    :: Int32 -- ^ 'suStateKey'
    -> UpdateRequest -- ^ 'suPayload'
    -> StatesUpdate
statesUpdate pSuStateKey_ pSuPayload_ =
  StatesUpdate'
    { _suCurrentStateVersion = Nothing
    , _suStateKey = _Coerce # pSuStateKey_
    , _suPayload = pSuPayload_
    }


-- | The version of the app state your application is attempting to update.
-- If this does not match the current version, this method will return a
-- conflict error. If there is no data stored on the server for this key,
-- the update will succeed irrespective of the value of this parameter.
suCurrentStateVersion :: Lens' StatesUpdate (Maybe Text)
suCurrentStateVersion
  = lens _suCurrentStateVersion
      (\ s a -> s{_suCurrentStateVersion = a})

-- | The key for the data to be retrieved.
suStateKey :: Lens' StatesUpdate Int32
suStateKey
  = lens _suStateKey (\ s a -> s{_suStateKey = a}) .
      _Coerce

-- | Multipart request metadata.
suPayload :: Lens' StatesUpdate UpdateRequest
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

instance GoogleRequest StatesUpdate where
        type Rs StatesUpdate = WriteResult
        type Scopes StatesUpdate =
             '["https://www.googleapis.com/auth/appstate"]
        requestClient StatesUpdate'{..}
          = go _suStateKey _suCurrentStateVersion
              (Just AltJSON)
              _suPayload
              appStateService
          where go
                  = buildClient (Proxy :: Proxy StatesUpdateResource)
                      mempty
