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
-- Module      : Network.Google.Resource.LibraryAgent.Shelves.Books.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists books in a shelf. The order is unspecified but deterministic.
-- Newly created books will not necessarily be added to the end of this
-- list. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.list@.
module Network.Google.Resource.LibraryAgent.Shelves.Books.List
    (
    -- * REST Resource
      ShelvesBooksListResource

    -- * Creating a Request
    , shelvesBooksList
    , ShelvesBooksList

    -- * Request Lenses
    , sblParent
    , sblXgafv
    , sblUploadProtocol
    , sblAccessToken
    , sblUploadType
    , sblPageToken
    , sblPageSize
    , sblCallback
    ) where

import           Network.Google.LibraryAgent.Types
import           Network.Google.Prelude

-- | A resource alias for @libraryagent.shelves.books.list@ method which the
-- 'ShelvesBooksList' request conforms to.
type ShelvesBooksListResource =
     "v1" :>
       Capture "parent" Text :>
         "books" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleExampleLibraryagentV1ListBooksResponse

-- | Lists books in a shelf. The order is unspecified but deterministic.
-- Newly created books will not necessarily be added to the end of this
-- list. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ 'shelvesBooksList' smart constructor.
data ShelvesBooksList = ShelvesBooksList'
    { _sblParent         :: !Text
    , _sblXgafv          :: !(Maybe Xgafv)
    , _sblUploadProtocol :: !(Maybe Text)
    , _sblAccessToken    :: !(Maybe Text)
    , _sblUploadType     :: !(Maybe Text)
    , _sblPageToken      :: !(Maybe Text)
    , _sblPageSize       :: !(Maybe (Textual Int32))
    , _sblCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShelvesBooksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sblParent'
--
-- * 'sblXgafv'
--
-- * 'sblUploadProtocol'
--
-- * 'sblAccessToken'
--
-- * 'sblUploadType'
--
-- * 'sblPageToken'
--
-- * 'sblPageSize'
--
-- * 'sblCallback'
shelvesBooksList
    :: Text -- ^ 'sblParent'
    -> ShelvesBooksList
shelvesBooksList pSblParent_ =
    ShelvesBooksList'
    { _sblParent = pSblParent_
    , _sblXgafv = Nothing
    , _sblUploadProtocol = Nothing
    , _sblAccessToken = Nothing
    , _sblUploadType = Nothing
    , _sblPageToken = Nothing
    , _sblPageSize = Nothing
    , _sblCallback = Nothing
    }

-- | The name of the shelf whose books we\'d like to list.
sblParent :: Lens' ShelvesBooksList Text
sblParent
  = lens _sblParent (\ s a -> s{_sblParent = a})

-- | V1 error format.
sblXgafv :: Lens' ShelvesBooksList (Maybe Xgafv)
sblXgafv = lens _sblXgafv (\ s a -> s{_sblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sblUploadProtocol :: Lens' ShelvesBooksList (Maybe Text)
sblUploadProtocol
  = lens _sblUploadProtocol
      (\ s a -> s{_sblUploadProtocol = a})

-- | OAuth access token.
sblAccessToken :: Lens' ShelvesBooksList (Maybe Text)
sblAccessToken
  = lens _sblAccessToken
      (\ s a -> s{_sblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sblUploadType :: Lens' ShelvesBooksList (Maybe Text)
sblUploadType
  = lens _sblUploadType
      (\ s a -> s{_sblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListBooksResponse.next_page_token.
-- returned from the previous call to \`ListBooks\` method.
sblPageToken :: Lens' ShelvesBooksList (Maybe Text)
sblPageToken
  = lens _sblPageToken (\ s a -> s{_sblPageToken = a})

-- | Requested page size. Server may return fewer books than requested. If
-- unspecified, server will pick an appropriate default.
sblPageSize :: Lens' ShelvesBooksList (Maybe Int32)
sblPageSize
  = lens _sblPageSize (\ s a -> s{_sblPageSize = a}) .
      mapping _Coerce

-- | JSONP
sblCallback :: Lens' ShelvesBooksList (Maybe Text)
sblCallback
  = lens _sblCallback (\ s a -> s{_sblCallback = a})

instance GoogleRequest ShelvesBooksList where
        type Rs ShelvesBooksList =
             GoogleExampleLibraryagentV1ListBooksResponse
        type Scopes ShelvesBooksList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ShelvesBooksList'{..}
          = go _sblParent _sblXgafv _sblUploadProtocol
              _sblAccessToken
              _sblUploadType
              _sblPageToken
              _sblPageSize
              _sblCallback
              (Just AltJSON)
              libraryAgentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShelvesBooksListResource)
                      mempty
