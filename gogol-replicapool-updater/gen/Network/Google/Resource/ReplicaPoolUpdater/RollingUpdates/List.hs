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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists recent updates for a given managed instance group, in reverse
-- chronological order and paginated format.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterRollingUpdatesList@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List
    (
    -- * REST Resource
      RollingUpdatesListResource

    -- * Creating a Request
    , rollingUpdatesList'
    , RollingUpdatesList'

    -- * Request Lenses
    , rulProject
    , rulZone
    , rulFilter
    , rulPageToken
    , rulMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterRollingUpdatesList@ method which the
-- 'RollingUpdatesList'' request conforms to.
type RollingUpdatesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "rollingUpdates" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] RollingUpdateList

-- | Lists recent updates for a given managed instance group, in reverse
-- chronological order and paginated format.
--
-- /See:/ 'rollingUpdatesList'' smart constructor.
data RollingUpdatesList' = RollingUpdatesList'
    { _rulProject    :: !Text
    , _rulZone       :: !Text
    , _rulFilter     :: !(Maybe Text)
    , _rulPageToken  :: !(Maybe Text)
    , _rulMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rulProject'
--
-- * 'rulZone'
--
-- * 'rulFilter'
--
-- * 'rulPageToken'
--
-- * 'rulMaxResults'
rollingUpdatesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> RollingUpdatesList'
rollingUpdatesList' pRulProject_ pRulZone_ =
    RollingUpdatesList'
    { _rulProject = pRulProject_
    , _rulZone = pRulZone_
    , _rulFilter = Nothing
    , _rulPageToken = Nothing
    , _rulMaxResults = 500
    }

-- | The Google Developers Console project name.
rulProject :: Lens' RollingUpdatesList' Text
rulProject
  = lens _rulProject (\ s a -> s{_rulProject = a})

-- | The name of the zone in which the update\'s target resides.
rulZone :: Lens' RollingUpdatesList' Text
rulZone = lens _rulZone (\ s a -> s{_rulZone = a})

-- | Optional. Filter expression for filtering listed resources.
rulFilter :: Lens' RollingUpdatesList' (Maybe Text)
rulFilter
  = lens _rulFilter (\ s a -> s{_rulFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
rulPageToken :: Lens' RollingUpdatesList' (Maybe Text)
rulPageToken
  = lens _rulPageToken (\ s a -> s{_rulPageToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
rulMaxResults :: Lens' RollingUpdatesList' Word32
rulMaxResults
  = lens _rulMaxResults
      (\ s a -> s{_rulMaxResults = a})

instance GoogleRequest RollingUpdatesList' where
        type Rs RollingUpdatesList' = RollingUpdateList
        requestClient RollingUpdatesList'{..}
          = go _rulProject _rulZone _rulFilter _rulPageToken
              (Just _rulMaxResults)
              (Just AltJSON)
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy :: Proxy RollingUpdatesListResource)
                      mempty
