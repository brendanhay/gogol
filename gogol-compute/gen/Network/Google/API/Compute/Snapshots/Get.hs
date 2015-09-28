{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Snapshots.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified Snapshot resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.get@.
module Network.Google.API.Compute.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetAPI

    -- * Creating a Request
    , snapshotsGet'
    , SnapshotsGet'

    -- * Request Lenses
    , sgSnapshot
    , sgQuotaUser
    , sgPrettyPrint
    , sgProject
    , sgUserIp
    , sgKey
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.snapshots.get which the
-- 'SnapshotsGet'' request conforms to.
type SnapshotsGetAPI =
     Capture "project" Text :>
       "global" :>
         "snapshots" :>
           Capture "snapshot" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Snapshot

-- | Returns the specified Snapshot resource.
--
-- /See:/ 'snapshotsGet'' smart constructor.
data SnapshotsGet' = SnapshotsGet'
    { _sgSnapshot    :: !Text
    , _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgProject     :: !Text
    , _sgUserIp      :: !(Maybe Text)
    , _sgKey         :: !(Maybe Text)
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgSnapshot'
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgProject'
--
-- * 'sgUserIp'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
snapshotsGet'
    :: Text -- ^ 'snapshot'
    -> Text -- ^ 'project'
    -> SnapshotsGet'
snapshotsGet' pSgSnapshot_ pSgProject_ =
    SnapshotsGet'
    { _sgSnapshot = pSgSnapshot_
    , _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgProject = pSgProject_
    , _sgUserIp = Nothing
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
    }

-- | Name of the Snapshot resource to return.
sgSnapshot :: Lens' SnapshotsGet' Text
sgSnapshot
  = lens _sgSnapshot (\ s a -> s{_sgSnapshot = a})

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

-- | Name of the project scoping this request.
sgProject :: Lens' SnapshotsGet' Text
sgProject
  = lens _sgProject (\ s a -> s{_sgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' SnapshotsGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SnapshotsGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SnapshotsGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SnapshotsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SnapshotsGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SnapshotsGet' where
        type Rs SnapshotsGet' = Snapshot
        request = requestWithRoute defReq computeURL
        requestWithRoute r u SnapshotsGet'{..}
          = go _sgSnapshot _sgQuotaUser (Just _sgPrettyPrint)
              _sgProject
              _sgUserIp
              _sgKey
              _sgOauthToken
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SnapshotsGetAPI) r
                      u
