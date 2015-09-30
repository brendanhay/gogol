{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Disks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified persistent disk. Deleting a disk removes its data
-- permanently and is irreversible. However, deleting a disk does not
-- delete any snapshots previously made from the disk. You must separately
-- delete snapshots.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDisksDelete@.
module Compute.Disks.Delete
    (
    -- * REST Resource
      DisksDeleteAPI

    -- * Creating a Request
    , disksDelete
    , DisksDelete

    -- * Request Lenses
    , ddQuotaUser
    , ddPrettyPrint
    , ddProject
    , ddDisk
    , ddUserIp
    , ddZone
    , ddKey
    , ddOauthToken
    , ddFields
    , ddAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksDelete@ which the
-- 'DisksDelete' request conforms to.
type DisksDeleteAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             Capture "disk" Text :> Delete '[JSON] Operation

-- | Deletes the specified persistent disk. Deleting a disk removes its data
-- permanently and is irreversible. However, deleting a disk does not
-- delete any snapshots previously made from the disk. You must separately
-- delete snapshots.
--
-- /See:/ 'disksDelete' smart constructor.
data DisksDelete = DisksDelete
    { _ddQuotaUser   :: !(Maybe Text)
    , _ddPrettyPrint :: !Bool
    , _ddProject     :: !Text
    , _ddDisk        :: !Text
    , _ddUserIp      :: !(Maybe Text)
    , _ddZone        :: !Text
    , _ddKey         :: !(Maybe Text)
    , _ddOauthToken  :: !(Maybe Text)
    , _ddFields      :: !(Maybe Text)
    , _ddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddQuotaUser'
--
-- * 'ddPrettyPrint'
--
-- * 'ddProject'
--
-- * 'ddDisk'
--
-- * 'ddUserIp'
--
-- * 'ddZone'
--
-- * 'ddKey'
--
-- * 'ddOauthToken'
--
-- * 'ddFields'
--
-- * 'ddAlt'
disksDelete
    :: Text -- ^ 'project'
    -> Text -- ^ 'disk'
    -> Text -- ^ 'zone'
    -> DisksDelete
disksDelete pDdProject_ pDdDisk_ pDdZone_ =
    DisksDelete
    { _ddQuotaUser = Nothing
    , _ddPrettyPrint = True
    , _ddProject = pDdProject_
    , _ddDisk = pDdDisk_
    , _ddUserIp = Nothing
    , _ddZone = pDdZone_
    , _ddKey = Nothing
    , _ddOauthToken = Nothing
    , _ddFields = Nothing
    , _ddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ddQuotaUser :: Lens' DisksDelete' (Maybe Text)
ddQuotaUser
  = lens _ddQuotaUser (\ s a -> s{_ddQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddPrettyPrint :: Lens' DisksDelete' Bool
ddPrettyPrint
  = lens _ddPrettyPrint
      (\ s a -> s{_ddPrettyPrint = a})

-- | Project ID for this request.
ddProject :: Lens' DisksDelete' Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | Name of the persistent disk to delete.
ddDisk :: Lens' DisksDelete' Text
ddDisk = lens _ddDisk (\ s a -> s{_ddDisk = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ddUserIp :: Lens' DisksDelete' (Maybe Text)
ddUserIp = lens _ddUserIp (\ s a -> s{_ddUserIp = a})

-- | The name of the zone for this request.
ddZone :: Lens' DisksDelete' Text
ddZone = lens _ddZone (\ s a -> s{_ddZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DisksDelete' (Maybe Text)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | OAuth 2.0 token for the current user.
ddOauthToken :: Lens' DisksDelete' (Maybe Text)
ddOauthToken
  = lens _ddOauthToken (\ s a -> s{_ddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DisksDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

-- | Data format for the response.
ddAlt :: Lens' DisksDelete' Text
ddAlt = lens _ddAlt (\ s a -> s{_ddAlt = a})

instance GoogleRequest DisksDelete' where
        type Rs DisksDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksDelete{..}
          = go _ddQuotaUser _ddPrettyPrint _ddProject _ddDisk
              _ddUserIp
              _ddZone
              _ddKey
              _ddOauthToken
              _ddFields
              _ddAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DisksDeleteAPI) r u
