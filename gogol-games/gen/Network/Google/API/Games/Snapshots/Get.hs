{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Snapshots.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.snapshots.get@.
module Network.Google.API.Games.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetAPI

    -- * Creating a Request
    , snapshotsGet'
    , SnapshotsGet'

    -- * Request Lenses
    , snaQuotaUser
    , snaPrettyPrint
    , snaUserIp
    , snaKey
    , snaLanguage
    , snaOauthToken
    , snaFields
    , snaSnapshotId
    , snaAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.snapshots.get which the
-- 'SnapshotsGet'' request conforms to.
type SnapshotsGetAPI =
     "snapshots" :>
       Capture "snapshotId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Snapshot

-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ 'snapshotsGet'' smart constructor.
data SnapshotsGet' = SnapshotsGet'
    { _snaQuotaUser   :: !(Maybe Text)
    , _snaPrettyPrint :: !Bool
    , _snaUserIp      :: !(Maybe Text)
    , _snaKey         :: !(Maybe Text)
    , _snaLanguage    :: !(Maybe Text)
    , _snaOauthToken  :: !(Maybe Text)
    , _snaFields      :: !(Maybe Text)
    , _snaSnapshotId  :: !Text
    , _snaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snaQuotaUser'
--
-- * 'snaPrettyPrint'
--
-- * 'snaUserIp'
--
-- * 'snaKey'
--
-- * 'snaLanguage'
--
-- * 'snaOauthToken'
--
-- * 'snaFields'
--
-- * 'snaSnapshotId'
--
-- * 'snaAlt'
snapshotsGet'
    :: Text -- ^ 'snapshotId'
    -> SnapshotsGet'
snapshotsGet' pSnaSnapshotId_ =
    SnapshotsGet'
    { _snaQuotaUser = Nothing
    , _snaPrettyPrint = True
    , _snaUserIp = Nothing
    , _snaKey = Nothing
    , _snaLanguage = Nothing
    , _snaOauthToken = Nothing
    , _snaFields = Nothing
    , _snaSnapshotId = pSnaSnapshotId_
    , _snaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
snaQuotaUser :: Lens' SnapshotsGet' (Maybe Text)
snaQuotaUser
  = lens _snaQuotaUser (\ s a -> s{_snaQuotaUser = a})

-- | Returns response with indentations and line breaks.
snaPrettyPrint :: Lens' SnapshotsGet' Bool
snaPrettyPrint
  = lens _snaPrettyPrint
      (\ s a -> s{_snaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
snaUserIp :: Lens' SnapshotsGet' (Maybe Text)
snaUserIp
  = lens _snaUserIp (\ s a -> s{_snaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
snaKey :: Lens' SnapshotsGet' (Maybe Text)
snaKey = lens _snaKey (\ s a -> s{_snaKey = a})

-- | The preferred language to use for strings returned by this method.
snaLanguage :: Lens' SnapshotsGet' (Maybe Text)
snaLanguage
  = lens _snaLanguage (\ s a -> s{_snaLanguage = a})

-- | OAuth 2.0 token for the current user.
snaOauthToken :: Lens' SnapshotsGet' (Maybe Text)
snaOauthToken
  = lens _snaOauthToken
      (\ s a -> s{_snaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
snaFields :: Lens' SnapshotsGet' (Maybe Text)
snaFields
  = lens _snaFields (\ s a -> s{_snaFields = a})

-- | The ID of the snapshot.
snaSnapshotId :: Lens' SnapshotsGet' Text
snaSnapshotId
  = lens _snaSnapshotId
      (\ s a -> s{_snaSnapshotId = a})

-- | Data format for the response.
snaAlt :: Lens' SnapshotsGet' Alt
snaAlt = lens _snaAlt (\ s a -> s{_snaAlt = a})

instance GoogleRequest SnapshotsGet' where
        type Rs SnapshotsGet' = Snapshot
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u SnapshotsGet'{..}
          = go _snaQuotaUser (Just _snaPrettyPrint) _snaUserIp
              _snaKey
              _snaLanguage
              _snaOauthToken
              _snaFields
              _snaSnapshotId
              (Just _snaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SnapshotsGetAPI) r
                      u
