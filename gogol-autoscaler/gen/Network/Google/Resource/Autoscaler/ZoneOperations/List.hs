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
-- Module      : Network.Google.Resource.Autoscaler.ZoneOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of operation resources contained within the specified
-- zone.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.zoneOperations.list@.
module Network.Google.Resource.Autoscaler.ZoneOperations.List
    (
    -- * REST Resource
      ZoneOperationsListResource

    -- * Creating a Request
    , zoneOperationsList
    , ZoneOperationsList

    -- * Request Lenses
    , zolProject
    , zolZone
    , zolFilter
    , zolPageToken
    , zolMaxResults
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @autoscaler.zoneOperations.list@ method which the
-- 'ZoneOperationsList' request conforms to.
type ZoneOperationsListResource =
     "autoscaler" :>
       "v1beta2" :>
         Capture "project" Text :>
           "zones" :>
             Capture "zone" Text :>
               "operations" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves the list of operation resources contained within the specified
-- zone.
--
-- /See:/ 'zoneOperationsList' smart constructor.
data ZoneOperationsList = ZoneOperationsList
    { _zolProject    :: !Text
    , _zolZone       :: !Text
    , _zolFilter     :: !(Maybe Text)
    , _zolPageToken  :: !(Maybe Text)
    , _zolMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zolProject'
--
-- * 'zolZone'
--
-- * 'zolFilter'
--
-- * 'zolPageToken'
--
-- * 'zolMaxResults'
zoneOperationsList
    :: Text -- ^ 'zolProject'
    -> Text -- ^ 'zolZone'
    -> ZoneOperationsList
zoneOperationsList pZolProject_ pZolZone_ =
    ZoneOperationsList
    { _zolProject = pZolProject_
    , _zolZone = pZolZone_
    , _zolFilter = Nothing
    , _zolPageToken = Nothing
    , _zolMaxResults = 500
    }

zolProject :: Lens' ZoneOperationsList Text
zolProject
  = lens _zolProject (\ s a -> s{_zolProject = a})

zolZone :: Lens' ZoneOperationsList Text
zolZone = lens _zolZone (\ s a -> s{_zolZone = a})

zolFilter :: Lens' ZoneOperationsList (Maybe Text)
zolFilter
  = lens _zolFilter (\ s a -> s{_zolFilter = a})

zolPageToken :: Lens' ZoneOperationsList (Maybe Text)
zolPageToken
  = lens _zolPageToken (\ s a -> s{_zolPageToken = a})

zolMaxResults :: Lens' ZoneOperationsList Word32
zolMaxResults
  = lens _zolMaxResults
      (\ s a -> s{_zolMaxResults = a})
      . _Coerce

instance GoogleRequest ZoneOperationsList where
        type Rs ZoneOperationsList = OperationList
        type Scopes ZoneOperationsList =
             '["https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ZoneOperationsList{..}
          = go _zolProject _zolZone _zolFilter _zolPageToken
              (Just _zolMaxResults)
              (Just AltJSON)
              autoscalerService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneOperationsListResource)
                      mempty
