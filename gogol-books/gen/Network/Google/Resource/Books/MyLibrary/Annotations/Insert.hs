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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.annotations.insert@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Insert
    (
    -- * REST Resource
      MyLibraryAnnotationsInsertResource

    -- * Creating a Request
    , myLibraryAnnotationsInsert
    , MyLibraryAnnotationsInsert

    -- * Request Lenses
    , mlaiCountry
    , mlaiPayload
    , mlaiShowOnlySummaryInResponse
    , mlaiSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.mylibrary.annotations.insert@ method which the
-- 'MyLibraryAnnotationsInsert' request conforms to.
type MyLibraryAnnotationsInsertResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "annotations" :>
             QueryParam "country" Text :>
               QueryParam "showOnlySummaryInResponse" Bool :>
                 QueryParam "source" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Annotation :> Post '[JSON] Annotation

-- | Inserts a new annotation.
--
-- /See:/ 'myLibraryAnnotationsInsert' smart constructor.
data MyLibraryAnnotationsInsert = MyLibraryAnnotationsInsert'
    { _mlaiCountry                   :: !(Maybe Text)
    , _mlaiPayload                   :: !Annotation
    , _mlaiShowOnlySummaryInResponse :: !(Maybe Bool)
    , _mlaiSource                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlaiCountry'
--
-- * 'mlaiPayload'
--
-- * 'mlaiShowOnlySummaryInResponse'
--
-- * 'mlaiSource'
myLibraryAnnotationsInsert
    :: Annotation -- ^ 'mlaiPayload'
    -> MyLibraryAnnotationsInsert
myLibraryAnnotationsInsert pMlaiPayload_ =
    MyLibraryAnnotationsInsert'
    { _mlaiCountry = Nothing
    , _mlaiPayload = pMlaiPayload_
    , _mlaiShowOnlySummaryInResponse = Nothing
    , _mlaiSource = Nothing
    }

-- | ISO-3166-1 code to override the IP-based location.
mlaiCountry :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiCountry
  = lens _mlaiCountry (\ s a -> s{_mlaiCountry = a})

-- | Multipart request metadata.
mlaiPayload :: Lens' MyLibraryAnnotationsInsert Annotation
mlaiPayload
  = lens _mlaiPayload (\ s a -> s{_mlaiPayload = a})

-- | Requests that only the summary of the specified layer be provided in the
-- response.
mlaiShowOnlySummaryInResponse :: Lens' MyLibraryAnnotationsInsert (Maybe Bool)
mlaiShowOnlySummaryInResponse
  = lens _mlaiShowOnlySummaryInResponse
      (\ s a -> s{_mlaiShowOnlySummaryInResponse = a})

-- | String to identify the originator of this request.
mlaiSource :: Lens' MyLibraryAnnotationsInsert (Maybe Text)
mlaiSource
  = lens _mlaiSource (\ s a -> s{_mlaiSource = a})

instance GoogleRequest MyLibraryAnnotationsInsert
         where
        type Rs MyLibraryAnnotationsInsert = Annotation
        type Scopes MyLibraryAnnotationsInsert =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryAnnotationsInsert'{..}
          = go _mlaiCountry _mlaiShowOnlySummaryInResponse
              _mlaiSource
              (Just AltJSON)
              _mlaiPayload
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryAnnotationsInsertResource)
                      mempty
