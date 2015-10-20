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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an experiment to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.get@.
module Network.Google.Resource.Analytics.Management.Experiments.Get
    (
    -- * REST Resource
      ManagementExperimentsGetResource

    -- * Creating a Request
    , managementExperimentsGet
    , ManagementExperimentsGet

    -- * Request Lenses
    , megWebPropertyId
    , megProFileId
    , megAccountId
    , megExperimentId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.experiments.get@ method which the
-- 'ManagementExperimentsGet' request conforms to.
type ManagementExperimentsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "experiments" :>
                     Capture "experimentId" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Experiment

-- | Returns an experiment to which the user has access.
--
-- /See:/ 'managementExperimentsGet' smart constructor.
data ManagementExperimentsGet = ManagementExperimentsGet
    { _megWebPropertyId :: !Text
    , _megProFileId     :: !Text
    , _megAccountId     :: !Text
    , _megExperimentId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'megWebPropertyId'
--
-- * 'megProFileId'
--
-- * 'megAccountId'
--
-- * 'megExperimentId'
managementExperimentsGet
    :: Text -- ^ 'megWebPropertyId'
    -> Text -- ^ 'megProFileId'
    -> Text -- ^ 'megAccountId'
    -> Text -- ^ 'megExperimentId'
    -> ManagementExperimentsGet
managementExperimentsGet pMegWebPropertyId_ pMegProFileId_ pMegAccountId_ pMegExperimentId_ =
    ManagementExperimentsGet
    { _megWebPropertyId = pMegWebPropertyId_
    , _megProFileId = pMegProFileId_
    , _megAccountId = pMegAccountId_
    , _megExperimentId = pMegExperimentId_
    }

-- | Web property ID to retrieve the experiment for.
megWebPropertyId :: Lens' ManagementExperimentsGet Text
megWebPropertyId
  = lens _megWebPropertyId
      (\ s a -> s{_megWebPropertyId = a})

-- | View (Profile) ID to retrieve the experiment for.
megProFileId :: Lens' ManagementExperimentsGet Text
megProFileId
  = lens _megProFileId (\ s a -> s{_megProFileId = a})

-- | Account ID to retrieve the experiment for.
megAccountId :: Lens' ManagementExperimentsGet Text
megAccountId
  = lens _megAccountId (\ s a -> s{_megAccountId = a})

-- | Experiment ID to retrieve the experiment for.
megExperimentId :: Lens' ManagementExperimentsGet Text
megExperimentId
  = lens _megExperimentId
      (\ s a -> s{_megExperimentId = a})

instance GoogleRequest ManagementExperimentsGet where
        type Rs ManagementExperimentsGet = Experiment
        requestClient ManagementExperimentsGet{..}
          = go _megAccountId _megWebPropertyId _megProFileId
              _megExperimentId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementExperimentsGetResource)
                      mempty
