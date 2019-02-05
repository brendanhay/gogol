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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.create@.
module Network.Google.Resource.Games.TurnBasedMatches.Create
    (
    -- * REST Resource
      TurnBasedMatchesCreateResource

    -- * Creating a Request
    , turnBasedMatchesCreate
    , TurnBasedMatchesCreate

    -- * Request Lenses
    , tbmcPayload
    , tbmcLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.turnBasedMatches.create@ method which the
-- 'TurnBasedMatchesCreate' request conforms to.
type TurnBasedMatchesCreateResource =
     "games" :>
       "v1" :>
         "turnbasedmatches" :>
           "create" :>
             QueryParam "language" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] TurnBasedMatchCreateRequest :>
                   Post '[JSON] TurnBasedMatch

-- | Create a turn-based match.
--
-- /See:/ 'turnBasedMatchesCreate' smart constructor.
data TurnBasedMatchesCreate = TurnBasedMatchesCreate'
    { _tbmcPayload  :: !TurnBasedMatchCreateRequest
    , _tbmcLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmcPayload'
--
-- * 'tbmcLanguage'
turnBasedMatchesCreate
    :: TurnBasedMatchCreateRequest -- ^ 'tbmcPayload'
    -> TurnBasedMatchesCreate
turnBasedMatchesCreate pTbmcPayload_ =
    TurnBasedMatchesCreate'
    { _tbmcPayload = pTbmcPayload_
    , _tbmcLanguage = Nothing
    }

-- | Multipart request metadata.
tbmcPayload :: Lens' TurnBasedMatchesCreate TurnBasedMatchCreateRequest
tbmcPayload
  = lens _tbmcPayload (\ s a -> s{_tbmcPayload = a})

-- | The preferred language to use for strings returned by this method.
tbmcLanguage :: Lens' TurnBasedMatchesCreate (Maybe Text)
tbmcLanguage
  = lens _tbmcLanguage (\ s a -> s{_tbmcLanguage = a})

instance GoogleRequest TurnBasedMatchesCreate where
        type Rs TurnBasedMatchesCreate = TurnBasedMatch
        type Scopes TurnBasedMatchesCreate =
             '["https://www.googleapis.com/auth/games"]
        requestClient TurnBasedMatchesCreate'{..}
          = go _tbmcLanguage (Just AltJSON) _tbmcPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy TurnBasedMatchesCreateResource)
                      mempty
