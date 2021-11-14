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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user-upload volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.cloudloading.updateBook@.
module Network.Google.Resource.Books.CloudLoading.UpdateBook
    (
    -- * REST Resource
      CloudLoadingUpdateBookResource

    -- * Creating a Request
    , cloudLoadingUpdateBook
    , CloudLoadingUpdateBook

    -- * Request Lenses
    , clubXgafv
    , clubUploadProtocol
    , clubAccessToken
    , clubUploadType
    , clubPayload
    , clubCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.cloudloading.updateBook@ method which the
-- 'CloudLoadingUpdateBook' request conforms to.
type CloudLoadingUpdateBookResource =
     "books" :>
       "v1" :>
         "cloudloading" :>
           "updateBook" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BooksCloudLoadingResource :>
                           Post '[JSON] BooksCloudLoadingResource

-- | Updates a user-upload volume.
--
-- /See:/ 'cloudLoadingUpdateBook' smart constructor.
data CloudLoadingUpdateBook =
  CloudLoadingUpdateBook'
    { _clubXgafv :: !(Maybe Xgafv)
    , _clubUploadProtocol :: !(Maybe Text)
    , _clubAccessToken :: !(Maybe Text)
    , _clubUploadType :: !(Maybe Text)
    , _clubPayload :: !BooksCloudLoadingResource
    , _clubCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudLoadingUpdateBook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clubXgafv'
--
-- * 'clubUploadProtocol'
--
-- * 'clubAccessToken'
--
-- * 'clubUploadType'
--
-- * 'clubPayload'
--
-- * 'clubCallback'
cloudLoadingUpdateBook
    :: BooksCloudLoadingResource -- ^ 'clubPayload'
    -> CloudLoadingUpdateBook
cloudLoadingUpdateBook pClubPayload_ =
  CloudLoadingUpdateBook'
    { _clubXgafv = Nothing
    , _clubUploadProtocol = Nothing
    , _clubAccessToken = Nothing
    , _clubUploadType = Nothing
    , _clubPayload = pClubPayload_
    , _clubCallback = Nothing
    }


-- | V1 error format.
clubXgafv :: Lens' CloudLoadingUpdateBook (Maybe Xgafv)
clubXgafv
  = lens _clubXgafv (\ s a -> s{_clubXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clubUploadProtocol :: Lens' CloudLoadingUpdateBook (Maybe Text)
clubUploadProtocol
  = lens _clubUploadProtocol
      (\ s a -> s{_clubUploadProtocol = a})

-- | OAuth access token.
clubAccessToken :: Lens' CloudLoadingUpdateBook (Maybe Text)
clubAccessToken
  = lens _clubAccessToken
      (\ s a -> s{_clubAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clubUploadType :: Lens' CloudLoadingUpdateBook (Maybe Text)
clubUploadType
  = lens _clubUploadType
      (\ s a -> s{_clubUploadType = a})

-- | Multipart request metadata.
clubPayload :: Lens' CloudLoadingUpdateBook BooksCloudLoadingResource
clubPayload
  = lens _clubPayload (\ s a -> s{_clubPayload = a})

-- | JSONP
clubCallback :: Lens' CloudLoadingUpdateBook (Maybe Text)
clubCallback
  = lens _clubCallback (\ s a -> s{_clubCallback = a})

instance GoogleRequest CloudLoadingUpdateBook where
        type Rs CloudLoadingUpdateBook =
             BooksCloudLoadingResource
        type Scopes CloudLoadingUpdateBook =
             '["https://www.googleapis.com/auth/books"]
        requestClient CloudLoadingUpdateBook'{..}
          = go _clubXgafv _clubUploadProtocol _clubAccessToken
              _clubUploadType
              _clubCallback
              (Just AltJSON)
              _clubPayload
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy CloudLoadingUpdateBookResource)
                      mempty
