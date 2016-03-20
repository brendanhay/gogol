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
-- Returns channelSection resources that match the API request criteria.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.channelSections.list@.
module Network.Google.Resource.YouTube.ChannelSections.List
    (
    -- * REST Resource
      ChannelSectionsListResource

    -- * Creating a Request
    , channelSectionsList
    , ChannelSectionsList

    -- * Request Lenses
    , cslPart
    , cslMine
    , cslChannelId
    , cslHl
    , cslOnBehalfOfContentOwner
    , cslId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.list@ method which the
-- 'ChannelSectionsList' request conforms to.
type ChannelSectionsListResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
           QueryParam "part" Text :>
             QueryParam "mine" Bool :>
               QueryParam "channelId" Text :>
                 QueryParam "hl" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "id" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ChannelSectionListResponse

-- | Returns channelSection resources that match the API request criteria.
--
-- /See:/ 'channelSectionsList' smart constructor.
data ChannelSectionsList = ChannelSectionsList
    { _cslPart                   :: !Text
    , _cslMine                   :: !(Maybe Bool)
    , _cslChannelId              :: !(Maybe Text)
    , _cslHl                     :: !(Maybe Text)
    , _cslOnBehalfOfContentOwner :: !(Maybe Text)
    , _cslId                     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslPart'
--
-- * 'cslMine'
--
-- * 'cslChannelId'
--
-- * 'cslHl'
--
-- * 'cslOnBehalfOfContentOwner'
--
-- * 'cslId'
channelSectionsList
    :: Text -- ^ 'cslPart'
    -> ChannelSectionsList
channelSectionsList pCslPart_ =
    ChannelSectionsList
    { _cslPart = pCslPart_
    , _cslMine = Nothing
    , _cslChannelId = Nothing
    , _cslHl = Nothing
    , _cslOnBehalfOfContentOwner = Nothing
    , _cslId = Nothing
    }

-- | The part parameter specifies a comma-separated list of one or more
-- channelSection resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, and contentDetails. If the parameter identifies a property that
-- contains child properties, the child properties will be included in the
-- response. For example, in a channelSection resource, the snippet
-- property contains other properties, such as a display title for the
-- channelSection. If you set part=snippet, the API response will also
-- contain all of those nested properties.
cslPart :: Lens' ChannelSectionsList Text
cslPart = lens _cslPart (\ s a -> s{_cslPart = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- authenticated user\'s channelSections.
cslMine :: Lens' ChannelSectionsList (Maybe Bool)
cslMine = lens _cslMine (\ s a -> s{_cslMine = a})

-- | The channelId parameter specifies a YouTube channel ID. The API will
-- only return that channel\'s channelSections.
cslChannelId :: Lens' ChannelSectionsList (Maybe Text)
cslChannelId
  = lens _cslChannelId (\ s a -> s{_cslChannelId = a})

-- | The hl parameter indicates that the snippet.localized property values in
-- the returned channelSection resources should be in the specified
-- language if localized values for that language are available. For
-- example, if the API request specifies hl=de, the snippet.localized
-- properties in the API response will contain German titles if German
-- titles are available. Channel owners can provide localized channel
-- section titles using either the channelSections.insert or
-- channelSections.update method.
cslHl :: Lens' ChannelSectionsList (Maybe Text)
cslHl = lens _cslHl (\ s a -> s{_cslHl = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
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

-- | The id parameter specifies a comma-separated list of the YouTube
-- channelSection ID(s) for the resource(s) that are being retrieved. In a
-- channelSection resource, the id property specifies the YouTube
-- channelSection ID.
cslId :: Lens' ChannelSectionsList (Maybe Text)
cslId = lens _cslId (\ s a -> s{_cslId = a})

instance GoogleRequest ChannelSectionsList where
        type Rs ChannelSectionsList =
             ChannelSectionListResponse
        requestClient ChannelSectionsList{..}
          = go (Just _cslPart) _cslMine _cslChannelId _cslHl
              _cslOnBehalfOfContentOwner
              _cslId
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsListResource)
                      mempty
