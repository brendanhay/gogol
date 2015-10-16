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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists experiments to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementExperimentsList@.
module Network.Google.Resource.Analytics.Management.Experiments.List
    (
    -- * REST Resource
      ManagementExperimentsListResource

    -- * Creating a Request
    , managementExperimentsList'
    , ManagementExperimentsList'

    -- * Request Lenses
    , melWebPropertyId
    , melProFileId
    , melAccountId
    , melStartIndex
    , melMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsList@ method which the
-- 'ManagementExperimentsList'' request conforms to.
type ManagementExperimentsListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "experiments" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Experiments

-- | Lists experiments to which the user has access.
--
-- /See:/ 'managementExperimentsList'' smart constructor.
data ManagementExperimentsList' = ManagementExperimentsList'
    { _melWebPropertyId :: !Text
    , _melProFileId     :: !Text
    , _melAccountId     :: !Text
    , _melStartIndex    :: !(Maybe Int32)
    , _melMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'melWebPropertyId'
--
-- * 'melProFileId'
--
-- * 'melAccountId'
--
-- * 'melStartIndex'
--
-- * 'melMaxResults'
managementExperimentsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementExperimentsList'
managementExperimentsList' pMelWebPropertyId_ pMelProFileId_ pMelAccountId_ =
    ManagementExperimentsList'
    { _melWebPropertyId = pMelWebPropertyId_
    , _melProFileId = pMelProFileId_
    , _melAccountId = pMelAccountId_
    , _melStartIndex = Nothing
    , _melMaxResults = Nothing
    }

-- | Web property ID to retrieve experiments for.
melWebPropertyId :: Lens' ManagementExperimentsList' Text
melWebPropertyId
  = lens _melWebPropertyId
      (\ s a -> s{_melWebPropertyId = a})

-- | View (Profile) ID to retrieve experiments for.
melProFileId :: Lens' ManagementExperimentsList' Text
melProFileId
  = lens _melProFileId (\ s a -> s{_melProFileId = a})

-- | Account ID to retrieve experiments for.
melAccountId :: Lens' ManagementExperimentsList' Text
melAccountId
  = lens _melAccountId (\ s a -> s{_melAccountId = a})

-- | An index of the first experiment to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
melStartIndex :: Lens' ManagementExperimentsList' (Maybe Int32)
melStartIndex
  = lens _melStartIndex
      (\ s a -> s{_melStartIndex = a})

-- | The maximum number of experiments to include in this response.
melMaxResults :: Lens' ManagementExperimentsList' (Maybe Int32)
melMaxResults
  = lens _melMaxResults
      (\ s a -> s{_melMaxResults = a})

instance GoogleRequest ManagementExperimentsList'
         where
        type Rs ManagementExperimentsList' = Experiments
        requestClient ManagementExperimentsList'{..}
          = go _melAccountId _melWebPropertyId _melProFileId
              _melStartIndex
              _melMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementExperimentsListResource)
                      mempty
