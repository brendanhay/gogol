{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Games.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetResource

    -- * Creating a Request
    , snapshotsGet'
    , SnapshotsGet'

    -- * Request Lenses
    , snaQuotaUser
    , snaPrettyPrint
    , snaUserIP
    , snaKey
    , snaLanguage
    , snaOAuthToken
    , snaFields
    , snaSnapshotId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesSnapshotsGet@ which the
-- 'SnapshotsGet'' request conforms to.
type SnapshotsGetResource =
     "snapshots" :>
       Capture "snapshotId" Text :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ 'snapshotsGet'' smart constructor.
data SnapshotsGet' = SnapshotsGet'
    { _snaQuotaUser   :: !(Maybe Text)
    , _snaPrettyPrint :: !Bool
    , _snaUserIP      :: !(Maybe Text)
    , _snaKey         :: !(Maybe Key)
    , _snaLanguage    :: !(Maybe Text)
    , _snaOAuthToken  :: !(Maybe OAuthToken)
    , _snaFields      :: !(Maybe Text)
    , _snaSnapshotId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snaQuotaUser'
--
-- * 'snaPrettyPrint'
--
-- * 'snaUserIP'
--
-- * 'snaKey'
--
-- * 'snaLanguage'
--
-- * 'snaOAuthToken'
--
-- * 'snaFields'
--
-- * 'snaSnapshotId'
snapshotsGet'
    :: Text -- ^ 'snapshotId'
    -> SnapshotsGet'
snapshotsGet' pSnaSnapshotId_ =
    SnapshotsGet'
    { _snaQuotaUser = Nothing
    , _snaPrettyPrint = True
    , _snaUserIP = Nothing
    , _snaKey = Nothing
    , _snaLanguage = Nothing
    , _snaOAuthToken = Nothing
    , _snaFields = Nothing
    , _snaSnapshotId = pSnaSnapshotId_
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
snaUserIP :: Lens' SnapshotsGet' (Maybe Text)
snaUserIP
  = lens _snaUserIP (\ s a -> s{_snaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
snaKey :: Lens' SnapshotsGet' (Maybe Key)
snaKey = lens _snaKey (\ s a -> s{_snaKey = a})

-- | The preferred language to use for strings returned by this method.
snaLanguage :: Lens' SnapshotsGet' (Maybe Text)
snaLanguage
  = lens _snaLanguage (\ s a -> s{_snaLanguage = a})

-- | OAuth 2.0 token for the current user.
snaOAuthToken :: Lens' SnapshotsGet' (Maybe OAuthToken)
snaOAuthToken
  = lens _snaOAuthToken
      (\ s a -> s{_snaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
snaFields :: Lens' SnapshotsGet' (Maybe Text)
snaFields
  = lens _snaFields (\ s a -> s{_snaFields = a})

-- | The ID of the snapshot.
snaSnapshotId :: Lens' SnapshotsGet' Text
snaSnapshotId
  = lens _snaSnapshotId
      (\ s a -> s{_snaSnapshotId = a})

instance GoogleAuth SnapshotsGet' where
        authKey = snaKey . _Just
        authToken = snaOAuthToken . _Just

instance GoogleRequest SnapshotsGet' where
        type Rs SnapshotsGet' = Snapshot
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u SnapshotsGet'{..}
          = go _snaSnapshotId _snaLanguage _snaQuotaUser
              (Just _snaPrettyPrint)
              _snaUserIP
              _snaFields
              _snaKey
              _snaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SnapshotsGetResource)
                      r
                      u
