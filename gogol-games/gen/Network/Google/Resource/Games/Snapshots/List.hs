{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Snapshots.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of snapshots created by your application for the player
-- corresponding to the player ID.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesSnapshotsList@.
module Games.Snapshots.List
    (
    -- * REST Resource
      SnapshotsListAPI

    -- * Creating a Request
    , snapshotsList
    , SnapshotsList

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slKey
    , slLanguage
    , slPageToken
    , slOauthToken
    , slPlayerId
    , slMaxResults
    , slFields
    , slAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesSnapshotsList@ which the
-- 'SnapshotsList' request conforms to.
type SnapshotsListAPI =
     "players" :>
       Capture "playerId" Text :>
         "snapshots" :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 Get '[JSON] SnapshotListResponse

-- | Retrieves a list of snapshots created by your application for the player
-- corresponding to the player ID.
--
-- /See:/ 'snapshotsList' smart constructor.
data SnapshotsList = SnapshotsList
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIp      :: !(Maybe Text)
    , _slKey         :: !(Maybe Text)
    , _slLanguage    :: !(Maybe Text)
    , _slPageToken   :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slPlayerId    :: !Text
    , _slMaxResults  :: !(Maybe Int32)
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slKey'
--
-- * 'slLanguage'
--
-- * 'slPageToken'
--
-- * 'slOauthToken'
--
-- * 'slPlayerId'
--
-- * 'slMaxResults'
--
-- * 'slFields'
--
-- * 'slAlt'
snapshotsList
    :: Text -- ^ 'playerId'
    -> SnapshotsList
snapshotsList pSlPlayerId_ =
    SnapshotsList
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slKey = Nothing
    , _slLanguage = Nothing
    , _slPageToken = Nothing
    , _slOauthToken = Nothing
    , _slPlayerId = pSlPlayerId_
    , _slMaxResults = Nothing
    , _slFields = Nothing
    , _slAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SnapshotsList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SnapshotsList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SnapshotsList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SnapshotsList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | The preferred language to use for strings returned by this method.
slLanguage :: Lens' SnapshotsList' (Maybe Text)
slLanguage
  = lens _slLanguage (\ s a -> s{_slLanguage = a})

-- | The token returned by the previous request.
slPageToken :: Lens' SnapshotsList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SnapshotsList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
slPlayerId :: Lens' SnapshotsList' Text
slPlayerId
  = lens _slPlayerId (\ s a -> s{_slPlayerId = a})

-- | The maximum number of snapshot resources to return in the response, used
-- for paging. For any response, the actual number of snapshot resources
-- returned may be less than the specified maxResults.
slMaxResults :: Lens' SnapshotsList' (Maybe Int32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SnapshotsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SnapshotsList' Text
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SnapshotsList' where
        type Rs SnapshotsList' = SnapshotListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u SnapshotsList{..}
          = go _slQuotaUser _slPrettyPrint _slUserIp _slKey
              _slLanguage
              _slPageToken
              _slOauthToken
              _slPlayerId
              _slMaxResults
              _slFields
              _slAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SnapshotsListAPI) r
                      u
