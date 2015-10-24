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
-- Module      : Network.Google.Resource.Compute.Addresses.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of addresses grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.addresses.aggregatedList@.
module Network.Google.Resource.Compute.Addresses.AggregatedList
    (
    -- * REST Resource
      AddressesAggregatedListResource

    -- * Creating a Request
    , addressesAggregatedList
    , AddressesAggregatedList

    -- * Request Lenses
    , aalProject
    , aalFilter
    , aalPageToken
    , aalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.addresses.aggregatedList@ method which the
-- 'AddressesAggregatedList' request conforms to.
type AddressesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "addresses" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AddressAggregatedList

-- | Retrieves the list of addresses grouped by scope.
--
-- /See:/ 'addressesAggregatedList' smart constructor.
data AddressesAggregatedList = AddressesAggregatedList
    { _aalProject    :: !Text
    , _aalFilter     :: !(Maybe Text)
    , _aalPageToken  :: !(Maybe Text)
    , _aalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalProject'
--
-- * 'aalFilter'
--
-- * 'aalPageToken'
--
-- * 'aalMaxResults'
addressesAggregatedList
    :: Text -- ^ 'aalProject'
    -> AddressesAggregatedList
addressesAggregatedList pAalProject_ =
    AddressesAggregatedList
    { _aalProject = pAalProject_
    , _aalFilter = Nothing
    , _aalPageToken = Nothing
    , _aalMaxResults = 500
    }

-- | Project ID for this request.
aalProject :: Lens' AddressesAggregatedList Text
aalProject
  = lens _aalProject (\ s a -> s{_aalProject = a})

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
aalFilter :: Lens' AddressesAggregatedList (Maybe Text)
aalFilter
  = lens _aalFilter (\ s a -> s{_aalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
aalPageToken :: Lens' AddressesAggregatedList (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | Maximum count of results to be returned.
aalMaxResults :: Lens' AddressesAggregatedList Word32
aalMaxResults
  = lens _aalMaxResults
      (\ s a -> s{_aalMaxResults = a})
      . _Coerce

instance GoogleRequest AddressesAggregatedList where
        type Rs AddressesAggregatedList =
             AddressAggregatedList
        requestClient AddressesAggregatedList{..}
          = go _aalProject _aalFilter _aalPageToken
              (Just _aalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AddressesAggregatedListResource)
                      mempty
