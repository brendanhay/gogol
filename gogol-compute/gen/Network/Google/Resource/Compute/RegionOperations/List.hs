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
-- Module      : Network.Google.Resource.Compute.RegionOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Operation resources contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRegionOperationsList@.
module Network.Google.Resource.Compute.RegionOperations.List
    (
    -- * REST Resource
      RegionOperationsListResource

    -- * Creating a Request
    , regionOperationsList'
    , RegionOperationsList'

    -- * Request Lenses
    , rolProject
    , rolFilter
    , rolRegion
    , rolPageToken
    , rolMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRegionOperationsList@ method which the
-- 'RegionOperationsList'' request conforms to.
type RegionOperationsListResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "operations" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves the list of Operation resources contained within the specified
-- region.
--
-- /See:/ 'regionOperationsList'' smart constructor.
data RegionOperationsList' = RegionOperationsList'
    { _rolProject    :: !Text
    , _rolFilter     :: !(Maybe Text)
    , _rolRegion     :: !Text
    , _rolPageToken  :: !(Maybe Text)
    , _rolMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rolProject'
--
-- * 'rolFilter'
--
-- * 'rolRegion'
--
-- * 'rolPageToken'
--
-- * 'rolMaxResults'
regionOperationsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> RegionOperationsList'
regionOperationsList' pRolProject_ pRolRegion_ =
    RegionOperationsList'
    { _rolProject = pRolProject_
    , _rolFilter = Nothing
    , _rolRegion = pRolRegion_
    , _rolPageToken = Nothing
    , _rolMaxResults = 500
    }

-- | Project ID for this request.
rolProject :: Lens' RegionOperationsList' Text
rolProject
  = lens _rolProject (\ s a -> s{_rolProject = a})

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
rolFilter :: Lens' RegionOperationsList' (Maybe Text)
rolFilter
  = lens _rolFilter (\ s a -> s{_rolFilter = a})

-- | Name of the region scoping this request.
rolRegion :: Lens' RegionOperationsList' Text
rolRegion
  = lens _rolRegion (\ s a -> s{_rolRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
rolPageToken :: Lens' RegionOperationsList' (Maybe Text)
rolPageToken
  = lens _rolPageToken (\ s a -> s{_rolPageToken = a})

-- | Maximum count of results to be returned.
rolMaxResults :: Lens' RegionOperationsList' Word32
rolMaxResults
  = lens _rolMaxResults
      (\ s a -> s{_rolMaxResults = a})

instance GoogleRequest RegionOperationsList' where
        type Rs RegionOperationsList' = OperationList
        requestClient RegionOperationsList'{..}
          = go _rolProject _rolRegion _rolFilter _rolPageToken
              (Just _rolMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionOperationsListResource)
                      mempty
