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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.insert@.
module Network.Google.Resource.Analytics.Management.Experiments.Insert
    (
    -- * REST Resource
      ManagementExperimentsInsertResource

    -- * Creating a Request
    , managementExperimentsInsert
    , ManagementExperimentsInsert

    -- * Request Lenses
    , meiWebPropertyId
    , meiProFileId
    , meiPayload
    , meiAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.experiments.insert@ method which the
-- 'ManagementExperimentsInsert' request conforms to.
type ManagementExperimentsInsertResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Experiment :> Post '[JSON] Experiment

-- | Create a new experiment.
--
-- /See:/ 'managementExperimentsInsert' smart constructor.
data ManagementExperimentsInsert =
  ManagementExperimentsInsert'
    { _meiWebPropertyId :: !Text
    , _meiProFileId     :: !Text
    , _meiPayload       :: !Experiment
    , _meiAccountId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagementExperimentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meiWebPropertyId'
--
-- * 'meiProFileId'
--
-- * 'meiPayload'
--
-- * 'meiAccountId'
managementExperimentsInsert
    :: Text -- ^ 'meiWebPropertyId'
    -> Text -- ^ 'meiProFileId'
    -> Experiment -- ^ 'meiPayload'
    -> Text -- ^ 'meiAccountId'
    -> ManagementExperimentsInsert
managementExperimentsInsert pMeiWebPropertyId_ pMeiProFileId_ pMeiPayload_ pMeiAccountId_ =
  ManagementExperimentsInsert'
    { _meiWebPropertyId = pMeiWebPropertyId_
    , _meiProFileId = pMeiProFileId_
    , _meiPayload = pMeiPayload_
    , _meiAccountId = pMeiAccountId_
    }

-- | Web property ID to create the experiment for.
meiWebPropertyId :: Lens' ManagementExperimentsInsert Text
meiWebPropertyId
  = lens _meiWebPropertyId
      (\ s a -> s{_meiWebPropertyId = a})

-- | View (Profile) ID to create the experiment for.
meiProFileId :: Lens' ManagementExperimentsInsert Text
meiProFileId
  = lens _meiProFileId (\ s a -> s{_meiProFileId = a})

-- | Multipart request metadata.
meiPayload :: Lens' ManagementExperimentsInsert Experiment
meiPayload
  = lens _meiPayload (\ s a -> s{_meiPayload = a})

-- | Account ID to create the experiment for.
meiAccountId :: Lens' ManagementExperimentsInsert Text
meiAccountId
  = lens _meiAccountId (\ s a -> s{_meiAccountId = a})

instance GoogleRequest ManagementExperimentsInsert
         where
        type Rs ManagementExperimentsInsert = Experiment
        type Scopes ManagementExperimentsInsert =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementExperimentsInsert'{..}
          = go _meiAccountId _meiWebPropertyId _meiProFileId
              (Just AltJSON)
              _meiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementExperimentsInsertResource)
                      mempty
