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
-- Module      : Network.Google.Resource.Books.CloudLoading.UpdateBook
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.cloudloading.updateBook@.
module Network.Google.Resource.Books.CloudLoading.UpdateBook
    (
    -- * REST Resource
      CloudLoadingUpdateBookResource

    -- * Creating a Request
    , cloudLoadingUpdateBook
    , CloudLoadingUpdateBook

    -- * Request Lenses
    , clubPayload
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.cloudloading.updateBook@ method which the
-- 'CloudLoadingUpdateBook' request conforms to.
type CloudLoadingUpdateBookResource =
     "books" :>
       "v1" :>
         "cloudloading" :>
           "updateBook" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] BooksCloudLoadingResource :>
                 Post '[JSON] BooksCloudLoadingResource

-- |
--
-- /See:/ 'cloudLoadingUpdateBook' smart constructor.
newtype CloudLoadingUpdateBook = CloudLoadingUpdateBook
    { _clubPayload :: BooksCloudLoadingResource
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudLoadingUpdateBook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clubPayload'
cloudLoadingUpdateBook
    :: BooksCloudLoadingResource -- ^ 'clubPayload'
    -> CloudLoadingUpdateBook
cloudLoadingUpdateBook pClubPayload_ =
    CloudLoadingUpdateBook
    { _clubPayload = pClubPayload_
    }

-- | Multipart request metadata.
clubPayload :: Lens' CloudLoadingUpdateBook BooksCloudLoadingResource
clubPayload
  = lens _clubPayload (\ s a -> s{_clubPayload = a})

instance GoogleRequest CloudLoadingUpdateBook where
        type Rs CloudLoadingUpdateBook =
             BooksCloudLoadingResource
        requestClient CloudLoadingUpdateBook{..}
          = go (Just AltJSON) _clubPayload booksService
          where go
                  = buildClient
                      (Proxy :: Proxy CloudLoadingUpdateBookResource)
                      mempty
