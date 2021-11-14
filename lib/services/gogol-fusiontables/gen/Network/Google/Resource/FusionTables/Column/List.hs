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
-- Module      : Network.Google.Resource.FusionTables.Column.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of columns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.list@.
module Network.Google.Resource.FusionTables.Column.List
    (
    -- * REST Resource
      ColumnListResource

    -- * Creating a Request
    , columnList'
    , ColumnList'

    -- * Request Lenses
    , clPageToken
    , clTableId
    , clMaxResults
    ) where

import Network.Google.FusionTables.Types
import Network.Google.Prelude

-- | A resource alias for @fusiontables.column.list@ method which the
-- 'ColumnList'' request conforms to.
type ColumnListResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "columns" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ColumnList

-- | Retrieves a list of columns.
--
-- /See:/ 'columnList'' smart constructor.
data ColumnList' =
  ColumnList''
    { _clPageToken :: !(Maybe Text)
    , _clTableId :: !Text
    , _clMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clPageToken'
--
-- * 'clTableId'
--
-- * 'clMaxResults'
columnList'
    :: Text -- ^ 'clTableId'
    -> ColumnList'
columnList' pClTableId_ =
  ColumnList''
    {_clPageToken = Nothing, _clTableId = pClTableId_, _clMaxResults = Nothing}


-- | Continuation token specifying which result page to return.
clPageToken :: Lens' ColumnList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Table whose columns are being listed.
clTableId :: Lens' ColumnList' Text
clTableId
  = lens _clTableId (\ s a -> s{_clTableId = a})

-- | Maximum number of columns to return. Default is 5.
clMaxResults :: Lens' ColumnList' (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ColumnList' where
        type Rs ColumnList' = ColumnList
        type Scopes ColumnList' =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient ColumnList''{..}
          = go _clTableId _clPageToken _clMaxResults
              (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy ColumnListResource)
                      mempty
