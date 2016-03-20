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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Parents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all parent ids of the specified rasters.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.parents.list@.
module Network.Google.Resource.MapsEngine.Rasters.Parents.List
    (
    -- * REST Resource
      RastersParentsListResource

    -- * Creating a Request
    , rastersParentsList
    , RastersParentsList

    -- * Request Lenses
    , rId
    , rPageToken
    , rMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.parents.list@ method which the
-- 'RastersParentsList' request conforms to.
type RastersParentsListResource =
     "mapsengine" :>
       "v1" :>
         "rasters" :>
           Capture "id" Text :>
             "parents" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified rasters.
--
-- /See:/ 'rastersParentsList' smart constructor.
data RastersParentsList = RastersParentsList
    { _rId         :: !Text
    , _rPageToken  :: !(Maybe Text)
    , _rMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersParentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rId'
--
-- * 'rPageToken'
--
-- * 'rMaxResults'
rastersParentsList
    :: Text -- ^ 'rId'
    -> RastersParentsList
rastersParentsList pRId_ =
    RastersParentsList
    { _rId = pRId_
    , _rPageToken = Nothing
    , _rMaxResults = Nothing
    }

-- | The ID of the rasters whose parents will be listed.
rId :: Lens' RastersParentsList Text
rId = lens _rId (\ s a -> s{_rId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rPageToken :: Lens' RastersParentsList (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
rMaxResults :: Lens' RastersParentsList (Maybe Word32)
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a}) .
      mapping _Coerce

instance GoogleRequest RastersParentsList where
        type Rs RastersParentsList = ParentsListResponse
        requestClient RastersParentsList{..}
          = go _rId _rPageToken _rMaxResults (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RastersParentsListResource)
                      mempty
