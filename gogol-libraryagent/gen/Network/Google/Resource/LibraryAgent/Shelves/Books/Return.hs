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
-- Module      : Network.Google.Resource.LibraryAgent.Shelves.Books.Return
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a book to the library. Returns the book if it is returned to the
-- library successfully. Returns error if the book does not belong to the
-- library or the users didn\'t borrow before.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.return@.
module Network.Google.Resource.LibraryAgent.Shelves.Books.Return
    (
    -- * REST Resource
      ShelvesBooksReturnResource

    -- * Creating a Request
    , shelvesBooksReturn
    , ShelvesBooksReturn

    -- * Request Lenses
    , sbrXgafv
    , sbrUploadProtocol
    , sbrAccessToken
    , sbrUploadType
    , sbrName
    , sbrCallback
    ) where

import Network.Google.LibraryAgent.Types
import Network.Google.Prelude

-- | A resource alias for @libraryagent.shelves.books.return@ method which the
-- 'ShelvesBooksReturn' request conforms to.
type ShelvesBooksReturnResource =
     "v1" :>
       CaptureMode "name" "return" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] GoogleExampleLibraryagentV1Book

-- | Return a book to the library. Returns the book if it is returned to the
-- library successfully. Returns error if the book does not belong to the
-- library or the users didn\'t borrow before.
--
-- /See:/ 'shelvesBooksReturn' smart constructor.
data ShelvesBooksReturn =
  ShelvesBooksReturn'
    { _sbrXgafv :: !(Maybe Xgafv)
    , _sbrUploadProtocol :: !(Maybe Text)
    , _sbrAccessToken :: !(Maybe Text)
    , _sbrUploadType :: !(Maybe Text)
    , _sbrName :: !Text
    , _sbrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShelvesBooksReturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrXgafv'
--
-- * 'sbrUploadProtocol'
--
-- * 'sbrAccessToken'
--
-- * 'sbrUploadType'
--
-- * 'sbrName'
--
-- * 'sbrCallback'
shelvesBooksReturn
    :: Text -- ^ 'sbrName'
    -> ShelvesBooksReturn
shelvesBooksReturn pSbrName_ =
  ShelvesBooksReturn'
    { _sbrXgafv = Nothing
    , _sbrUploadProtocol = Nothing
    , _sbrAccessToken = Nothing
    , _sbrUploadType = Nothing
    , _sbrName = pSbrName_
    , _sbrCallback = Nothing
    }


-- | V1 error format.
sbrXgafv :: Lens' ShelvesBooksReturn (Maybe Xgafv)
sbrXgafv = lens _sbrXgafv (\ s a -> s{_sbrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sbrUploadProtocol :: Lens' ShelvesBooksReturn (Maybe Text)
sbrUploadProtocol
  = lens _sbrUploadProtocol
      (\ s a -> s{_sbrUploadProtocol = a})

-- | OAuth access token.
sbrAccessToken :: Lens' ShelvesBooksReturn (Maybe Text)
sbrAccessToken
  = lens _sbrAccessToken
      (\ s a -> s{_sbrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sbrUploadType :: Lens' ShelvesBooksReturn (Maybe Text)
sbrUploadType
  = lens _sbrUploadType
      (\ s a -> s{_sbrUploadType = a})

-- | Required. The name of the book to return.
sbrName :: Lens' ShelvesBooksReturn Text
sbrName = lens _sbrName (\ s a -> s{_sbrName = a})

-- | JSONP
sbrCallback :: Lens' ShelvesBooksReturn (Maybe Text)
sbrCallback
  = lens _sbrCallback (\ s a -> s{_sbrCallback = a})

instance GoogleRequest ShelvesBooksReturn where
        type Rs ShelvesBooksReturn =
             GoogleExampleLibraryagentV1Book
        type Scopes ShelvesBooksReturn =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ShelvesBooksReturn'{..}
          = go _sbrName _sbrXgafv _sbrUploadProtocol
              _sbrAccessToken
              _sbrUploadType
              _sbrCallback
              (Just AltJSON)
              libraryAgentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShelvesBooksReturnResource)
                      mempty
