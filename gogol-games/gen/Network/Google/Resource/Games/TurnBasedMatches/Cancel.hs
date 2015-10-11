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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancel a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesCancel@.
module Network.Google.Resource.Games.TurnBasedMatches.Cancel
    (
    -- * REST Resource
      TurnBasedMatchesCancelResource

    -- * Creating a Request
    , turnBasedMatchesCancel'
    , TurnBasedMatchesCancel'

    -- * Request Lenses
    , tbmcQuotaUser
    , tbmcPrettyPrint
    , tbmcUserIP
    , tbmcKey
    , tbmcOAuthToken
    , tbmcMatchId
    , tbmcFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesCancel@ method which the
-- 'TurnBasedMatchesCancel'' request conforms to.
type TurnBasedMatchesCancelResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "cancel" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Cancel a turn-based match.
--
-- /See:/ 'turnBasedMatchesCancel'' smart constructor.
data TurnBasedMatchesCancel' = TurnBasedMatchesCancel'
    { _tbmcQuotaUser   :: !(Maybe Text)
    , _tbmcPrettyPrint :: !Bool
    , _tbmcUserIP      :: !(Maybe Text)
    , _tbmcKey         :: !(Maybe AuthKey)
    , _tbmcOAuthToken  :: !(Maybe OAuthToken)
    , _tbmcMatchId     :: !Text
    , _tbmcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmcQuotaUser'
--
-- * 'tbmcPrettyPrint'
--
-- * 'tbmcUserIP'
--
-- * 'tbmcKey'
--
-- * 'tbmcOAuthToken'
--
-- * 'tbmcMatchId'
--
-- * 'tbmcFields'
turnBasedMatchesCancel'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesCancel'
turnBasedMatchesCancel' pTbmcMatchId_ =
    TurnBasedMatchesCancel'
    { _tbmcQuotaUser = Nothing
    , _tbmcPrettyPrint = True
    , _tbmcUserIP = Nothing
    , _tbmcKey = Nothing
    , _tbmcOAuthToken = Nothing
    , _tbmcMatchId = pTbmcMatchId_
    , _tbmcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmcQuotaUser :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcQuotaUser
  = lens _tbmcQuotaUser
      (\ s a -> s{_tbmcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmcPrettyPrint :: Lens' TurnBasedMatchesCancel' Bool
tbmcPrettyPrint
  = lens _tbmcPrettyPrint
      (\ s a -> s{_tbmcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmcUserIP :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcUserIP
  = lens _tbmcUserIP (\ s a -> s{_tbmcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmcKey :: Lens' TurnBasedMatchesCancel' (Maybe AuthKey)
tbmcKey = lens _tbmcKey (\ s a -> s{_tbmcKey = a})

-- | OAuth 2.0 token for the current user.
tbmcOAuthToken :: Lens' TurnBasedMatchesCancel' (Maybe OAuthToken)
tbmcOAuthToken
  = lens _tbmcOAuthToken
      (\ s a -> s{_tbmcOAuthToken = a})

-- | The ID of the match.
tbmcMatchId :: Lens' TurnBasedMatchesCancel' Text
tbmcMatchId
  = lens _tbmcMatchId (\ s a -> s{_tbmcMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmcFields :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcFields
  = lens _tbmcFields (\ s a -> s{_tbmcFields = a})

instance GoogleAuth TurnBasedMatchesCancel' where
        _AuthKey = tbmcKey . _Just
        _AuthToken = tbmcOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesCancel' where
        type Rs TurnBasedMatchesCancel' = ()
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesCancel'{..}
          = go _tbmcMatchId _tbmcQuotaUser
              (Just _tbmcPrettyPrint)
              _tbmcUserIP
              _tbmcFields
              _tbmcKey
              _tbmcOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesCancelResource)
                      rq
