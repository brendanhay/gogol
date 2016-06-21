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
-- Module      : Network.Google.Resource.Compute.Autoscalers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of autoscalers contained within the specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.list@.
module Network.Google.Resource.Compute.Autoscalers.List
    (
    -- * REST Resource
      AutoscalersListResource

    -- * Creating a Request
    , autoscalersList
    , AutoscalersList

    -- * Request Lenses
    , aProject
    , aZone
    , aFilter
    , aPageToken
    , aMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.list@ method which the
-- 'AutoscalersList' request conforms to.
type AutoscalersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AutoscalerList

-- | Retrieves a list of autoscalers contained within the specified zone.
--
-- /See:/ 'autoscalersList' smart constructor.
data AutoscalersList = AutoscalersList'
    { _aProject    :: !Text
    , _aZone       :: !Text
    , _aFilter     :: !(Maybe Text)
    , _aPageToken  :: !(Maybe Text)
    , _aMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProject'
--
-- * 'aZone'
--
-- * 'aFilter'
--
-- * 'aPageToken'
--
-- * 'aMaxResults'
autoscalersList
    :: Text -- ^ 'aProject'
    -> Text -- ^ 'aZone'
    -> AutoscalersList
autoscalersList pAProject_ pAZone_ =
    AutoscalersList'
    { _aProject = pAProject_
    , _aZone = pAZone_
    , _aFilter = Nothing
    , _aPageToken = Nothing
    , _aMaxResults = 500
    }

-- | Project ID for this request.
aProject :: Lens' AutoscalersList Text
aProject = lens _aProject (\ s a -> s{_aProject = a})

-- | Name of the zone for this request.
aZone :: Lens' AutoscalersList Text
aZone = lens _aZone (\ s a -> s{_aZone = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. Compute Engine Beta API Only: When
-- filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. The Beta API also supports filtering on multiple
-- expressions by providing each separate expression within parentheses.
-- For example, (scheduling.automaticRestart eq true) (zone eq
-- us-central1-f). Multiple expressions are treated as AND expressions,
-- meaning that resources must match all expressions to pass the filters.
aFilter :: Lens' AutoscalersList (Maybe Text)
aFilter = lens _aFilter (\ s a -> s{_aFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
aPageToken :: Lens' AutoscalersList (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
aMaxResults :: Lens' AutoscalersList Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a}) .
      _Coerce

instance GoogleRequest AutoscalersList where
        type Rs AutoscalersList = AutoscalerList
        type Scopes AutoscalersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient AutoscalersList'{..}
          = go _aProject _aZone _aFilter _aPageToken
              (Just _aMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersListResource)
                      mempty
