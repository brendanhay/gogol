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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all parent ids of the specified table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesParentsList@.
module Network.Google.Resource.MapsEngine.Tables.Parents.List
    (
    -- * REST Resource
      TablesParentsListResource

    -- * Creating a Request
    , tablesParentsList'
    , TablesParentsList'

    -- * Request Lenses
    , tabId
    , tabPageToken
    , tabMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesParentsList@ method which the
-- 'TablesParentsList'' request conforms to.
type TablesParentsListResource =
     "tables" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified table.
--
-- /See:/ 'tablesParentsList'' smart constructor.
data TablesParentsList' = TablesParentsList'
    { _tabId         :: !Text
    , _tabPageToken  :: !(Maybe Text)
    , _tabMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabId'
--
-- * 'tabPageToken'
--
-- * 'tabMaxResults'
tablesParentsList'
    :: Text -- ^ 'id'
    -> TablesParentsList'
tablesParentsList' pTabId_ =
    TablesParentsList'
    { _tabId = pTabId_
    , _tabPageToken = Nothing
    , _tabMaxResults = Nothing
    }

-- | The ID of the table whose parents will be listed.
tabId :: Lens' TablesParentsList' Text
tabId = lens _tabId (\ s a -> s{_tabId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tabPageToken :: Lens' TablesParentsList' (Maybe Text)
tabPageToken
  = lens _tabPageToken (\ s a -> s{_tabPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
tabMaxResults :: Lens' TablesParentsList' (Maybe Word32)
tabMaxResults
  = lens _tabMaxResults
      (\ s a -> s{_tabMaxResults = a})

instance GoogleRequest TablesParentsList' where
        type Rs TablesParentsList' = ParentsListResponse
        requestClient TablesParentsList'{..}
          = go _tabId _tabPageToken _tabMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesParentsListResource)
                      mempty
