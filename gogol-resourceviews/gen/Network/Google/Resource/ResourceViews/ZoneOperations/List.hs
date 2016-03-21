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
-- Module      : Network.Google.Resource.ResourceViews.ZoneOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of operation resources contained within the specified
-- zone.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneOperations.list@.
module Network.Google.Resource.ResourceViews.ZoneOperations.List
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

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @resourceviews.zoneOperations.list@ method which the
-- 'ZoneOperationsList' request conforms to.
type ZoneOperationsListResource =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
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
data ZoneOperationsList = ZoneOperationsList'
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
    ZoneOperationsList'
    { _zolProject = pZolProject_
    , _zolZone = pZolZone_
    , _zolFilter = Nothing
    , _zolPageToken = Nothing
    , _zolMaxResults = 500
    }

-- | Name of the project scoping this request.
zolProject :: Lens' ZoneOperationsList Text
zolProject
  = lens _zolProject (\ s a -> s{_zolProject = a})

-- | Name of the zone scoping this request.
zolZone :: Lens' ZoneOperationsList Text
zolZone = lens _zolZone (\ s a -> s{_zolZone = a})

-- | Optional. Filter expression for filtering listed resources.
zolFilter :: Lens' ZoneOperationsList (Maybe Text)
zolFilter
  = lens _zolFilter (\ s a -> s{_zolFilter = a})

-- | Optional. Tag returned by a previous list request truncated by
-- maxResults. Used to continue a previous list request.
zolPageToken :: Lens' ZoneOperationsList (Maybe Text)
zolPageToken
  = lens _zolPageToken (\ s a -> s{_zolPageToken = a})

-- | Optional. Maximum count of results to be returned. Maximum value is 500
-- and default value is 500.
zolMaxResults :: Lens' ZoneOperationsList Word32
zolMaxResults
  = lens _zolMaxResults
      (\ s a -> s{_zolMaxResults = a})
      . _Coerce

instance GoogleRequest ZoneOperationsList where
        type Rs ZoneOperationsList = OperationList
        type Scopes ZoneOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient ZoneOperationsList'{..}
          = go _zolProject _zolZone _zolFilter _zolPageToken
              (Just _zolMaxResults)
              (Just AltJSON)
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneOperationsListResource)
                      mempty
