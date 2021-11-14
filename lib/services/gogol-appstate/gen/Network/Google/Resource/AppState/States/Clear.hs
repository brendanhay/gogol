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
-- Module      : Network.Google.Resource.AppState.States.Clear
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears (sets to empty) the data for the passed key if and only if the
-- passed version matches the currently stored version. This method results
-- in a conflict error on version mismatch.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.clear@.
module Network.Google.Resource.AppState.States.Clear
    (
    -- * REST Resource
      StatesClearResource

    -- * Creating a Request
    , statesClear
    , StatesClear

    -- * Request Lenses
    , scStateKey
    , scCurrentDataVersion
    ) where

import Network.Google.AppState.Types
import Network.Google.Prelude

-- | A resource alias for @appstate.states.clear@ method which the
-- 'StatesClear' request conforms to.
type StatesClearResource =
     "appstate" :>
       "v1" :>
         "states" :>
           Capture "stateKey" (Textual Int32) :>
             "clear" :>
               QueryParam "currentDataVersion" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] WriteResult

-- | Clears (sets to empty) the data for the passed key if and only if the
-- passed version matches the currently stored version. This method results
-- in a conflict error on version mismatch.
--
-- /See:/ 'statesClear' smart constructor.
data StatesClear =
  StatesClear'
    { _scStateKey :: !(Textual Int32)
    , _scCurrentDataVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatesClear' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scStateKey'
--
-- * 'scCurrentDataVersion'
statesClear
    :: Int32 -- ^ 'scStateKey'
    -> StatesClear
statesClear pScStateKey_ =
  StatesClear'
    {_scStateKey = _Coerce # pScStateKey_, _scCurrentDataVersion = Nothing}


-- | The key for the data to be retrieved.
scStateKey :: Lens' StatesClear Int32
scStateKey
  = lens _scStateKey (\ s a -> s{_scStateKey = a}) .
      _Coerce

-- | The version of the data to be cleared. Version strings are returned by
-- the server.
scCurrentDataVersion :: Lens' StatesClear (Maybe Text)
scCurrentDataVersion
  = lens _scCurrentDataVersion
      (\ s a -> s{_scCurrentDataVersion = a})

instance GoogleRequest StatesClear where
        type Rs StatesClear = WriteResult
        type Scopes StatesClear =
             '["https://www.googleapis.com/auth/appstate"]
        requestClient StatesClear'{..}
          = go _scStateKey _scCurrentDataVersion (Just AltJSON)
              appStateService
          where go
                  = buildClient (Proxy :: Proxy StatesClearResource)
                      mempty
