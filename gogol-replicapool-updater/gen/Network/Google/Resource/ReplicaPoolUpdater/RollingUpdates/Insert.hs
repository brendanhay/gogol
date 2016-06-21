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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts and starts a new update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.insert@.
module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert
    (
    -- * REST Resource
      RollingUpdatesInsertResource

    -- * Creating a Request
    , rollingUpdatesInsert
    , RollingUpdatesInsert

    -- * Request Lenses
    , ruiProject
    , ruiZone
    , ruiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.insert@ method which the
-- 'RollingUpdatesInsert' request conforms to.
type RollingUpdatesInsertResource =
     "replicapoolupdater" :>
       "v1beta1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "rollingUpdates" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RollingUpdate :>
                       Post '[JSON] Operation

-- | Inserts and starts a new update.
--
-- /See:/ 'rollingUpdatesInsert' smart constructor.
data RollingUpdatesInsert = RollingUpdatesInsert'
    { _ruiProject :: !Text
    , _ruiZone    :: !Text
    , _ruiPayload :: !RollingUpdate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruiProject'
--
-- * 'ruiZone'
--
-- * 'ruiPayload'
rollingUpdatesInsert
    :: Text -- ^ 'ruiProject'
    -> Text -- ^ 'ruiZone'
    -> RollingUpdate -- ^ 'ruiPayload'
    -> RollingUpdatesInsert
rollingUpdatesInsert pRuiProject_ pRuiZone_ pRuiPayload_ =
    RollingUpdatesInsert'
    { _ruiProject = pRuiProject_
    , _ruiZone = pRuiZone_
    , _ruiPayload = pRuiPayload_
    }

-- | The Google Developers Console project name.
ruiProject :: Lens' RollingUpdatesInsert Text
ruiProject
  = lens _ruiProject (\ s a -> s{_ruiProject = a})

-- | The name of the zone in which the update\'s target resides.
ruiZone :: Lens' RollingUpdatesInsert Text
ruiZone = lens _ruiZone (\ s a -> s{_ruiZone = a})

-- | Multipart request metadata.
ruiPayload :: Lens' RollingUpdatesInsert RollingUpdate
ruiPayload
  = lens _ruiPayload (\ s a -> s{_ruiPayload = a})

instance GoogleRequest RollingUpdatesInsert where
        type Rs RollingUpdatesInsert = Operation
        type Scopes RollingUpdatesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient RollingUpdatesInsert'{..}
          = go _ruiProject _ruiZone (Just AltJSON) _ruiPayload
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy :: Proxy RollingUpdatesInsertResource)
                      mempty
