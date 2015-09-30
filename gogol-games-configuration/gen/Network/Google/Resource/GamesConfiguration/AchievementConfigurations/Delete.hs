{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsDelete@.
module GamesConfiguration.AchievementConfigurations.Delete
    (
    -- * REST Resource
      AchievementConfigurationsDeleteAPI

    -- * Creating a Request
    , achievementConfigurationsDelete
    , AchievementConfigurationsDelete

    -- * Request Lenses
    , acdQuotaUser
    , acdPrettyPrint
    , acdAchievementId
    , acdUserIp
    , acdKey
    , acdOauthToken
    , acdFields
    , acdAlt
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsDelete@ which the
-- 'AchievementConfigurationsDelete' request conforms to.
type AchievementConfigurationsDeleteAPI =
     "achievements" :>
       Capture "achievementId" Text :> Delete '[JSON] ()

-- | Delete the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsDelete' smart constructor.
data AchievementConfigurationsDelete = AchievementConfigurationsDelete
    { _acdQuotaUser     :: !(Maybe Text)
    , _acdPrettyPrint   :: !Bool
    , _acdAchievementId :: !Text
    , _acdUserIp        :: !(Maybe Text)
    , _acdKey           :: !(Maybe Text)
    , _acdOauthToken    :: !(Maybe Text)
    , _acdFields        :: !(Maybe Text)
    , _acdAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdQuotaUser'
--
-- * 'acdPrettyPrint'
--
-- * 'acdAchievementId'
--
-- * 'acdUserIp'
--
-- * 'acdKey'
--
-- * 'acdOauthToken'
--
-- * 'acdFields'
--
-- * 'acdAlt'
achievementConfigurationsDelete
    :: Text -- ^ 'achievementId'
    -> AchievementConfigurationsDelete
achievementConfigurationsDelete pAcdAchievementId_ =
    AchievementConfigurationsDelete
    { _acdQuotaUser = Nothing
    , _acdPrettyPrint = True
    , _acdAchievementId = pAcdAchievementId_
    , _acdUserIp = Nothing
    , _acdKey = Nothing
    , _acdOauthToken = Nothing
    , _acdFields = Nothing
    , _acdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acdQuotaUser :: Lens' AchievementConfigurationsDelete' (Maybe Text)
acdQuotaUser
  = lens _acdQuotaUser (\ s a -> s{_acdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acdPrettyPrint :: Lens' AchievementConfigurationsDelete' Bool
acdPrettyPrint
  = lens _acdPrettyPrint
      (\ s a -> s{_acdPrettyPrint = a})

-- | The ID of the achievement used by this method.
acdAchievementId :: Lens' AchievementConfigurationsDelete' Text
acdAchievementId
  = lens _acdAchievementId
      (\ s a -> s{_acdAchievementId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acdUserIp :: Lens' AchievementConfigurationsDelete' (Maybe Text)
acdUserIp
  = lens _acdUserIp (\ s a -> s{_acdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acdKey :: Lens' AchievementConfigurationsDelete' (Maybe Text)
acdKey = lens _acdKey (\ s a -> s{_acdKey = a})

-- | OAuth 2.0 token for the current user.
acdOauthToken :: Lens' AchievementConfigurationsDelete' (Maybe Text)
acdOauthToken
  = lens _acdOauthToken
      (\ s a -> s{_acdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acdFields :: Lens' AchievementConfigurationsDelete' (Maybe Text)
acdFields
  = lens _acdFields (\ s a -> s{_acdFields = a})

-- | Data format for the response.
acdAlt :: Lens' AchievementConfigurationsDelete' Text
acdAlt = lens _acdAlt (\ s a -> s{_acdAlt = a})

instance GoogleRequest
         AchievementConfigurationsDelete' where
        type Rs AchievementConfigurationsDelete' = ()
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u
          AchievementConfigurationsDelete{..}
          = go _acdQuotaUser _acdPrettyPrint _acdAchievementId
              _acdUserIp
              _acdKey
              _acdOauthToken
              _acdFields
              _acdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementConfigurationsDeleteAPI)
                      r
                      u
