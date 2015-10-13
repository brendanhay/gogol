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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Instance Group Manager resources contained within
-- the specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersList@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.List
    (
    -- * REST Resource
      InstanceGroupManagersListResource

    -- * Creating a Request
    , instanceGroupManagersList'
    , InstanceGroupManagersList'

    -- * Request Lenses
    , igmlProject
    , igmlZone
    , igmlFilter
    , igmlPageToken
    , igmlMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @ReplicapoolInstanceGroupManagersList@ method which the
-- 'InstanceGroupManagersList'' request conforms to.
type InstanceGroupManagersListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] InstanceGroupManagerList

-- | Retrieves the list of Instance Group Manager resources contained within
-- the specified zone.
--
-- /See:/ 'instanceGroupManagersList'' smart constructor.
data InstanceGroupManagersList' = InstanceGroupManagersList'
    { _igmlProject    :: !Text
    , _igmlZone       :: !Text
    , _igmlFilter     :: !(Maybe Text)
    , _igmlPageToken  :: !(Maybe Text)
    , _igmlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlProject'
--
-- * 'igmlZone'
--
-- * 'igmlFilter'
--
-- * 'igmlPageToken'
--
-- * 'igmlMaxResults'
instanceGroupManagersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersList'
instanceGroupManagersList' pIgmlProject_ pIgmlZone_ =
    InstanceGroupManagersList'
    { _igmlProject = pIgmlProject_
    , _igmlZone = pIgmlZone_
    , _igmlFilter = Nothing
    , _igmlPageToken = Nothing
    , _igmlMaxResults = 500
    }

-- | The Google Developers Console project name.
igmlProject :: Lens' InstanceGroupManagersList' Text
igmlProject
  = lens _igmlProject (\ s a -> s{_igmlProject = a})

-- | The name of the zone in which the instance group manager resides.
igmlZone :: Lens' InstanceGroupManagersList' Text
igmlZone = lens _igmlZone (\ s a -> s{_igmlZone = a})

-- | Optional. Filter expression for filtering listed resources.
igmlFilter :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlFilter
  = lens _igmlFilter (\ s a -> s{_igmlFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
igmlPageToken :: Lens' InstanceGroupManagersList' (Maybe Text)
igmlPageToken
  = lens _igmlPageToken
      (\ s a -> s{_igmlPageToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
igmlMaxResults :: Lens' InstanceGroupManagersList' Word32
igmlMaxResults
  = lens _igmlMaxResults
      (\ s a -> s{_igmlMaxResults = a})

instance GoogleRequest InstanceGroupManagersList'
         where
        type Rs InstanceGroupManagersList' =
             InstanceGroupManagerList
        requestClient InstanceGroupManagersList'{..}
          = go _igmlProject _igmlZone _igmlFilter
              _igmlPageToken
              (Just _igmlMaxResults)
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersListResource)
                      mempty
