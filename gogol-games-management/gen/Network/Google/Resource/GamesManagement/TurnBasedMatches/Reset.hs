{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.TurnBasedMatches.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reset all turn-based match data for a user. This method is only
-- accessible to whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementTurnBasedMatchesReset@.
module Network.Google.Resource.GamesManagement.TurnBasedMatches.Reset
    (
    -- * REST Resource
      TurnBasedMatchesResetResource

    -- * Creating a Request
    , turnBasedMatchesReset'
    , TurnBasedMatchesReset'

    -- * Request Lenses
    , tbmrQuotaUser
    , tbmrPrettyPrint
    , tbmrUserIP
    , tbmrKey
    , tbmrOAuthToken
    , tbmrFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementTurnBasedMatchesReset@ which the
-- 'TurnBasedMatchesReset'' request conforms to.
type TurnBasedMatchesResetResource =
     "turnbasedmatches" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Reset all turn-based match data for a user. This method is only
-- accessible to whitelisted tester accounts for your application.
--
-- /See:/ 'turnBasedMatchesReset'' smart constructor.
data TurnBasedMatchesReset' = TurnBasedMatchesReset'
    { _tbmrQuotaUser   :: !(Maybe Text)
    , _tbmrPrettyPrint :: !Bool
    , _tbmrUserIP      :: !(Maybe Text)
    , _tbmrKey         :: !(Maybe Key)
    , _tbmrOAuthToken  :: !(Maybe OAuthToken)
    , _tbmrFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmrQuotaUser'
--
-- * 'tbmrPrettyPrint'
--
-- * 'tbmrUserIP'
--
-- * 'tbmrKey'
--
-- * 'tbmrOAuthToken'
--
-- * 'tbmrFields'
turnBasedMatchesReset'
    :: TurnBasedMatchesReset'
turnBasedMatchesReset' =
    TurnBasedMatchesReset'
    { _tbmrQuotaUser = Nothing
    , _tbmrPrettyPrint = True
    , _tbmrUserIP = Nothing
    , _tbmrKey = Nothing
    , _tbmrOAuthToken = Nothing
    , _tbmrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmrQuotaUser :: Lens' TurnBasedMatchesReset' (Maybe Text)
tbmrQuotaUser
  = lens _tbmrQuotaUser
      (\ s a -> s{_tbmrQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmrPrettyPrint :: Lens' TurnBasedMatchesReset' Bool
tbmrPrettyPrint
  = lens _tbmrPrettyPrint
      (\ s a -> s{_tbmrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmrUserIP :: Lens' TurnBasedMatchesReset' (Maybe Text)
tbmrUserIP
  = lens _tbmrUserIP (\ s a -> s{_tbmrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmrKey :: Lens' TurnBasedMatchesReset' (Maybe Key)
tbmrKey = lens _tbmrKey (\ s a -> s{_tbmrKey = a})

-- | OAuth 2.0 token for the current user.
tbmrOAuthToken :: Lens' TurnBasedMatchesReset' (Maybe OAuthToken)
tbmrOAuthToken
  = lens _tbmrOAuthToken
      (\ s a -> s{_tbmrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tbmrFields :: Lens' TurnBasedMatchesReset' (Maybe Text)
tbmrFields
  = lens _tbmrFields (\ s a -> s{_tbmrFields = a})

instance GoogleAuth TurnBasedMatchesReset' where
        authKey = tbmrKey . _Just
        authToken = tbmrOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesReset' where
        type Rs TurnBasedMatchesReset' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u TurnBasedMatchesReset'{..}
          = go _tbmrQuotaUser (Just _tbmrPrettyPrint)
              _tbmrUserIP
              _tbmrKey
              _tbmrOAuthToken
              _tbmrFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesResetResource)
                      r
                      u
