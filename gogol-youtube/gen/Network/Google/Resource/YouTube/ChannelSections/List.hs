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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channelSections.list@.
module Network.Google.Resource.YouTube.ChannelSections.List
    (
    -- * REST Resource
      ChannelSectionsListResource

    -- * Creating a Request
    , channelSectionsList
    , ChannelSectionsList

    -- * Request Lenses
    , cslXgafv
    , cslPart
    , cslMine
    , cslUploadProtocol
    , cslAccessToken
    , cslUploadType
    , cslChannelId
    , cslHl
    , cslOnBehalfOfContentOwner
    , cslId
    , cslCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.list@ method which the
-- 'ChannelSectionsList' request conforms to.
type ChannelSectionsListResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "mine" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "channelId" Text :>
                         QueryParam "hl" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParams "id" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ChannelSectionListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'channelSectionsList' smart constructor.
data ChannelSectionsList =
  ChannelSectionsList'
    { _cslXgafv :: !(Maybe Xgafv)
    , _cslPart :: ![Text]
    , _cslMine :: !(Maybe Bool)
    , _cslUploadProtocol :: !(Maybe Text)
    , _cslAccessToken :: !(Maybe Text)
    , _cslUploadType :: !(Maybe Text)
    , _cslChannelId :: !(Maybe Text)
    , _cslHl :: !(Maybe Text)
    , _cslOnBehalfOfContentOwner :: !(Maybe Text)
    , _cslId :: !(Maybe [Text])
    , _cslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelSectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslXgafv'
--
-- * 'cslPart'
--
-- * 'cslMine'
--
-- * 'cslUploadProtocol'
--
-- * 'cslAccessToken'
--
-- * 'cslUploadType'
--
-- * 'cslChannelId'
--
-- * 'cslHl'
--
-- * 'cslOnBehalfOfContentOwner'
--
-- * 'cslId'
--
-- * 'cslCallback'
channelSectionsList
    :: [Text] -- ^ 'cslPart'
    -> ChannelSectionsList
channelSectionsList pCslPart_ =
  ChannelSectionsList'
    { _cslXgafv = Nothing
    , _cslPart = _Coerce # pCslPart_
    , _cslMine = Nothing
    , _cslUploadProtocol = Nothing
    , _cslAccessToken = Nothing
    , _cslUploadType = Nothing
    , _cslChannelId = Nothing
    , _cslHl = Nothing
    , _cslOnBehalfOfContentOwner = Nothing
    , _cslId = Nothing
    , _cslCallback = Nothing
    }


-- | V1 error format.
cslXgafv :: Lens' ChannelSectionsList (Maybe Xgafv)
cslXgafv = lens _cslXgafv (\ s a -> s{_cslXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- channelSection resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, and contentDetails. If the parameter identifies a property that
-- contains child properties, the child properties will be included in the
-- response. For example, in a channelSection resource, the snippet
-- property contains other properties, such as a display title for the
-- channelSection. If you set *part=snippet*, the API response will also
-- contain all of those nested properties.
cslPart :: Lens' ChannelSectionsList [Text]
cslPart
  = lens _cslPart (\ s a -> s{_cslPart = a}) . _Coerce

-- | Return the ChannelSections owned by the authenticated user.
cslMine :: Lens' ChannelSectionsList (Maybe Bool)
cslMine = lens _cslMine (\ s a -> s{_cslMine = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cslUploadProtocol :: Lens' ChannelSectionsList (Maybe Text)
cslUploadProtocol
  = lens _cslUploadProtocol
      (\ s a -> s{_cslUploadProtocol = a})

-- | OAuth access token.
cslAccessToken :: Lens' ChannelSectionsList (Maybe Text)
cslAccessToken
  = lens _cslAccessToken
      (\ s a -> s{_cslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cslUploadType :: Lens' ChannelSectionsList (Maybe Text)
cslUploadType
  = lens _cslUploadType
      (\ s a -> s{_cslUploadType = a})

-- | Return the ChannelSections owned by the specified channel ID.
cslChannelId :: Lens' ChannelSectionsList (Maybe Text)
cslChannelId
  = lens _cslChannelId (\ s a -> s{_cslChannelId = a})

-- | Return content in specified language
cslHl :: Lens' ChannelSectionsList (Maybe Text)
cslHl = lens _cslHl (\ s a -> s{_cslHl = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
cslOnBehalfOfContentOwner :: Lens' ChannelSectionsList (Maybe Text)
cslOnBehalfOfContentOwner
  = lens _cslOnBehalfOfContentOwner
      (\ s a -> s{_cslOnBehalfOfContentOwner = a})

-- | Return the ChannelSections with the given IDs for Stubby or Apiary.
cslId :: Lens' ChannelSectionsList [Text]
cslId
  = lens _cslId (\ s a -> s{_cslId = a}) . _Default .
      _Coerce

-- | JSONP
cslCallback :: Lens' ChannelSectionsList (Maybe Text)
cslCallback
  = lens _cslCallback (\ s a -> s{_cslCallback = a})

instance GoogleRequest ChannelSectionsList where
        type Rs ChannelSectionsList =
             ChannelSectionListResponse
        type Scopes ChannelSectionsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelSectionsList'{..}
          = go _cslPart _cslXgafv _cslMine _cslUploadProtocol
              _cslAccessToken
              _cslUploadType
              _cslChannelId
              _cslHl
              _cslOnBehalfOfContentOwner
              (_cslId ^. _Default)
              _cslCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsListResource)
                      mempty
