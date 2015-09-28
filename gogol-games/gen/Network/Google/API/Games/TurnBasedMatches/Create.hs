{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.TurnBasedMatches.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.create@.
module Network.Google.API.Games.TurnBasedMatches.Create
    (
    -- * REST Resource
      TurnBasedMatchesCreateAPI

    -- * Creating a Request
    , turnBasedMatchesCreate'
    , TurnBasedMatchesCreate'

    -- * Request Lenses
    , tbmcQuotaUser
    , tbmcPrettyPrint
    , tbmcUserIp
    , tbmcKey
    , tbmcLanguage
    , tbmcOauthToken
    , tbmcFields
    , tbmcAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.turnBasedMatches.create which the
-- 'TurnBasedMatchesCreate'' request conforms to.
type TurnBasedMatchesCreateAPI =
     "turnbasedmatches" :>
       "create" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] TurnBasedMatch

-- | Create a turn-based match.
--
-- /See:/ 'turnBasedMatchesCreate'' smart constructor.
data TurnBasedMatchesCreate' = TurnBasedMatchesCreate'
    { _tbmcQuotaUser   :: !(Maybe Text)
    , _tbmcPrettyPrint :: !Bool
    , _tbmcUserIp      :: !(Maybe Text)
    , _tbmcKey         :: !(Maybe Text)
    , _tbmcLanguage    :: !(Maybe Text)
    , _tbmcOauthToken  :: !(Maybe Text)
    , _tbmcFields      :: !(Maybe Text)
    , _tbmcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmcQuotaUser'
--
-- * 'tbmcPrettyPrint'
--
-- * 'tbmcUserIp'
--
-- * 'tbmcKey'
--
-- * 'tbmcLanguage'
--
-- * 'tbmcOauthToken'
--
-- * 'tbmcFields'
--
-- * 'tbmcAlt'
turnBasedMatchesCreate'
    :: TurnBasedMatchesCreate'
turnBasedMatchesCreate' =
    TurnBasedMatchesCreate'
    { _tbmcQuotaUser = Nothing
    , _tbmcPrettyPrint = True
    , _tbmcUserIp = Nothing
    , _tbmcKey = Nothing
    , _tbmcLanguage = Nothing
    , _tbmcOauthToken = Nothing
    , _tbmcFields = Nothing
    , _tbmcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmcQuotaUser :: Lens' TurnBasedMatchesCreate' (Maybe Text)
tbmcQuotaUser
  = lens _tbmcQuotaUser
      (\ s a -> s{_tbmcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmcPrettyPrint :: Lens' TurnBasedMatchesCreate' Bool
tbmcPrettyPrint
  = lens _tbmcPrettyPrint
      (\ s a -> s{_tbmcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmcUserIp :: Lens' TurnBasedMatchesCreate' (Maybe Text)
tbmcUserIp
  = lens _tbmcUserIp (\ s a -> s{_tbmcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmcKey :: Lens' TurnBasedMatchesCreate' (Maybe Text)
tbmcKey = lens _tbmcKey (\ s a -> s{_tbmcKey = a})

-- | The preferred language to use for strings returned by this method.
tbmcLanguage :: Lens' TurnBasedMatchesCreate' (Maybe Text)
tbmcLanguage
  = lens _tbmcLanguage (\ s a -> s{_tbmcLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmcOauthToken :: Lens' TurnBasedMatchesCreate' (Maybe Text)
tbmcOauthToken
  = lens _tbmcOauthToken
      (\ s a -> s{_tbmcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tbmcFields :: Lens' TurnBasedMatchesCreate' (Maybe Text)
tbmcFields
  = lens _tbmcFields (\ s a -> s{_tbmcFields = a})

-- | Data format for the response.
tbmcAlt :: Lens' TurnBasedMatchesCreate' Alt
tbmcAlt = lens _tbmcAlt (\ s a -> s{_tbmcAlt = a})

instance GoogleRequest TurnBasedMatchesCreate' where
        type Rs TurnBasedMatchesCreate' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesCreate'{..}
          = go _tbmcQuotaUser (Just _tbmcPrettyPrint)
              _tbmcUserIp
              _tbmcKey
              _tbmcLanguage
              _tbmcOauthToken
              _tbmcFields
              (Just _tbmcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesCreateAPI)
                      r
                      u
