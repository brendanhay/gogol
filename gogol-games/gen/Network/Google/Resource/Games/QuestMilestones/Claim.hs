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
-- Module      : Network.Google.Resource.Games.QuestMilestones.Claim
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Report that a reward for the milestone corresponding to milestoneId for
-- the quest corresponding to questId has been claimed by the currently
-- authorized user.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesQuestMilestonesClaim@.
module Network.Google.Resource.Games.QuestMilestones.Claim
    (
    -- * REST Resource
      QuestMilestonesClaimResource

    -- * Creating a Request
    , questMilestonesClaim'
    , QuestMilestonesClaim'

    -- * Request Lenses
    , qmcRequestId
    , qmcQuotaUser
    , qmcPrettyPrint
    , qmcUserIP
    , qmcMilestoneId
    , qmcKey
    , qmcOAuthToken
    , qmcQuestId
    , qmcFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesQuestMilestonesClaim@ which the
-- 'QuestMilestonesClaim'' request conforms to.
type QuestMilestonesClaimResource =
     "quests" :>
       Capture "questId" Text :>
         "milestones" :>
           Capture "milestoneId" Text :>
             "claim" :>
               QueryParam "requestId" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Report that a reward for the milestone corresponding to milestoneId for
-- the quest corresponding to questId has been claimed by the currently
-- authorized user.
--
-- /See:/ 'questMilestonesClaim'' smart constructor.
data QuestMilestonesClaim' = QuestMilestonesClaim'
    { _qmcRequestId   :: !Int64
    , _qmcQuotaUser   :: !(Maybe Text)
    , _qmcPrettyPrint :: !Bool
    , _qmcUserIP      :: !(Maybe Text)
    , _qmcMilestoneId :: !Text
    , _qmcKey         :: !(Maybe AuthKey)
    , _qmcOAuthToken  :: !(Maybe OAuthToken)
    , _qmcQuestId     :: !Text
    , _qmcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestMilestonesClaim'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qmcRequestId'
--
-- * 'qmcQuotaUser'
--
-- * 'qmcPrettyPrint'
--
-- * 'qmcUserIP'
--
-- * 'qmcMilestoneId'
--
-- * 'qmcKey'
--
-- * 'qmcOAuthToken'
--
-- * 'qmcQuestId'
--
-- * 'qmcFields'
questMilestonesClaim'
    :: Int64 -- ^ 'requestId'
    -> Text -- ^ 'milestoneId'
    -> Text -- ^ 'questId'
    -> QuestMilestonesClaim'
questMilestonesClaim' pQmcRequestId_ pQmcMilestoneId_ pQmcQuestId_ =
    QuestMilestonesClaim'
    { _qmcRequestId = pQmcRequestId_
    , _qmcQuotaUser = Nothing
    , _qmcPrettyPrint = True
    , _qmcUserIP = Nothing
    , _qmcMilestoneId = pQmcMilestoneId_
    , _qmcKey = Nothing
    , _qmcOAuthToken = Nothing
    , _qmcQuestId = pQmcQuestId_
    , _qmcFields = Nothing
    }

-- | A numeric ID to ensure that the request is handled correctly across
-- retries. Your client application must generate this ID randomly.
qmcRequestId :: Lens' QuestMilestonesClaim' Int64
qmcRequestId
  = lens _qmcRequestId (\ s a -> s{_qmcRequestId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qmcQuotaUser :: Lens' QuestMilestonesClaim' (Maybe Text)
qmcQuotaUser
  = lens _qmcQuotaUser (\ s a -> s{_qmcQuotaUser = a})

-- | Returns response with indentations and line breaks.
qmcPrettyPrint :: Lens' QuestMilestonesClaim' Bool
qmcPrettyPrint
  = lens _qmcPrettyPrint
      (\ s a -> s{_qmcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qmcUserIP :: Lens' QuestMilestonesClaim' (Maybe Text)
qmcUserIP
  = lens _qmcUserIP (\ s a -> s{_qmcUserIP = a})

-- | The ID of the milestone.
qmcMilestoneId :: Lens' QuestMilestonesClaim' Text
qmcMilestoneId
  = lens _qmcMilestoneId
      (\ s a -> s{_qmcMilestoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qmcKey :: Lens' QuestMilestonesClaim' (Maybe AuthKey)
qmcKey = lens _qmcKey (\ s a -> s{_qmcKey = a})

-- | OAuth 2.0 token for the current user.
qmcOAuthToken :: Lens' QuestMilestonesClaim' (Maybe OAuthToken)
qmcOAuthToken
  = lens _qmcOAuthToken
      (\ s a -> s{_qmcOAuthToken = a})

-- | The ID of the quest.
qmcQuestId :: Lens' QuestMilestonesClaim' Text
qmcQuestId
  = lens _qmcQuestId (\ s a -> s{_qmcQuestId = a})

-- | Selector specifying which fields to include in a partial response.
qmcFields :: Lens' QuestMilestonesClaim' (Maybe Text)
qmcFields
  = lens _qmcFields (\ s a -> s{_qmcFields = a})

instance GoogleAuth QuestMilestonesClaim' where
        _AuthKey = qmcKey . _Just
        _AuthToken = qmcOAuthToken . _Just

instance GoogleRequest QuestMilestonesClaim' where
        type Rs QuestMilestonesClaim' = ()
        request = requestWith gamesRequest
        requestWith rq QuestMilestonesClaim'{..}
          = go _qmcQuestId _qmcMilestoneId (Just _qmcRequestId)
              _qmcQuotaUser
              (Just _qmcPrettyPrint)
              _qmcUserIP
              _qmcFields
              _qmcKey
              _qmcOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy QuestMilestonesClaimResource)
                      rq
