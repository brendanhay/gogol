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
-- Module      : Network.Google.Resource.FusionTables.Column.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific column by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.get@.
module Network.Google.Resource.FusionTables.Column.Get
    (
    -- * REST Resource
      ColumnGetResource

    -- * Creating a Request
    , columnGet
    , ColumnGet

    -- * Request Lenses
    , cgTableId
    , cgColumnId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.column.get@ method which the
-- 'ColumnGet' request conforms to.
type ColumnGetResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "columns" :>
               Capture "columnId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Column

-- | Retrieves a specific column by its ID.
--
-- /See:/ 'columnGet' smart constructor.
data ColumnGet = ColumnGet
    { _cgTableId  :: !Text
    , _cgColumnId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgTableId'
--
-- * 'cgColumnId'
columnGet
    :: Text -- ^ 'cgTableId'
    -> Text -- ^ 'cgColumnId'
    -> ColumnGet
columnGet pCgTableId_ pCgColumnId_ =
    ColumnGet
    { _cgTableId = pCgTableId_
    , _cgColumnId = pCgColumnId_
    }

-- | Table to which the column belongs.
cgTableId :: Lens' ColumnGet Text
cgTableId
  = lens _cgTableId (\ s a -> s{_cgTableId = a})

-- | Name or identifier for the column that is being requested.
cgColumnId :: Lens' ColumnGet Text
cgColumnId
  = lens _cgColumnId (\ s a -> s{_cgColumnId = a})

instance GoogleRequest ColumnGet where
        type Rs ColumnGet = Column
        type Scopes ColumnGet =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient ColumnGet{..}
          = go _cgTableId _cgColumnId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy ColumnGetResource)
                      mempty
