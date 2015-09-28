{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Snapshots.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified Snapshot resource. Keep in mind that deleting a
-- single snapshot might not necessarily delete all the data on that
-- snapshot. If any data on the snapshot that is marked for deletion is
-- needed for subsequent snapshots, the data will be moved to the next
-- corresponding snapshot. For more information, see Deleting snaphots.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.delete@.
module Network.Google.API.Compute.Snapshots.Delete
    (
    -- * REST Resource
      SnapshotsDeleteAPI

    -- * Creating a Request
    , snapshotsDelete'
    , SnapshotsDelete'

    -- * Request Lenses
    , sdSnapshot
    , sdQuotaUser
    , sdPrettyPrint
    , sdProject
    , sdUserIp
    , sdKey
    , sdOauthToken
    , sdFields
    , sdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.snapshots.delete which the
-- 'SnapshotsDelete'' request conforms to.
type SnapshotsDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified Snapshot resource. Keep in mind that deleting a
-- single snapshot might not necessarily delete all the data on that
-- snapshot. If any data on the snapshot that is marked for deletion is
-- needed for subsequent snapshots, the data will be moved to the next
-- corresponding snapshot. For more information, see Deleting snaphots.
--
-- /See:/ 'snapshotsDelete'' smart constructor.
data SnapshotsDelete' = SnapshotsDelete'
    { _sdSnapshot    :: !Text
    , _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdProject     :: !Text
    , _sdUserIp      :: !(Maybe Text)
    , _sdKey         :: !(Maybe Text)
    , _sdOauthToken  :: !(Maybe Text)
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdSnapshot'
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdProject'
--
-- * 'sdUserIp'
--
-- * 'sdKey'
--
-- * 'sdOauthToken'
--
-- * 'sdFields'
--
-- * 'sdAlt'
snapshotsDelete'
    :: Text -- ^ 'snapshot'
    -> Text -- ^ 'project'
    -> SnapshotsDelete'
snapshotsDelete' pSdSnapshot_ pSdProject_ =
    SnapshotsDelete'
    { _sdSnapshot = pSdSnapshot_
    , _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdProject = pSdProject_
    , _sdUserIp = Nothing
    , _sdKey = Nothing
    , _sdOauthToken = Nothing
    , _sdFields = Nothing
    , _sdAlt = JSON
    }

-- | Name of the Snapshot resource to delete.
sdSnapshot :: Lens' SnapshotsDelete' Text
sdSnapshot
  = lens _sdSnapshot (\ s a -> s{_sdSnapshot = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' SnapshotsDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' SnapshotsDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | Name of the project scoping this request.
sdProject :: Lens' SnapshotsDelete' Text
sdProject
  = lens _sdProject (\ s a -> s{_sdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIp :: Lens' SnapshotsDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SnapshotsDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' SnapshotsDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SnapshotsDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' SnapshotsDelete' Alt
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest SnapshotsDelete' where
        type Rs SnapshotsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u SnapshotsDelete'{..}
          = go _sdSnapshot _sdQuotaUser (Just _sdPrettyPrint)
              _sdProject
              _sdUserIp
              _sdKey
              _sdOauthToken
              _sdFields
              (Just _sdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SnapshotsDeleteAPI)
                      r
                      u
