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
-- Module      : Network.Google.Resource.LibraryAgent.Shelves.Books.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a book. Returns NOT_FOUND if the book does not exist.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.get@.
module Network.Google.Resource.LibraryAgent.Shelves.Books.Get
    (
    -- * REST Resource
      ShelvesBooksGetResource

    -- * Creating a Request
    , shelvesBooksGet
    , ShelvesBooksGet

    -- * Request Lenses
    , sbgXgafv
    , sbgUploadProtocol
    , sbgAccessToken
    , sbgUploadType
    , sbgName
    , sbgCallback
    ) where

import           Network.Google.LibraryAgent.Types
import           Network.Google.Prelude

-- | A resource alias for @libraryagent.shelves.books.get@ method which the
-- 'ShelvesBooksGet' request conforms to.
type ShelvesBooksGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleExampleLibraryagentV1Book

-- | Gets a book. Returns NOT_FOUND if the book does not exist.
--
-- /See:/ 'shelvesBooksGet' smart constructor.
data ShelvesBooksGet =
  ShelvesBooksGet'
    { _sbgXgafv          :: !(Maybe Xgafv)
    , _sbgUploadProtocol :: !(Maybe Text)
    , _sbgAccessToken    :: !(Maybe Text)
    , _sbgUploadType     :: !(Maybe Text)
    , _sbgName           :: !Text
    , _sbgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShelvesBooksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbgXgafv'
--
-- * 'sbgUploadProtocol'
--
-- * 'sbgAccessToken'
--
-- * 'sbgUploadType'
--
-- * 'sbgName'
--
-- * 'sbgCallback'
shelvesBooksGet
    :: Text -- ^ 'sbgName'
    -> ShelvesBooksGet
shelvesBooksGet pSbgName_ =
  ShelvesBooksGet'
    { _sbgXgafv = Nothing
    , _sbgUploadProtocol = Nothing
    , _sbgAccessToken = Nothing
    , _sbgUploadType = Nothing
    , _sbgName = pSbgName_
    , _sbgCallback = Nothing
    }

-- | V1 error format.
sbgXgafv :: Lens' ShelvesBooksGet (Maybe Xgafv)
sbgXgafv = lens _sbgXgafv (\ s a -> s{_sbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sbgUploadProtocol :: Lens' ShelvesBooksGet (Maybe Text)
sbgUploadProtocol
  = lens _sbgUploadProtocol
      (\ s a -> s{_sbgUploadProtocol = a})

-- | OAuth access token.
sbgAccessToken :: Lens' ShelvesBooksGet (Maybe Text)
sbgAccessToken
  = lens _sbgAccessToken
      (\ s a -> s{_sbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sbgUploadType :: Lens' ShelvesBooksGet (Maybe Text)
sbgUploadType
  = lens _sbgUploadType
      (\ s a -> s{_sbgUploadType = a})

-- | The name of the book to retrieve.
sbgName :: Lens' ShelvesBooksGet Text
sbgName = lens _sbgName (\ s a -> s{_sbgName = a})

-- | JSONP
sbgCallback :: Lens' ShelvesBooksGet (Maybe Text)
sbgCallback
  = lens _sbgCallback (\ s a -> s{_sbgCallback = a})

instance GoogleRequest ShelvesBooksGet where
        type Rs ShelvesBooksGet =
             GoogleExampleLibraryagentV1Book
        type Scopes ShelvesBooksGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ShelvesBooksGet'{..}
          = go _sbgName _sbgXgafv _sbgUploadProtocol
              _sbgAccessToken
              _sbgUploadType
              _sbgCallback
              (Just AltJSON)
              libraryAgentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShelvesBooksGetResource)
                      mempty
