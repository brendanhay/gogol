{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Snapshots.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesSnapshotsGet@.
module Games.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetAPI

    -- * Creating a Request
    , snapshotsGet
    , SnapshotsGet

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgKey
    , sgLanguage
    , sgOauthToken
    , sgFields
    , sgSnapshotId
    , sgAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesSnapshotsGet@ which the
-- 'SnapshotsGet' request conforms to.
type SnapshotsGetAPI =
     "snapshots" :>
       Capture "snapshotId" Text :>
         QueryParam "language" Text :> Get '[JSON] Snapshot

-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ 'snapshotsGet' smart constructor.
data SnapshotsGet = SnapshotsGet
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIp      :: !(Maybe Text)
    , _sgKey         :: !(Maybe Text)
    , _sgLanguage    :: !(Maybe Text)
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgSnapshotId  :: !Text
    , _sgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgKey'
--
-- * 'sgLanguage'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgSnapshotId'
--
-- * 'sgAlt'
snapshotsGet
    :: Text -- ^ 'snapshotId'
    -> SnapshotsGet
snapshotsGet pSgSnapshotId_ =
    SnapshotsGet
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgKey = Nothing
    , _sgLanguage = Nothing
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgSnapshotId = pSgSnapshotId_
    , _sgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SnapshotsGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SnapshotsGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' SnapshotsGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SnapshotsGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | The preferred language to use for strings returned by this method.
sgLanguage :: Lens' SnapshotsGet' (Maybe Text)
sgLanguage
  = lens _sgLanguage (\ s a -> s{_sgLanguage = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SnapshotsGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SnapshotsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | The ID of the snapshot.
sgSnapshotId :: Lens' SnapshotsGet' Text
sgSnapshotId
  = lens _sgSnapshotId (\ s a -> s{_sgSnapshotId = a})

-- | Data format for the response.
sgAlt :: Lens' SnapshotsGet' Text
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SnapshotsGet' where
        type Rs SnapshotsGet' = Snapshot
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u SnapshotsGet{..}
          = go _sgQuotaUser _sgPrettyPrint _sgUserIp _sgKey
              _sgLanguage
              _sgOauthToken
              _sgFields
              _sgSnapshotId
              _sgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SnapshotsGetAPI) r
                      u
