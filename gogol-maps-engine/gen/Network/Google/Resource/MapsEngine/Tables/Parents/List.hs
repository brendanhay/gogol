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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Parents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all parent ids of the specified table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.parents.list@.
module Network.Google.Resource.MapsEngine.Tables.Parents.List
    (
    -- * REST Resource
      TablesParentsListResource

    -- * Creating a Request
    , tablesParentsList
    , TablesParentsList

    -- * Request Lenses
    , tId
    , tPageToken
    , tMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.parents.list@ method which the
-- 'TablesParentsList' request conforms to.
type TablesParentsListResource =
     "mapsengine" :>
       "v1" :>
         "tables" :>
           Capture "id" Text :>
             "parents" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified table.
--
-- /See:/ 'tablesParentsList' smart constructor.
data TablesParentsList = TablesParentsList'
    { _tId         :: !Text
    , _tPageToken  :: !(Maybe Text)
    , _tMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesParentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tId'
--
-- * 'tPageToken'
--
-- * 'tMaxResults'
tablesParentsList
    :: Text -- ^ 'tId'
    -> TablesParentsList
tablesParentsList pTId_ =
    TablesParentsList'
    { _tId = pTId_
    , _tPageToken = Nothing
    , _tMaxResults = Nothing
    }

-- | The ID of the table whose parents will be listed.
tId :: Lens' TablesParentsList Text
tId = lens _tId (\ s a -> s{_tId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tPageToken :: Lens' TablesParentsList (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
tMaxResults :: Lens' TablesParentsList (Maybe Word32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a}) .
      mapping _Coerce

instance GoogleRequest TablesParentsList where
        type Rs TablesParentsList = ParentsListResponse
        type Scopes TablesParentsList =
             '["https://www.googleapis.com/auth/mapsengine",
               "https://www.googleapis.com/auth/mapsengine.readonly"]
        requestClient TablesParentsList'{..}
          = go _tId _tPageToken _tMaxResults (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesParentsListResource)
                      mempty
