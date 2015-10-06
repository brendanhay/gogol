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
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
    (
    -- * REST Resource
      AchievementConfigurationsDeleteResource

    -- * Creating a Request
    , achievementConfigurationsDelete'
    , AchievementConfigurationsDelete'

    -- * Request Lenses
    , acdQuotaUser
    , acdPrettyPrint
    , acdAchievementId
    , acdUserIP
    , acdKey
    , acdOAuthToken
    , acdFields
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsDelete@ which the
-- 'AchievementConfigurationsDelete'' request conforms to.
type AchievementConfigurationsDeleteResource =
     "achievements" :>
       Capture "achievementId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsDelete'' smart constructor.
data AchievementConfigurationsDelete' = AchievementConfigurationsDelete'
    { _acdQuotaUser     :: !(Maybe Text)
    , _acdPrettyPrint   :: !Bool
    , _acdAchievementId :: !Text
    , _acdUserIP        :: !(Maybe Text)
    , _acdKey           :: !(Maybe AuthKey)
    , _acdOAuthToken    :: !(Maybe OAuthToken)
    , _acdFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'acdUserIP'
--
-- * 'acdKey'
--
-- * 'acdOAuthToken'
--
-- * 'acdFields'
achievementConfigurationsDelete'
    :: Text -- ^ 'achievementId'
    -> AchievementConfigurationsDelete'
achievementConfigurationsDelete' pAcdAchievementId_ =
    AchievementConfigurationsDelete'
    { _acdQuotaUser = Nothing
    , _acdPrettyPrint = True
    , _acdAchievementId = pAcdAchievementId_
    , _acdUserIP = Nothing
    , _acdKey = Nothing
    , _acdOAuthToken = Nothing
    , _acdFields = Nothing
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
acdUserIP :: Lens' AchievementConfigurationsDelete' (Maybe Text)
acdUserIP
  = lens _acdUserIP (\ s a -> s{_acdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acdKey :: Lens' AchievementConfigurationsDelete' (Maybe AuthKey)
acdKey = lens _acdKey (\ s a -> s{_acdKey = a})

-- | OAuth 2.0 token for the current user.
acdOAuthToken :: Lens' AchievementConfigurationsDelete' (Maybe OAuthToken)
acdOAuthToken
  = lens _acdOAuthToken
      (\ s a -> s{_acdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acdFields :: Lens' AchievementConfigurationsDelete' (Maybe Text)
acdFields
  = lens _acdFields (\ s a -> s{_acdFields = a})

instance GoogleAuth AchievementConfigurationsDelete'
         where
        authKey = acdKey . _Just
        authToken = acdOAuthToken . _Just

instance GoogleRequest
         AchievementConfigurationsDelete' where
        type Rs AchievementConfigurationsDelete' = ()
        request = requestWith gamesConfigurationRequest
        requestWith rq AchievementConfigurationsDelete'{..}
          = go _acdAchievementId _acdQuotaUser
              (Just _acdPrettyPrint)
              _acdUserIP
              _acdFields
              _acdKey
              _acdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AchievementConfigurationsDeleteResource)
                      rq
