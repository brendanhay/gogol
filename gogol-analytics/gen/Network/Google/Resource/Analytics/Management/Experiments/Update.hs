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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.update@.
module Network.Google.Resource.Analytics.Management.Experiments.Update
    (
    -- * REST Resource
      ManagementExperimentsUpdateResource

    -- * Creating a Request
    , managementExperimentsUpdate
    , ManagementExperimentsUpdate

    -- * Request Lenses
    , meuWebPropertyId
    , meuProFileId
    , meuPayload
    , meuAccountId
    , meuExperimentId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.experiments.update@ method which the
-- 'ManagementExperimentsUpdate' request conforms to.
type ManagementExperimentsUpdateResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Experiment :>
                               Put '[JSON] Experiment

-- | Update an existing experiment.
--
-- /See:/ 'managementExperimentsUpdate' smart constructor.
data ManagementExperimentsUpdate =
  ManagementExperimentsUpdate'
    { _meuWebPropertyId :: !Text
    , _meuProFileId :: !Text
    , _meuPayload :: !Experiment
    , _meuAccountId :: !Text
    , _meuExperimentId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementExperimentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meuWebPropertyId'
--
-- * 'meuProFileId'
--
-- * 'meuPayload'
--
-- * 'meuAccountId'
--
-- * 'meuExperimentId'
managementExperimentsUpdate
    :: Text -- ^ 'meuWebPropertyId'
    -> Text -- ^ 'meuProFileId'
    -> Experiment -- ^ 'meuPayload'
    -> Text -- ^ 'meuAccountId'
    -> Text -- ^ 'meuExperimentId'
    -> ManagementExperimentsUpdate
managementExperimentsUpdate pMeuWebPropertyId_ pMeuProFileId_ pMeuPayload_ pMeuAccountId_ pMeuExperimentId_ =
  ManagementExperimentsUpdate'
    { _meuWebPropertyId = pMeuWebPropertyId_
    , _meuProFileId = pMeuProFileId_
    , _meuPayload = pMeuPayload_
    , _meuAccountId = pMeuAccountId_
    , _meuExperimentId = pMeuExperimentId_
    }


-- | Web property ID of the experiment to update.
meuWebPropertyId :: Lens' ManagementExperimentsUpdate Text
meuWebPropertyId
  = lens _meuWebPropertyId
      (\ s a -> s{_meuWebPropertyId = a})

-- | View (Profile) ID of the experiment to update.
meuProFileId :: Lens' ManagementExperimentsUpdate Text
meuProFileId
  = lens _meuProFileId (\ s a -> s{_meuProFileId = a})

-- | Multipart request metadata.
meuPayload :: Lens' ManagementExperimentsUpdate Experiment
meuPayload
  = lens _meuPayload (\ s a -> s{_meuPayload = a})

-- | Account ID of the experiment to update.
meuAccountId :: Lens' ManagementExperimentsUpdate Text
meuAccountId
  = lens _meuAccountId (\ s a -> s{_meuAccountId = a})

-- | Experiment ID of the experiment to update.
meuExperimentId :: Lens' ManagementExperimentsUpdate Text
meuExperimentId
  = lens _meuExperimentId
      (\ s a -> s{_meuExperimentId = a})

instance GoogleRequest ManagementExperimentsUpdate
         where
        type Rs ManagementExperimentsUpdate = Experiment
        type Scopes ManagementExperimentsUpdate =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementExperimentsUpdate'{..}
          = go _meuAccountId _meuWebPropertyId _meuProFileId
              _meuExperimentId
              (Just AltJSON)
              _meuPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementExperimentsUpdateResource)
                      mempty
