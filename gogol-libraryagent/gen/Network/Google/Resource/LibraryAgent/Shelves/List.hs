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
-- Module      : Network.Google.Resource.LibraryAgent.Shelves.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists shelves. The order is unspecified but deterministic. Newly created
-- shelves will not necessarily be added to the end of this list.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.list@.
module Network.Google.Resource.LibraryAgent.Shelves.List
    (
    -- * REST Resource
      ShelvesListResource

    -- * Creating a Request
    , shelvesList
    , ShelvesList

    -- * Request Lenses
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slPageToken
    , slPageSize
    , slCallback
    ) where

import Network.Google.LibraryAgent.Types
import Network.Google.Prelude

-- | A resource alias for @libraryagent.shelves.list@ method which the
-- 'ShelvesList' request conforms to.
type ShelvesListResource =
     "v1" :>
       "shelves" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON]
                           GoogleExampleLibraryagentV1ListShelvesResponse

-- | Lists shelves. The order is unspecified but deterministic. Newly created
-- shelves will not necessarily be added to the end of this list.
--
-- /See:/ 'shelvesList' smart constructor.
data ShelvesList =
  ShelvesList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slPageSize :: !(Maybe (Textual Int32))
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShelvesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slPageToken'
--
-- * 'slPageSize'
--
-- * 'slCallback'
shelvesList
    :: ShelvesList
shelvesList =
  ShelvesList'
    { _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slPageToken = Nothing
    , _slPageSize = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' ShelvesList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' ShelvesList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' ShelvesList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' ShelvesList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListShelvesResponse.next_page_token
-- returned from the previous call to \`ListShelves\` method.
slPageToken :: Lens' ShelvesList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Requested page size. Server may return fewer shelves than requested. If
-- unspecified, server will pick an appropriate default.
slPageSize :: Lens' ShelvesList (Maybe Int32)
slPageSize
  = lens _slPageSize (\ s a -> s{_slPageSize = a}) .
      mapping _Coerce

-- | JSONP
slCallback :: Lens' ShelvesList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest ShelvesList where
        type Rs ShelvesList =
             GoogleExampleLibraryagentV1ListShelvesResponse
        type Scopes ShelvesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ShelvesList'{..}
          = go _slXgafv _slUploadProtocol _slAccessToken
              _slUploadType
              _slPageToken
              _slPageSize
              _slCallback
              (Just AltJSON)
              libraryAgentService
          where go
                  = buildClient (Proxy :: Proxy ShelvesListResource)
                      mempty
