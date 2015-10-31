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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.get@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get
    (
    -- * REST Resource
      RollingUpdatesGetResource

    -- * Creating a Request
    , rollingUpdatesGet
    , RollingUpdatesGet

    -- * Request Lenses
    , rugRollingUpdate
    , rugProject
    , rugZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.get@ method which the
-- 'RollingUpdatesGet' request conforms to.
type RollingUpdatesGetResource =
     "replicapoolupdater" :>
       "v1beta1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "rollingUpdates" :>
                   Capture "rollingUpdate" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] RollingUpdate

-- | Returns information about an update.
--
-- /See:/ 'rollingUpdatesGet' smart constructor.
data RollingUpdatesGet = RollingUpdatesGet
    { _rugRollingUpdate :: !Text
    , _rugProject       :: !Text
    , _rugZone          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rugRollingUpdate'
--
-- * 'rugProject'
--
-- * 'rugZone'
rollingUpdatesGet
    :: Text -- ^ 'rugRollingUpdate'
    -> Text -- ^ 'rugProject'
    -> Text -- ^ 'rugZone'
    -> RollingUpdatesGet
rollingUpdatesGet pRugRollingUpdate_ pRugProject_ pRugZone_ =
    RollingUpdatesGet
    { _rugRollingUpdate = pRugRollingUpdate_
    , _rugProject = pRugProject_
    , _rugZone = pRugZone_
    }

-- | The name of the update.
rugRollingUpdate :: Lens' RollingUpdatesGet Text
rugRollingUpdate
  = lens _rugRollingUpdate
      (\ s a -> s{_rugRollingUpdate = a})

-- | The Google Developers Console project name.
rugProject :: Lens' RollingUpdatesGet Text
rugProject
  = lens _rugProject (\ s a -> s{_rugProject = a})

-- | The name of the zone in which the update\'s target resides.
rugZone :: Lens' RollingUpdatesGet Text
rugZone = lens _rugZone (\ s a -> s{_rugZone = a})

instance GoogleRequest RollingUpdatesGet where
        type Rs RollingUpdatesGet = RollingUpdate
        type Scopes RollingUpdatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient RollingUpdatesGet{..}
          = go _rugProject _rugZone _rugRollingUpdate
              (Just AltJSON)
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy :: Proxy RollingUpdatesGetResource)
                      mempty
