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
module Network.Google.Resource.Compute.Disks.CreateSnapshot
    (
    -- * REST Resource
      DisksCreateSnapshotResource

    -- * Creating a Request
    , disksCreateSnapshot'
    , DisksCreateSnapshot'

    -- * Request Lenses
    , dcsQuotaUser
    , dcsPrettyPrint
    , dcsProject
    , dcsDisk
    , dcsUserIP
    , dcsZone
    , dcsPayload
    , dcsKey
    , dcsOAuthToken
    , dcsFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksCreateSnapshot@ method which the
-- 'DisksCreateSnapshot'' request conforms to.
type DisksCreateSnapshotResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             Capture "disk" Text :>
               "createSnapshot" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Snapshot :>
                                 Post '[JSON] Operation

-- | Creates a snapshot of this disk.
--
-- /See:/ 'disksCreateSnapshot'' smart constructor.
data DisksCreateSnapshot' = DisksCreateSnapshot'
    { _dcsQuotaUser   :: !(Maybe Text)
    , _dcsPrettyPrint :: !Bool
    , _dcsProject     :: !Text
    , _dcsDisk        :: !Text
    , _dcsUserIP      :: !(Maybe Text)
    , _dcsZone        :: !Text
    , _dcsPayload     :: !Snapshot
    , _dcsKey         :: !(Maybe AuthKey)
    , _dcsOAuthToken  :: !(Maybe OAuthToken)
    , _dcsFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'dcsUserIP'
--
-- * 'dcsZone'
--
-- * 'dcsPayload'
--
-- * 'dcsKey'
--
-- * 'dcsOAuthToken'
--
-- * 'dcsFields'
disksCreateSnapshot'
    :: Text -- ^ 'project'
    -> Text -- ^ 'disk'
    -> Text -- ^ 'zone'
    -> Snapshot -- ^ 'payload'
    -> DisksCreateSnapshot'
disksCreateSnapshot' pDcsProject_ pDcsDisk_ pDcsZone_ pDcsPayload_ =
    DisksCreateSnapshot'
    { _dcsQuotaUser = Nothing
    , _dcsPrettyPrint = True
    , _dcsProject = pDcsProject_
    , _dcsDisk = pDcsDisk_
    , _dcsUserIP = Nothing
    , _dcsZone = pDcsZone_
    , _dcsPayload = pDcsPayload_
    , _dcsKey = Nothing
    , _dcsOAuthToken = Nothing
    , _dcsFields = Nothing
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
dcsUserIP :: Lens' DisksCreateSnapshot' (Maybe Text)
dcsUserIP
  = lens _dcsUserIP (\ s a -> s{_dcsUserIP = a})

-- | The name of the zone for this request.
dcsZone :: Lens' DisksCreateSnapshot' Text
dcsZone = lens _dcsZone (\ s a -> s{_dcsZone = a})

-- | Multipart request metadata.
dcsPayload :: Lens' DisksCreateSnapshot' Snapshot
dcsPayload
  = lens _dcsPayload (\ s a -> s{_dcsPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcsKey :: Lens' DisksCreateSnapshot' (Maybe AuthKey)
dcsKey = lens _dcsKey (\ s a -> s{_dcsKey = a})

-- | OAuth 2.0 token for the current user.
dcsOAuthToken :: Lens' DisksCreateSnapshot' (Maybe OAuthToken)
dcsOAuthToken
  = lens _dcsOAuthToken
      (\ s a -> s{_dcsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcsFields :: Lens' DisksCreateSnapshot' (Maybe Text)
dcsFields
  = lens _dcsFields (\ s a -> s{_dcsFields = a})

instance GoogleAuth DisksCreateSnapshot' where
        _AuthKey = dcsKey . _Just
        _AuthToken = dcsOAuthToken . _Just

instance GoogleRequest DisksCreateSnapshot' where
        type Rs DisksCreateSnapshot' = Operation
        request = requestWith computeRequest
        requestWith rq DisksCreateSnapshot'{..}
          = go _dcsProject _dcsZone _dcsDisk _dcsQuotaUser
              (Just _dcsPrettyPrint)
              _dcsUserIP
              _dcsFields
              _dcsKey
              _dcsOAuthToken
              (Just AltJSON)
              _dcsPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DisksCreateSnapshotResource)
                      rq
