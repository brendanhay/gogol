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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the current status for each instance within a given update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.listInstanceUpdates@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
    (
    -- * REST Resource
      RollingUpdatesListInstanceUpdatesResource

    -- * Creating a Request
    , rollingUpdatesListInstanceUpdates
    , RollingUpdatesListInstanceUpdates

    -- * Request Lenses
    , ruliuRollingUpdate
    , ruliuProject
    , ruliuZone
    , ruliuFilter
    , ruliuPageToken
    , ruliuMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.listInstanceUpdates@ method which the
-- 'RollingUpdatesListInstanceUpdates' request conforms to.
type RollingUpdatesListInstanceUpdatesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             Capture "rollingUpdate" Text :>
               "instanceUpdates" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] InstanceUpdateList

-- | Lists the current status for each instance within a given update.
--
-- /See:/ 'rollingUpdatesListInstanceUpdates' smart constructor.
data RollingUpdatesListInstanceUpdates = RollingUpdatesListInstanceUpdates
    { _ruliuRollingUpdate :: !Text
    , _ruliuProject       :: !Text
    , _ruliuZone          :: !Text
    , _ruliuFilter        :: !(Maybe Text)
    , _ruliuPageToken     :: !(Maybe Text)
    , _ruliuMaxResults    :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesListInstanceUpdates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruliuRollingUpdate'
--
-- * 'ruliuProject'
--
-- * 'ruliuZone'
--
-- * 'ruliuFilter'
--
-- * 'ruliuPageToken'
--
-- * 'ruliuMaxResults'
rollingUpdatesListInstanceUpdates
    :: Text -- ^ 'ruliuRollingUpdate'
    -> Text -- ^ 'ruliuProject'
    -> Text -- ^ 'ruliuZone'
    -> RollingUpdatesListInstanceUpdates
rollingUpdatesListInstanceUpdates pRuliuRollingUpdate_ pRuliuProject_ pRuliuZone_ =
    RollingUpdatesListInstanceUpdates
    { _ruliuRollingUpdate = pRuliuRollingUpdate_
    , _ruliuProject = pRuliuProject_
    , _ruliuZone = pRuliuZone_
    , _ruliuFilter = Nothing
    , _ruliuPageToken = Nothing
    , _ruliuMaxResults = 500
    }

-- | The name of the update.
ruliuRollingUpdate :: Lens' RollingUpdatesListInstanceUpdates Text
ruliuRollingUpdate
  = lens _ruliuRollingUpdate
      (\ s a -> s{_ruliuRollingUpdate = a})

-- | The Google Developers Console project name.
ruliuProject :: Lens' RollingUpdatesListInstanceUpdates Text
ruliuProject
  = lens _ruliuProject (\ s a -> s{_ruliuProject = a})

-- | The name of the zone in which the update\'s target resides.
ruliuZone :: Lens' RollingUpdatesListInstanceUpdates Text
ruliuZone
  = lens _ruliuZone (\ s a -> s{_ruliuZone = a})

-- | Optional. Filter expression for filtering listed resources.
ruliuFilter :: Lens' RollingUpdatesListInstanceUpdates (Maybe Text)
ruliuFilter
  = lens _ruliuFilter (\ s a -> s{_ruliuFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
ruliuPageToken :: Lens' RollingUpdatesListInstanceUpdates (Maybe Text)
ruliuPageToken
  = lens _ruliuPageToken
      (\ s a -> s{_ruliuPageToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
ruliuMaxResults :: Lens' RollingUpdatesListInstanceUpdates Word32
ruliuMaxResults
  = lens _ruliuMaxResults
      (\ s a -> s{_ruliuMaxResults = a})

instance GoogleRequest
         RollingUpdatesListInstanceUpdates where
        type Rs RollingUpdatesListInstanceUpdates =
             InstanceUpdateList
        requestClient RollingUpdatesListInstanceUpdates{..}
          = go _ruliuProject _ruliuZone _ruliuRollingUpdate
              _ruliuFilter
              _ruliuPageToken
              (Just _ruliuMaxResults)
              (Just AltJSON)
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RollingUpdatesListInstanceUpdatesResource)
                      mempty
