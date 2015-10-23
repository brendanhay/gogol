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
-- Module      : Network.Google.Resource.Compute.Zones.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of zone resources available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.zones.list@.
module Network.Google.Resource.Compute.Zones.List
    (
    -- * REST Resource
      ZonesListResource

    -- * Creating a Request
    , zonesList
    , ZonesList

    -- * Request Lenses
    , zlProject
    , zlFilter
    , zlPageToken
    , zlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.zones.list@ method which the
-- 'ZonesList' request conforms to.
type ZonesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               QueryParam "filter" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (JSONText Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ZoneList

-- | Retrieves the list of zone resources available to the specified project.
--
-- /See:/ 'zonesList' smart constructor.
data ZonesList = ZonesList
    { _zlProject    :: !Text
    , _zlFilter     :: !(Maybe Text)
    , _zlPageToken  :: !(Maybe Text)
    , _zlMaxResults :: !(JSONText Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZonesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlProject'
--
-- * 'zlFilter'
--
-- * 'zlPageToken'
--
-- * 'zlMaxResults'
zonesList
    :: Text -- ^ 'zlProject'
    -> ZonesList
zonesList pZlProject_ =
    ZonesList
    { _zlProject = pZlProject_
    , _zlFilter = Nothing
    , _zlPageToken = Nothing
    , _zlMaxResults = 500
    }

-- | Project ID for this request.
zlProject :: Lens' ZonesList Text
zlProject
  = lens _zlProject (\ s a -> s{_zlProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
zlFilter :: Lens' ZonesList (Maybe Text)
zlFilter = lens _zlFilter (\ s a -> s{_zlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
zlPageToken :: Lens' ZonesList (Maybe Text)
zlPageToken
  = lens _zlPageToken (\ s a -> s{_zlPageToken = a})

-- | Maximum count of results to be returned.
zlMaxResults :: Lens' ZonesList Word32
zlMaxResults
  = lens _zlMaxResults (\ s a -> s{_zlMaxResults = a})
      . _Coerce

instance GoogleRequest ZonesList where
        type Rs ZonesList = ZoneList
        requestClient ZonesList{..}
          = go _zlProject _zlFilter _zlPageToken
              (Just _zlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ZonesListResource)
                      mempty
