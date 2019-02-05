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
-- Module      : Network.Google.Resource.LibraryAgent.Shelves.Books.Borrow
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Borrow a book from the library. Returns the book if it is borrowed
-- successfully. Returns NOT_FOUND if the book does not exist in the
-- library. Returns quota exceeded error if the amount of books borrowed
-- exceeds allocation quota in any dimensions.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.borrow@.
module Network.Google.Resource.LibraryAgent.Shelves.Books.Borrow
    (
    -- * REST Resource
      ShelvesBooksBorrowResource

    -- * Creating a Request
    , shelvesBooksBorrow
    , ShelvesBooksBorrow

    -- * Request Lenses
    , sbbXgafv
    , sbbUploadProtocol
    , sbbAccessToken
    , sbbUploadType
    , sbbName
    , sbbCallback
    ) where

import           Network.Google.LibraryAgent.Types
import           Network.Google.Prelude

-- | A resource alias for @libraryagent.shelves.books.borrow@ method which the
-- 'ShelvesBooksBorrow' request conforms to.
type ShelvesBooksBorrowResource =
     "v1" :>
       CaptureMode "name" "borrow" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] GoogleExampleLibraryagentV1Book

-- | Borrow a book from the library. Returns the book if it is borrowed
-- successfully. Returns NOT_FOUND if the book does not exist in the
-- library. Returns quota exceeded error if the amount of books borrowed
-- exceeds allocation quota in any dimensions.
--
-- /See:/ 'shelvesBooksBorrow' smart constructor.
data ShelvesBooksBorrow = ShelvesBooksBorrow'
    { _sbbXgafv          :: !(Maybe Xgafv)
    , _sbbUploadProtocol :: !(Maybe Text)
    , _sbbAccessToken    :: !(Maybe Text)
    , _sbbUploadType     :: !(Maybe Text)
    , _sbbName           :: !Text
    , _sbbCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShelvesBooksBorrow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbbXgafv'
--
-- * 'sbbUploadProtocol'
--
-- * 'sbbAccessToken'
--
-- * 'sbbUploadType'
--
-- * 'sbbName'
--
-- * 'sbbCallback'
shelvesBooksBorrow
    :: Text -- ^ 'sbbName'
    -> ShelvesBooksBorrow
shelvesBooksBorrow pSbbName_ =
    ShelvesBooksBorrow'
    { _sbbXgafv = Nothing
    , _sbbUploadProtocol = Nothing
    , _sbbAccessToken = Nothing
    , _sbbUploadType = Nothing
    , _sbbName = pSbbName_
    , _sbbCallback = Nothing
    }

-- | V1 error format.
sbbXgafv :: Lens' ShelvesBooksBorrow (Maybe Xgafv)
sbbXgafv = lens _sbbXgafv (\ s a -> s{_sbbXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sbbUploadProtocol :: Lens' ShelvesBooksBorrow (Maybe Text)
sbbUploadProtocol
  = lens _sbbUploadProtocol
      (\ s a -> s{_sbbUploadProtocol = a})

-- | OAuth access token.
sbbAccessToken :: Lens' ShelvesBooksBorrow (Maybe Text)
sbbAccessToken
  = lens _sbbAccessToken
      (\ s a -> s{_sbbAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sbbUploadType :: Lens' ShelvesBooksBorrow (Maybe Text)
sbbUploadType
  = lens _sbbUploadType
      (\ s a -> s{_sbbUploadType = a})

-- | The name of the book to borrow.
sbbName :: Lens' ShelvesBooksBorrow Text
sbbName = lens _sbbName (\ s a -> s{_sbbName = a})

-- | JSONP
sbbCallback :: Lens' ShelvesBooksBorrow (Maybe Text)
sbbCallback
  = lens _sbbCallback (\ s a -> s{_sbbCallback = a})

instance GoogleRequest ShelvesBooksBorrow where
        type Rs ShelvesBooksBorrow =
             GoogleExampleLibraryagentV1Book
        type Scopes ShelvesBooksBorrow =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ShelvesBooksBorrow'{..}
          = go _sbbName _sbbXgafv _sbbUploadProtocol
              _sbbAccessToken
              _sbbUploadType
              _sbbCallback
              (Just AltJSON)
              libraryAgentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShelvesBooksBorrowResource)
                      mempty
