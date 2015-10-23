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
-- Module      : Network.Google.Resource.FusionTables.Table.ImportTable
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a new table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.importTable@.
module Network.Google.Resource.FusionTables.Table.ImportTable
    (
    -- * REST Resource
      TableImportTableResource

    -- * Creating a Request
    , tableImportTable
    , TableImportTable

    -- * Request Lenses
    , titName
    , titDelimiter
    , titEncoding
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.importTable@ method which the
-- 'TableImportTable' request conforms to.
type TableImportTableResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           "import" :>
             QueryParam "name" Text :>
               QueryParam "delimiter" Text :>
                 QueryParam "encoding" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Table
       :<|>
       "upload" :>
         "fusiontables" :>
           "v2" :>
             "tables" :>
               "import" :>
                 QueryParam "name" Text :>
                   QueryParam "delimiter" Text :>
                     QueryParam "encoding" Text :>
                       QueryParam "alt" AltJSON :>
                         QueryParam "uploadType" AltMedia :>
                           ReqBody '[OctetStream] RequestBody :>
                             Post '[JSON] Table

-- | Imports a new table.
--
-- /See:/ 'tableImportTable' smart constructor.
data TableImportTable = TableImportTable
    { _titName      :: !Text
    , _titDelimiter :: !(Maybe Text)
    , _titEncoding  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableImportTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'titName'
--
-- * 'titDelimiter'
--
-- * 'titEncoding'
tableImportTable
    :: Text -- ^ 'titName'
    -> TableImportTable
tableImportTable pTitName_ =
    TableImportTable
    { _titName = pTitName_
    , _titDelimiter = Nothing
    , _titEncoding = Nothing
    }

-- | The name to be assigned to the new table.
titName :: Lens' TableImportTable Text
titName = lens _titName (\ s a -> s{_titName = a})

-- | The delimiter used to separate cell values. This can only consist of a
-- single character. Default is ,.
titDelimiter :: Lens' TableImportTable (Maybe Text)
titDelimiter
  = lens _titDelimiter (\ s a -> s{_titDelimiter = a})

-- | The encoding of the content. Default is UTF-8. Use auto-detect if you
-- are unsure of the encoding.
titEncoding :: Lens' TableImportTable (Maybe Text)
titEncoding
  = lens _titEncoding (\ s a -> s{_titEncoding = a})

instance GoogleRequest TableImportTable where
        type Rs TableImportTable = Table
        requestClient TableImportTable{..}
          = go (Just _titName) _titDelimiter _titEncoding
              (Just AltJSON)
              fusionTablesService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy TableImportTableResource)
                      mempty

instance GoogleRequest (MediaUpload TableImportTable)
         where
        type Rs (MediaUpload TableImportTable) = Table
        requestClient (MediaUpload TableImportTable{..} body)
          = go (Just _titName) _titDelimiter _titEncoding
              (Just AltJSON)
              (Just AltMedia)
              body
              fusionTablesService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy TableImportTableResource)
                      mempty
