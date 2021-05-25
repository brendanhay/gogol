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
-- Module      : Network.Google.Resource.BigQuery.Routines.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing routine. The update method replaces
-- the entire Routine resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.update@.
module Network.Google.Resource.BigQuery.Routines.Update
    (
    -- * REST Resource
      RoutinesUpdateResource

    -- * Creating a Request
    , routinesUpdate
    , RoutinesUpdate

    -- * Request Lenses
    , ruPayload
    , ruDataSetId
    , ruProjectId
    , ruRoutineId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.routines.update@ method which the
-- 'RoutinesUpdate' request conforms to.
type RoutinesUpdateResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "routines" :>
                   Capture "routineId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Routine :> Put '[JSON] Routine

-- | Updates information in an existing routine. The update method replaces
-- the entire Routine resource.
--
-- /See:/ 'routinesUpdate' smart constructor.
data RoutinesUpdate =
  RoutinesUpdate'
    { _ruPayload :: !Routine
    , _ruDataSetId :: !Text
    , _ruProjectId :: !Text
    , _ruRoutineId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutinesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruPayload'
--
-- * 'ruDataSetId'
--
-- * 'ruProjectId'
--
-- * 'ruRoutineId'
routinesUpdate
    :: Routine -- ^ 'ruPayload'
    -> Text -- ^ 'ruDataSetId'
    -> Text -- ^ 'ruProjectId'
    -> Text -- ^ 'ruRoutineId'
    -> RoutinesUpdate
routinesUpdate pRuPayload_ pRuDataSetId_ pRuProjectId_ pRuRoutineId_ =
  RoutinesUpdate'
    { _ruPayload = pRuPayload_
    , _ruDataSetId = pRuDataSetId_
    , _ruProjectId = pRuProjectId_
    , _ruRoutineId = pRuRoutineId_
    }


-- | Multipart request metadata.
ruPayload :: Lens' RoutinesUpdate Routine
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | Required. Dataset ID of the routine to update
ruDataSetId :: Lens' RoutinesUpdate Text
ruDataSetId
  = lens _ruDataSetId (\ s a -> s{_ruDataSetId = a})

-- | Required. Project ID of the routine to update
ruProjectId :: Lens' RoutinesUpdate Text
ruProjectId
  = lens _ruProjectId (\ s a -> s{_ruProjectId = a})

-- | Required. Routine ID of the routine to update
ruRoutineId :: Lens' RoutinesUpdate Text
ruRoutineId
  = lens _ruRoutineId (\ s a -> s{_ruRoutineId = a})

instance GoogleRequest RoutinesUpdate where
        type Rs RoutinesUpdate = Routine
        type Scopes RoutinesUpdate =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient RoutinesUpdate'{..}
          = go _ruProjectId _ruDataSetId _ruRoutineId
              (Just AltJSON)
              _ruPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy RoutinesUpdateResource)
                      mempty
