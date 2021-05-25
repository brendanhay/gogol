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
-- Module      : Network.Google.Resource.Analytics.Management.Segments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists segments to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.segments.list@.
module Network.Google.Resource.Analytics.Management.Segments.List
    (
    -- * REST Resource
      ManagementSegmentsListResource

    -- * Creating a Request
    , managementSegmentsList
    , ManagementSegmentsList

    -- * Request Lenses
    , mslStartIndex
    , mslMaxResults
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.segments.list@ method which the
-- 'ManagementSegmentsList' request conforms to.
type ManagementSegmentsListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "segments" :>
             QueryParam "start-index" (Textual Int32) :>
               QueryParam "max-results" (Textual Int32) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Segments

-- | Lists segments to which the user has access.
--
-- /See:/ 'managementSegmentsList' smart constructor.
data ManagementSegmentsList =
  ManagementSegmentsList'
    { _mslStartIndex :: !(Maybe (Textual Int32))
    , _mslMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementSegmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mslStartIndex'
--
-- * 'mslMaxResults'
managementSegmentsList
    :: ManagementSegmentsList
managementSegmentsList =
  ManagementSegmentsList' {_mslStartIndex = Nothing, _mslMaxResults = Nothing}


-- | An index of the first segment to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mslStartIndex :: Lens' ManagementSegmentsList (Maybe Int32)
mslStartIndex
  = lens _mslStartIndex
      (\ s a -> s{_mslStartIndex = a})
      . mapping _Coerce

-- | The maximum number of segments to include in this response.
mslMaxResults :: Lens' ManagementSegmentsList (Maybe Int32)
mslMaxResults
  = lens _mslMaxResults
      (\ s a -> s{_mslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ManagementSegmentsList where
        type Rs ManagementSegmentsList = Segments
        type Scopes ManagementSegmentsList =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementSegmentsList'{..}
          = go _mslStartIndex _mslMaxResults (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementSegmentsListResource)
                      mempty
