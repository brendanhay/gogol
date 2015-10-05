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
    , sQuotaUser
    , sPrettyPrint
    , sUserIP
    , sKey
    , sLanguage
    , sOAuthToken
    , sFields
    , sSnapshotId
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
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Retrieves the metadata for a given snapshot ID.
--
-- /See:/ 'snapshotsGet'' smart constructor.
data SnapshotsGet' = SnapshotsGet'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIP      :: !(Maybe Text)
    , _sKey         :: !(Maybe AuthKey)
    , _sLanguage    :: !(Maybe Text)
    , _sOAuthToken  :: !(Maybe OAuthToken)
    , _sFields      :: !(Maybe Text)
    , _sSnapshotId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIP'
--
-- * 'sKey'
--
-- * 'sLanguage'
--
-- * 'sOAuthToken'
--
-- * 'sFields'
--
-- * 'sSnapshotId'
snapshotsGet'
    :: Text -- ^ 'snapshotId'
    -> SnapshotsGet'
snapshotsGet' pSSnapshotId_ =
    SnapshotsGet'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIP = Nothing
    , _sKey = Nothing
    , _sLanguage = Nothing
    , _sOAuthToken = Nothing
    , _sFields = Nothing
    , _sSnapshotId = pSSnapshotId_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SnapshotsGet' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SnapshotsGet' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIP :: Lens' SnapshotsGet' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SnapshotsGet' (Maybe AuthKey)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | The preferred language to use for strings returned by this method.
sLanguage :: Lens' SnapshotsGet' (Maybe Text)
sLanguage
  = lens _sLanguage (\ s a -> s{_sLanguage = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' SnapshotsGet' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SnapshotsGet' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | The ID of the snapshot.
sSnapshotId :: Lens' SnapshotsGet' Text
sSnapshotId
  = lens _sSnapshotId (\ s a -> s{_sSnapshotId = a})

instance GoogleAuth SnapshotsGet' where
        authKey = sKey . _Just
        authToken = sOAuthToken . _Just

instance GoogleRequest SnapshotsGet' where
        type Rs SnapshotsGet' = Snapshot
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u SnapshotsGet'{..}
          = go _sSnapshotId _sLanguage _sQuotaUser
              (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SnapshotsGetResource)
                      r
                      u
