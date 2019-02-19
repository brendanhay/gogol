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
-- Module      : Network.Google.Resource.Chat.Spaces.Members.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists human memberships in a space.
--
-- /See:/ <https://developers.google.com/hangouts/chat Hangouts Chat API Reference> for @chat.spaces.members.list@.
module Network.Google.Resource.Chat.Spaces.Members.List
    (
    -- * REST Resource
      SpacesMembersListResource

    -- * Creating a Request
    , spacesMembersList
    , SpacesMembersList

    -- * Request Lenses
    , smlParent
    , smlXgafv
    , smlUploadProtocol
    , smlAccessToken
    , smlUploadType
    , smlPageToken
    , smlPageSize
    , smlCallback
    ) where

import           Network.Google.Chat.Types
import           Network.Google.Prelude

-- | A resource alias for @chat.spaces.members.list@ method which the
-- 'SpacesMembersList' request conforms to.
type SpacesMembersListResource =
     "v1" :>
       Capture "parent" Text :>
         "members" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListMembershipsResponse

-- | Lists human memberships in a space.
--
-- /See:/ 'spacesMembersList' smart constructor.
data SpacesMembersList =
  SpacesMembersList'
    { _smlParent         :: !Text
    , _smlXgafv          :: !(Maybe Xgafv)
    , _smlUploadProtocol :: !(Maybe Text)
    , _smlAccessToken    :: !(Maybe Text)
    , _smlUploadType     :: !(Maybe Text)
    , _smlPageToken      :: !(Maybe Text)
    , _smlPageSize       :: !(Maybe (Textual Int32))
    , _smlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpacesMembersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smlParent'
--
-- * 'smlXgafv'
--
-- * 'smlUploadProtocol'
--
-- * 'smlAccessToken'
--
-- * 'smlUploadType'
--
-- * 'smlPageToken'
--
-- * 'smlPageSize'
--
-- * 'smlCallback'
spacesMembersList
    :: Text -- ^ 'smlParent'
    -> SpacesMembersList
spacesMembersList pSmlParent_ =
  SpacesMembersList'
    { _smlParent = pSmlParent_
    , _smlXgafv = Nothing
    , _smlUploadProtocol = Nothing
    , _smlAccessToken = Nothing
    , _smlUploadType = Nothing
    , _smlPageToken = Nothing
    , _smlPageSize = Nothing
    , _smlCallback = Nothing
    }

-- | Required. The resource name of the space for which membership list is to
-- be fetched, in the form \"spaces\/*\". Example: spaces\/AAAAMpdlehY
smlParent :: Lens' SpacesMembersList Text
smlParent
  = lens _smlParent (\ s a -> s{_smlParent = a})

-- | V1 error format.
smlXgafv :: Lens' SpacesMembersList (Maybe Xgafv)
smlXgafv = lens _smlXgafv (\ s a -> s{_smlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
smlUploadProtocol :: Lens' SpacesMembersList (Maybe Text)
smlUploadProtocol
  = lens _smlUploadProtocol
      (\ s a -> s{_smlUploadProtocol = a})

-- | OAuth access token.
smlAccessToken :: Lens' SpacesMembersList (Maybe Text)
smlAccessToken
  = lens _smlAccessToken
      (\ s a -> s{_smlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
smlUploadType :: Lens' SpacesMembersList (Maybe Text)
smlUploadType
  = lens _smlUploadType
      (\ s a -> s{_smlUploadType = a})

-- | A token identifying a page of results the server should return.
smlPageToken :: Lens' SpacesMembersList (Maybe Text)
smlPageToken
  = lens _smlPageToken (\ s a -> s{_smlPageToken = a})

-- | Requested page size. The value is capped at 1000. Server may return
-- fewer results than requested. If unspecified, server will default to
-- 100.
smlPageSize :: Lens' SpacesMembersList (Maybe Int32)
smlPageSize
  = lens _smlPageSize (\ s a -> s{_smlPageSize = a}) .
      mapping _Coerce

-- | JSONP
smlCallback :: Lens' SpacesMembersList (Maybe Text)
smlCallback
  = lens _smlCallback (\ s a -> s{_smlCallback = a})

instance GoogleRequest SpacesMembersList where
        type Rs SpacesMembersList = ListMembershipsResponse
        type Scopes SpacesMembersList = '[]
        requestClient SpacesMembersList'{..}
          = go _smlParent _smlXgafv _smlUploadProtocol
              _smlAccessToken
              _smlUploadType
              _smlPageToken
              _smlPageSize
              _smlCallback
              (Just AltJSON)
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy SpacesMembersListResource)
                      mempty
