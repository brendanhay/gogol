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
-- Module      : Network.Google.Resource.Compute.Regions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRegionsList@.
module Network.Google.Resource.Compute.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList'
    , RegionsList'

    -- * Request Lenses
    , rProject
    , rFilter
    , rPageToken
    , rMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRegionsList@ method which the
-- 'RegionsList'' request conforms to.
type RegionsListResource =
     Capture "project" Text :>
       "regions" :>
         QueryParam "filter" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :> Get '[JSON] RegionList

-- | Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ 'regionsList'' smart constructor.
data RegionsList' = RegionsList'
    { _rProject    :: !Text
    , _rFilter     :: !(Maybe Text)
    , _rPageToken  :: !(Maybe Text)
    , _rMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rProject'
--
-- * 'rFilter'
--
-- * 'rPageToken'
--
-- * 'rMaxResults'
regionsList'
    :: Text -- ^ 'project'
    -> RegionsList'
regionsList' pRProject_ =
    RegionsList'
    { _rProject = pRProject_
    , _rFilter = Nothing
    , _rPageToken = Nothing
    , _rMaxResults = 500
    }

-- | Project ID for this request.
rProject :: Lens' RegionsList' Text
rProject = lens _rProject (\ s a -> s{_rProject = a})

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
rFilter :: Lens' RegionsList' (Maybe Text)
rFilter = lens _rFilter (\ s a -> s{_rFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
rPageToken :: Lens' RegionsList' (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | Maximum count of results to be returned.
rMaxResults :: Lens' RegionsList' Word32
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a})

instance GoogleRequest RegionsList' where
        type Rs RegionsList' = RegionList
        requestClient RegionsList'{..}
          = go _rProject _rFilter _rPageToken
              (Just _rMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
