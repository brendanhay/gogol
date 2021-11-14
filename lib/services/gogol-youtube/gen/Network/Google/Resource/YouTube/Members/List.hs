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
-- Module      : Network.Google.Resource.YouTube.Members.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of members that match the request criteria for a
-- channel.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.members.list@.
module Network.Google.Resource.YouTube.Members.List
    (
    -- * REST Resource
      MembersListResource

    -- * Creating a Request
    , membersList
    , MembersList

    -- * Request Lenses
    , mlXgafv
    , mlPart
    , mlUploadProtocol
    , mlFilterByMemberChannelId
    , mlAccessToken
    , mlMode
    , mlHasAccessToLevel
    , mlUploadType
    , mlPageToken
    , mlMaxResults
    , mlCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.members.list@ method which the
-- 'MembersList' request conforms to.
type MembersListResource =
     "youtube" :>
       "v3" :>
         "members" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "filterByMemberChannelId" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "mode" MembersListMode :>
                       QueryParam "hasAccessToLevel" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] MemberListResponse

-- | Retrieves a list of members that match the request criteria for a
-- channel.
--
-- /See:/ 'membersList' smart constructor.
data MembersList =
  MembersList'
    { _mlXgafv :: !(Maybe Xgafv)
    , _mlPart :: ![Text]
    , _mlUploadProtocol :: !(Maybe Text)
    , _mlFilterByMemberChannelId :: !(Maybe Text)
    , _mlAccessToken :: !(Maybe Text)
    , _mlMode :: !MembersListMode
    , _mlHasAccessToLevel :: !(Maybe Text)
    , _mlUploadType :: !(Maybe Text)
    , _mlPageToken :: !(Maybe Text)
    , _mlMaxResults :: !(Textual Word32)
    , _mlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlXgafv'
--
-- * 'mlPart'
--
-- * 'mlUploadProtocol'
--
-- * 'mlFilterByMemberChannelId'
--
-- * 'mlAccessToken'
--
-- * 'mlMode'
--
-- * 'mlHasAccessToLevel'
--
-- * 'mlUploadType'
--
-- * 'mlPageToken'
--
-- * 'mlMaxResults'
--
-- * 'mlCallback'
membersList
    :: [Text] -- ^ 'mlPart'
    -> MembersList
membersList pMlPart_ =
  MembersList'
    { _mlXgafv = Nothing
    , _mlPart = _Coerce # pMlPart_
    , _mlUploadProtocol = Nothing
    , _mlFilterByMemberChannelId = Nothing
    , _mlAccessToken = Nothing
    , _mlMode = AllCurrent
    , _mlHasAccessToLevel = Nothing
    , _mlUploadType = Nothing
    , _mlPageToken = Nothing
    , _mlMaxResults = 5
    , _mlCallback = Nothing
    }


-- | V1 error format.
mlXgafv :: Lens' MembersList (Maybe Xgafv)
mlXgafv = lens _mlXgafv (\ s a -> s{_mlXgafv = a})

-- | The *part* parameter specifies the member resource parts that the API
-- response will include. Set the parameter value to snippet.
mlPart :: Lens' MembersList [Text]
mlPart
  = lens _mlPart (\ s a -> s{_mlPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlUploadProtocol :: Lens' MembersList (Maybe Text)
mlUploadProtocol
  = lens _mlUploadProtocol
      (\ s a -> s{_mlUploadProtocol = a})

-- | Comma separated list of channel IDs. Only data about members that are
-- part of this list will be included in the response.
mlFilterByMemberChannelId :: Lens' MembersList (Maybe Text)
mlFilterByMemberChannelId
  = lens _mlFilterByMemberChannelId
      (\ s a -> s{_mlFilterByMemberChannelId = a})

-- | OAuth access token.
mlAccessToken :: Lens' MembersList (Maybe Text)
mlAccessToken
  = lens _mlAccessToken
      (\ s a -> s{_mlAccessToken = a})

-- | Parameter that specifies which channel members to return.
mlMode :: Lens' MembersList MembersListMode
mlMode = lens _mlMode (\ s a -> s{_mlMode = a})

-- | Filter members in the results set to the ones that have access to a
-- level.
mlHasAccessToLevel :: Lens' MembersList (Maybe Text)
mlHasAccessToLevel
  = lens _mlHasAccessToLevel
      (\ s a -> s{_mlHasAccessToLevel = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlUploadType :: Lens' MembersList (Maybe Text)
mlUploadType
  = lens _mlUploadType (\ s a -> s{_mlUploadType = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
mlPageToken :: Lens' MembersList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
mlMaxResults :: Lens' MembersList Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})
      . _Coerce

-- | JSONP
mlCallback :: Lens' MembersList (Maybe Text)
mlCallback
  = lens _mlCallback (\ s a -> s{_mlCallback = a})

instance GoogleRequest MembersList where
        type Rs MembersList = MemberListResponse
        type Scopes MembersList =
             '["https://www.googleapis.com/auth/youtube.channel-memberships.creator"]
        requestClient MembersList'{..}
          = go _mlPart _mlXgafv _mlUploadProtocol
              _mlFilterByMemberChannelId
              _mlAccessToken
              (Just _mlMode)
              _mlHasAccessToLevel
              _mlUploadType
              _mlPageToken
              (Just _mlMaxResults)
              _mlCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy MembersListResource)
                      mempty
