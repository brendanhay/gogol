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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.delete@.
module Network.Google.Resource.Analytics.Management.Experiments.Delete
    (
    -- * REST Resource
      ManagementExperimentsDeleteResource

    -- * Creating a Request
    , managementExperimentsDelete
    , ManagementExperimentsDelete

    -- * Request Lenses
    , medWebPropertyId
    , medProFileId
    , medAccountId
    , medExperimentId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.experiments.delete@ method which the
-- 'ManagementExperimentsDelete' request conforms to.
type ManagementExperimentsDeleteResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       "experiments" :>
                         Capture "experimentId" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete an experiment.
--
-- /See:/ 'managementExperimentsDelete' smart constructor.
data ManagementExperimentsDelete = ManagementExperimentsDelete
    { _medWebPropertyId :: !Text
    , _medProFileId     :: !Text
    , _medAccountId     :: !Text
    , _medExperimentId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'medWebPropertyId'
--
-- * 'medProFileId'
--
-- * 'medAccountId'
--
-- * 'medExperimentId'
managementExperimentsDelete
    :: Text -- ^ 'medWebPropertyId'
    -> Text -- ^ 'medProFileId'
    -> Text -- ^ 'medAccountId'
    -> Text -- ^ 'medExperimentId'
    -> ManagementExperimentsDelete
managementExperimentsDelete pMedWebPropertyId_ pMedProFileId_ pMedAccountId_ pMedExperimentId_ =
    ManagementExperimentsDelete
    { _medWebPropertyId = pMedWebPropertyId_
    , _medProFileId = pMedProFileId_
    , _medAccountId = pMedAccountId_
    , _medExperimentId = pMedExperimentId_
    }

-- | Web property ID to which the experiment belongs
medWebPropertyId :: Lens' ManagementExperimentsDelete Text
medWebPropertyId
  = lens _medWebPropertyId
      (\ s a -> s{_medWebPropertyId = a})

-- | View (Profile) ID to which the experiment belongs
medProFileId :: Lens' ManagementExperimentsDelete Text
medProFileId
  = lens _medProFileId (\ s a -> s{_medProFileId = a})

-- | Account ID to which the experiment belongs
medAccountId :: Lens' ManagementExperimentsDelete Text
medAccountId
  = lens _medAccountId (\ s a -> s{_medAccountId = a})

-- | ID of the experiment to delete
medExperimentId :: Lens' ManagementExperimentsDelete Text
medExperimentId
  = lens _medExperimentId
      (\ s a -> s{_medExperimentId = a})

instance GoogleRequest ManagementExperimentsDelete
         where
        type Rs ManagementExperimentsDelete = ()
        type Scopes ManagementExperimentsDelete =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementExperimentsDelete{..}
          = go _medAccountId _medWebPropertyId _medProFileId
              _medExperimentId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementExperimentsDeleteResource)
                      mempty
