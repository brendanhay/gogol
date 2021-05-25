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
-- Module      : Network.Google.Resource.BigQuery.Routines.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified routine resource by routine ID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.get@.
module Network.Google.Resource.BigQuery.Routines.Get
    (
    -- * REST Resource
      RoutinesGetResource

    -- * Creating a Request
    , routinesGet
    , RoutinesGet

    -- * Request Lenses
    , rgReadMask
    , rgDataSetId
    , rgProjectId
    , rgRoutineId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.routines.get@ method which the
-- 'RoutinesGet' request conforms to.
type RoutinesGetResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "routines" :>
                   Capture "routineId" Text :>
                     QueryParam "readMask" GFieldMask :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Routine

-- | Gets the specified routine resource by routine ID.
--
-- /See:/ 'routinesGet' smart constructor.
data RoutinesGet =
  RoutinesGet'
    { _rgReadMask :: !(Maybe GFieldMask)
    , _rgDataSetId :: !Text
    , _rgProjectId :: !Text
    , _rgRoutineId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutinesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgReadMask'
--
-- * 'rgDataSetId'
--
-- * 'rgProjectId'
--
-- * 'rgRoutineId'
routinesGet
    :: Text -- ^ 'rgDataSetId'
    -> Text -- ^ 'rgProjectId'
    -> Text -- ^ 'rgRoutineId'
    -> RoutinesGet
routinesGet pRgDataSetId_ pRgProjectId_ pRgRoutineId_ =
  RoutinesGet'
    { _rgReadMask = Nothing
    , _rgDataSetId = pRgDataSetId_
    , _rgProjectId = pRgProjectId_
    , _rgRoutineId = pRgRoutineId_
    }


-- | If set, only the Routine fields in the field mask are returned in the
-- response. If unset, all Routine fields are returned.
rgReadMask :: Lens' RoutinesGet (Maybe GFieldMask)
rgReadMask
  = lens _rgReadMask (\ s a -> s{_rgReadMask = a})

-- | Required. Dataset ID of the requested routine
rgDataSetId :: Lens' RoutinesGet Text
rgDataSetId
  = lens _rgDataSetId (\ s a -> s{_rgDataSetId = a})

-- | Required. Project ID of the requested routine
rgProjectId :: Lens' RoutinesGet Text
rgProjectId
  = lens _rgProjectId (\ s a -> s{_rgProjectId = a})

-- | Required. Routine ID of the requested routine
rgRoutineId :: Lens' RoutinesGet Text
rgRoutineId
  = lens _rgRoutineId (\ s a -> s{_rgRoutineId = a})

instance GoogleRequest RoutinesGet where
        type Rs RoutinesGet = Routine
        type Scopes RoutinesGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient RoutinesGet'{..}
          = go _rgProjectId _rgDataSetId _rgRoutineId
              _rgReadMask
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy RoutinesGetResource)
                      mempty
