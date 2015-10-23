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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of autoscaler resources contained within the
-- specified zone.
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
                       QueryParam "maxResults" (JSONText Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AutoscalerList

-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
--
-- /See:/ 'autoscalersList' smart constructor.
data AutoscalersList = AutoscalersList
    { _aProject    :: !Text
    , _aZone       :: !Text
    , _aFilter     :: !(Maybe Text)
    , _aPageToken  :: !(Maybe Text)
    , _aMaxResults :: !(JSONText Word32)
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
    AutoscalersList
    { _aProject = pAProject_
    , _aZone = pAZone_
    , _aFilter = Nothing
    , _aPageToken = Nothing
    , _aMaxResults = 500
    }

-- | Name of the project scoping this request.
aProject :: Lens' AutoscalersList Text
aProject = lens _aProject (\ s a -> s{_aProject = a})

-- | Name of the zone scoping this request.
aZone :: Lens' AutoscalersList Text
aZone = lens _aZone (\ s a -> s{_aZone = a})

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
aFilter :: Lens' AutoscalersList (Maybe Text)
aFilter = lens _aFilter (\ s a -> s{_aFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
aPageToken :: Lens' AutoscalersList (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | Maximum count of results to be returned.
aMaxResults :: Lens' AutoscalersList Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a}) .
      _Coerce

instance GoogleRequest AutoscalersList where
        type Rs AutoscalersList = AutoscalerList
        requestClient AutoscalersList{..}
          = go _aProject _aZone _aFilter _aPageToken
              (Just _aMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersListResource)
                      mempty
