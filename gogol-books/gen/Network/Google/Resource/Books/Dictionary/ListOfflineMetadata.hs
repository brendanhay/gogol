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
-- Module      : Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of offline dictionary metadata available
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.dictionary.listOfflineMetadata@.
module Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
    (
    -- * REST Resource
      DictionaryListOfflineMetadataResource

    -- * Creating a Request
    , dictionaryListOfflineMetadata
    , DictionaryListOfflineMetadata

    -- * Request Lenses
    , dlomCpksver
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.dictionary.listOfflineMetadata@ method which the
-- 'DictionaryListOfflineMetadata' request conforms to.
type DictionaryListOfflineMetadataResource =
     "books" :>
       "v1" :>
         "dictionary" :>
           "listOfflineMetadata" :>
             QueryParam "cpksver" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | Returns a list of offline dictionary metadata available
--
-- /See:/ 'dictionaryListOfflineMetadata' smart constructor.
newtype DictionaryListOfflineMetadata = DictionaryListOfflineMetadata
    { _dlomCpksver :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictionaryListOfflineMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlomCpksver'
dictionaryListOfflineMetadata
    :: Text -- ^ 'dlomCpksver'
    -> DictionaryListOfflineMetadata
dictionaryListOfflineMetadata pDlomCpksver_ =
    DictionaryListOfflineMetadata
    { _dlomCpksver = pDlomCpksver_
    }

-- | The device\/version ID from which to request the data.
dlomCpksver :: Lens' DictionaryListOfflineMetadata Text
dlomCpksver
  = lens _dlomCpksver (\ s a -> s{_dlomCpksver = a})

instance GoogleRequest DictionaryListOfflineMetadata
         where
        type Rs DictionaryListOfflineMetadata = Metadata
        requestClient DictionaryListOfflineMetadata{..}
          = go (Just _dlomCpksver) (Just AltJSON) booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DictionaryListOfflineMetadataResource)
                      mempty
