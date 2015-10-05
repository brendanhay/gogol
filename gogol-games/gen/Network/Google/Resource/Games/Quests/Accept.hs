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
-- Module      : Network.Google.Resource.Games.Quests.Accept
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Indicates that the currently authorized user will participate in the
-- quest.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesQuestsAccept@.
module Network.Google.Resource.Games.Quests.Accept
    (
    -- * REST Resource
      QuestsAcceptResource

    -- * Creating a Request
    , questsAccept'
    , QuestsAccept'

    -- * Request Lenses
    , qaQuotaUser
    , qaPrettyPrint
    , qaUserIP
    , qaKey
    , qaLanguage
    , qaOAuthToken
    , qaQuestId
    , qaFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesQuestsAccept@ which the
-- 'QuestsAccept'' request conforms to.
type QuestsAcceptResource =
     "quests" :>
       Capture "questId" Text :>
         "accept" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Quest

-- | Indicates that the currently authorized user will participate in the
-- quest.
--
-- /See:/ 'questsAccept'' smart constructor.
data QuestsAccept' = QuestsAccept'
    { _qaQuotaUser   :: !(Maybe Text)
    , _qaPrettyPrint :: !Bool
    , _qaUserIP      :: !(Maybe Text)
    , _qaKey         :: !(Maybe AuthKey)
    , _qaLanguage    :: !(Maybe Text)
    , _qaOAuthToken  :: !(Maybe OAuthToken)
    , _qaQuestId     :: !Text
    , _qaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsAccept'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qaQuotaUser'
--
-- * 'qaPrettyPrint'
--
-- * 'qaUserIP'
--
-- * 'qaKey'
--
-- * 'qaLanguage'
--
-- * 'qaOAuthToken'
--
-- * 'qaQuestId'
--
-- * 'qaFields'
questsAccept'
    :: Text -- ^ 'questId'
    -> QuestsAccept'
questsAccept' pQaQuestId_ =
    QuestsAccept'
    { _qaQuotaUser = Nothing
    , _qaPrettyPrint = True
    , _qaUserIP = Nothing
    , _qaKey = Nothing
    , _qaLanguage = Nothing
    , _qaOAuthToken = Nothing
    , _qaQuestId = pQaQuestId_
    , _qaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qaQuotaUser :: Lens' QuestsAccept' (Maybe Text)
qaQuotaUser
  = lens _qaQuotaUser (\ s a -> s{_qaQuotaUser = a})

-- | Returns response with indentations and line breaks.
qaPrettyPrint :: Lens' QuestsAccept' Bool
qaPrettyPrint
  = lens _qaPrettyPrint
      (\ s a -> s{_qaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qaUserIP :: Lens' QuestsAccept' (Maybe Text)
qaUserIP = lens _qaUserIP (\ s a -> s{_qaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qaKey :: Lens' QuestsAccept' (Maybe AuthKey)
qaKey = lens _qaKey (\ s a -> s{_qaKey = a})

-- | The preferred language to use for strings returned by this method.
qaLanguage :: Lens' QuestsAccept' (Maybe Text)
qaLanguage
  = lens _qaLanguage (\ s a -> s{_qaLanguage = a})

-- | OAuth 2.0 token for the current user.
qaOAuthToken :: Lens' QuestsAccept' (Maybe OAuthToken)
qaOAuthToken
  = lens _qaOAuthToken (\ s a -> s{_qaOAuthToken = a})

-- | The ID of the quest.
qaQuestId :: Lens' QuestsAccept' Text
qaQuestId
  = lens _qaQuestId (\ s a -> s{_qaQuestId = a})

-- | Selector specifying which fields to include in a partial response.
qaFields :: Lens' QuestsAccept' (Maybe Text)
qaFields = lens _qaFields (\ s a -> s{_qaFields = a})

instance GoogleAuth QuestsAccept' where
        authKey = qaKey . _Just
        authToken = qaOAuthToken . _Just

instance GoogleRequest QuestsAccept' where
        type Rs QuestsAccept' = Quest
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u QuestsAccept'{..}
          = go _qaQuestId _qaLanguage _qaQuotaUser
              (Just _qaPrettyPrint)
              _qaUserIP
              _qaFields
              _qaKey
              _qaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QuestsAcceptResource)
                      r
                      u
