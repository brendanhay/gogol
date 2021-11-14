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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing experiment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.patch@.
module Network.Google.Resource.Analytics.Management.Experiments.Patch
    (
    -- * REST Resource
      ManagementExperimentsPatchResource

    -- * Creating a Request
    , managementExperimentsPatch
    , ManagementExperimentsPatch

    -- * Request Lenses
    , mepWebPropertyId
    , mepProFileId
    , mepPayload
    , mepAccountId
    , mepExperimentId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.experiments.patch@ method which the
-- 'ManagementExperimentsPatch' request conforms to.
type ManagementExperimentsPatchResource =
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
                               Patch '[JSON] Experiment

-- | Update an existing experiment. This method supports patch semantics.
--
-- /See:/ 'managementExperimentsPatch' smart constructor.
data ManagementExperimentsPatch =
  ManagementExperimentsPatch'
    { _mepWebPropertyId :: !Text
    , _mepProFileId :: !Text
    , _mepPayload :: !Experiment
    , _mepAccountId :: !Text
    , _mepExperimentId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementExperimentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mepWebPropertyId'
--
-- * 'mepProFileId'
--
-- * 'mepPayload'
--
-- * 'mepAccountId'
--
-- * 'mepExperimentId'
managementExperimentsPatch
    :: Text -- ^ 'mepWebPropertyId'
    -> Text -- ^ 'mepProFileId'
    -> Experiment -- ^ 'mepPayload'
    -> Text -- ^ 'mepAccountId'
    -> Text -- ^ 'mepExperimentId'
    -> ManagementExperimentsPatch
managementExperimentsPatch pMepWebPropertyId_ pMepProFileId_ pMepPayload_ pMepAccountId_ pMepExperimentId_ =
  ManagementExperimentsPatch'
    { _mepWebPropertyId = pMepWebPropertyId_
    , _mepProFileId = pMepProFileId_
    , _mepPayload = pMepPayload_
    , _mepAccountId = pMepAccountId_
    , _mepExperimentId = pMepExperimentId_
    }


-- | Web property ID of the experiment to update.
mepWebPropertyId :: Lens' ManagementExperimentsPatch Text
mepWebPropertyId
  = lens _mepWebPropertyId
      (\ s a -> s{_mepWebPropertyId = a})

-- | View (Profile) ID of the experiment to update.
mepProFileId :: Lens' ManagementExperimentsPatch Text
mepProFileId
  = lens _mepProFileId (\ s a -> s{_mepProFileId = a})

-- | Multipart request metadata.
mepPayload :: Lens' ManagementExperimentsPatch Experiment
mepPayload
  = lens _mepPayload (\ s a -> s{_mepPayload = a})

-- | Account ID of the experiment to update.
mepAccountId :: Lens' ManagementExperimentsPatch Text
mepAccountId
  = lens _mepAccountId (\ s a -> s{_mepAccountId = a})

-- | Experiment ID of the experiment to update.
mepExperimentId :: Lens' ManagementExperimentsPatch Text
mepExperimentId
  = lens _mepExperimentId
      (\ s a -> s{_mepExperimentId = a})

instance GoogleRequest ManagementExperimentsPatch
         where
        type Rs ManagementExperimentsPatch = Experiment
        type Scopes ManagementExperimentsPatch =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementExperimentsPatch'{..}
          = go _mepAccountId _mepWebPropertyId _mepProFileId
              _mepExperimentId
              (Just AltJSON)
              _mepPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementExperimentsPatchResource)
                      mempty
