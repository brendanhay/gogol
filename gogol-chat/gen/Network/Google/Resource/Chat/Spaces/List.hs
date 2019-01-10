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
-- Module      : Network.Google.Resource.Chat.Spaces.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists spaces the caller is a member of.
--
-- /See:/ <https://developers.google.com/hangouts/chat Hangouts Chat API Reference> for @chat.spaces.list@.
module Network.Google.Resource.Chat.Spaces.List
    (
    -- * REST Resource
      SpacesListResource

    -- * Creating a Request
    , spacesList
    , SpacesList

    -- * Request Lenses
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slPageToken
    , slPageSize
    , slCallback
    ) where

import           Network.Google.Chat.Types
import           Network.Google.Prelude

-- | A resource alias for @chat.spaces.list@ method which the
-- 'SpacesList' request conforms to.
type SpacesListResource =
     "v1" :>
       "spaces" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListSpacesResponse

-- | Lists spaces the caller is a member of.
--
-- /See:/ 'spacesList' smart constructor.
data SpacesList = SpacesList'
    { _slXgafv          :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken    :: !(Maybe Text)
    , _slUploadType     :: !(Maybe Text)
    , _slPageToken      :: !(Maybe Text)
    , _slPageSize       :: !(Maybe (Textual Int32))
    , _slCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpacesList' with the minimum fields required to make a request.
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
spacesList
    :: SpacesList
spacesList =
    SpacesList'
    { _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slPageToken = Nothing
    , _slPageSize = Nothing
    , _slCallback = Nothing
    }

-- | V1 error format.
slXgafv :: Lens' SpacesList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' SpacesList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' SpacesList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' SpacesList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | A token identifying a page of results the server should return.
slPageToken :: Lens' SpacesList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Requested page size. The value is capped at 1000. Server may return
-- fewer results than requested. If unspecified, server will default to
-- 100.
slPageSize :: Lens' SpacesList (Maybe Int32)
slPageSize
  = lens _slPageSize (\ s a -> s{_slPageSize = a}) .
      mapping _Coerce

-- | JSONP
slCallback :: Lens' SpacesList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest SpacesList where
        type Rs SpacesList = ListSpacesResponse
        type Scopes SpacesList = '[]
        requestClient SpacesList'{..}
          = go _slXgafv _slUploadProtocol _slAccessToken
              _slUploadType
              _slPageToken
              _slPageSize
              _slCallback
              (Just AltJSON)
              chatService
          where go
                  = buildClient (Proxy :: Proxy SpacesListResource)
                      mempty
