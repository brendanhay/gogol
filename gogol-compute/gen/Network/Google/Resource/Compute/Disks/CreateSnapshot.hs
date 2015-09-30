{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Disks.CreateSnapshot
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a snapshot of this disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDisksCreateSnapshot@.
module Compute.Disks.CreateSnapshot
    (
    -- * REST Resource
      DisksCreateSnapshotAPI

    -- * Creating a Request
    , disksCreateSnapshot
    , DisksCreateSnapshot

    -- * Request Lenses
    , dcsQuotaUser
    , dcsPrettyPrint
    , dcsProject
    , dcsDisk
    , dcsUserIp
    , dcsZone
    , dcsKey
    , dcsOauthToken
    , dcsFields
    , dcsAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksCreateSnapshot@ which the
-- 'DisksCreateSnapshot' request conforms to.
type DisksCreateSnapshotAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             Capture "disk" Text :>
               "createSnapshot" :> Post '[JSON] Operation

-- | Creates a snapshot of this disk.
--
-- /See:/ 'disksCreateSnapshot' smart constructor.
data DisksCreateSnapshot = DisksCreateSnapshot
    { _dcsQuotaUser   :: !(Maybe Text)
    , _dcsPrettyPrint :: !Bool
    , _dcsProject     :: !Text
    , _dcsDisk        :: !Text
    , _dcsUserIp      :: !(Maybe Text)
    , _dcsZone        :: !Text
    , _dcsKey         :: !(Maybe Text)
    , _dcsOauthToken  :: !(Maybe Text)
    , _dcsFields      :: !(Maybe Text)
    , _dcsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksCreateSnapshot'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsQuotaUser'
--
-- * 'dcsPrettyPrint'
--
-- * 'dcsProject'
--
-- * 'dcsDisk'
--
-- * 'dcsUserIp'
--
-- * 'dcsZone'
--
-- * 'dcsKey'
--
-- * 'dcsOauthToken'
--
-- * 'dcsFields'
--
-- * 'dcsAlt'
disksCreateSnapshot
    :: Text -- ^ 'project'
    -> Text -- ^ 'disk'
    -> Text -- ^ 'zone'
    -> DisksCreateSnapshot
disksCreateSnapshot pDcsProject_ pDcsDisk_ pDcsZone_ =
    DisksCreateSnapshot
    { _dcsQuotaUser = Nothing
    , _dcsPrettyPrint = True
    , _dcsProject = pDcsProject_
    , _dcsDisk = pDcsDisk_
    , _dcsUserIp = Nothing
    , _dcsZone = pDcsZone_
    , _dcsKey = Nothing
    , _dcsOauthToken = Nothing
    , _dcsFields = Nothing
    , _dcsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dcsQuotaUser :: Lens' DisksCreateSnapshot' (Maybe Text)
dcsQuotaUser
  = lens _dcsQuotaUser (\ s a -> s{_dcsQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcsPrettyPrint :: Lens' DisksCreateSnapshot' Bool
dcsPrettyPrint
  = lens _dcsPrettyPrint
      (\ s a -> s{_dcsPrettyPrint = a})

-- | Project ID for this request.
dcsProject :: Lens' DisksCreateSnapshot' Text
dcsProject
  = lens _dcsProject (\ s a -> s{_dcsProject = a})

-- | Name of the persistent disk to snapshot.
dcsDisk :: Lens' DisksCreateSnapshot' Text
dcsDisk = lens _dcsDisk (\ s a -> s{_dcsDisk = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dcsUserIp :: Lens' DisksCreateSnapshot' (Maybe Text)
dcsUserIp
  = lens _dcsUserIp (\ s a -> s{_dcsUserIp = a})

-- | The name of the zone for this request.
dcsZone :: Lens' DisksCreateSnapshot' Text
dcsZone = lens _dcsZone (\ s a -> s{_dcsZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcsKey :: Lens' DisksCreateSnapshot' (Maybe Text)
dcsKey = lens _dcsKey (\ s a -> s{_dcsKey = a})

-- | OAuth 2.0 token for the current user.
dcsOauthToken :: Lens' DisksCreateSnapshot' (Maybe Text)
dcsOauthToken
  = lens _dcsOauthToken
      (\ s a -> s{_dcsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcsFields :: Lens' DisksCreateSnapshot' (Maybe Text)
dcsFields
  = lens _dcsFields (\ s a -> s{_dcsFields = a})

-- | Data format for the response.
dcsAlt :: Lens' DisksCreateSnapshot' Text
dcsAlt = lens _dcsAlt (\ s a -> s{_dcsAlt = a})

instance GoogleRequest DisksCreateSnapshot' where
        type Rs DisksCreateSnapshot' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksCreateSnapshot{..}
          = go _dcsQuotaUser _dcsPrettyPrint _dcsProject
              _dcsDisk
              _dcsUserIp
              _dcsZone
              _dcsKey
              _dcsOauthToken
              _dcsFields
              _dcsAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DisksCreateSnapshotAPI)
                      r
                      u
