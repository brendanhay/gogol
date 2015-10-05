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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesDismiss@.
module Network.Google.Resource.Games.TurnBasedMatches.Dismiss
    (
    -- * REST Resource
      TurnBasedMatchesDismissResource

    -- * Creating a Request
    , turnBasedMatchesDismiss'
    , TurnBasedMatchesDismiss'

    -- * Request Lenses
    , tbmdQuotaUser
    , tbmdPrettyPrint
    , tbmdUserIP
    , tbmdKey
    , tbmdOAuthToken
    , tbmdMatchId
    , tbmdFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesDismiss@ which the
-- 'TurnBasedMatchesDismiss'' request conforms to.
type TurnBasedMatchesDismissResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "dismiss" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ 'turnBasedMatchesDismiss'' smart constructor.
data TurnBasedMatchesDismiss' = TurnBasedMatchesDismiss'
    { _tbmdQuotaUser   :: !(Maybe Text)
    , _tbmdPrettyPrint :: !Bool
    , _tbmdUserIP      :: !(Maybe Text)
    , _tbmdKey         :: !(Maybe Key)
    , _tbmdOAuthToken  :: !(Maybe OAuthToken)
    , _tbmdMatchId     :: !Text
    , _tbmdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmdQuotaUser'
--
-- * 'tbmdPrettyPrint'
--
-- * 'tbmdUserIP'
--
-- * 'tbmdKey'
--
-- * 'tbmdOAuthToken'
--
-- * 'tbmdMatchId'
--
-- * 'tbmdFields'
turnBasedMatchesDismiss'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesDismiss'
turnBasedMatchesDismiss' pTbmdMatchId_ =
    TurnBasedMatchesDismiss'
    { _tbmdQuotaUser = Nothing
    , _tbmdPrettyPrint = True
    , _tbmdUserIP = Nothing
    , _tbmdKey = Nothing
    , _tbmdOAuthToken = Nothing
    , _tbmdMatchId = pTbmdMatchId_
    , _tbmdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmdQuotaUser :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdQuotaUser
  = lens _tbmdQuotaUser
      (\ s a -> s{_tbmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmdPrettyPrint :: Lens' TurnBasedMatchesDismiss' Bool
tbmdPrettyPrint
  = lens _tbmdPrettyPrint
      (\ s a -> s{_tbmdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmdUserIP :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdUserIP
  = lens _tbmdUserIP (\ s a -> s{_tbmdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmdKey :: Lens' TurnBasedMatchesDismiss' (Maybe Key)
tbmdKey = lens _tbmdKey (\ s a -> s{_tbmdKey = a})

-- | OAuth 2.0 token for the current user.
tbmdOAuthToken :: Lens' TurnBasedMatchesDismiss' (Maybe OAuthToken)
tbmdOAuthToken
  = lens _tbmdOAuthToken
      (\ s a -> s{_tbmdOAuthToken = a})

-- | The ID of the match.
tbmdMatchId :: Lens' TurnBasedMatchesDismiss' Text
tbmdMatchId
  = lens _tbmdMatchId (\ s a -> s{_tbmdMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmdFields :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdFields
  = lens _tbmdFields (\ s a -> s{_tbmdFields = a})

instance GoogleAuth TurnBasedMatchesDismiss' where
        authKey = tbmdKey . _Just
        authToken = tbmdOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesDismiss' where
        type Rs TurnBasedMatchesDismiss' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesDismiss'{..}
          = go _tbmdMatchId _tbmdQuotaUser
              (Just _tbmdPrettyPrint)
              _tbmdUserIP
              _tbmdFields
              _tbmdKey
              _tbmdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesDismissResource)
                      r
                      u
