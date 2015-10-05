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
-- Module      : Network.Google.Resource.Games.Metagame.ListCategoriesByPlayer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List play data aggregated per category for the player corresponding to
-- playerId.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesMetagameListCategoriesByPlayer@.
module Network.Google.Resource.Games.Metagame.ListCategoriesByPlayer
    (
    -- * REST Resource
      MetagameListCategoriesByPlayerResource

    -- * Creating a Request
    , metagameListCategoriesByPlayer'
    , MetagameListCategoriesByPlayer'

    -- * Request Lenses
    , mlcbpQuotaUser
    , mlcbpPrettyPrint
    , mlcbpUserIP
    , mlcbpCollection
    , mlcbpKey
    , mlcbpLanguage
    , mlcbpPageToken
    , mlcbpOAuthToken
    , mlcbpPlayerId
    , mlcbpMaxResults
    , mlcbpFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesMetagameListCategoriesByPlayer@ which the
-- 'MetagameListCategoriesByPlayer'' request conforms to.
type MetagameListCategoriesByPlayerResource =
     "players" :>
       Capture "playerId" Text :>
         "categories" :>
           Capture "collection"
             MetagameListCategoriesByPlayerCollection
             :>
             QueryParam "language" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CategoryListResponse

-- | List play data aggregated per category for the player corresponding to
-- playerId.
--
-- /See:/ 'metagameListCategoriesByPlayer'' smart constructor.
data MetagameListCategoriesByPlayer' = MetagameListCategoriesByPlayer'
    { _mlcbpQuotaUser   :: !(Maybe Text)
    , _mlcbpPrettyPrint :: !Bool
    , _mlcbpUserIP      :: !(Maybe Text)
    , _mlcbpCollection  :: !MetagameListCategoriesByPlayerCollection
    , _mlcbpKey         :: !(Maybe Key)
    , _mlcbpLanguage    :: !(Maybe Text)
    , _mlcbpPageToken   :: !(Maybe Text)
    , _mlcbpOAuthToken  :: !(Maybe OAuthToken)
    , _mlcbpPlayerId    :: !Text
    , _mlcbpMaxResults  :: !(Maybe Int32)
    , _mlcbpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetagameListCategoriesByPlayer'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlcbpQuotaUser'
--
-- * 'mlcbpPrettyPrint'
--
-- * 'mlcbpUserIP'
--
-- * 'mlcbpCollection'
--
-- * 'mlcbpKey'
--
-- * 'mlcbpLanguage'
--
-- * 'mlcbpPageToken'
--
-- * 'mlcbpOAuthToken'
--
-- * 'mlcbpPlayerId'
--
-- * 'mlcbpMaxResults'
--
-- * 'mlcbpFields'
metagameListCategoriesByPlayer'
    :: MetagameListCategoriesByPlayerCollection -- ^ 'collection'
    -> Text -- ^ 'playerId'
    -> MetagameListCategoriesByPlayer'
metagameListCategoriesByPlayer' pMlcbpCollection_ pMlcbpPlayerId_ =
    MetagameListCategoriesByPlayer'
    { _mlcbpQuotaUser = Nothing
    , _mlcbpPrettyPrint = True
    , _mlcbpUserIP = Nothing
    , _mlcbpCollection = pMlcbpCollection_
    , _mlcbpKey = Nothing
    , _mlcbpLanguage = Nothing
    , _mlcbpPageToken = Nothing
    , _mlcbpOAuthToken = Nothing
    , _mlcbpPlayerId = pMlcbpPlayerId_
    , _mlcbpMaxResults = Nothing
    , _mlcbpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlcbpQuotaUser :: Lens' MetagameListCategoriesByPlayer' (Maybe Text)
mlcbpQuotaUser
  = lens _mlcbpQuotaUser
      (\ s a -> s{_mlcbpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlcbpPrettyPrint :: Lens' MetagameListCategoriesByPlayer' Bool
mlcbpPrettyPrint
  = lens _mlcbpPrettyPrint
      (\ s a -> s{_mlcbpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlcbpUserIP :: Lens' MetagameListCategoriesByPlayer' (Maybe Text)
mlcbpUserIP
  = lens _mlcbpUserIP (\ s a -> s{_mlcbpUserIP = a})

-- | The collection of categories for which data will be returned.
mlcbpCollection :: Lens' MetagameListCategoriesByPlayer' MetagameListCategoriesByPlayerCollection
mlcbpCollection
  = lens _mlcbpCollection
      (\ s a -> s{_mlcbpCollection = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlcbpKey :: Lens' MetagameListCategoriesByPlayer' (Maybe Key)
mlcbpKey = lens _mlcbpKey (\ s a -> s{_mlcbpKey = a})

-- | The preferred language to use for strings returned by this method.
mlcbpLanguage :: Lens' MetagameListCategoriesByPlayer' (Maybe Text)
mlcbpLanguage
  = lens _mlcbpLanguage
      (\ s a -> s{_mlcbpLanguage = a})

-- | The token returned by the previous request.
mlcbpPageToken :: Lens' MetagameListCategoriesByPlayer' (Maybe Text)
mlcbpPageToken
  = lens _mlcbpPageToken
      (\ s a -> s{_mlcbpPageToken = a})

-- | OAuth 2.0 token for the current user.
mlcbpOAuthToken :: Lens' MetagameListCategoriesByPlayer' (Maybe OAuthToken)
mlcbpOAuthToken
  = lens _mlcbpOAuthToken
      (\ s a -> s{_mlcbpOAuthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
mlcbpPlayerId :: Lens' MetagameListCategoriesByPlayer' Text
mlcbpPlayerId
  = lens _mlcbpPlayerId
      (\ s a -> s{_mlcbpPlayerId = a})

-- | The maximum number of category resources to return in the response, used
-- for paging. For any response, the actual number of category resources
-- returned may be less than the specified maxResults.
mlcbpMaxResults :: Lens' MetagameListCategoriesByPlayer' (Maybe Int32)
mlcbpMaxResults
  = lens _mlcbpMaxResults
      (\ s a -> s{_mlcbpMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlcbpFields :: Lens' MetagameListCategoriesByPlayer' (Maybe Text)
mlcbpFields
  = lens _mlcbpFields (\ s a -> s{_mlcbpFields = a})

instance GoogleAuth MetagameListCategoriesByPlayer'
         where
        authKey = mlcbpKey . _Just
        authToken = mlcbpOAuthToken . _Just

instance GoogleRequest
         MetagameListCategoriesByPlayer' where
        type Rs MetagameListCategoriesByPlayer' =
             CategoryListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u
          MetagameListCategoriesByPlayer'{..}
          = go _mlcbpPlayerId _mlcbpCollection _mlcbpLanguage
              _mlcbpPageToken
              _mlcbpMaxResults
              _mlcbpQuotaUser
              (Just _mlcbpPrettyPrint)
              _mlcbpUserIP
              _mlcbpFields
              _mlcbpKey
              _mlcbpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MetagameListCategoriesByPlayerResource)
                      r
                      u
