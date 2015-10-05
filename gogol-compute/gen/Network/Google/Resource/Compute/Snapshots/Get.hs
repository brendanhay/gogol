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
-- Module      : Network.Google.Resource.Compute.Snapshots.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified Snapshot resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeSnapshotsGet@.
module Network.Google.Resource.Compute.Snapshots.Get
    (
    -- * REST Resource
      SnapshotsGetResource

    -- * Creating a Request
    , snapshotsGet'
    , SnapshotsGet'

    -- * Request Lenses
    , sgSnapshot
    , sgQuotaUser
    , sgPrettyPrint
    , sgProject
    , sgUserIP
    , sgKey
    , sgOAuthToken
    , sgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeSnapshotsGet@ which the
-- 'SnapshotsGet'' request conforms to.
type SnapshotsGetResource =
     Capture "project" Text :>
       "global" :>
         "snapshots" :>
           Capture "snapshot" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Returns the specified Snapshot resource.
--
-- /See:/ 'snapshotsGet'' smart constructor.
data SnapshotsGet' = SnapshotsGet'
    { _sgSnapshot    :: !Text
    , _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgProject     :: !Text
    , _sgUserIP      :: !(Maybe Text)
    , _sgKey         :: !(Maybe AuthKey)
    , _sgOAuthToken  :: !(Maybe OAuthToken)
    , _sgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'sgUserIP'
--
-- * 'sgKey'
--
-- * 'sgOAuthToken'
--
-- * 'sgFields'
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
    , _sgUserIP = Nothing
    , _sgKey = Nothing
    , _sgOAuthToken = Nothing
    , _sgFields = Nothing
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
sgUserIP :: Lens' SnapshotsGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SnapshotsGet' (Maybe AuthKey)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' SnapshotsGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SnapshotsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth SnapshotsGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest SnapshotsGet' where
        type Rs SnapshotsGet' = Snapshot
        request = requestWithRoute defReq computeURL
        requestWithRoute r u SnapshotsGet'{..}
          = go _sgProject _sgSnapshot _sgQuotaUser
              (Just _sgPrettyPrint)
              _sgUserIP
              _sgFields
              _sgKey
              _sgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SnapshotsGetResource)
                      r
                      u
