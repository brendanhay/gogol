{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTube.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTube.Types.Product where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types.Sum

-- | A thumbnail is an image representing a YouTube resource.
--
-- /See:/ 'thumbnail' smart constructor.
data Thumbnail = Thumbnail
    { _tHeight :: !(Maybe Word32)
    , _tUrl    :: !(Maybe Text)
    , _tWidth  :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Thumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tHeight'
--
-- * 'tUrl'
--
-- * 'tWidth'
thumbnail
    :: Thumbnail
thumbnail =
    Thumbnail
    { _tHeight = Nothing
    , _tUrl = Nothing
    , _tWidth = Nothing
    }

-- | (Optional) Height of the thumbnail image.
tHeight :: Lens' Thumbnail (Maybe Word32)
tHeight = lens _tHeight (\ s a -> s{_tHeight = a})

-- | The thumbnail image\'s URL.
tUrl :: Lens' Thumbnail (Maybe Text)
tUrl = lens _tUrl (\ s a -> s{_tUrl = a})

-- | (Optional) Width of the thumbnail image.
tWidth :: Lens' Thumbnail (Maybe Word32)
tWidth = lens _tWidth (\ s a -> s{_tWidth = a})

instance FromJSON Thumbnail where
        parseJSON
          = withObject "Thumbnail"
              (\ o ->
                 Thumbnail <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON Thumbnail where
        toJSON Thumbnail{..}
          = object
              (catMaybes
                 [("height" .=) <$> _tHeight, ("url" .=) <$> _tUrl,
                  ("width" .=) <$> _tWidth])

-- | Describes information necessary for ingesting an RTMP or an HTTP stream.
--
-- /See:/ 'ingestionInfo' smart constructor.
data IngestionInfo = IngestionInfo
    { _iiBackupIngestionAddress :: !(Maybe Text)
    , _iiIngestionAddress       :: !(Maybe Text)
    , _iiStreamName             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IngestionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiBackupIngestionAddress'
--
-- * 'iiIngestionAddress'
--
-- * 'iiStreamName'
ingestionInfo
    :: IngestionInfo
ingestionInfo =
    IngestionInfo
    { _iiBackupIngestionAddress = Nothing
    , _iiIngestionAddress = Nothing
    , _iiStreamName = Nothing
    }

-- | The backup ingestion URL that you should use to stream video to YouTube.
-- You have the option of simultaneously streaming the content that you are
-- sending to the ingestionAddress to this URL.
iiBackupIngestionAddress :: Lens' IngestionInfo (Maybe Text)
iiBackupIngestionAddress
  = lens _iiBackupIngestionAddress
      (\ s a -> s{_iiBackupIngestionAddress = a})

-- | The primary ingestion URL that you should use to stream video to
-- YouTube. You must stream video to this URL. Depending on which
-- application or tool you use to encode your video stream, you may need to
-- enter the stream URL and stream name separately or you may need to
-- concatenate them in the following format: STREAM_URL\/STREAM_NAME
iiIngestionAddress :: Lens' IngestionInfo (Maybe Text)
iiIngestionAddress
  = lens _iiIngestionAddress
      (\ s a -> s{_iiIngestionAddress = a})

-- | The HTTP or RTMP stream name that YouTube assigns to the video stream.
iiStreamName :: Lens' IngestionInfo (Maybe Text)
iiStreamName
  = lens _iiStreamName (\ s a -> s{_iiStreamName = a})

instance FromJSON IngestionInfo where
        parseJSON
          = withObject "IngestionInfo"
              (\ o ->
                 IngestionInfo <$>
                   (o .:? "backupIngestionAddress") <*>
                     (o .:? "ingestionAddress")
                     <*> (o .:? "streamName"))

instance ToJSON IngestionInfo where
        toJSON IngestionInfo{..}
          = object
              (catMaybes
                 [("backupIngestionAddress" .=) <$>
                    _iiBackupIngestionAddress,
                  ("ingestionAddress" .=) <$> _iiIngestionAddress,
                  ("streamName" .=) <$> _iiStreamName])

-- | Basic details about a subscription\'s subscriber including title,
-- description, channel ID and thumbnails.
--
-- /See:/ 'subscriptionSubscriberSNIppet' smart constructor.
data SubscriptionSubscriberSNIppet = SubscriptionSubscriberSNIppet
    { _sssChannelId   :: !(Maybe Text)
    , _sssThumbnails  :: !(Maybe (Maybe ThumbnailDetails))
    , _sssTitle       :: !(Maybe Text)
    , _sssDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionSubscriberSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssChannelId'
--
-- * 'sssThumbnails'
--
-- * 'sssTitle'
--
-- * 'sssDescription'
subscriptionSubscriberSNIppet
    :: SubscriptionSubscriberSNIppet
subscriptionSubscriberSNIppet =
    SubscriptionSubscriberSNIppet
    { _sssChannelId = Nothing
    , _sssThumbnails = Nothing
    , _sssTitle = Nothing
    , _sssDescription = Nothing
    }

-- | The channel ID of the subscriber.
sssChannelId :: Lens' SubscriptionSubscriberSNIppet (Maybe Text)
sssChannelId
  = lens _sssChannelId (\ s a -> s{_sssChannelId = a})

-- | Thumbnails for this subscriber.
sssThumbnails :: Lens' SubscriptionSubscriberSNIppet (Maybe (Maybe ThumbnailDetails))
sssThumbnails
  = lens _sssThumbnails
      (\ s a -> s{_sssThumbnails = a})

-- | The title of the subscriber.
sssTitle :: Lens' SubscriptionSubscriberSNIppet (Maybe Text)
sssTitle = lens _sssTitle (\ s a -> s{_sssTitle = a})

-- | The description of the subscriber.
sssDescription :: Lens' SubscriptionSubscriberSNIppet (Maybe Text)
sssDescription
  = lens _sssDescription
      (\ s a -> s{_sssDescription = a})

instance FromJSON SubscriptionSubscriberSNIppet where
        parseJSON
          = withObject "SubscriptionSubscriberSNIppet"
              (\ o ->
                 SubscriptionSubscriberSNIppet <$>
                   (o .:? "channelId") <*> (o .:? "thumbnails") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON SubscriptionSubscriberSNIppet where
        toJSON SubscriptionSubscriberSNIppet{..}
          = object
              (catMaybes
                 [("channelId" .=) <$> _sssChannelId,
                  ("thumbnails" .=) <$> _sssThumbnails,
                  ("title" .=) <$> _sssTitle,
                  ("description" .=) <$> _sssDescription])

-- | The auditDetails object encapsulates channel data that is relevant for
-- YouTube Partners during the audit process.
--
-- /See:/ 'channelAuditDetails' smart constructor.
data ChannelAuditDetails = ChannelAuditDetails
    { _cadContentIdClaimsGoodStanding     :: !(Maybe Bool)
    , _cadOverallGoodStanding             :: !(Maybe Bool)
    , _cadCopyrightStrikesGoodStanding    :: !(Maybe Bool)
    , _cadCommunityGuidelinesGoodStanding :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelAuditDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadContentIdClaimsGoodStanding'
--
-- * 'cadOverallGoodStanding'
--
-- * 'cadCopyrightStrikesGoodStanding'
--
-- * 'cadCommunityGuidelinesGoodStanding'
channelAuditDetails
    :: ChannelAuditDetails
channelAuditDetails =
    ChannelAuditDetails
    { _cadContentIdClaimsGoodStanding = Nothing
    , _cadOverallGoodStanding = Nothing
    , _cadCopyrightStrikesGoodStanding = Nothing
    , _cadCommunityGuidelinesGoodStanding = Nothing
    }

-- | Whether or not the channel has any unresolved claims.
cadContentIdClaimsGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadContentIdClaimsGoodStanding
  = lens _cadContentIdClaimsGoodStanding
      (\ s a -> s{_cadContentIdClaimsGoodStanding = a})

-- | Describes the general state of the channel. This field will always show
-- if there are any issues whatsoever with the channel. Currently this
-- field represents the result of the logical and operation over the
-- community guidelines good standing, the copyright strikes good standing
-- and the content ID claims good standing, but this may change in the
-- future.
cadOverallGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadOverallGoodStanding
  = lens _cadOverallGoodStanding
      (\ s a -> s{_cadOverallGoodStanding = a})

-- | Whether or not the channel has any copyright strikes.
cadCopyrightStrikesGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadCopyrightStrikesGoodStanding
  = lens _cadCopyrightStrikesGoodStanding
      (\ s a -> s{_cadCopyrightStrikesGoodStanding = a})

-- | Whether or not the channel respects the community guidelines.
cadCommunityGuidelinesGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadCommunityGuidelinesGoodStanding
  = lens _cadCommunityGuidelinesGoodStanding
      (\ s a -> s{_cadCommunityGuidelinesGoodStanding = a})

instance FromJSON ChannelAuditDetails where
        parseJSON
          = withObject "ChannelAuditDetails"
              (\ o ->
                 ChannelAuditDetails <$>
                   (o .:? "contentIdClaimsGoodStanding") <*>
                     (o .:? "overallGoodStanding")
                     <*> (o .:? "copyrightStrikesGoodStanding")
                     <*> (o .:? "communityGuidelinesGoodStanding"))

instance ToJSON ChannelAuditDetails where
        toJSON ChannelAuditDetails{..}
          = object
              (catMaybes
                 [("contentIdClaimsGoodStanding" .=) <$>
                    _cadContentIdClaimsGoodStanding,
                  ("overallGoodStanding" .=) <$>
                    _cadOverallGoodStanding,
                  ("copyrightStrikesGoodStanding" .=) <$>
                    _cadCopyrightStrikesGoodStanding,
                  ("communityGuidelinesGoodStanding" .=) <$>
                    _cadCommunityGuidelinesGoodStanding])

-- | Basic details about a channel section, including title, style and
-- position.
--
-- /See:/ 'channelSectionSNIppet' smart constructor.
data ChannelSectionSNIppet = ChannelSectionSNIppet
    { _cssStyle           :: !(Maybe Text)
    , _cssChannelId       :: !(Maybe Text)
    , _cssLocalized       :: !(Maybe (Maybe ChannelSectionLocalization))
    , _cssTitle           :: !(Maybe Text)
    , _cssType            :: !(Maybe Text)
    , _cssPosition        :: !(Maybe Word32)
    , _cssDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssStyle'
--
-- * 'cssChannelId'
--
-- * 'cssLocalized'
--
-- * 'cssTitle'
--
-- * 'cssType'
--
-- * 'cssPosition'
--
-- * 'cssDefaultLanguage'
channelSectionSNIppet
    :: ChannelSectionSNIppet
channelSectionSNIppet =
    ChannelSectionSNIppet
    { _cssStyle = Nothing
    , _cssChannelId = Nothing
    , _cssLocalized = Nothing
    , _cssTitle = Nothing
    , _cssType = Nothing
    , _cssPosition = Nothing
    , _cssDefaultLanguage = Nothing
    }

-- | The style of the channel section.
cssStyle :: Lens' ChannelSectionSNIppet (Maybe Text)
cssStyle = lens _cssStyle (\ s a -> s{_cssStyle = a})

-- | The ID that YouTube uses to uniquely identify the channel that published
-- the channel section.
cssChannelId :: Lens' ChannelSectionSNIppet (Maybe Text)
cssChannelId
  = lens _cssChannelId (\ s a -> s{_cssChannelId = a})

-- | Localized title, read-only.
cssLocalized :: Lens' ChannelSectionSNIppet (Maybe (Maybe ChannelSectionLocalization))
cssLocalized
  = lens _cssLocalized (\ s a -> s{_cssLocalized = a})

-- | The channel section\'s title for multiple_playlists and
-- multiple_channels.
cssTitle :: Lens' ChannelSectionSNIppet (Maybe Text)
cssTitle = lens _cssTitle (\ s a -> s{_cssTitle = a})

-- | The type of the channel section.
cssType :: Lens' ChannelSectionSNIppet (Maybe Text)
cssType = lens _cssType (\ s a -> s{_cssType = a})

-- | The position of the channel section in the channel.
cssPosition :: Lens' ChannelSectionSNIppet (Maybe Word32)
cssPosition
  = lens _cssPosition (\ s a -> s{_cssPosition = a})

-- | The language of the channel section\'s default title and description.
cssDefaultLanguage :: Lens' ChannelSectionSNIppet (Maybe Text)
cssDefaultLanguage
  = lens _cssDefaultLanguage
      (\ s a -> s{_cssDefaultLanguage = a})

instance FromJSON ChannelSectionSNIppet where
        parseJSON
          = withObject "ChannelSectionSNIppet"
              (\ o ->
                 ChannelSectionSNIppet <$>
                   (o .:? "style") <*> (o .:? "channelId") <*>
                     (o .:? "localized")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "position")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON ChannelSectionSNIppet where
        toJSON ChannelSectionSNIppet{..}
          = object
              (catMaybes
                 [("style" .=) <$> _cssStyle,
                  ("channelId" .=) <$> _cssChannelId,
                  ("localized" .=) <$> _cssLocalized,
                  ("title" .=) <$> _cssTitle, ("type" .=) <$> _cssType,
                  ("position" .=) <$> _cssPosition,
                  ("defaultLanguage" .=) <$> _cssDefaultLanguage])

-- | Describes a single promoted item.
--
-- /See:/ 'promotedItem' smart constructor.
data PromotedItem = PromotedItem
    { _piCustomMessage          :: !(Maybe Text)
    , _piPromotedByContentOwner :: !(Maybe Bool)
    , _piId                     :: !(Maybe (Maybe PromotedItemId))
    , _piTiming                 :: !(Maybe (Maybe InvideoTiming))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromotedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piCustomMessage'
--
-- * 'piPromotedByContentOwner'
--
-- * 'piId'
--
-- * 'piTiming'
promotedItem
    :: PromotedItem
promotedItem =
    PromotedItem
    { _piCustomMessage = Nothing
    , _piPromotedByContentOwner = Nothing
    , _piId = Nothing
    , _piTiming = Nothing
    }

-- | A custom message to display for this promotion. This field is currently
-- ignored unless the promoted item is a website.
piCustomMessage :: Lens' PromotedItem (Maybe Text)
piCustomMessage
  = lens _piCustomMessage
      (\ s a -> s{_piCustomMessage = a})

-- | If true, the content owner\'s name will be used when displaying the
-- promotion. This field can only be set when the update is made on behalf
-- of the content owner.
piPromotedByContentOwner :: Lens' PromotedItem (Maybe Bool)
piPromotedByContentOwner
  = lens _piPromotedByContentOwner
      (\ s a -> s{_piPromotedByContentOwner = a})

-- | Identifies the promoted item.
piId :: Lens' PromotedItem (Maybe (Maybe PromotedItemId))
piId = lens _piId (\ s a -> s{_piId = a})

-- | The temporal position within the video where the promoted item will be
-- displayed. If present, it overrides the default timing.
piTiming :: Lens' PromotedItem (Maybe (Maybe InvideoTiming))
piTiming = lens _piTiming (\ s a -> s{_piTiming = a})

instance FromJSON PromotedItem where
        parseJSON
          = withObject "PromotedItem"
              (\ o ->
                 PromotedItem <$>
                   (o .:? "customMessage") <*>
                     (o .:? "promotedByContentOwner")
                     <*> (o .:? "id")
                     <*> (o .:? "timing"))

instance ToJSON PromotedItem where
        toJSON PromotedItem{..}
          = object
              (catMaybes
                 [("customMessage" .=) <$> _piCustomMessage,
                  ("promotedByContentOwner" .=) <$>
                    _piPromotedByContentOwner,
                  ("id" .=) <$> _piId, ("timing" .=) <$> _piTiming])

--
-- /See:/ 'playlistListResponse' smart constructor.
data PlaylistListResponse = PlaylistListResponse
    { _plrEtag            :: !(Maybe Text)
    , _plrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _plrNextPageToken   :: !(Maybe Text)
    , _plrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _plrKind            :: !Text
    , _plrItems           :: !(Maybe [Maybe Playlist])
    , _plrVisitorId       :: !(Maybe Text)
    , _plrEventId         :: !(Maybe Text)
    , _plrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrEtag'
--
-- * 'plrTokenPagination'
--
-- * 'plrNextPageToken'
--
-- * 'plrPageInfo'
--
-- * 'plrKind'
--
-- * 'plrItems'
--
-- * 'plrVisitorId'
--
-- * 'plrEventId'
--
-- * 'plrPrevPageToken'
playlistListResponse
    :: PlaylistListResponse
playlistListResponse =
    PlaylistListResponse
    { _plrEtag = Nothing
    , _plrTokenPagination = Nothing
    , _plrNextPageToken = Nothing
    , _plrPageInfo = Nothing
    , _plrKind = "youtube#playlistListResponse"
    , _plrItems = Nothing
    , _plrVisitorId = Nothing
    , _plrEventId = Nothing
    , _plrPrevPageToken = Nothing
    }

-- | Etag of this resource.
plrEtag :: Lens' PlaylistListResponse (Maybe Text)
plrEtag = lens _plrEtag (\ s a -> s{_plrEtag = a})

plrTokenPagination :: Lens' PlaylistListResponse (Maybe (Maybe TokenPagination))
plrTokenPagination
  = lens _plrTokenPagination
      (\ s a -> s{_plrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
plrNextPageToken :: Lens' PlaylistListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

plrPageInfo :: Lens' PlaylistListResponse (Maybe (Maybe PageInfo))
plrPageInfo
  = lens _plrPageInfo (\ s a -> s{_plrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlistListResponse\".
plrKind :: Lens' PlaylistListResponse Text
plrKind = lens _plrKind (\ s a -> s{_plrKind = a})

-- | A list of playlists that match the request criteria.
plrItems :: Lens' PlaylistListResponse [Maybe Playlist]
plrItems
  = lens _plrItems (\ s a -> s{_plrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
plrVisitorId :: Lens' PlaylistListResponse (Maybe Text)
plrVisitorId
  = lens _plrVisitorId (\ s a -> s{_plrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
plrEventId :: Lens' PlaylistListResponse (Maybe Text)
plrEventId
  = lens _plrEventId (\ s a -> s{_plrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
plrPrevPageToken :: Lens' PlaylistListResponse (Maybe Text)
plrPrevPageToken
  = lens _plrPrevPageToken
      (\ s a -> s{_plrPrevPageToken = a})

instance FromJSON PlaylistListResponse where
        parseJSON
          = withObject "PlaylistListResponse"
              (\ o ->
                 PlaylistListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#playlistListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON PlaylistListResponse where
        toJSON PlaylistListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _plrEtag,
                  ("tokenPagination" .=) <$> _plrTokenPagination,
                  ("nextPageToken" .=) <$> _plrNextPageToken,
                  ("pageInfo" .=) <$> _plrPageInfo,
                  Just ("kind" .= _plrKind),
                  ("items" .=) <$> _plrItems,
                  ("visitorId" .=) <$> _plrVisitorId,
                  ("eventId" .=) <$> _plrEventId,
                  ("prevPageToken" .=) <$> _plrPrevPageToken])

--
-- /See:/ 'searchListResponse' smart constructor.
data SearchListResponse = SearchListResponse
    { _slrEtag            :: !(Maybe Text)
    , _slrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _slrNextPageToken   :: !(Maybe Text)
    , _slrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _slrKind            :: !Text
    , _slrItems           :: !(Maybe [Maybe SearchResult])
    , _slrVisitorId       :: !(Maybe Text)
    , _slrEventId         :: !(Maybe Text)
    , _slrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrEtag'
--
-- * 'slrTokenPagination'
--
-- * 'slrNextPageToken'
--
-- * 'slrPageInfo'
--
-- * 'slrKind'
--
-- * 'slrItems'
--
-- * 'slrVisitorId'
--
-- * 'slrEventId'
--
-- * 'slrPrevPageToken'
searchListResponse
    :: SearchListResponse
searchListResponse =
    SearchListResponse
    { _slrEtag = Nothing
    , _slrTokenPagination = Nothing
    , _slrNextPageToken = Nothing
    , _slrPageInfo = Nothing
    , _slrKind = "youtube#searchListResponse"
    , _slrItems = Nothing
    , _slrVisitorId = Nothing
    , _slrEventId = Nothing
    , _slrPrevPageToken = Nothing
    }

-- | Etag of this resource.
slrEtag :: Lens' SearchListResponse (Maybe Text)
slrEtag = lens _slrEtag (\ s a -> s{_slrEtag = a})

slrTokenPagination :: Lens' SearchListResponse (Maybe (Maybe TokenPagination))
slrTokenPagination
  = lens _slrTokenPagination
      (\ s a -> s{_slrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
slrNextPageToken :: Lens' SearchListResponse (Maybe Text)
slrNextPageToken
  = lens _slrNextPageToken
      (\ s a -> s{_slrNextPageToken = a})

slrPageInfo :: Lens' SearchListResponse (Maybe (Maybe PageInfo))
slrPageInfo
  = lens _slrPageInfo (\ s a -> s{_slrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#searchListResponse\".
slrKind :: Lens' SearchListResponse Text
slrKind = lens _slrKind (\ s a -> s{_slrKind = a})

-- | A list of results that match the search criteria.
slrItems :: Lens' SearchListResponse [Maybe SearchResult]
slrItems
  = lens _slrItems (\ s a -> s{_slrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
slrVisitorId :: Lens' SearchListResponse (Maybe Text)
slrVisitorId
  = lens _slrVisitorId (\ s a -> s{_slrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
slrEventId :: Lens' SearchListResponse (Maybe Text)
slrEventId
  = lens _slrEventId (\ s a -> s{_slrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
slrPrevPageToken :: Lens' SearchListResponse (Maybe Text)
slrPrevPageToken
  = lens _slrPrevPageToken
      (\ s a -> s{_slrPrevPageToken = a})

instance FromJSON SearchListResponse where
        parseJSON
          = withObject "SearchListResponse"
              (\ o ->
                 SearchListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#searchListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON SearchListResponse where
        toJSON SearchListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _slrEtag,
                  ("tokenPagination" .=) <$> _slrTokenPagination,
                  ("nextPageToken" .=) <$> _slrNextPageToken,
                  ("pageInfo" .=) <$> _slrPageInfo,
                  Just ("kind" .= _slrKind),
                  ("items" .=) <$> _slrItems,
                  ("visitorId" .=) <$> _slrVisitorId,
                  ("eventId" .=) <$> _slrEventId,
                  ("prevPageToken" .=) <$> _slrPrevPageToken])

-- | Stub token pagination template to suppress results.
--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination =
    TokenPagination
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
--
tokenPagination
    :: TokenPagination
tokenPagination = TokenPagination

instance FromJSON TokenPagination where
        parseJSON
          = withObject "TokenPagination"
              (\ o -> pure TokenPagination)

instance ToJSON TokenPagination where
        toJSON = const (Object mempty)

-- | Information that identifies the recommended resource.
--
-- /See:/ 'activityContentDetailsRecommendation' smart constructor.
data ActivityContentDetailsRecommendation = ActivityContentDetailsRecommendation
    { _acdrResourceId     :: !(Maybe (Maybe ResourceId))
    , _acdrSeedResourceId :: !(Maybe (Maybe ResourceId))
    , _acdrReason         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdrResourceId'
--
-- * 'acdrSeedResourceId'
--
-- * 'acdrReason'
activityContentDetailsRecommendation
    :: ActivityContentDetailsRecommendation
activityContentDetailsRecommendation =
    ActivityContentDetailsRecommendation
    { _acdrResourceId = Nothing
    , _acdrSeedResourceId = Nothing
    , _acdrReason = Nothing
    }

-- | The resourceId object contains information that identifies the
-- recommended resource.
acdrResourceId :: Lens' ActivityContentDetailsRecommendation (Maybe (Maybe ResourceId))
acdrResourceId
  = lens _acdrResourceId
      (\ s a -> s{_acdrResourceId = a})

-- | The seedResourceId object contains information about the resource that
-- caused the recommendation.
acdrSeedResourceId :: Lens' ActivityContentDetailsRecommendation (Maybe (Maybe ResourceId))
acdrSeedResourceId
  = lens _acdrSeedResourceId
      (\ s a -> s{_acdrSeedResourceId = a})

-- | The reason that the resource is recommended to the user.
acdrReason :: Lens' ActivityContentDetailsRecommendation (Maybe Text)
acdrReason
  = lens _acdrReason (\ s a -> s{_acdrReason = a})

instance FromJSON
         ActivityContentDetailsRecommendation where
        parseJSON
          = withObject "ActivityContentDetailsRecommendation"
              (\ o ->
                 ActivityContentDetailsRecommendation <$>
                   (o .:? "resourceId") <*> (o .:? "seedResourceId") <*>
                     (o .:? "reason"))

instance ToJSON ActivityContentDetailsRecommendation
         where
        toJSON ActivityContentDetailsRecommendation{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _acdrResourceId,
                  ("seedResourceId" .=) <$> _acdrSeedResourceId,
                  ("reason" .=) <$> _acdrReason])

-- | A resource id is a generic reference that points to another YouTube
-- resource.
--
-- /See:/ 'resourceId' smart constructor.
data ResourceId = ResourceId
    { _riKind       :: !(Maybe Text)
    , _riChannelId  :: !(Maybe Text)
    , _riVideoId    :: !(Maybe Text)
    , _riPlaylistId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riKind'
--
-- * 'riChannelId'
--
-- * 'riVideoId'
--
-- * 'riPlaylistId'
resourceId
    :: ResourceId
resourceId =
    ResourceId
    { _riKind = Nothing
    , _riChannelId = Nothing
    , _riVideoId = Nothing
    , _riPlaylistId = Nothing
    }

-- | The type of the API resource.
riKind :: Lens' ResourceId (Maybe Text)
riKind = lens _riKind (\ s a -> s{_riKind = a})

-- | The ID that YouTube uses to uniquely identify the referred resource, if
-- that resource is a channel. This property is only present if the
-- resourceId.kind value is youtube#channel.
riChannelId :: Lens' ResourceId (Maybe Text)
riChannelId
  = lens _riChannelId (\ s a -> s{_riChannelId = a})

-- | The ID that YouTube uses to uniquely identify the referred resource, if
-- that resource is a video. This property is only present if the
-- resourceId.kind value is youtube#video.
riVideoId :: Lens' ResourceId (Maybe Text)
riVideoId
  = lens _riVideoId (\ s a -> s{_riVideoId = a})

-- | The ID that YouTube uses to uniquely identify the referred resource, if
-- that resource is a playlist. This property is only present if the
-- resourceId.kind value is youtube#playlist.
riPlaylistId :: Lens' ResourceId (Maybe Text)
riPlaylistId
  = lens _riPlaylistId (\ s a -> s{_riPlaylistId = a})

instance FromJSON ResourceId where
        parseJSON
          = withObject "ResourceId"
              (\ o ->
                 ResourceId <$>
                   (o .:? "kind") <*> (o .:? "channelId") <*>
                     (o .:? "videoId")
                     <*> (o .:? "playlistId"))

instance ToJSON ResourceId where
        toJSON ResourceId{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _riKind,
                  ("channelId" .=) <$> _riChannelId,
                  ("videoId" .=) <$> _riVideoId,
                  ("playlistId" .=) <$> _riPlaylistId])

-- | A search result contains information about a YouTube video, channel, or
-- playlist that matches the search parameters specified in an API request.
-- While a search result points to a uniquely identifiable resource, like a
-- video, it does not have its own persistent data.
--
-- /See:/ 'searchResult' smart constructor.
data SearchResult = SearchResult
    { _srEtag    :: !(Maybe Text)
    , _srSnippet :: !(Maybe (Maybe SearchResultSNIppet))
    , _srKind    :: !Text
    , _srId      :: !(Maybe (Maybe ResourceId))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srEtag'
--
-- * 'srSnippet'
--
-- * 'srKind'
--
-- * 'srId'
searchResult
    :: SearchResult
searchResult =
    SearchResult
    { _srEtag = Nothing
    , _srSnippet = Nothing
    , _srKind = "youtube#searchResult"
    , _srId = Nothing
    }

-- | Etag of this resource.
srEtag :: Lens' SearchResult (Maybe Text)
srEtag = lens _srEtag (\ s a -> s{_srEtag = a})

-- | The snippet object contains basic details about a search result, such as
-- its title or description. For example, if the search result is a video,
-- then the title will be the video\'s title and the description will be
-- the video\'s description.
srSnippet :: Lens' SearchResult (Maybe (Maybe SearchResultSNIppet))
srSnippet
  = lens _srSnippet (\ s a -> s{_srSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#searchResult\".
srKind :: Lens' SearchResult Text
srKind = lens _srKind (\ s a -> s{_srKind = a})

-- | The id object contains information that can be used to uniquely identify
-- the resource that matches the search request.
srId :: Lens' SearchResult (Maybe (Maybe ResourceId))
srId = lens _srId (\ s a -> s{_srId = a})

instance FromJSON SearchResult where
        parseJSON
          = withObject "SearchResult"
              (\ o ->
                 SearchResult <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#searchResult")
                     <*> (o .:? "id"))

instance ToJSON SearchResult where
        toJSON SearchResult{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _srEtag,
                  ("snippet" .=) <$> _srSnippet,
                  Just ("kind" .= _srKind), ("id" .=) <$> _srId])

-- | JSON template for the status part of a channel.
--
-- /See:/ 'channelStatus' smart constructor.
data ChannelStatus = ChannelStatus
    { _csIsLinked          :: !(Maybe Bool)
    , _csLongUploadsStatus :: !(Maybe Text)
    , _csPrivacyStatus     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csIsLinked'
--
-- * 'csLongUploadsStatus'
--
-- * 'csPrivacyStatus'
channelStatus
    :: ChannelStatus
channelStatus =
    ChannelStatus
    { _csIsLinked = Nothing
    , _csLongUploadsStatus = Nothing
    , _csPrivacyStatus = Nothing
    }

-- | If true, then the user is linked to either a YouTube username or G+
-- account. Otherwise, the user doesn\'t have a public YouTube identity.
csIsLinked :: Lens' ChannelStatus (Maybe Bool)
csIsLinked
  = lens _csIsLinked (\ s a -> s{_csIsLinked = a})

-- | The long uploads status of this channel. See
csLongUploadsStatus :: Lens' ChannelStatus (Maybe Text)
csLongUploadsStatus
  = lens _csLongUploadsStatus
      (\ s a -> s{_csLongUploadsStatus = a})

-- | Privacy status of the channel.
csPrivacyStatus :: Lens' ChannelStatus (Maybe Text)
csPrivacyStatus
  = lens _csPrivacyStatus
      (\ s a -> s{_csPrivacyStatus = a})

instance FromJSON ChannelStatus where
        parseJSON
          = withObject "ChannelStatus"
              (\ o ->
                 ChannelStatus <$>
                   (o .:? "isLinked") <*> (o .:? "longUploadsStatus")
                     <*> (o .:? "privacyStatus"))

instance ToJSON ChannelStatus where
        toJSON ChannelStatus{..}
          = object
              (catMaybes
                 [("isLinked" .=) <$> _csIsLinked,
                  ("longUploadsStatus" .=) <$> _csLongUploadsStatus,
                  ("privacyStatus" .=) <$> _csPrivacyStatus])

--
-- /See:/ 'liveStreamSNIppet' smart constructor.
data LiveStreamSNIppet = LiveStreamSNIppet
    { _lssPublishedAt     :: !(Maybe UTCTime)
    , _lssChannelId       :: !(Maybe Text)
    , _lssIsDefaultStream :: !(Maybe Bool)
    , _lssTitle           :: !(Maybe Text)
    , _lssDescription     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssPublishedAt'
--
-- * 'lssChannelId'
--
-- * 'lssIsDefaultStream'
--
-- * 'lssTitle'
--
-- * 'lssDescription'
liveStreamSNIppet
    :: LiveStreamSNIppet
liveStreamSNIppet =
    LiveStreamSNIppet
    { _lssPublishedAt = Nothing
    , _lssChannelId = Nothing
    , _lssIsDefaultStream = Nothing
    , _lssTitle = Nothing
    , _lssDescription = Nothing
    }

-- | The date and time that the stream was created. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lssPublishedAt :: Lens' LiveStreamSNIppet (Maybe UTCTime)
lssPublishedAt
  = lens _lssPublishedAt
      (\ s a -> s{_lssPublishedAt = a})

-- | The ID that YouTube uses to uniquely identify the channel that is
-- transmitting the stream.
lssChannelId :: Lens' LiveStreamSNIppet (Maybe Text)
lssChannelId
  = lens _lssChannelId (\ s a -> s{_lssChannelId = a})

lssIsDefaultStream :: Lens' LiveStreamSNIppet (Maybe Bool)
lssIsDefaultStream
  = lens _lssIsDefaultStream
      (\ s a -> s{_lssIsDefaultStream = a})

-- | The stream\'s title. The value must be between 1 and 128 characters
-- long.
lssTitle :: Lens' LiveStreamSNIppet (Maybe Text)
lssTitle = lens _lssTitle (\ s a -> s{_lssTitle = a})

-- | The stream\'s description. The value cannot be longer than 10000
-- characters.
lssDescription :: Lens' LiveStreamSNIppet (Maybe Text)
lssDescription
  = lens _lssDescription
      (\ s a -> s{_lssDescription = a})

instance FromJSON LiveStreamSNIppet where
        parseJSON
          = withObject "LiveStreamSNIppet"
              (\ o ->
                 LiveStreamSNIppet <$>
                   (o .:? "publishedAt") <*> (o .:? "channelId") <*>
                     (o .:? "isDefaultStream")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON LiveStreamSNIppet where
        toJSON LiveStreamSNIppet{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _lssPublishedAt,
                  ("channelId" .=) <$> _lssChannelId,
                  ("isDefaultStream" .=) <$> _lssIsDefaultStream,
                  ("title" .=) <$> _lssTitle,
                  ("description" .=) <$> _lssDescription])

--
-- /See:/ 'playlistStatus' smart constructor.
newtype PlaylistStatus = PlaylistStatus
    { _psPrivacyStatus :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psPrivacyStatus'
playlistStatus
    :: PlaylistStatus
playlistStatus =
    PlaylistStatus
    { _psPrivacyStatus = Nothing
    }

-- | The playlist\'s privacy status.
psPrivacyStatus :: Lens' PlaylistStatus (Maybe Text)
psPrivacyStatus
  = lens _psPrivacyStatus
      (\ s a -> s{_psPrivacyStatus = a})

instance FromJSON PlaylistStatus where
        parseJSON
          = withObject "PlaylistStatus"
              (\ o -> PlaylistStatus <$> (o .:? "privacyStatus"))

instance ToJSON PlaylistStatus where
        toJSON PlaylistStatus{..}
          = object
              (catMaybes
                 [("privacyStatus" .=) <$> _psPrivacyStatus])

-- | Details about the content of a YouTube Video.
--
-- /See:/ 'videoContentDetails' smart constructor.
data VideoContentDetails = VideoContentDetails
    { _vcdCountryRestriction :: !(Maybe (Maybe AccessPolicy))
    , _vcdDefinition         :: !(Maybe Text)
    , _vcdDimension          :: !(Maybe Text)
    , _vcdCaption            :: !(Maybe Text)
    , _vcdRegionRestriction  :: !(Maybe (Maybe VideoContentDetailsRegionRestriction))
    , _vcdDuration           :: !(Maybe Text)
    , _vcdContentRating      :: !(Maybe (Maybe ContentRating))
    , _vcdLicensedContent    :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcdCountryRestriction'
--
-- * 'vcdDefinition'
--
-- * 'vcdDimension'
--
-- * 'vcdCaption'
--
-- * 'vcdRegionRestriction'
--
-- * 'vcdDuration'
--
-- * 'vcdContentRating'
--
-- * 'vcdLicensedContent'
videoContentDetails
    :: VideoContentDetails
videoContentDetails =
    VideoContentDetails
    { _vcdCountryRestriction = Nothing
    , _vcdDefinition = Nothing
    , _vcdDimension = Nothing
    , _vcdCaption = Nothing
    , _vcdRegionRestriction = Nothing
    , _vcdDuration = Nothing
    , _vcdContentRating = Nothing
    , _vcdLicensedContent = Nothing
    }

-- | The countryRestriction object contains information about the countries
-- where a video is (or is not) viewable.
vcdCountryRestriction :: Lens' VideoContentDetails (Maybe (Maybe AccessPolicy))
vcdCountryRestriction
  = lens _vcdCountryRestriction
      (\ s a -> s{_vcdCountryRestriction = a})

-- | The value of definition indicates whether the video is available in high
-- definition or only in standard definition.
vcdDefinition :: Lens' VideoContentDetails (Maybe Text)
vcdDefinition
  = lens _vcdDefinition
      (\ s a -> s{_vcdDefinition = a})

-- | The value of dimension indicates whether the video is available in 3D or
-- in 2D.
vcdDimension :: Lens' VideoContentDetails (Maybe Text)
vcdDimension
  = lens _vcdDimension (\ s a -> s{_vcdDimension = a})

-- | The value of captions indicates whether the video has captions or not.
vcdCaption :: Lens' VideoContentDetails (Maybe Text)
vcdCaption
  = lens _vcdCaption (\ s a -> s{_vcdCaption = a})

-- | The regionRestriction object contains information about the countries
-- where a video is (or is not) viewable. The object will contain either
-- the contentDetails.regionRestriction.allowed property or the
-- contentDetails.regionRestriction.blocked property.
vcdRegionRestriction :: Lens' VideoContentDetails (Maybe (Maybe VideoContentDetailsRegionRestriction))
vcdRegionRestriction
  = lens _vcdRegionRestriction
      (\ s a -> s{_vcdRegionRestriction = a})

-- | The length of the video. The tag value is an ISO 8601 duration in the
-- format PT#M#S, in which the letters PT indicate that the value specifies
-- a period of time, and the letters M and S refer to length in minutes and
-- seconds, respectively. The # characters preceding the M and S letters
-- are both integers that specify the number of minutes (or seconds) of the
-- video. For example, a value of PT15M51S indicates that the video is 15
-- minutes and 51 seconds long.
vcdDuration :: Lens' VideoContentDetails (Maybe Text)
vcdDuration
  = lens _vcdDuration (\ s a -> s{_vcdDuration = a})

-- | Specifies the ratings that the video received under various rating
-- schemes.
vcdContentRating :: Lens' VideoContentDetails (Maybe (Maybe ContentRating))
vcdContentRating
  = lens _vcdContentRating
      (\ s a -> s{_vcdContentRating = a})

-- | The value of is_license_content indicates whether the video is licensed
-- content.
vcdLicensedContent :: Lens' VideoContentDetails (Maybe Bool)
vcdLicensedContent
  = lens _vcdLicensedContent
      (\ s a -> s{_vcdLicensedContent = a})

instance FromJSON VideoContentDetails where
        parseJSON
          = withObject "VideoContentDetails"
              (\ o ->
                 VideoContentDetails <$>
                   (o .:? "countryRestriction") <*> (o .:? "definition")
                     <*> (o .:? "dimension")
                     <*> (o .:? "caption")
                     <*> (o .:? "regionRestriction")
                     <*> (o .:? "duration")
                     <*> (o .:? "contentRating")
                     <*> (o .:? "licensedContent"))

instance ToJSON VideoContentDetails where
        toJSON VideoContentDetails{..}
          = object
              (catMaybes
                 [("countryRestriction" .=) <$>
                    _vcdCountryRestriction,
                  ("definition" .=) <$> _vcdDefinition,
                  ("dimension" .=) <$> _vcdDimension,
                  ("caption" .=) <$> _vcdCaption,
                  ("regionRestriction" .=) <$> _vcdRegionRestriction,
                  ("duration" .=) <$> _vcdDuration,
                  ("contentRating" .=) <$> _vcdContentRating,
                  ("licensedContent" .=) <$> _vcdLicensedContent])

--
-- /See:/ 'channelListResponse' smart constructor.
data ChannelListResponse = ChannelListResponse
    { _clrEtag            :: !(Maybe Text)
    , _clrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _clrNextPageToken   :: !(Maybe Text)
    , _clrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _clrKind            :: !Text
    , _clrItems           :: !(Maybe [Maybe Channel])
    , _clrVisitorId       :: !(Maybe Text)
    , _clrEventId         :: !(Maybe Text)
    , _clrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrEtag'
--
-- * 'clrTokenPagination'
--
-- * 'clrNextPageToken'
--
-- * 'clrPageInfo'
--
-- * 'clrKind'
--
-- * 'clrItems'
--
-- * 'clrVisitorId'
--
-- * 'clrEventId'
--
-- * 'clrPrevPageToken'
channelListResponse
    :: ChannelListResponse
channelListResponse =
    ChannelListResponse
    { _clrEtag = Nothing
    , _clrTokenPagination = Nothing
    , _clrNextPageToken = Nothing
    , _clrPageInfo = Nothing
    , _clrKind = "youtube#channelListResponse"
    , _clrItems = Nothing
    , _clrVisitorId = Nothing
    , _clrEventId = Nothing
    , _clrPrevPageToken = Nothing
    }

-- | Etag of this resource.
clrEtag :: Lens' ChannelListResponse (Maybe Text)
clrEtag = lens _clrEtag (\ s a -> s{_clrEtag = a})

clrTokenPagination :: Lens' ChannelListResponse (Maybe (Maybe TokenPagination))
clrTokenPagination
  = lens _clrTokenPagination
      (\ s a -> s{_clrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
clrNextPageToken :: Lens' ChannelListResponse (Maybe Text)
clrNextPageToken
  = lens _clrNextPageToken
      (\ s a -> s{_clrNextPageToken = a})

clrPageInfo :: Lens' ChannelListResponse (Maybe (Maybe PageInfo))
clrPageInfo
  = lens _clrPageInfo (\ s a -> s{_clrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelListResponse\".
clrKind :: Lens' ChannelListResponse Text
clrKind = lens _clrKind (\ s a -> s{_clrKind = a})

-- | A list of channels that match the request criteria.
clrItems :: Lens' ChannelListResponse [Maybe Channel]
clrItems
  = lens _clrItems (\ s a -> s{_clrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
clrVisitorId :: Lens' ChannelListResponse (Maybe Text)
clrVisitorId
  = lens _clrVisitorId (\ s a -> s{_clrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
clrEventId :: Lens' ChannelListResponse (Maybe Text)
clrEventId
  = lens _clrEventId (\ s a -> s{_clrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
clrPrevPageToken :: Lens' ChannelListResponse (Maybe Text)
clrPrevPageToken
  = lens _clrPrevPageToken
      (\ s a -> s{_clrPrevPageToken = a})

instance FromJSON ChannelListResponse where
        parseJSON
          = withObject "ChannelListResponse"
              (\ o ->
                 ChannelListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#channelListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON ChannelListResponse where
        toJSON ChannelListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _clrEtag,
                  ("tokenPagination" .=) <$> _clrTokenPagination,
                  ("nextPageToken" .=) <$> _clrNextPageToken,
                  ("pageInfo" .=) <$> _clrPageInfo,
                  Just ("kind" .= _clrKind),
                  ("items" .=) <$> _clrItems,
                  ("visitorId" .=) <$> _clrVisitorId,
                  ("eventId" .=) <$> _clrEventId,
                  ("prevPageToken" .=) <$> _clrPrevPageToken])

--
-- /See:/ 'videoAbuseReportReasonListResponse' smart constructor.
data VideoAbuseReportReasonListResponse = VideoAbuseReportReasonListResponse
    { _varrlrEtag      :: !(Maybe Text)
    , _varrlrKind      :: !Text
    , _varrlrItems     :: !(Maybe [Maybe VideoAbuseReportReason])
    , _varrlrVisitorId :: !(Maybe Text)
    , _varrlrEventId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReasonListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrlrEtag'
--
-- * 'varrlrKind'
--
-- * 'varrlrItems'
--
-- * 'varrlrVisitorId'
--
-- * 'varrlrEventId'
videoAbuseReportReasonListResponse
    :: VideoAbuseReportReasonListResponse
videoAbuseReportReasonListResponse =
    VideoAbuseReportReasonListResponse
    { _varrlrEtag = Nothing
    , _varrlrKind = "youtube#videoAbuseReportReasonListResponse"
    , _varrlrItems = Nothing
    , _varrlrVisitorId = Nothing
    , _varrlrEventId = Nothing
    }

-- | Etag of this resource.
varrlrEtag :: Lens' VideoAbuseReportReasonListResponse (Maybe Text)
varrlrEtag
  = lens _varrlrEtag (\ s a -> s{_varrlrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoAbuseReportReasonListResponse\".
varrlrKind :: Lens' VideoAbuseReportReasonListResponse Text
varrlrKind
  = lens _varrlrKind (\ s a -> s{_varrlrKind = a})

-- | A list of valid abuse reasons that are used with video.ReportAbuse.
varrlrItems :: Lens' VideoAbuseReportReasonListResponse [Maybe VideoAbuseReportReason]
varrlrItems
  = lens _varrlrItems (\ s a -> s{_varrlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
varrlrVisitorId :: Lens' VideoAbuseReportReasonListResponse (Maybe Text)
varrlrVisitorId
  = lens _varrlrVisitorId
      (\ s a -> s{_varrlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
varrlrEventId :: Lens' VideoAbuseReportReasonListResponse (Maybe Text)
varrlrEventId
  = lens _varrlrEventId
      (\ s a -> s{_varrlrEventId = a})

instance FromJSON VideoAbuseReportReasonListResponse
         where
        parseJSON
          = withObject "VideoAbuseReportReasonListResponse"
              (\ o ->
                 VideoAbuseReportReasonListResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!=
                        "youtube#videoAbuseReportReasonListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON VideoAbuseReportReasonListResponse
         where
        toJSON VideoAbuseReportReasonListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _varrlrEtag,
                  Just ("kind" .= _varrlrKind),
                  ("items" .=) <$> _varrlrItems,
                  ("visitorId" .=) <$> _varrlrVisitorId,
                  ("eventId" .=) <$> _varrlrEventId])

-- | Detailed settings of a broadcast.
--
-- /See:/ 'liveBroadcastContentDetails' smart constructor.
data LiveBroadcastContentDetails = LiveBroadcastContentDetails
    { _lbcdEnableContentEncryption :: !(Maybe Bool)
    , _lbcdEnableLowLatency        :: !(Maybe Bool)
    , _lbcdEnableEmbed             :: !(Maybe Bool)
    , _lbcdStartWithSlate          :: !(Maybe Bool)
    , _lbcdMonitorStream           :: !(Maybe (Maybe MonitorStreamInfo))
    , _lbcdBoundStreamId           :: !(Maybe Text)
    , _lbcdRecordFromStart         :: !(Maybe Bool)
    , _lbcdEnableClosedCaptions    :: !(Maybe Bool)
    , _lbcdEnableDvr               :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbcdEnableContentEncryption'
--
-- * 'lbcdEnableLowLatency'
--
-- * 'lbcdEnableEmbed'
--
-- * 'lbcdStartWithSlate'
--
-- * 'lbcdMonitorStream'
--
-- * 'lbcdBoundStreamId'
--
-- * 'lbcdRecordFromStart'
--
-- * 'lbcdEnableClosedCaptions'
--
-- * 'lbcdEnableDvr'
liveBroadcastContentDetails
    :: LiveBroadcastContentDetails
liveBroadcastContentDetails =
    LiveBroadcastContentDetails
    { _lbcdEnableContentEncryption = Nothing
    , _lbcdEnableLowLatency = Nothing
    , _lbcdEnableEmbed = Nothing
    , _lbcdStartWithSlate = Nothing
    , _lbcdMonitorStream = Nothing
    , _lbcdBoundStreamId = Nothing
    , _lbcdRecordFromStart = Nothing
    , _lbcdEnableClosedCaptions = Nothing
    , _lbcdEnableDvr = Nothing
    }

-- | This setting indicates whether YouTube should enable content encryption
-- for the broadcast.
lbcdEnableContentEncryption :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableContentEncryption
  = lens _lbcdEnableContentEncryption
      (\ s a -> s{_lbcdEnableContentEncryption = a})

lbcdEnableLowLatency :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableLowLatency
  = lens _lbcdEnableLowLatency
      (\ s a -> s{_lbcdEnableLowLatency = a})

-- | This setting indicates whether the broadcast video can be played in an
-- embedded player. If you choose to archive the video (using the
-- enableArchive property), this setting will also apply to the archived
-- video.
lbcdEnableEmbed :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableEmbed
  = lens _lbcdEnableEmbed
      (\ s a -> s{_lbcdEnableEmbed = a})

-- | This setting indicates whether the broadcast should automatically begin
-- with an in-stream slate when you update the broadcast\'s status to live.
-- After updating the status, you then need to send a liveCuepoints.insert
-- request that sets the cuepoint\'s eventState to end to remove the
-- in-stream slate and make your broadcast stream visible to viewers.
lbcdStartWithSlate :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdStartWithSlate
  = lens _lbcdStartWithSlate
      (\ s a -> s{_lbcdStartWithSlate = a})

-- | The monitorStream object contains information about the monitor stream,
-- which the broadcaster can use to review the event content before the
-- broadcast stream is shown publicly.
lbcdMonitorStream :: Lens' LiveBroadcastContentDetails (Maybe (Maybe MonitorStreamInfo))
lbcdMonitorStream
  = lens _lbcdMonitorStream
      (\ s a -> s{_lbcdMonitorStream = a})

-- | This value uniquely identifies the live stream bound to the broadcast.
lbcdBoundStreamId :: Lens' LiveBroadcastContentDetails (Maybe Text)
lbcdBoundStreamId
  = lens _lbcdBoundStreamId
      (\ s a -> s{_lbcdBoundStreamId = a})

-- | Automatically start recording after the event goes live. The default
-- value for this property is true. Important: You must also set the
-- enableDvr property\'s value to true if you want the playback to be
-- available immediately after the broadcast ends. If you set this
-- property\'s value to true but do not also set the enableDvr property to
-- true, there may be a delay of around one day before the archived video
-- will be available for playback.
lbcdRecordFromStart :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdRecordFromStart
  = lens _lbcdRecordFromStart
      (\ s a -> s{_lbcdRecordFromStart = a})

-- | This setting indicates whether closed captioning is enabled for this
-- broadcast. The ingestion URL of the closed captions is returned through
-- the liveStreams API.
lbcdEnableClosedCaptions :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableClosedCaptions
  = lens _lbcdEnableClosedCaptions
      (\ s a -> s{_lbcdEnableClosedCaptions = a})

-- | This setting determines whether viewers can access DVR controls while
-- watching the video. DVR controls enable the viewer to control the video
-- playback experience by pausing, rewinding, or fast forwarding content.
-- The default value for this property is true. Important: You must set the
-- value to true and also set the enableArchive property\'s value to true
-- if you want to make playback available immediately after the broadcast
-- ends.
lbcdEnableDvr :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableDvr
  = lens _lbcdEnableDvr
      (\ s a -> s{_lbcdEnableDvr = a})

instance FromJSON LiveBroadcastContentDetails where
        parseJSON
          = withObject "LiveBroadcastContentDetails"
              (\ o ->
                 LiveBroadcastContentDetails <$>
                   (o .:? "enableContentEncryption") <*>
                     (o .:? "enableLowLatency")
                     <*> (o .:? "enableEmbed")
                     <*> (o .:? "startWithSlate")
                     <*> (o .:? "monitorStream")
                     <*> (o .:? "boundStreamId")
                     <*> (o .:? "recordFromStart")
                     <*> (o .:? "enableClosedCaptions")
                     <*> (o .:? "enableDvr"))

instance ToJSON LiveBroadcastContentDetails where
        toJSON LiveBroadcastContentDetails{..}
          = object
              (catMaybes
                 [("enableContentEncryption" .=) <$>
                    _lbcdEnableContentEncryption,
                  ("enableLowLatency" .=) <$> _lbcdEnableLowLatency,
                  ("enableEmbed" .=) <$> _lbcdEnableEmbed,
                  ("startWithSlate" .=) <$> _lbcdStartWithSlate,
                  ("monitorStream" .=) <$> _lbcdMonitorStream,
                  ("boundStreamId" .=) <$> _lbcdBoundStreamId,
                  ("recordFromStart" .=) <$> _lbcdRecordFromStart,
                  ("enableClosedCaptions" .=) <$>
                    _lbcdEnableClosedCaptions,
                  ("enableDvr" .=) <$> _lbcdEnableDvr])

-- | Information about a video that was marked as a favorite video.
--
-- /See:/ 'activityContentDetailsFavorite' smart constructor.
newtype ActivityContentDetailsFavorite = ActivityContentDetailsFavorite
    { _acdfResourceId :: Maybe (Maybe ResourceId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsFavorite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdfResourceId'
activityContentDetailsFavorite
    :: ActivityContentDetailsFavorite
activityContentDetailsFavorite =
    ActivityContentDetailsFavorite
    { _acdfResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- that was marked as a favorite.
acdfResourceId :: Lens' ActivityContentDetailsFavorite (Maybe (Maybe ResourceId))
acdfResourceId
  = lens _acdfResourceId
      (\ s a -> s{_acdfResourceId = a})

instance FromJSON ActivityContentDetailsFavorite
         where
        parseJSON
          = withObject "ActivityContentDetailsFavorite"
              (\ o ->
                 ActivityContentDetailsFavorite <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsFavorite where
        toJSON ActivityContentDetailsFavorite{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdfResourceId])

-- | Freebase topic information related to the video.
--
-- /See:/ 'videoTopicDetails' smart constructor.
data VideoTopicDetails = VideoTopicDetails
    { _vtdTopicIds         :: !(Maybe [Text])
    , _vtdRelevantTopicIds :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoTopicDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtdTopicIds'
--
-- * 'vtdRelevantTopicIds'
videoTopicDetails
    :: VideoTopicDetails
videoTopicDetails =
    VideoTopicDetails
    { _vtdTopicIds = Nothing
    , _vtdRelevantTopicIds = Nothing
    }

-- | A list of Freebase topic IDs that are centrally associated with the
-- video. These are topics that are centrally featured in the video, and it
-- can be said that the video is mainly about each of these. You can
-- retrieve information about each topic using the Freebase Topic API.
vtdTopicIds :: Lens' VideoTopicDetails [Text]
vtdTopicIds
  = lens _vtdTopicIds (\ s a -> s{_vtdTopicIds = a}) .
      _Default
      . _Coerce

-- | Similar to topic_id, except that these topics are merely relevant to the
-- video. These are topics that may be mentioned in, or appear in the
-- video. You can retrieve information about each topic using Freebase
-- Topic API.
vtdRelevantTopicIds :: Lens' VideoTopicDetails [Text]
vtdRelevantTopicIds
  = lens _vtdRelevantTopicIds
      (\ s a -> s{_vtdRelevantTopicIds = a})
      . _Default
      . _Coerce

instance FromJSON VideoTopicDetails where
        parseJSON
          = withObject "VideoTopicDetails"
              (\ o ->
                 VideoTopicDetails <$>
                   (o .:? "topicIds" .!= mempty) <*>
                     (o .:? "relevantTopicIds" .!= mempty))

instance ToJSON VideoTopicDetails where
        toJSON VideoTopicDetails{..}
          = object
              (catMaybes
                 [("topicIds" .=) <$> _vtdTopicIds,
                  ("relevantTopicIds" .=) <$> _vtdRelevantTopicIds])

-- | A live stream describes a live ingestion point.
--
-- /See:/ 'liveStream' smart constructor.
data LiveStream = LiveStream
    { _lsStatus         :: !(Maybe (Maybe LiveStreamStatus))
    , _lsEtag           :: !(Maybe Text)
    , _lsSnippet        :: !(Maybe (Maybe LiveStreamSNIppet))
    , _lsKind           :: !Text
    , _lsContentDetails :: !(Maybe (Maybe LiveStreamContentDetails))
    , _lsId             :: !(Maybe Text)
    , _lsCdn            :: !(Maybe (Maybe CdnSettings))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsStatus'
--
-- * 'lsEtag'
--
-- * 'lsSnippet'
--
-- * 'lsKind'
--
-- * 'lsContentDetails'
--
-- * 'lsId'
--
-- * 'lsCdn'
liveStream
    :: LiveStream
liveStream =
    LiveStream
    { _lsStatus = Nothing
    , _lsEtag = Nothing
    , _lsSnippet = Nothing
    , _lsKind = "youtube#liveStream"
    , _lsContentDetails = Nothing
    , _lsId = Nothing
    , _lsCdn = Nothing
    }

-- | The status object contains information about live stream\'s status.
lsStatus :: Lens' LiveStream (Maybe (Maybe LiveStreamStatus))
lsStatus = lens _lsStatus (\ s a -> s{_lsStatus = a})

-- | Etag of this resource.
lsEtag :: Lens' LiveStream (Maybe Text)
lsEtag = lens _lsEtag (\ s a -> s{_lsEtag = a})

-- | The snippet object contains basic details about the stream, including
-- its channel, title, and description.
lsSnippet :: Lens' LiveStream (Maybe (Maybe LiveStreamSNIppet))
lsSnippet
  = lens _lsSnippet (\ s a -> s{_lsSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveStream\".
lsKind :: Lens' LiveStream Text
lsKind = lens _lsKind (\ s a -> s{_lsKind = a})

-- | The content_details object contains information about the stream,
-- including the closed captions ingestion URL.
lsContentDetails :: Lens' LiveStream (Maybe (Maybe LiveStreamContentDetails))
lsContentDetails
  = lens _lsContentDetails
      (\ s a -> s{_lsContentDetails = a})

-- | The ID that YouTube assigns to uniquely identify the stream.
lsId :: Lens' LiveStream (Maybe Text)
lsId = lens _lsId (\ s a -> s{_lsId = a})

-- | The cdn object defines the live stream\'s content delivery network (CDN)
-- settings. These settings provide details about the manner in which you
-- stream your content to YouTube.
lsCdn :: Lens' LiveStream (Maybe (Maybe CdnSettings))
lsCdn = lens _lsCdn (\ s a -> s{_lsCdn = a})

instance FromJSON LiveStream where
        parseJSON
          = withObject "LiveStream"
              (\ o ->
                 LiveStream <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#liveStream")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id")
                     <*> (o .:? "cdn"))

instance ToJSON LiveStream where
        toJSON LiveStream{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lsStatus,
                  ("etag" .=) <$> _lsEtag,
                  ("snippet" .=) <$> _lsSnippet,
                  Just ("kind" .= _lsKind),
                  ("contentDetails" .=) <$> _lsContentDetails,
                  ("id" .=) <$> _lsId, ("cdn" .=) <$> _lsCdn])

--
-- /See:/ 'channelSection' smart constructor.
data ChannelSection = ChannelSection
    { _csEtag           :: !(Maybe Text)
    , _csSnippet        :: !(Maybe (Maybe ChannelSectionSNIppet))
    , _csKind           :: !Text
    , _csContentDetails :: !(Maybe (Maybe ChannelSectionContentDetails))
    , _csTargeting      :: !(Maybe (Maybe ChannelSectionTargeting))
    , _csId             :: !(Maybe Text)
    , _csLocalizations  :: !(Maybe ChannelSectionLocalizations)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csEtag'
--
-- * 'csSnippet'
--
-- * 'csKind'
--
-- * 'csContentDetails'
--
-- * 'csTargeting'
--
-- * 'csId'
--
-- * 'csLocalizations'
channelSection
    :: ChannelSection
channelSection =
    ChannelSection
    { _csEtag = Nothing
    , _csSnippet = Nothing
    , _csKind = "youtube#channelSection"
    , _csContentDetails = Nothing
    , _csTargeting = Nothing
    , _csId = Nothing
    , _csLocalizations = Nothing
    }

-- | Etag of this resource.
csEtag :: Lens' ChannelSection (Maybe Text)
csEtag = lens _csEtag (\ s a -> s{_csEtag = a})

-- | The snippet object contains basic details about the channel section,
-- such as its type, style and title.
csSnippet :: Lens' ChannelSection (Maybe (Maybe ChannelSectionSNIppet))
csSnippet
  = lens _csSnippet (\ s a -> s{_csSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelSection\".
csKind :: Lens' ChannelSection Text
csKind = lens _csKind (\ s a -> s{_csKind = a})

-- | The contentDetails object contains details about the channel section
-- content, such as a list of playlists or channels featured in the
-- section.
csContentDetails :: Lens' ChannelSection (Maybe (Maybe ChannelSectionContentDetails))
csContentDetails
  = lens _csContentDetails
      (\ s a -> s{_csContentDetails = a})

-- | The targeting object contains basic targeting settings about the channel
-- section.
csTargeting :: Lens' ChannelSection (Maybe (Maybe ChannelSectionTargeting))
csTargeting
  = lens _csTargeting (\ s a -> s{_csTargeting = a})

-- | The ID that YouTube uses to uniquely identify the channel section.
csId :: Lens' ChannelSection (Maybe Text)
csId = lens _csId (\ s a -> s{_csId = a})

-- | Localizations for different languages
csLocalizations :: Lens' ChannelSection (Maybe ChannelSectionLocalizations)
csLocalizations
  = lens _csLocalizations
      (\ s a -> s{_csLocalizations = a})

instance FromJSON ChannelSection where
        parseJSON
          = withObject "ChannelSection"
              (\ o ->
                 ChannelSection <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#channelSection")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "targeting")
                     <*> (o .:? "id")
                     <*> (o .:? "localizations"))

instance ToJSON ChannelSection where
        toJSON ChannelSection{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _csEtag,
                  ("snippet" .=) <$> _csSnippet,
                  Just ("kind" .= _csKind),
                  ("contentDetails" .=) <$> _csContentDetails,
                  ("targeting" .=) <$> _csTargeting,
                  ("id" .=) <$> _csId,
                  ("localizations" .=) <$> _csLocalizations])

--
-- /See:/ 'liveBroadcastTopicDetails' smart constructor.
newtype LiveBroadcastTopicDetails = LiveBroadcastTopicDetails
    { _lbtdTopics :: Maybe [Maybe LiveBroadcastTopic]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastTopicDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtdTopics'
liveBroadcastTopicDetails
    :: LiveBroadcastTopicDetails
liveBroadcastTopicDetails =
    LiveBroadcastTopicDetails
    { _lbtdTopics = Nothing
    }

lbtdTopics :: Lens' LiveBroadcastTopicDetails [Maybe LiveBroadcastTopic]
lbtdTopics
  = lens _lbtdTopics (\ s a -> s{_lbtdTopics = a}) .
      _Default
      . _Coerce

instance FromJSON LiveBroadcastTopicDetails where
        parseJSON
          = withObject "LiveBroadcastTopicDetails"
              (\ o ->
                 LiveBroadcastTopicDetails <$>
                   (o .:? "topics" .!= mempty))

instance ToJSON LiveBroadcastTopicDetails where
        toJSON LiveBroadcastTopicDetails{..}
          = object (catMaybes [("topics" .=) <$> _lbtdTopics])

-- | Branding properties for images associated with the channel.
--
-- /See:/ 'imageSettings' smart constructor.
data ImageSettings = ImageSettings
    { _isBannerMobileLowImageUrl           :: !(Maybe Text)
    , _isBannerTabletExtraHdImageUrl       :: !(Maybe Text)
    , _isSmallBrandedBannerImageImapScript :: !(Maybe (Maybe LocalizedProperty))
    , _isBannerTvHighImageUrl              :: !(Maybe Text)
    , _isBannerMobileHdImageUrl            :: !(Maybe Text)
    , _isBannerTvMediumImageUrl            :: !(Maybe Text)
    , _isBannerTvImageUrl                  :: !(Maybe Text)
    , _isBannerTabletImageUrl              :: !(Maybe Text)
    , _isBannerMobileImageUrl              :: !(Maybe Text)
    , _isTrackingImageUrl                  :: !(Maybe Text)
    , _isBannerMobileMediumHdImageUrl      :: !(Maybe Text)
    , _isLargeBrandedBannerImageUrl        :: !(Maybe (Maybe LocalizedProperty))
    , _isBannerExternalUrl                 :: !(Maybe Text)
    , _isBackgroundImageUrl                :: !(Maybe (Maybe LocalizedProperty))
    , _isSmallBrandedBannerImageUrl        :: !(Maybe (Maybe LocalizedProperty))
    , _isBannerImageUrl                    :: !(Maybe Text)
    , _isWatchIconImageUrl                 :: !(Maybe Text)
    , _isBannerTvLowImageUrl               :: !(Maybe Text)
    , _isBannerMobileExtraHdImageUrl       :: !(Maybe Text)
    , _isLargeBrandedBannerImageImapScript :: !(Maybe (Maybe LocalizedProperty))
    , _isBannerTabletLowImageUrl           :: !(Maybe Text)
    , _isBannerTabletHdImageUrl            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isBannerMobileLowImageUrl'
--
-- * 'isBannerTabletExtraHdImageUrl'
--
-- * 'isSmallBrandedBannerImageImapScript'
--
-- * 'isBannerTvHighImageUrl'
--
-- * 'isBannerMobileHdImageUrl'
--
-- * 'isBannerTvMediumImageUrl'
--
-- * 'isBannerTvImageUrl'
--
-- * 'isBannerTabletImageUrl'
--
-- * 'isBannerMobileImageUrl'
--
-- * 'isTrackingImageUrl'
--
-- * 'isBannerMobileMediumHdImageUrl'
--
-- * 'isLargeBrandedBannerImageUrl'
--
-- * 'isBannerExternalUrl'
--
-- * 'isBackgroundImageUrl'
--
-- * 'isSmallBrandedBannerImageUrl'
--
-- * 'isBannerImageUrl'
--
-- * 'isWatchIconImageUrl'
--
-- * 'isBannerTvLowImageUrl'
--
-- * 'isBannerMobileExtraHdImageUrl'
--
-- * 'isLargeBrandedBannerImageImapScript'
--
-- * 'isBannerTabletLowImageUrl'
--
-- * 'isBannerTabletHdImageUrl'
imageSettings
    :: ImageSettings
imageSettings =
    ImageSettings
    { _isBannerMobileLowImageUrl = Nothing
    , _isBannerTabletExtraHdImageUrl = Nothing
    , _isSmallBrandedBannerImageImapScript = Nothing
    , _isBannerTvHighImageUrl = Nothing
    , _isBannerMobileHdImageUrl = Nothing
    , _isBannerTvMediumImageUrl = Nothing
    , _isBannerTvImageUrl = Nothing
    , _isBannerTabletImageUrl = Nothing
    , _isBannerMobileImageUrl = Nothing
    , _isTrackingImageUrl = Nothing
    , _isBannerMobileMediumHdImageUrl = Nothing
    , _isLargeBrandedBannerImageUrl = Nothing
    , _isBannerExternalUrl = Nothing
    , _isBackgroundImageUrl = Nothing
    , _isSmallBrandedBannerImageUrl = Nothing
    , _isBannerImageUrl = Nothing
    , _isWatchIconImageUrl = Nothing
    , _isBannerTvLowImageUrl = Nothing
    , _isBannerMobileExtraHdImageUrl = Nothing
    , _isLargeBrandedBannerImageImapScript = Nothing
    , _isBannerTabletLowImageUrl = Nothing
    , _isBannerTabletHdImageUrl = Nothing
    }

-- | Banner image. Mobile size low resolution (320x88).
isBannerMobileLowImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerMobileLowImageUrl
  = lens _isBannerMobileLowImageUrl
      (\ s a -> s{_isBannerMobileLowImageUrl = a})

-- | Banner image. Tablet size extra high resolution (2560x424).
isBannerTabletExtraHdImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTabletExtraHdImageUrl
  = lens _isBannerTabletExtraHdImageUrl
      (\ s a -> s{_isBannerTabletExtraHdImageUrl = a})

-- | The image map script for the small banner image.
isSmallBrandedBannerImageImapScript :: Lens' ImageSettings (Maybe (Maybe LocalizedProperty))
isSmallBrandedBannerImageImapScript
  = lens _isSmallBrandedBannerImageImapScript
      (\ s a ->
         s{_isSmallBrandedBannerImageImapScript = a})

-- | Banner image. TV size high resolution (1920x1080).
isBannerTvHighImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTvHighImageUrl
  = lens _isBannerTvHighImageUrl
      (\ s a -> s{_isBannerTvHighImageUrl = a})

-- | Banner image. Mobile size high resolution (1280x360).
isBannerMobileHdImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerMobileHdImageUrl
  = lens _isBannerMobileHdImageUrl
      (\ s a -> s{_isBannerMobileHdImageUrl = a})

-- | Banner image. TV size medium resolution (1280x720).
isBannerTvMediumImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTvMediumImageUrl
  = lens _isBannerTvMediumImageUrl
      (\ s a -> s{_isBannerTvMediumImageUrl = a})

-- | Banner image. TV size extra high resolution (2120x1192).
isBannerTvImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTvImageUrl
  = lens _isBannerTvImageUrl
      (\ s a -> s{_isBannerTvImageUrl = a})

-- | Banner image. Tablet size (1707x283).
isBannerTabletImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTabletImageUrl
  = lens _isBannerTabletImageUrl
      (\ s a -> s{_isBannerTabletImageUrl = a})

-- | Banner image. Mobile size (640x175).
isBannerMobileImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerMobileImageUrl
  = lens _isBannerMobileImageUrl
      (\ s a -> s{_isBannerMobileImageUrl = a})

-- | The URL for a 1px by 1px tracking pixel that can be used to collect
-- statistics for views of the channel or video pages.
isTrackingImageUrl :: Lens' ImageSettings (Maybe Text)
isTrackingImageUrl
  = lens _isTrackingImageUrl
      (\ s a -> s{_isTrackingImageUrl = a})

-- | Banner image. Mobile size medium\/high resolution (960x263).
isBannerMobileMediumHdImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerMobileMediumHdImageUrl
  = lens _isBannerMobileMediumHdImageUrl
      (\ s a -> s{_isBannerMobileMediumHdImageUrl = a})

-- | The URL for the 854px by 70px image that appears below the video player
-- in the expanded video view of the video watch page.
isLargeBrandedBannerImageUrl :: Lens' ImageSettings (Maybe (Maybe LocalizedProperty))
isLargeBrandedBannerImageUrl
  = lens _isLargeBrandedBannerImageUrl
      (\ s a -> s{_isLargeBrandedBannerImageUrl = a})

-- | This is used only in update requests; if it\'s set, we use this URL to
-- generate all of the above banner URLs.
isBannerExternalUrl :: Lens' ImageSettings (Maybe Text)
isBannerExternalUrl
  = lens _isBannerExternalUrl
      (\ s a -> s{_isBannerExternalUrl = a})

-- | The URL for the background image shown on the video watch page. The
-- image should be 1200px by 615px, with a maximum file size of 128k.
isBackgroundImageUrl :: Lens' ImageSettings (Maybe (Maybe LocalizedProperty))
isBackgroundImageUrl
  = lens _isBackgroundImageUrl
      (\ s a -> s{_isBackgroundImageUrl = a})

-- | The URL for the 640px by 70px banner image that appears below the video
-- player in the default view of the video watch page.
isSmallBrandedBannerImageUrl :: Lens' ImageSettings (Maybe (Maybe LocalizedProperty))
isSmallBrandedBannerImageUrl
  = lens _isSmallBrandedBannerImageUrl
      (\ s a -> s{_isSmallBrandedBannerImageUrl = a})

-- | Banner image. Desktop size (1060x175).
isBannerImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerImageUrl
  = lens _isBannerImageUrl
      (\ s a -> s{_isBannerImageUrl = a})

-- | The URL for the image that appears above the top-left corner of the
-- video player. This is a 25-pixel-high image with a flexible width that
-- cannot exceed 170 pixels.
isWatchIconImageUrl :: Lens' ImageSettings (Maybe Text)
isWatchIconImageUrl
  = lens _isWatchIconImageUrl
      (\ s a -> s{_isWatchIconImageUrl = a})

-- | Banner image. TV size low resolution (854x480).
isBannerTvLowImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTvLowImageUrl
  = lens _isBannerTvLowImageUrl
      (\ s a -> s{_isBannerTvLowImageUrl = a})

-- | Banner image. Mobile size high resolution (1440x395).
isBannerMobileExtraHdImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerMobileExtraHdImageUrl
  = lens _isBannerMobileExtraHdImageUrl
      (\ s a -> s{_isBannerMobileExtraHdImageUrl = a})

-- | The image map script for the large banner image.
isLargeBrandedBannerImageImapScript :: Lens' ImageSettings (Maybe (Maybe LocalizedProperty))
isLargeBrandedBannerImageImapScript
  = lens _isLargeBrandedBannerImageImapScript
      (\ s a ->
         s{_isLargeBrandedBannerImageImapScript = a})

-- | Banner image. Tablet size low resolution (1138x188).
isBannerTabletLowImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTabletLowImageUrl
  = lens _isBannerTabletLowImageUrl
      (\ s a -> s{_isBannerTabletLowImageUrl = a})

-- | Banner image. Tablet size high resolution (2276x377).
isBannerTabletHdImageUrl :: Lens' ImageSettings (Maybe Text)
isBannerTabletHdImageUrl
  = lens _isBannerTabletHdImageUrl
      (\ s a -> s{_isBannerTabletHdImageUrl = a})

instance FromJSON ImageSettings where
        parseJSON
          = withObject "ImageSettings"
              (\ o ->
                 ImageSettings <$>
                   (o .:? "bannerMobileLowImageUrl") <*>
                     (o .:? "bannerTabletExtraHdImageUrl")
                     <*> (o .:? "smallBrandedBannerImageImapScript")
                     <*> (o .:? "bannerTvHighImageUrl")
                     <*> (o .:? "bannerMobileHdImageUrl")
                     <*> (o .:? "bannerTvMediumImageUrl")
                     <*> (o .:? "bannerTvImageUrl")
                     <*> (o .:? "bannerTabletImageUrl")
                     <*> (o .:? "bannerMobileImageUrl")
                     <*> (o .:? "trackingImageUrl")
                     <*> (o .:? "bannerMobileMediumHdImageUrl")
                     <*> (o .:? "largeBrandedBannerImageUrl")
                     <*> (o .:? "bannerExternalUrl")
                     <*> (o .:? "backgroundImageUrl")
                     <*> (o .:? "smallBrandedBannerImageUrl")
                     <*> (o .:? "bannerImageUrl")
                     <*> (o .:? "watchIconImageUrl")
                     <*> (o .:? "bannerTvLowImageUrl")
                     <*> (o .:? "bannerMobileExtraHdImageUrl")
                     <*> (o .:? "largeBrandedBannerImageImapScript")
                     <*> (o .:? "bannerTabletLowImageUrl")
                     <*> (o .:? "bannerTabletHdImageUrl"))

instance ToJSON ImageSettings where
        toJSON ImageSettings{..}
          = object
              (catMaybes
                 [("bannerMobileLowImageUrl" .=) <$>
                    _isBannerMobileLowImageUrl,
                  ("bannerTabletExtraHdImageUrl" .=) <$>
                    _isBannerTabletExtraHdImageUrl,
                  ("smallBrandedBannerImageImapScript" .=) <$>
                    _isSmallBrandedBannerImageImapScript,
                  ("bannerTvHighImageUrl" .=) <$>
                    _isBannerTvHighImageUrl,
                  ("bannerMobileHdImageUrl" .=) <$>
                    _isBannerMobileHdImageUrl,
                  ("bannerTvMediumImageUrl" .=) <$>
                    _isBannerTvMediumImageUrl,
                  ("bannerTvImageUrl" .=) <$> _isBannerTvImageUrl,
                  ("bannerTabletImageUrl" .=) <$>
                    _isBannerTabletImageUrl,
                  ("bannerMobileImageUrl" .=) <$>
                    _isBannerMobileImageUrl,
                  ("trackingImageUrl" .=) <$> _isTrackingImageUrl,
                  ("bannerMobileMediumHdImageUrl" .=) <$>
                    _isBannerMobileMediumHdImageUrl,
                  ("largeBrandedBannerImageUrl" .=) <$>
                    _isLargeBrandedBannerImageUrl,
                  ("bannerExternalUrl" .=) <$> _isBannerExternalUrl,
                  ("backgroundImageUrl" .=) <$> _isBackgroundImageUrl,
                  ("smallBrandedBannerImageUrl" .=) <$>
                    _isSmallBrandedBannerImageUrl,
                  ("bannerImageUrl" .=) <$> _isBannerImageUrl,
                  ("watchIconImageUrl" .=) <$> _isWatchIconImageUrl,
                  ("bannerTvLowImageUrl" .=) <$>
                    _isBannerTvLowImageUrl,
                  ("bannerMobileExtraHdImageUrl" .=) <$>
                    _isBannerMobileExtraHdImageUrl,
                  ("largeBrandedBannerImageImapScript" .=) <$>
                    _isLargeBrandedBannerImageImapScript,
                  ("bannerTabletLowImageUrl" .=) <$>
                    _isBannerTabletLowImageUrl,
                  ("bannerTabletHdImageUrl" .=) <$>
                    _isBannerTabletHdImageUrl])

-- | Information about the uploaded video.
--
-- /See:/ 'activityContentDetailsUpload' smart constructor.
newtype ActivityContentDetailsUpload = ActivityContentDetailsUpload
    { _acduVideoId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acduVideoId'
activityContentDetailsUpload
    :: ActivityContentDetailsUpload
activityContentDetailsUpload =
    ActivityContentDetailsUpload
    { _acduVideoId = Nothing
    }

-- | The ID that YouTube uses to uniquely identify the uploaded video.
acduVideoId :: Lens' ActivityContentDetailsUpload (Maybe Text)
acduVideoId
  = lens _acduVideoId (\ s a -> s{_acduVideoId = a})

instance FromJSON ActivityContentDetailsUpload where
        parseJSON
          = withObject "ActivityContentDetailsUpload"
              (\ o ->
                 ActivityContentDetailsUpload <$> (o .:? "videoId"))

instance ToJSON ActivityContentDetailsUpload where
        toJSON ActivityContentDetailsUpload{..}
          = object
              (catMaybes [("videoId" .=) <$> _acduVideoId])

--
-- /See:/ 'playlistContentDetails' smart constructor.
newtype PlaylistContentDetails = PlaylistContentDetails
    { _pcdItemCount :: Maybe Word32
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdItemCount'
playlistContentDetails
    :: PlaylistContentDetails
playlistContentDetails =
    PlaylistContentDetails
    { _pcdItemCount = Nothing
    }

-- | The number of videos in the playlist.
pcdItemCount :: Lens' PlaylistContentDetails (Maybe Word32)
pcdItemCount
  = lens _pcdItemCount (\ s a -> s{_pcdItemCount = a})

instance FromJSON PlaylistContentDetails where
        parseJSON
          = withObject "PlaylistContentDetails"
              (\ o ->
                 PlaylistContentDetails <$> (o .:? "itemCount"))

instance ToJSON PlaylistContentDetails where
        toJSON PlaylistContentDetails{..}
          = object
              (catMaybes [("itemCount" .=) <$> _pcdItemCount])

-- | Details about a social network post.
--
-- /See:/ 'activityContentDetailsSocial' smart constructor.
data ActivityContentDetailsSocial = ActivityContentDetailsSocial
    { _acdsResourceId   :: !(Maybe (Maybe ResourceId))
    , _acdsImageUrl     :: !(Maybe Text)
    , _acdsAuthor       :: !(Maybe Text)
    , _acdsReferenceUrl :: !(Maybe Text)
    , _acdsType         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsSocial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdsResourceId'
--
-- * 'acdsImageUrl'
--
-- * 'acdsAuthor'
--
-- * 'acdsReferenceUrl'
--
-- * 'acdsType'
activityContentDetailsSocial
    :: ActivityContentDetailsSocial
activityContentDetailsSocial =
    ActivityContentDetailsSocial
    { _acdsResourceId = Nothing
    , _acdsImageUrl = Nothing
    , _acdsAuthor = Nothing
    , _acdsReferenceUrl = Nothing
    , _acdsType = Nothing
    }

-- | The resourceId object encapsulates information that identifies the
-- resource associated with a social network post.
acdsResourceId :: Lens' ActivityContentDetailsSocial (Maybe (Maybe ResourceId))
acdsResourceId
  = lens _acdsResourceId
      (\ s a -> s{_acdsResourceId = a})

-- | An image of the post\'s author.
acdsImageUrl :: Lens' ActivityContentDetailsSocial (Maybe Text)
acdsImageUrl
  = lens _acdsImageUrl (\ s a -> s{_acdsImageUrl = a})

-- | The author of the social network post.
acdsAuthor :: Lens' ActivityContentDetailsSocial (Maybe Text)
acdsAuthor
  = lens _acdsAuthor (\ s a -> s{_acdsAuthor = a})

-- | The URL of the social network post.
acdsReferenceUrl :: Lens' ActivityContentDetailsSocial (Maybe Text)
acdsReferenceUrl
  = lens _acdsReferenceUrl
      (\ s a -> s{_acdsReferenceUrl = a})

-- | The name of the social network.
acdsType :: Lens' ActivityContentDetailsSocial (Maybe Text)
acdsType = lens _acdsType (\ s a -> s{_acdsType = a})

instance FromJSON ActivityContentDetailsSocial where
        parseJSON
          = withObject "ActivityContentDetailsSocial"
              (\ o ->
                 ActivityContentDetailsSocial <$>
                   (o .:? "resourceId") <*> (o .:? "imageUrl") <*>
                     (o .:? "author")
                     <*> (o .:? "referenceUrl")
                     <*> (o .:? "type"))

instance ToJSON ActivityContentDetailsSocial where
        toJSON ActivityContentDetailsSocial{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _acdsResourceId,
                  ("imageUrl" .=) <$> _acdsImageUrl,
                  ("author" .=) <$> _acdsAuthor,
                  ("referenceUrl" .=) <$> _acdsReferenceUrl,
                  ("type" .=) <$> _acdsType])

-- | Information about a channel that a user subscribed to.
--
-- /See:/ 'activityContentDetailsSubscription' smart constructor.
newtype ActivityContentDetailsSubscription = ActivityContentDetailsSubscription
    { _aResourceId :: Maybe (Maybe ResourceId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aResourceId'
activityContentDetailsSubscription
    :: ActivityContentDetailsSubscription
activityContentDetailsSubscription =
    ActivityContentDetailsSubscription
    { _aResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- that the user subscribed to.
aResourceId :: Lens' ActivityContentDetailsSubscription (Maybe (Maybe ResourceId))
aResourceId
  = lens _aResourceId (\ s a -> s{_aResourceId = a})

instance FromJSON ActivityContentDetailsSubscription
         where
        parseJSON
          = withObject "ActivityContentDetailsSubscription"
              (\ o ->
                 ActivityContentDetailsSubscription <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsSubscription
         where
        toJSON ActivityContentDetailsSubscription{..}
          = object
              (catMaybes [("resourceId" .=) <$> _aResourceId])

-- | Information about a resource that received a comment.
--
-- /See:/ 'activityContentDetailsComment' smart constructor.
newtype ActivityContentDetailsComment = ActivityContentDetailsComment
    { _acdcResourceId :: Maybe (Maybe ResourceId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdcResourceId'
activityContentDetailsComment
    :: ActivityContentDetailsComment
activityContentDetailsComment =
    ActivityContentDetailsComment
    { _acdcResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- associated with the comment.
acdcResourceId :: Lens' ActivityContentDetailsComment (Maybe (Maybe ResourceId))
acdcResourceId
  = lens _acdcResourceId
      (\ s a -> s{_acdcResourceId = a})

instance FromJSON ActivityContentDetailsComment where
        parseJSON
          = withObject "ActivityContentDetailsComment"
              (\ o ->
                 ActivityContentDetailsComment <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsComment where
        toJSON ActivityContentDetailsComment{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdcResourceId])

-- | Information about a resource that received a positive (like) rating.
--
-- /See:/ 'activityContentDetailsLike' smart constructor.
newtype ActivityContentDetailsLike = ActivityContentDetailsLike
    { _acdlResourceId :: Maybe (Maybe ResourceId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsLike' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdlResourceId'
activityContentDetailsLike
    :: ActivityContentDetailsLike
activityContentDetailsLike =
    ActivityContentDetailsLike
    { _acdlResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the rated
-- resource.
acdlResourceId :: Lens' ActivityContentDetailsLike (Maybe (Maybe ResourceId))
acdlResourceId
  = lens _acdlResourceId
      (\ s a -> s{_acdlResourceId = a})

instance FromJSON ActivityContentDetailsLike where
        parseJSON
          = withObject "ActivityContentDetailsLike"
              (\ o ->
                 ActivityContentDetailsLike <$> (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsLike where
        toJSON ActivityContentDetailsLike{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdlResourceId])

-- | Describes original video file properties, including technical details
-- about audio and video streams, but also metadata information like
-- content length, digitization time, or geotagging information.
--
-- /See:/ 'videoFileDetails' smart constructor.
data VideoFileDetails = VideoFileDetails
    { _vfdBitrateBps        :: !(Maybe Word64)
    , _vfdCreationTime      :: !(Maybe Text)
    , _vfdRecordingLocation :: !(Maybe (Maybe GeoPoint))
    , _vfdDurationMs        :: !(Maybe Word64)
    , _vfdFileSize          :: !(Maybe Word64)
    , _vfdFileType          :: !(Maybe Text)
    , _vfdContainer         :: !(Maybe Text)
    , _vfdVideoStreams      :: !(Maybe [Maybe VideoFileDetailsVideoStream])
    , _vfdAudioStreams      :: !(Maybe [Maybe VideoFileDetailsAudioStream])
    , _vfdFileName          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFileDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfdBitrateBps'
--
-- * 'vfdCreationTime'
--
-- * 'vfdRecordingLocation'
--
-- * 'vfdDurationMs'
--
-- * 'vfdFileSize'
--
-- * 'vfdFileType'
--
-- * 'vfdContainer'
--
-- * 'vfdVideoStreams'
--
-- * 'vfdAudioStreams'
--
-- * 'vfdFileName'
videoFileDetails
    :: VideoFileDetails
videoFileDetails =
    VideoFileDetails
    { _vfdBitrateBps = Nothing
    , _vfdCreationTime = Nothing
    , _vfdRecordingLocation = Nothing
    , _vfdDurationMs = Nothing
    , _vfdFileSize = Nothing
    , _vfdFileType = Nothing
    , _vfdContainer = Nothing
    , _vfdVideoStreams = Nothing
    , _vfdAudioStreams = Nothing
    , _vfdFileName = Nothing
    }

-- | The uploaded video file\'s combined (video and audio) bitrate in bits
-- per second.
vfdBitrateBps :: Lens' VideoFileDetails (Maybe Word64)
vfdBitrateBps
  = lens _vfdBitrateBps
      (\ s a -> s{_vfdBitrateBps = a})

-- | The date and time when the uploaded video file was created. The value is
-- specified in ISO 8601 format. Currently, the following ISO 8601 formats
-- are supported: - Date only: YYYY-MM-DD - Naive time: YYYY-MM-DDTHH:MM:SS
-- - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM
vfdCreationTime :: Lens' VideoFileDetails (Maybe Text)
vfdCreationTime
  = lens _vfdCreationTime
      (\ s a -> s{_vfdCreationTime = a})

-- | Geographic coordinates that identify the place where the uploaded video
-- was recorded. Coordinates are defined using WGS 84.
vfdRecordingLocation :: Lens' VideoFileDetails (Maybe (Maybe GeoPoint))
vfdRecordingLocation
  = lens _vfdRecordingLocation
      (\ s a -> s{_vfdRecordingLocation = a})

-- | The length of the uploaded video in milliseconds.
vfdDurationMs :: Lens' VideoFileDetails (Maybe Word64)
vfdDurationMs
  = lens _vfdDurationMs
      (\ s a -> s{_vfdDurationMs = a})

-- | The uploaded file\'s size in bytes. This field is present whether a
-- video file or another type of file was uploaded.
vfdFileSize :: Lens' VideoFileDetails (Maybe Word64)
vfdFileSize
  = lens _vfdFileSize (\ s a -> s{_vfdFileSize = a})

-- | The uploaded file\'s type as detected by YouTube\'s video processing
-- engine. Currently, YouTube only processes video files, but this field is
-- present whether a video file or another type of file was uploaded.
vfdFileType :: Lens' VideoFileDetails (Maybe Text)
vfdFileType
  = lens _vfdFileType (\ s a -> s{_vfdFileType = a})

-- | The uploaded video file\'s container format.
vfdContainer :: Lens' VideoFileDetails (Maybe Text)
vfdContainer
  = lens _vfdContainer (\ s a -> s{_vfdContainer = a})

-- | A list of video streams contained in the uploaded video file. Each item
-- in the list contains detailed metadata about a video stream.
vfdVideoStreams :: Lens' VideoFileDetails [Maybe VideoFileDetailsVideoStream]
vfdVideoStreams
  = lens _vfdVideoStreams
      (\ s a -> s{_vfdVideoStreams = a})
      . _Default
      . _Coerce

-- | A list of audio streams contained in the uploaded video file. Each item
-- in the list contains detailed metadata about an audio stream.
vfdAudioStreams :: Lens' VideoFileDetails [Maybe VideoFileDetailsAudioStream]
vfdAudioStreams
  = lens _vfdAudioStreams
      (\ s a -> s{_vfdAudioStreams = a})
      . _Default
      . _Coerce

-- | The uploaded file\'s name. This field is present whether a video file or
-- another type of file was uploaded.
vfdFileName :: Lens' VideoFileDetails (Maybe Text)
vfdFileName
  = lens _vfdFileName (\ s a -> s{_vfdFileName = a})

instance FromJSON VideoFileDetails where
        parseJSON
          = withObject "VideoFileDetails"
              (\ o ->
                 VideoFileDetails <$>
                   (o .:? "bitrateBps") <*> (o .:? "creationTime") <*>
                     (o .:? "recordingLocation")
                     <*> (o .:? "durationMs")
                     <*> (o .:? "fileSize")
                     <*> (o .:? "fileType")
                     <*> (o .:? "container")
                     <*> (o .:? "videoStreams" .!= mempty)
                     <*> (o .:? "audioStreams" .!= mempty)
                     <*> (o .:? "fileName"))

instance ToJSON VideoFileDetails where
        toJSON VideoFileDetails{..}
          = object
              (catMaybes
                 [("bitrateBps" .=) <$> _vfdBitrateBps,
                  ("creationTime" .=) <$> _vfdCreationTime,
                  ("recordingLocation" .=) <$> _vfdRecordingLocation,
                  ("durationMs" .=) <$> _vfdDurationMs,
                  ("fileSize" .=) <$> _vfdFileSize,
                  ("fileType" .=) <$> _vfdFileType,
                  ("container" .=) <$> _vfdContainer,
                  ("videoStreams" .=) <$> _vfdVideoStreams,
                  ("audioStreams" .=) <$> _vfdAudioStreams,
                  ("fileName" .=) <$> _vfdFileName])

--
-- /See:/ 'liveBroadcastStatus' smart constructor.
data LiveBroadcastStatus = LiveBroadcastStatus
    { _lbsLiveBroadcastPriority :: !(Maybe Text)
    , _lbsRecordingStatus       :: !(Maybe Text)
    , _lbsLifeCycleStatus       :: !(Maybe Text)
    , _lbsPrivacyStatus         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbsLiveBroadcastPriority'
--
-- * 'lbsRecordingStatus'
--
-- * 'lbsLifeCycleStatus'
--
-- * 'lbsPrivacyStatus'
liveBroadcastStatus
    :: LiveBroadcastStatus
liveBroadcastStatus =
    LiveBroadcastStatus
    { _lbsLiveBroadcastPriority = Nothing
    , _lbsRecordingStatus = Nothing
    , _lbsLifeCycleStatus = Nothing
    , _lbsPrivacyStatus = Nothing
    }

-- | Priority of the live broadcast event (internal state).
lbsLiveBroadcastPriority :: Lens' LiveBroadcastStatus (Maybe Text)
lbsLiveBroadcastPriority
  = lens _lbsLiveBroadcastPriority
      (\ s a -> s{_lbsLiveBroadcastPriority = a})

-- | The broadcast\'s recording status.
lbsRecordingStatus :: Lens' LiveBroadcastStatus (Maybe Text)
lbsRecordingStatus
  = lens _lbsRecordingStatus
      (\ s a -> s{_lbsRecordingStatus = a})

-- | The broadcast\'s status. The status can be updated using the API\'s
-- liveBroadcasts.transition method.
lbsLifeCycleStatus :: Lens' LiveBroadcastStatus (Maybe Text)
lbsLifeCycleStatus
  = lens _lbsLifeCycleStatus
      (\ s a -> s{_lbsLifeCycleStatus = a})

-- | The broadcast\'s privacy status. Note that the broadcast represents
-- exactly one YouTube video, so the privacy settings are identical to
-- those supported for videos. In addition, you can set this field by
-- modifying the broadcast resource or by setting the privacyStatus field
-- of the corresponding video resource.
lbsPrivacyStatus :: Lens' LiveBroadcastStatus (Maybe Text)
lbsPrivacyStatus
  = lens _lbsPrivacyStatus
      (\ s a -> s{_lbsPrivacyStatus = a})

instance FromJSON LiveBroadcastStatus where
        parseJSON
          = withObject "LiveBroadcastStatus"
              (\ o ->
                 LiveBroadcastStatus <$>
                   (o .:? "liveBroadcastPriority") <*>
                     (o .:? "recordingStatus")
                     <*> (o .:? "lifeCycleStatus")
                     <*> (o .:? "privacyStatus"))

instance ToJSON LiveBroadcastStatus where
        toJSON LiveBroadcastStatus{..}
          = object
              (catMaybes
                 [("liveBroadcastPriority" .=) <$>
                    _lbsLiveBroadcastPriority,
                  ("recordingStatus" .=) <$> _lbsRecordingStatus,
                  ("lifeCycleStatus" .=) <$> _lbsLifeCycleStatus,
                  ("privacyStatus" .=) <$> _lbsPrivacyStatus])

--
-- /See:/ 'thumbnailSetResponse' smart constructor.
data ThumbnailSetResponse = ThumbnailSetResponse
    { _tsrEtag      :: !(Maybe Text)
    , _tsrKind      :: !Text
    , _tsrItems     :: !(Maybe [Maybe ThumbnailDetails])
    , _tsrVisitorId :: !(Maybe Text)
    , _tsrEventId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsrEtag'
--
-- * 'tsrKind'
--
-- * 'tsrItems'
--
-- * 'tsrVisitorId'
--
-- * 'tsrEventId'
thumbnailSetResponse
    :: ThumbnailSetResponse
thumbnailSetResponse =
    ThumbnailSetResponse
    { _tsrEtag = Nothing
    , _tsrKind = "youtube#thumbnailSetResponse"
    , _tsrItems = Nothing
    , _tsrVisitorId = Nothing
    , _tsrEventId = Nothing
    }

-- | Etag of this resource.
tsrEtag :: Lens' ThumbnailSetResponse (Maybe Text)
tsrEtag = lens _tsrEtag (\ s a -> s{_tsrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#thumbnailSetResponse\".
tsrKind :: Lens' ThumbnailSetResponse Text
tsrKind = lens _tsrKind (\ s a -> s{_tsrKind = a})

-- | A list of thumbnails.
tsrItems :: Lens' ThumbnailSetResponse [Maybe ThumbnailDetails]
tsrItems
  = lens _tsrItems (\ s a -> s{_tsrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
tsrVisitorId :: Lens' ThumbnailSetResponse (Maybe Text)
tsrVisitorId
  = lens _tsrVisitorId (\ s a -> s{_tsrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
tsrEventId :: Lens' ThumbnailSetResponse (Maybe Text)
tsrEventId
  = lens _tsrEventId (\ s a -> s{_tsrEventId = a})

instance FromJSON ThumbnailSetResponse where
        parseJSON
          = withObject "ThumbnailSetResponse"
              (\ o ->
                 ThumbnailSetResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#thumbnailSetResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON ThumbnailSetResponse where
        toJSON ThumbnailSetResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tsrEtag, Just ("kind" .= _tsrKind),
                  ("items" .=) <$> _tsrItems,
                  ("visitorId" .=) <$> _tsrVisitorId,
                  ("eventId" .=) <$> _tsrEventId])

-- | Information about a new playlist item.
--
-- /See:/ 'activityContentDetailsPlaylistItem' smart constructor.
data ActivityContentDetailsPlaylistItem = ActivityContentDetailsPlaylistItem
    { _acdpiResourceId     :: !(Maybe (Maybe ResourceId))
    , _acdpiPlaylistId     :: !(Maybe Text)
    , _acdpiPlaylistItemId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsPlaylistItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdpiResourceId'
--
-- * 'acdpiPlaylistId'
--
-- * 'acdpiPlaylistItemId'
activityContentDetailsPlaylistItem
    :: ActivityContentDetailsPlaylistItem
activityContentDetailsPlaylistItem =
    ActivityContentDetailsPlaylistItem
    { _acdpiResourceId = Nothing
    , _acdpiPlaylistId = Nothing
    , _acdpiPlaylistItemId = Nothing
    }

-- | The resourceId object contains information about the resource that was
-- added to the playlist.
acdpiResourceId :: Lens' ActivityContentDetailsPlaylistItem (Maybe (Maybe ResourceId))
acdpiResourceId
  = lens _acdpiResourceId
      (\ s a -> s{_acdpiResourceId = a})

-- | The value that YouTube uses to uniquely identify the playlist.
acdpiPlaylistId :: Lens' ActivityContentDetailsPlaylistItem (Maybe Text)
acdpiPlaylistId
  = lens _acdpiPlaylistId
      (\ s a -> s{_acdpiPlaylistId = a})

-- | ID of the item within the playlist.
acdpiPlaylistItemId :: Lens' ActivityContentDetailsPlaylistItem (Maybe Text)
acdpiPlaylistItemId
  = lens _acdpiPlaylistItemId
      (\ s a -> s{_acdpiPlaylistItemId = a})

instance FromJSON ActivityContentDetailsPlaylistItem
         where
        parseJSON
          = withObject "ActivityContentDetailsPlaylistItem"
              (\ o ->
                 ActivityContentDetailsPlaylistItem <$>
                   (o .:? "resourceId") <*> (o .:? "playlistId") <*>
                     (o .:? "playlistItemId"))

instance ToJSON ActivityContentDetailsPlaylistItem
         where
        toJSON ActivityContentDetailsPlaylistItem{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _acdpiResourceId,
                  ("playlistId" .=) <$> _acdpiPlaylistId,
                  ("playlistItemId" .=) <$> _acdpiPlaylistItemId])

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'videoStatus' smart constructor.
data VideoStatus = VideoStatus
    { _vsFailureReason       :: !(Maybe Text)
    , _vsPublicStatsViewable :: !(Maybe Bool)
    , _vsRejectionReason     :: !(Maybe Text)
    , _vsPublishAt           :: !(Maybe UTCTime)
    , _vsUploadStatus        :: !(Maybe Text)
    , _vsPrivacyStatus       :: !(Maybe Text)
    , _vsEmbeddable          :: !(Maybe Bool)
    , _vsLicense             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsFailureReason'
--
-- * 'vsPublicStatsViewable'
--
-- * 'vsRejectionReason'
--
-- * 'vsPublishAt'
--
-- * 'vsUploadStatus'
--
-- * 'vsPrivacyStatus'
--
-- * 'vsEmbeddable'
--
-- * 'vsLicense'
videoStatus
    :: VideoStatus
videoStatus =
    VideoStatus
    { _vsFailureReason = Nothing
    , _vsPublicStatsViewable = Nothing
    , _vsRejectionReason = Nothing
    , _vsPublishAt = Nothing
    , _vsUploadStatus = Nothing
    , _vsPrivacyStatus = Nothing
    , _vsEmbeddable = Nothing
    , _vsLicense = Nothing
    }

-- | This value explains why a video failed to upload. This property is only
-- present if the uploadStatus property indicates that the upload failed.
vsFailureReason :: Lens' VideoStatus (Maybe Text)
vsFailureReason
  = lens _vsFailureReason
      (\ s a -> s{_vsFailureReason = a})

-- | This value indicates if the extended video statistics on the watch page
-- can be viewed by everyone. Note that the view count, likes, etc will
-- still be visible if this is disabled.
vsPublicStatsViewable :: Lens' VideoStatus (Maybe Bool)
vsPublicStatsViewable
  = lens _vsPublicStatsViewable
      (\ s a -> s{_vsPublicStatsViewable = a})

-- | This value explains why YouTube rejected an uploaded video. This
-- property is only present if the uploadStatus property indicates that the
-- upload was rejected.
vsRejectionReason :: Lens' VideoStatus (Maybe Text)
vsRejectionReason
  = lens _vsRejectionReason
      (\ s a -> s{_vsRejectionReason = a})

-- | The date and time when the video is scheduled to publish. It can be set
-- only if the privacy status of the video is private. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
vsPublishAt :: Lens' VideoStatus (Maybe UTCTime)
vsPublishAt
  = lens _vsPublishAt (\ s a -> s{_vsPublishAt = a})

-- | The status of the uploaded video.
vsUploadStatus :: Lens' VideoStatus (Maybe Text)
vsUploadStatus
  = lens _vsUploadStatus
      (\ s a -> s{_vsUploadStatus = a})

-- | The video\'s privacy status.
vsPrivacyStatus :: Lens' VideoStatus (Maybe Text)
vsPrivacyStatus
  = lens _vsPrivacyStatus
      (\ s a -> s{_vsPrivacyStatus = a})

-- | This value indicates if the video can be embedded on another website.
vsEmbeddable :: Lens' VideoStatus (Maybe Bool)
vsEmbeddable
  = lens _vsEmbeddable (\ s a -> s{_vsEmbeddable = a})

-- | The video\'s license.
vsLicense :: Lens' VideoStatus (Maybe Text)
vsLicense
  = lens _vsLicense (\ s a -> s{_vsLicense = a})

instance FromJSON VideoStatus where
        parseJSON
          = withObject "VideoStatus"
              (\ o ->
                 VideoStatus <$>
                   (o .:? "failureReason") <*>
                     (o .:? "publicStatsViewable")
                     <*> (o .:? "rejectionReason")
                     <*> (o .:? "publishAt")
                     <*> (o .:? "uploadStatus")
                     <*> (o .:? "privacyStatus")
                     <*> (o .:? "embeddable")
                     <*> (o .:? "license"))

instance ToJSON VideoStatus where
        toJSON VideoStatus{..}
          = object
              (catMaybes
                 [("failureReason" .=) <$> _vsFailureReason,
                  ("publicStatsViewable" .=) <$>
                    _vsPublicStatsViewable,
                  ("rejectionReason" .=) <$> _vsRejectionReason,
                  ("publishAt" .=) <$> _vsPublishAt,
                  ("uploadStatus" .=) <$> _vsUploadStatus,
                  ("privacyStatus" .=) <$> _vsPrivacyStatus,
                  ("embeddable" .=) <$> _vsEmbeddable,
                  ("license" .=) <$> _vsLicense])

-- | Paging details for lists of resources, including total number of items
-- available and number of resources returned in a single page.
--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo = PageInfo
    { _piResultsPerPage :: !(Maybe Int32)
    , _piTotalResults   :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piResultsPerPage'
--
-- * 'piTotalResults'
pageInfo
    :: PageInfo
pageInfo =
    PageInfo
    { _piResultsPerPage = Nothing
    , _piTotalResults = Nothing
    }

-- | The number of results included in the API response.
piResultsPerPage :: Lens' PageInfo (Maybe Int32)
piResultsPerPage
  = lens _piResultsPerPage
      (\ s a -> s{_piResultsPerPage = a})

-- | The total number of results in the result set.
piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})

instance FromJSON PageInfo where
        parseJSON
          = withObject "PageInfo"
              (\ o ->
                 PageInfo <$>
                   (o .:? "resultsPerPage") <*> (o .:? "totalResults"))

instance ToJSON PageInfo where
        toJSON PageInfo{..}
          = object
              (catMaybes
                 [("resultsPerPage" .=) <$> _piResultsPerPage,
                  ("totalResults" .=) <$> _piTotalResults])

-- | Details about a resource which was added to a channel.
--
-- /See:/ 'activityContentDetailsChannelItem' smart constructor.
newtype ActivityContentDetailsChannelItem = ActivityContentDetailsChannelItem
    { _acdciResourceId :: Maybe (Maybe ResourceId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsChannelItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdciResourceId'
activityContentDetailsChannelItem
    :: ActivityContentDetailsChannelItem
activityContentDetailsChannelItem =
    ActivityContentDetailsChannelItem
    { _acdciResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- that was added to the channel.
acdciResourceId :: Lens' ActivityContentDetailsChannelItem (Maybe (Maybe ResourceId))
acdciResourceId
  = lens _acdciResourceId
      (\ s a -> s{_acdciResourceId = a})

instance FromJSON ActivityContentDetailsChannelItem
         where
        parseJSON
          = withObject "ActivityContentDetailsChannelItem"
              (\ o ->
                 ActivityContentDetailsChannelItem <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsChannelItem
         where
        toJSON ActivityContentDetailsChannelItem{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdciResourceId])

--
-- /See:/ 'liveBroadcastListResponse' smart constructor.
data LiveBroadcastListResponse = LiveBroadcastListResponse
    { _lblrEtag            :: !(Maybe Text)
    , _lblrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _lblrNextPageToken   :: !(Maybe Text)
    , _lblrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _lblrKind            :: !Text
    , _lblrItems           :: !(Maybe [Maybe LiveBroadcast])
    , _lblrVisitorId       :: !(Maybe Text)
    , _lblrEventId         :: !(Maybe Text)
    , _lblrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lblrEtag'
--
-- * 'lblrTokenPagination'
--
-- * 'lblrNextPageToken'
--
-- * 'lblrPageInfo'
--
-- * 'lblrKind'
--
-- * 'lblrItems'
--
-- * 'lblrVisitorId'
--
-- * 'lblrEventId'
--
-- * 'lblrPrevPageToken'
liveBroadcastListResponse
    :: LiveBroadcastListResponse
liveBroadcastListResponse =
    LiveBroadcastListResponse
    { _lblrEtag = Nothing
    , _lblrTokenPagination = Nothing
    , _lblrNextPageToken = Nothing
    , _lblrPageInfo = Nothing
    , _lblrKind = "youtube#liveBroadcastListResponse"
    , _lblrItems = Nothing
    , _lblrVisitorId = Nothing
    , _lblrEventId = Nothing
    , _lblrPrevPageToken = Nothing
    }

-- | Etag of this resource.
lblrEtag :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrEtag = lens _lblrEtag (\ s a -> s{_lblrEtag = a})

lblrTokenPagination :: Lens' LiveBroadcastListResponse (Maybe (Maybe TokenPagination))
lblrTokenPagination
  = lens _lblrTokenPagination
      (\ s a -> s{_lblrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
lblrNextPageToken :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrNextPageToken
  = lens _lblrNextPageToken
      (\ s a -> s{_lblrNextPageToken = a})

lblrPageInfo :: Lens' LiveBroadcastListResponse (Maybe (Maybe PageInfo))
lblrPageInfo
  = lens _lblrPageInfo (\ s a -> s{_lblrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveBroadcastListResponse\".
lblrKind :: Lens' LiveBroadcastListResponse Text
lblrKind = lens _lblrKind (\ s a -> s{_lblrKind = a})

-- | A list of broadcasts that match the request criteria.
lblrItems :: Lens' LiveBroadcastListResponse [Maybe LiveBroadcast]
lblrItems
  = lens _lblrItems (\ s a -> s{_lblrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
lblrVisitorId :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrVisitorId
  = lens _lblrVisitorId
      (\ s a -> s{_lblrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
lblrEventId :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrEventId
  = lens _lblrEventId (\ s a -> s{_lblrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
lblrPrevPageToken :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrPrevPageToken
  = lens _lblrPrevPageToken
      (\ s a -> s{_lblrPrevPageToken = a})

instance FromJSON LiveBroadcastListResponse where
        parseJSON
          = withObject "LiveBroadcastListResponse"
              (\ o ->
                 LiveBroadcastListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#liveBroadcastListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON LiveBroadcastListResponse where
        toJSON LiveBroadcastListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lblrEtag,
                  ("tokenPagination" .=) <$> _lblrTokenPagination,
                  ("nextPageToken" .=) <$> _lblrNextPageToken,
                  ("pageInfo" .=) <$> _lblrPageInfo,
                  Just ("kind" .= _lblrKind),
                  ("items" .=) <$> _lblrItems,
                  ("visitorId" .=) <$> _lblrVisitorId,
                  ("eventId" .=) <$> _lblrEventId,
                  ("prevPageToken" .=) <$> _lblrPrevPageToken])

-- | Describes processing status and progress and availability of some other
-- Video resource parts.
--
-- /See:/ 'videoProcessingDetails' smart constructor.
data VideoProcessingDetails = VideoProcessingDetails
    { _vpdProcessingFailureReason       :: !(Maybe Text)
    , _vpdProcessingIssuesAvailability  :: !(Maybe Text)
    , _vpdProcessingProgress            :: !(Maybe (Maybe VideoProcessingDetailsProcessingProgress))
    , _vpdThumbnailsAvailability        :: !(Maybe Text)
    , _vpdTagSuggestionsAvailability    :: !(Maybe Text)
    , _vpdProcessingStatus              :: !(Maybe Text)
    , _vpdEditorSuggestionsAvailability :: !(Maybe Text)
    , _vpdFileDetailsAvailability       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoProcessingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdProcessingFailureReason'
--
-- * 'vpdProcessingIssuesAvailability'
--
-- * 'vpdProcessingProgress'
--
-- * 'vpdThumbnailsAvailability'
--
-- * 'vpdTagSuggestionsAvailability'
--
-- * 'vpdProcessingStatus'
--
-- * 'vpdEditorSuggestionsAvailability'
--
-- * 'vpdFileDetailsAvailability'
videoProcessingDetails
    :: VideoProcessingDetails
videoProcessingDetails =
    VideoProcessingDetails
    { _vpdProcessingFailureReason = Nothing
    , _vpdProcessingIssuesAvailability = Nothing
    , _vpdProcessingProgress = Nothing
    , _vpdThumbnailsAvailability = Nothing
    , _vpdTagSuggestionsAvailability = Nothing
    , _vpdProcessingStatus = Nothing
    , _vpdEditorSuggestionsAvailability = Nothing
    , _vpdFileDetailsAvailability = Nothing
    }

-- | The reason that YouTube failed to process the video. This property will
-- only have a value if the processingStatus property\'s value is failed.
vpdProcessingFailureReason :: Lens' VideoProcessingDetails (Maybe Text)
vpdProcessingFailureReason
  = lens _vpdProcessingFailureReason
      (\ s a -> s{_vpdProcessingFailureReason = a})

-- | This value indicates whether the video processing engine has generated
-- suggestions that might improve YouTube\'s ability to process the the
-- video, warnings that explain video processing problems, or errors that
-- cause video processing problems. You can retrieve these suggestions by
-- requesting the suggestions part in your videos.list() request.
vpdProcessingIssuesAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdProcessingIssuesAvailability
  = lens _vpdProcessingIssuesAvailability
      (\ s a -> s{_vpdProcessingIssuesAvailability = a})

-- | The processingProgress object contains information about the progress
-- YouTube has made in processing the video. The values are really only
-- relevant if the video\'s processing status is processing.
vpdProcessingProgress :: Lens' VideoProcessingDetails (Maybe (Maybe VideoProcessingDetailsProcessingProgress))
vpdProcessingProgress
  = lens _vpdProcessingProgress
      (\ s a -> s{_vpdProcessingProgress = a})

-- | This value indicates whether thumbnail images have been generated for
-- the video.
vpdThumbnailsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdThumbnailsAvailability
  = lens _vpdThumbnailsAvailability
      (\ s a -> s{_vpdThumbnailsAvailability = a})

-- | This value indicates whether keyword (tag) suggestions are available for
-- the video. Tags can be added to a video\'s metadata to make it easier
-- for other users to find the video. You can retrieve these suggestions by
-- requesting the suggestions part in your videos.list() request.
vpdTagSuggestionsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdTagSuggestionsAvailability
  = lens _vpdTagSuggestionsAvailability
      (\ s a -> s{_vpdTagSuggestionsAvailability = a})

-- | The video\'s processing status. This value indicates whether YouTube was
-- able to process the video or if the video is still being processed.
vpdProcessingStatus :: Lens' VideoProcessingDetails (Maybe Text)
vpdProcessingStatus
  = lens _vpdProcessingStatus
      (\ s a -> s{_vpdProcessingStatus = a})

-- | This value indicates whether video editing suggestions, which might
-- improve video quality or the playback experience, are available for the
-- video. You can retrieve these suggestions by requesting the suggestions
-- part in your videos.list() request.
vpdEditorSuggestionsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdEditorSuggestionsAvailability
  = lens _vpdEditorSuggestionsAvailability
      (\ s a -> s{_vpdEditorSuggestionsAvailability = a})

-- | This value indicates whether file details are available for the uploaded
-- video. You can retrieve a video\'s file details by requesting the
-- fileDetails part in your videos.list() request.
vpdFileDetailsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdFileDetailsAvailability
  = lens _vpdFileDetailsAvailability
      (\ s a -> s{_vpdFileDetailsAvailability = a})

instance FromJSON VideoProcessingDetails where
        parseJSON
          = withObject "VideoProcessingDetails"
              (\ o ->
                 VideoProcessingDetails <$>
                   (o .:? "processingFailureReason") <*>
                     (o .:? "processingIssuesAvailability")
                     <*> (o .:? "processingProgress")
                     <*> (o .:? "thumbnailsAvailability")
                     <*> (o .:? "tagSuggestionsAvailability")
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "editorSuggestionsAvailability")
                     <*> (o .:? "fileDetailsAvailability"))

instance ToJSON VideoProcessingDetails where
        toJSON VideoProcessingDetails{..}
          = object
              (catMaybes
                 [("processingFailureReason" .=) <$>
                    _vpdProcessingFailureReason,
                  ("processingIssuesAvailability" .=) <$>
                    _vpdProcessingIssuesAvailability,
                  ("processingProgress" .=) <$> _vpdProcessingProgress,
                  ("thumbnailsAvailability" .=) <$>
                    _vpdThumbnailsAvailability,
                  ("tagSuggestionsAvailability" .=) <$>
                    _vpdTagSuggestionsAvailability,
                  ("processingStatus" .=) <$> _vpdProcessingStatus,
                  ("editorSuggestionsAvailability" .=) <$>
                    _vpdEditorSuggestionsAvailability,
                  ("fileDetailsAvailability" .=) <$>
                    _vpdFileDetailsAvailability])

-- | Details about the content of a channel.
--
-- /See:/ 'channelContentDetails' smart constructor.
data ChannelContentDetails = ChannelContentDetails
    { _ccdRelatedPlaylists :: !(Maybe ChannelContentDetailsRelatedPlaylists)
    , _ccdGooglePlusUserId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdRelatedPlaylists'
--
-- * 'ccdGooglePlusUserId'
channelContentDetails
    :: ChannelContentDetails
channelContentDetails =
    ChannelContentDetails
    { _ccdRelatedPlaylists = Nothing
    , _ccdGooglePlusUserId = Nothing
    }

ccdRelatedPlaylists :: Lens' ChannelContentDetails (Maybe ChannelContentDetailsRelatedPlaylists)
ccdRelatedPlaylists
  = lens _ccdRelatedPlaylists
      (\ s a -> s{_ccdRelatedPlaylists = a})

-- | The googlePlusUserId object identifies the Google+ profile ID associated
-- with this channel.
ccdGooglePlusUserId :: Lens' ChannelContentDetails (Maybe Text)
ccdGooglePlusUserId
  = lens _ccdGooglePlusUserId
      (\ s a -> s{_ccdGooglePlusUserId = a})

instance FromJSON ChannelContentDetails where
        parseJSON
          = withObject "ChannelContentDetails"
              (\ o ->
                 ChannelContentDetails <$>
                   (o .:? "relatedPlaylists") <*>
                     (o .:? "googlePlusUserId"))

instance ToJSON ChannelContentDetails where
        toJSON ChannelContentDetails{..}
          = object
              (catMaybes
                 [("relatedPlaylists" .=) <$> _ccdRelatedPlaylists,
                  ("googlePlusUserId" .=) <$> _ccdGooglePlusUserId])

-- | Basic details about an activity, including title, description,
-- thumbnails, activity type and group.
--
-- /See:/ 'activitySNIppet' smart constructor.
data ActivitySNIppet = ActivitySNIppet
    { _asPublishedAt  :: !(Maybe UTCTime)
    , _asChannelTitle :: !(Maybe Text)
    , _asChannelId    :: !(Maybe Text)
    , _asThumbnails   :: !(Maybe (Maybe ThumbnailDetails))
    , _asGroupId      :: !(Maybe Text)
    , _asTitle        :: !(Maybe Text)
    , _asType         :: !(Maybe Text)
    , _asDescription  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitySNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asPublishedAt'
--
-- * 'asChannelTitle'
--
-- * 'asChannelId'
--
-- * 'asThumbnails'
--
-- * 'asGroupId'
--
-- * 'asTitle'
--
-- * 'asType'
--
-- * 'asDescription'
activitySNIppet
    :: ActivitySNIppet
activitySNIppet =
    ActivitySNIppet
    { _asPublishedAt = Nothing
    , _asChannelTitle = Nothing
    , _asChannelId = Nothing
    , _asThumbnails = Nothing
    , _asGroupId = Nothing
    , _asTitle = Nothing
    , _asType = Nothing
    , _asDescription = Nothing
    }

-- | The date and time that the video was uploaded. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
asPublishedAt :: Lens' ActivitySNIppet (Maybe UTCTime)
asPublishedAt
  = lens _asPublishedAt
      (\ s a -> s{_asPublishedAt = a})

-- | Channel title for the channel responsible for this activity
asChannelTitle :: Lens' ActivitySNIppet (Maybe Text)
asChannelTitle
  = lens _asChannelTitle
      (\ s a -> s{_asChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the channel associated
-- with the activity.
asChannelId :: Lens' ActivitySNIppet (Maybe Text)
asChannelId
  = lens _asChannelId (\ s a -> s{_asChannelId = a})

-- | A map of thumbnail images associated with the resource that is primarily
-- associated with the activity. For each object in the map, the key is the
-- name of the thumbnail image, and the value is an object that contains
-- other information about the thumbnail.
asThumbnails :: Lens' ActivitySNIppet (Maybe (Maybe ThumbnailDetails))
asThumbnails
  = lens _asThumbnails (\ s a -> s{_asThumbnails = a})

-- | The group ID associated with the activity. A group ID identifies user
-- events that are associated with the same user and resource. For example,
-- if a user rates a video and marks the same video as a favorite, the
-- entries for those events would have the same group ID in the user\'s
-- activity feed. In your user interface, you can avoid repetition by
-- grouping events with the same groupId value.
asGroupId :: Lens' ActivitySNIppet (Maybe Text)
asGroupId
  = lens _asGroupId (\ s a -> s{_asGroupId = a})

-- | The title of the resource primarily associated with the activity.
asTitle :: Lens' ActivitySNIppet (Maybe Text)
asTitle = lens _asTitle (\ s a -> s{_asTitle = a})

-- | The type of activity that the resource describes.
asType :: Lens' ActivitySNIppet (Maybe Text)
asType = lens _asType (\ s a -> s{_asType = a})

-- | The description of the resource primarily associated with the activity.
asDescription :: Lens' ActivitySNIppet (Maybe Text)
asDescription
  = lens _asDescription
      (\ s a -> s{_asDescription = a})

instance FromJSON ActivitySNIppet where
        parseJSON
          = withObject "ActivitySNIppet"
              (\ o ->
                 ActivitySNIppet <$>
                   (o .:? "publishedAt") <*> (o .:? "channelTitle") <*>
                     (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "groupId")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON ActivitySNIppet where
        toJSON ActivitySNIppet{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _asPublishedAt,
                  ("channelTitle" .=) <$> _asChannelTitle,
                  ("channelId" .=) <$> _asChannelId,
                  ("thumbnails" .=) <$> _asThumbnails,
                  ("groupId" .=) <$> _asGroupId,
                  ("title" .=) <$> _asTitle, ("type" .=) <$> _asType,
                  ("description" .=) <$> _asDescription])

--
-- /See:/ 'videoListResponse' smart constructor.
data VideoListResponse = VideoListResponse
    { _vlrEtag            :: !(Maybe Text)
    , _vlrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _vlrNextPageToken   :: !(Maybe Text)
    , _vlrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _vlrKind            :: !Text
    , _vlrItems           :: !(Maybe [Maybe Video])
    , _vlrVisitorId       :: !(Maybe Text)
    , _vlrEventId         :: !(Maybe Text)
    , _vlrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlrEtag'
--
-- * 'vlrTokenPagination'
--
-- * 'vlrNextPageToken'
--
-- * 'vlrPageInfo'
--
-- * 'vlrKind'
--
-- * 'vlrItems'
--
-- * 'vlrVisitorId'
--
-- * 'vlrEventId'
--
-- * 'vlrPrevPageToken'
videoListResponse
    :: VideoListResponse
videoListResponse =
    VideoListResponse
    { _vlrEtag = Nothing
    , _vlrTokenPagination = Nothing
    , _vlrNextPageToken = Nothing
    , _vlrPageInfo = Nothing
    , _vlrKind = "youtube#videoListResponse"
    , _vlrItems = Nothing
    , _vlrVisitorId = Nothing
    , _vlrEventId = Nothing
    , _vlrPrevPageToken = Nothing
    }

-- | Etag of this resource.
vlrEtag :: Lens' VideoListResponse (Maybe Text)
vlrEtag = lens _vlrEtag (\ s a -> s{_vlrEtag = a})

vlrTokenPagination :: Lens' VideoListResponse (Maybe (Maybe TokenPagination))
vlrTokenPagination
  = lens _vlrTokenPagination
      (\ s a -> s{_vlrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
vlrNextPageToken :: Lens' VideoListResponse (Maybe Text)
vlrNextPageToken
  = lens _vlrNextPageToken
      (\ s a -> s{_vlrNextPageToken = a})

vlrPageInfo :: Lens' VideoListResponse (Maybe (Maybe PageInfo))
vlrPageInfo
  = lens _vlrPageInfo (\ s a -> s{_vlrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoListResponse\".
vlrKind :: Lens' VideoListResponse Text
vlrKind = lens _vlrKind (\ s a -> s{_vlrKind = a})

-- | A list of videos that match the request criteria.
vlrItems :: Lens' VideoListResponse [Maybe Video]
vlrItems
  = lens _vlrItems (\ s a -> s{_vlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
vlrVisitorId :: Lens' VideoListResponse (Maybe Text)
vlrVisitorId
  = lens _vlrVisitorId (\ s a -> s{_vlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
vlrEventId :: Lens' VideoListResponse (Maybe Text)
vlrEventId
  = lens _vlrEventId (\ s a -> s{_vlrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
vlrPrevPageToken :: Lens' VideoListResponse (Maybe Text)
vlrPrevPageToken
  = lens _vlrPrevPageToken
      (\ s a -> s{_vlrPrevPageToken = a})

instance FromJSON VideoListResponse where
        parseJSON
          = withObject "VideoListResponse"
              (\ o ->
                 VideoListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#videoListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON VideoListResponse where
        toJSON VideoListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vlrEtag,
                  ("tokenPagination" .=) <$> _vlrTokenPagination,
                  ("nextPageToken" .=) <$> _vlrNextPageToken,
                  ("pageInfo" .=) <$> _vlrPageInfo,
                  Just ("kind" .= _vlrKind),
                  ("items" .=) <$> _vlrItems,
                  ("visitorId" .=) <$> _vlrVisitorId,
                  ("eventId" .=) <$> _vlrEventId,
                  ("prevPageToken" .=) <$> _vlrPrevPageToken])

-- | A single tag suggestion with it\'s relevance information.
--
-- /See:/ 'videoSuggestionsTagSuggestion' smart constructor.
data VideoSuggestionsTagSuggestion = VideoSuggestionsTagSuggestion
    { _vstsTag               :: !(Maybe Text)
    , _vstsCategoryRestricts :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoSuggestionsTagSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vstsTag'
--
-- * 'vstsCategoryRestricts'
videoSuggestionsTagSuggestion
    :: VideoSuggestionsTagSuggestion
videoSuggestionsTagSuggestion =
    VideoSuggestionsTagSuggestion
    { _vstsTag = Nothing
    , _vstsCategoryRestricts = Nothing
    }

-- | The keyword tag suggested for the video.
vstsTag :: Lens' VideoSuggestionsTagSuggestion (Maybe Text)
vstsTag = lens _vstsTag (\ s a -> s{_vstsTag = a})

-- | A set of video categories for which the tag is relevant. You can use
-- this information to display appropriate tag suggestions based on the
-- video category that the video uploader associates with the video. By
-- default, tag suggestions are relevant for all categories if there are no
-- restricts defined for the keyword.
vstsCategoryRestricts :: Lens' VideoSuggestionsTagSuggestion [Text]
vstsCategoryRestricts
  = lens _vstsCategoryRestricts
      (\ s a -> s{_vstsCategoryRestricts = a})
      . _Default
      . _Coerce

instance FromJSON VideoSuggestionsTagSuggestion where
        parseJSON
          = withObject "VideoSuggestionsTagSuggestion"
              (\ o ->
                 VideoSuggestionsTagSuggestion <$>
                   (o .:? "tag") <*>
                     (o .:? "categoryRestricts" .!= mempty))

instance ToJSON VideoSuggestionsTagSuggestion where
        toJSON VideoSuggestionsTagSuggestion{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _vstsTag,
                  ("categoryRestricts" .=) <$> _vstsCategoryRestricts])

-- | Basic details about a comment thread.
--
-- /See:/ 'commentThreadSNIppet' smart constructor.
data CommentThreadSNIppet = CommentThreadSNIppet
    { _ctsIsPublic        :: !(Maybe Bool)
    , _ctsChannelId       :: !(Maybe Text)
    , _ctsCanReply        :: !(Maybe Bool)
    , _ctsVideoId         :: !(Maybe Text)
    , _ctsTotalReplyCount :: !(Maybe Word32)
    , _ctsTopLevelComment :: !(Maybe (Maybe Comment))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctsIsPublic'
--
-- * 'ctsChannelId'
--
-- * 'ctsCanReply'
--
-- * 'ctsVideoId'
--
-- * 'ctsTotalReplyCount'
--
-- * 'ctsTopLevelComment'
commentThreadSNIppet
    :: CommentThreadSNIppet
commentThreadSNIppet =
    CommentThreadSNIppet
    { _ctsIsPublic = Nothing
    , _ctsChannelId = Nothing
    , _ctsCanReply = Nothing
    , _ctsVideoId = Nothing
    , _ctsTotalReplyCount = Nothing
    , _ctsTopLevelComment = Nothing
    }

-- | Whether the thread (and therefore all its comments) is visible to all
-- YouTube users.
ctsIsPublic :: Lens' CommentThreadSNIppet (Maybe Bool)
ctsIsPublic
  = lens _ctsIsPublic (\ s a -> s{_ctsIsPublic = a})

-- | The YouTube channel the comments in the thread refer to or the channel
-- with the video the comments refer to. If video_id isn\'t set the
-- comments refer to the channel itself.
ctsChannelId :: Lens' CommentThreadSNIppet (Maybe Text)
ctsChannelId
  = lens _ctsChannelId (\ s a -> s{_ctsChannelId = a})

-- | Whether the current viewer of the thread can reply to it. This is viewer
-- specific - other viewers may see a different value for this field.
ctsCanReply :: Lens' CommentThreadSNIppet (Maybe Bool)
ctsCanReply
  = lens _ctsCanReply (\ s a -> s{_ctsCanReply = a})

-- | The ID of the video the comments refer to, if any. No video_id implies a
-- channel discussion comment.
ctsVideoId :: Lens' CommentThreadSNIppet (Maybe Text)
ctsVideoId
  = lens _ctsVideoId (\ s a -> s{_ctsVideoId = a})

-- | The total number of replies (not including the top level comment).
ctsTotalReplyCount :: Lens' CommentThreadSNIppet (Maybe Word32)
ctsTotalReplyCount
  = lens _ctsTotalReplyCount
      (\ s a -> s{_ctsTotalReplyCount = a})

-- | The top level comment of this thread.
ctsTopLevelComment :: Lens' CommentThreadSNIppet (Maybe (Maybe Comment))
ctsTopLevelComment
  = lens _ctsTopLevelComment
      (\ s a -> s{_ctsTopLevelComment = a})

instance FromJSON CommentThreadSNIppet where
        parseJSON
          = withObject "CommentThreadSNIppet"
              (\ o ->
                 CommentThreadSNIppet <$>
                   (o .:? "isPublic") <*> (o .:? "channelId") <*>
                     (o .:? "canReply")
                     <*> (o .:? "videoId")
                     <*> (o .:? "totalReplyCount")
                     <*> (o .:? "topLevelComment"))

instance ToJSON CommentThreadSNIppet where
        toJSON CommentThreadSNIppet{..}
          = object
              (catMaybes
                 [("isPublic" .=) <$> _ctsIsPublic,
                  ("channelId" .=) <$> _ctsChannelId,
                  ("canReply" .=) <$> _ctsCanReply,
                  ("videoId" .=) <$> _ctsVideoId,
                  ("totalReplyCount" .=) <$> _ctsTotalReplyCount,
                  ("topLevelComment" .=) <$> _ctsTopLevelComment])

-- | Freebase topic information related to the channel.
--
-- /See:/ 'channelTopicDetails' smart constructor.
newtype ChannelTopicDetails = ChannelTopicDetails
    { _ctdTopicIds :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelTopicDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctdTopicIds'
channelTopicDetails
    :: ChannelTopicDetails
channelTopicDetails =
    ChannelTopicDetails
    { _ctdTopicIds = Nothing
    }

-- | A list of Freebase topic IDs associated with the channel. You can
-- retrieve information about each topic using the Freebase Topic API.
ctdTopicIds :: Lens' ChannelTopicDetails [Text]
ctdTopicIds
  = lens _ctdTopicIds (\ s a -> s{_ctdTopicIds = a}) .
      _Default
      . _Coerce

instance FromJSON ChannelTopicDetails where
        parseJSON
          = withObject "ChannelTopicDetails"
              (\ o ->
                 ChannelTopicDetails <$>
                   (o .:? "topicIds" .!= mempty))

instance ToJSON ChannelTopicDetails where
        toJSON ChannelTopicDetails{..}
          = object
              (catMaybes [("topicIds" .=) <$> _ctdTopicIds])

--
-- /See:/ 'videoCategoryListResponse' smart constructor.
data VideoCategoryListResponse = VideoCategoryListResponse
    { _vclrEtag            :: !(Maybe Text)
    , _vclrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _vclrNextPageToken   :: !(Maybe Text)
    , _vclrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _vclrKind            :: !Text
    , _vclrItems           :: !(Maybe [Maybe VideoCategory])
    , _vclrVisitorId       :: !(Maybe Text)
    , _vclrEventId         :: !(Maybe Text)
    , _vclrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoCategoryListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclrEtag'
--
-- * 'vclrTokenPagination'
--
-- * 'vclrNextPageToken'
--
-- * 'vclrPageInfo'
--
-- * 'vclrKind'
--
-- * 'vclrItems'
--
-- * 'vclrVisitorId'
--
-- * 'vclrEventId'
--
-- * 'vclrPrevPageToken'
videoCategoryListResponse
    :: VideoCategoryListResponse
videoCategoryListResponse =
    VideoCategoryListResponse
    { _vclrEtag = Nothing
    , _vclrTokenPagination = Nothing
    , _vclrNextPageToken = Nothing
    , _vclrPageInfo = Nothing
    , _vclrKind = "youtube#videoCategoryListResponse"
    , _vclrItems = Nothing
    , _vclrVisitorId = Nothing
    , _vclrEventId = Nothing
    , _vclrPrevPageToken = Nothing
    }

-- | Etag of this resource.
vclrEtag :: Lens' VideoCategoryListResponse (Maybe Text)
vclrEtag = lens _vclrEtag (\ s a -> s{_vclrEtag = a})

vclrTokenPagination :: Lens' VideoCategoryListResponse (Maybe (Maybe TokenPagination))
vclrTokenPagination
  = lens _vclrTokenPagination
      (\ s a -> s{_vclrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
vclrNextPageToken :: Lens' VideoCategoryListResponse (Maybe Text)
vclrNextPageToken
  = lens _vclrNextPageToken
      (\ s a -> s{_vclrNextPageToken = a})

vclrPageInfo :: Lens' VideoCategoryListResponse (Maybe (Maybe PageInfo))
vclrPageInfo
  = lens _vclrPageInfo (\ s a -> s{_vclrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoCategoryListResponse\".
vclrKind :: Lens' VideoCategoryListResponse Text
vclrKind = lens _vclrKind (\ s a -> s{_vclrKind = a})

-- | A list of video categories that can be associated with YouTube videos.
-- In this map, the video category ID is the map key, and its value is the
-- corresponding videoCategory resource.
vclrItems :: Lens' VideoCategoryListResponse [Maybe VideoCategory]
vclrItems
  = lens _vclrItems (\ s a -> s{_vclrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
vclrVisitorId :: Lens' VideoCategoryListResponse (Maybe Text)
vclrVisitorId
  = lens _vclrVisitorId
      (\ s a -> s{_vclrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
vclrEventId :: Lens' VideoCategoryListResponse (Maybe Text)
vclrEventId
  = lens _vclrEventId (\ s a -> s{_vclrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
vclrPrevPageToken :: Lens' VideoCategoryListResponse (Maybe Text)
vclrPrevPageToken
  = lens _vclrPrevPageToken
      (\ s a -> s{_vclrPrevPageToken = a})

instance FromJSON VideoCategoryListResponse where
        parseJSON
          = withObject "VideoCategoryListResponse"
              (\ o ->
                 VideoCategoryListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#videoCategoryListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON VideoCategoryListResponse where
        toJSON VideoCategoryListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vclrEtag,
                  ("tokenPagination" .=) <$> _vclrTokenPagination,
                  ("nextPageToken" .=) <$> _vclrNextPageToken,
                  ("pageInfo" .=) <$> _vclrPageInfo,
                  Just ("kind" .= _vclrKind),
                  ("items" .=) <$> _vclrItems,
                  ("visitorId" .=) <$> _vclrVisitorId,
                  ("eventId" .=) <$> _vclrEventId,
                  ("prevPageToken" .=) <$> _vclrPrevPageToken])

-- | Details about monetization of a YouTube Video.
--
-- /See:/ 'videoMonetizationDetails' smart constructor.
newtype VideoMonetizationDetails = VideoMonetizationDetails
    { _vmdAccess :: Maybe (Maybe AccessPolicy)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoMonetizationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmdAccess'
videoMonetizationDetails
    :: VideoMonetizationDetails
videoMonetizationDetails =
    VideoMonetizationDetails
    { _vmdAccess = Nothing
    }

-- | The value of access indicates whether the video can be monetized or not.
vmdAccess :: Lens' VideoMonetizationDetails (Maybe (Maybe AccessPolicy))
vmdAccess
  = lens _vmdAccess (\ s a -> s{_vmdAccess = a})

instance FromJSON VideoMonetizationDetails where
        parseJSON
          = withObject "VideoMonetizationDetails"
              (\ o ->
                 VideoMonetizationDetails <$> (o .:? "access"))

instance ToJSON VideoMonetizationDetails where
        toJSON VideoMonetizationDetails{..}
          = object (catMaybes [("access" .=) <$> _vmdAccess])

--
-- /See:/ 'liveStreamConfigurationIssue' smart constructor.
data LiveStreamConfigurationIssue = LiveStreamConfigurationIssue
    { _lsciSeverity    :: !(Maybe Text)
    , _lsciReason      :: !(Maybe Text)
    , _lsciType        :: !(Maybe Text)
    , _lsciDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamConfigurationIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsciSeverity'
--
-- * 'lsciReason'
--
-- * 'lsciType'
--
-- * 'lsciDescription'
liveStreamConfigurationIssue
    :: LiveStreamConfigurationIssue
liveStreamConfigurationIssue =
    LiveStreamConfigurationIssue
    { _lsciSeverity = Nothing
    , _lsciReason = Nothing
    , _lsciType = Nothing
    , _lsciDescription = Nothing
    }

-- | How severe this issue is to the stream.
lsciSeverity :: Lens' LiveStreamConfigurationIssue (Maybe Text)
lsciSeverity
  = lens _lsciSeverity (\ s a -> s{_lsciSeverity = a})

-- | The short-form reason for this issue.
lsciReason :: Lens' LiveStreamConfigurationIssue (Maybe Text)
lsciReason
  = lens _lsciReason (\ s a -> s{_lsciReason = a})

-- | The kind of error happening.
lsciType :: Lens' LiveStreamConfigurationIssue (Maybe Text)
lsciType = lens _lsciType (\ s a -> s{_lsciType = a})

-- | The long-form description of the issue and how to resolve it.
lsciDescription :: Lens' LiveStreamConfigurationIssue (Maybe Text)
lsciDescription
  = lens _lsciDescription
      (\ s a -> s{_lsciDescription = a})

instance FromJSON LiveStreamConfigurationIssue where
        parseJSON
          = withObject "LiveStreamConfigurationIssue"
              (\ o ->
                 LiveStreamConfigurationIssue <$>
                   (o .:? "severity") <*> (o .:? "reason") <*>
                     (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON LiveStreamConfigurationIssue where
        toJSON LiveStreamConfigurationIssue{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _lsciSeverity,
                  ("reason" .=) <$> _lsciReason,
                  ("type" .=) <$> _lsciType,
                  ("description" .=) <$> _lsciDescription])

-- | A videoAbuseReportReason resource identifies a reason that a video could
-- be reported as abusive. Video abuse report reasons are used with
-- video.ReportAbuse.
--
-- /See:/ 'videoAbuseReportReason' smart constructor.
data VideoAbuseReportReason = VideoAbuseReportReason
    { _varrEtag    :: !(Maybe Text)
    , _varrSnippet :: !(Maybe (Maybe VideoAbuseReportReasonSNIppet))
    , _varrKind    :: !Text
    , _varrId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrEtag'
--
-- * 'varrSnippet'
--
-- * 'varrKind'
--
-- * 'varrId'
videoAbuseReportReason
    :: VideoAbuseReportReason
videoAbuseReportReason =
    VideoAbuseReportReason
    { _varrEtag = Nothing
    , _varrSnippet = Nothing
    , _varrKind = "youtube#videoAbuseReportReason"
    , _varrId = Nothing
    }

-- | Etag of this resource.
varrEtag :: Lens' VideoAbuseReportReason (Maybe Text)
varrEtag = lens _varrEtag (\ s a -> s{_varrEtag = a})

-- | The snippet object contains basic details about the abuse report reason.
varrSnippet :: Lens' VideoAbuseReportReason (Maybe (Maybe VideoAbuseReportReasonSNIppet))
varrSnippet
  = lens _varrSnippet (\ s a -> s{_varrSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoAbuseReportReason\".
varrKind :: Lens' VideoAbuseReportReason Text
varrKind = lens _varrKind (\ s a -> s{_varrKind = a})

-- | The ID of this abuse report reason.
varrId :: Lens' VideoAbuseReportReason (Maybe Text)
varrId = lens _varrId (\ s a -> s{_varrId = a})

instance FromJSON VideoAbuseReportReason where
        parseJSON
          = withObject "VideoAbuseReportReason"
              (\ o ->
                 VideoAbuseReportReason <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#videoAbuseReportReason")
                     <*> (o .:? "id"))

instance ToJSON VideoAbuseReportReason where
        toJSON VideoAbuseReportReason{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _varrEtag,
                  ("snippet" .=) <$> _varrSnippet,
                  Just ("kind" .= _varrKind), ("id" .=) <$> _varrId])

-- | ChannelSection targeting setting.
--
-- /See:/ 'channelSectionTargeting' smart constructor.
data ChannelSectionTargeting = ChannelSectionTargeting
    { _cstRegions   :: !(Maybe [Text])
    , _cstCountries :: !(Maybe [Text])
    , _cstLanguages :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cstRegions'
--
-- * 'cstCountries'
--
-- * 'cstLanguages'
channelSectionTargeting
    :: ChannelSectionTargeting
channelSectionTargeting =
    ChannelSectionTargeting
    { _cstRegions = Nothing
    , _cstCountries = Nothing
    , _cstLanguages = Nothing
    }

-- | The region the channel section is targeting.
cstRegions :: Lens' ChannelSectionTargeting [Text]
cstRegions
  = lens _cstRegions (\ s a -> s{_cstRegions = a}) .
      _Default
      . _Coerce

-- | The country the channel section is targeting.
cstCountries :: Lens' ChannelSectionTargeting [Text]
cstCountries
  = lens _cstCountries (\ s a -> s{_cstCountries = a})
      . _Default
      . _Coerce

-- | The language the channel section is targeting.
cstLanguages :: Lens' ChannelSectionTargeting [Text]
cstLanguages
  = lens _cstLanguages (\ s a -> s{_cstLanguages = a})
      . _Default
      . _Coerce

instance FromJSON ChannelSectionTargeting where
        parseJSON
          = withObject "ChannelSectionTargeting"
              (\ o ->
                 ChannelSectionTargeting <$>
                   (o .:? "regions" .!= mempty) <*>
                     (o .:? "countries" .!= mempty)
                     <*> (o .:? "languages" .!= mempty))

instance ToJSON ChannelSectionTargeting where
        toJSON ChannelSectionTargeting{..}
          = object
              (catMaybes
                 [("regions" .=) <$> _cstRegions,
                  ("countries" .=) <$> _cstCountries,
                  ("languages" .=) <$> _cstLanguages])

--
-- /See:/ 'channelSectionListResponse' smart constructor.
data ChannelSectionListResponse = ChannelSectionListResponse
    { _cslrEtag      :: !(Maybe Text)
    , _cslrKind      :: !Text
    , _cslrItems     :: !(Maybe [Maybe ChannelSection])
    , _cslrVisitorId :: !(Maybe Text)
    , _cslrEventId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslrEtag'
--
-- * 'cslrKind'
--
-- * 'cslrItems'
--
-- * 'cslrVisitorId'
--
-- * 'cslrEventId'
channelSectionListResponse
    :: ChannelSectionListResponse
channelSectionListResponse =
    ChannelSectionListResponse
    { _cslrEtag = Nothing
    , _cslrKind = "youtube#channelSectionListResponse"
    , _cslrItems = Nothing
    , _cslrVisitorId = Nothing
    , _cslrEventId = Nothing
    }

-- | Etag of this resource.
cslrEtag :: Lens' ChannelSectionListResponse (Maybe Text)
cslrEtag = lens _cslrEtag (\ s a -> s{_cslrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelSectionListResponse\".
cslrKind :: Lens' ChannelSectionListResponse Text
cslrKind = lens _cslrKind (\ s a -> s{_cslrKind = a})

-- | A list of ChannelSections that match the request criteria.
cslrItems :: Lens' ChannelSectionListResponse [Maybe ChannelSection]
cslrItems
  = lens _cslrItems (\ s a -> s{_cslrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
cslrVisitorId :: Lens' ChannelSectionListResponse (Maybe Text)
cslrVisitorId
  = lens _cslrVisitorId
      (\ s a -> s{_cslrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
cslrEventId :: Lens' ChannelSectionListResponse (Maybe Text)
cslrEventId
  = lens _cslrEventId (\ s a -> s{_cslrEventId = a})

instance FromJSON ChannelSectionListResponse where
        parseJSON
          = withObject "ChannelSectionListResponse"
              (\ o ->
                 ChannelSectionListResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!=
                        "youtube#channelSectionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON ChannelSectionListResponse where
        toJSON ChannelSectionListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cslrEtag,
                  Just ("kind" .= _cslrKind),
                  ("items" .=) <$> _cslrItems,
                  ("visitorId" .=) <$> _cslrVisitorId,
                  ("eventId" .=) <$> _cslrEventId])

-- | Basic details about a playlist, including title, description and
-- thumbnails.
--
-- /See:/ 'playlistSNIppet' smart constructor.
data PlaylistSNIppet = PlaylistSNIppet
    { _psPublishedAt     :: !(Maybe UTCTime)
    , _psChannelTitle    :: !(Maybe Text)
    , _psChannelId       :: !(Maybe Text)
    , _psThumbnails      :: !(Maybe (Maybe ThumbnailDetails))
    , _psLocalized       :: !(Maybe (Maybe PlaylistLocalization))
    , _psTitle           :: !(Maybe Text)
    , _psDescription     :: !(Maybe Text)
    , _psTags            :: !(Maybe [Text])
    , _psDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psPublishedAt'
--
-- * 'psChannelTitle'
--
-- * 'psChannelId'
--
-- * 'psThumbnails'
--
-- * 'psLocalized'
--
-- * 'psTitle'
--
-- * 'psDescription'
--
-- * 'psTags'
--
-- * 'psDefaultLanguage'
playlistSNIppet
    :: PlaylistSNIppet
playlistSNIppet =
    PlaylistSNIppet
    { _psPublishedAt = Nothing
    , _psChannelTitle = Nothing
    , _psChannelId = Nothing
    , _psThumbnails = Nothing
    , _psLocalized = Nothing
    , _psTitle = Nothing
    , _psDescription = Nothing
    , _psTags = Nothing
    , _psDefaultLanguage = Nothing
    }

-- | The date and time that the playlist was created. The value is specified
-- in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
psPublishedAt :: Lens' PlaylistSNIppet (Maybe UTCTime)
psPublishedAt
  = lens _psPublishedAt
      (\ s a -> s{_psPublishedAt = a})

-- | The channel title of the channel that the video belongs to.
psChannelTitle :: Lens' PlaylistSNIppet (Maybe Text)
psChannelTitle
  = lens _psChannelTitle
      (\ s a -> s{_psChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the channel that published
-- the playlist.
psChannelId :: Lens' PlaylistSNIppet (Maybe Text)
psChannelId
  = lens _psChannelId (\ s a -> s{_psChannelId = a})

-- | A map of thumbnail images associated with the playlist. For each object
-- in the map, the key is the name of the thumbnail image, and the value is
-- an object that contains other information about the thumbnail.
psThumbnails :: Lens' PlaylistSNIppet (Maybe (Maybe ThumbnailDetails))
psThumbnails
  = lens _psThumbnails (\ s a -> s{_psThumbnails = a})

-- | Localized title and description, read-only.
psLocalized :: Lens' PlaylistSNIppet (Maybe (Maybe PlaylistLocalization))
psLocalized
  = lens _psLocalized (\ s a -> s{_psLocalized = a})

-- | The playlist\'s title.
psTitle :: Lens' PlaylistSNIppet (Maybe Text)
psTitle = lens _psTitle (\ s a -> s{_psTitle = a})

-- | The playlist\'s description.
psDescription :: Lens' PlaylistSNIppet (Maybe Text)
psDescription
  = lens _psDescription
      (\ s a -> s{_psDescription = a})

-- | Keyword tags associated with the playlist.
psTags :: Lens' PlaylistSNIppet [Text]
psTags
  = lens _psTags (\ s a -> s{_psTags = a}) . _Default .
      _Coerce

-- | The language of the playlist\'s default title and description.
psDefaultLanguage :: Lens' PlaylistSNIppet (Maybe Text)
psDefaultLanguage
  = lens _psDefaultLanguage
      (\ s a -> s{_psDefaultLanguage = a})

instance FromJSON PlaylistSNIppet where
        parseJSON
          = withObject "PlaylistSNIppet"
              (\ o ->
                 PlaylistSNIppet <$>
                   (o .:? "publishedAt") <*> (o .:? "channelTitle") <*>
                     (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "localized")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON PlaylistSNIppet where
        toJSON PlaylistSNIppet{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _psPublishedAt,
                  ("channelTitle" .=) <$> _psChannelTitle,
                  ("channelId" .=) <$> _psChannelId,
                  ("thumbnails" .=) <$> _psThumbnails,
                  ("localized" .=) <$> _psLocalized,
                  ("title" .=) <$> _psTitle,
                  ("description" .=) <$> _psDescription,
                  ("tags" .=) <$> _psTags,
                  ("defaultLanguage" .=) <$> _psDefaultLanguage])

-- | A channel resource contains information about a YouTube channel.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cStatus              :: !(Maybe (Maybe ChannelStatus))
    , _cEtag                :: !(Maybe Text)
    , _cAuditDetails        :: !(Maybe (Maybe ChannelAuditDetails))
    , _cContentOwnerDetails :: !(Maybe (Maybe ChannelContentOwnerDetails))
    , _cSnippet             :: !(Maybe (Maybe ChannelSNIppet))
    , _cKind                :: !Text
    , _cTopicDetails        :: !(Maybe (Maybe ChannelTopicDetails))
    , _cContentDetails      :: !(Maybe (Maybe ChannelContentDetails))
    , _cConversionPings     :: !(Maybe (Maybe ChannelConversionPings))
    , _cBrandingSettings    :: !(Maybe (Maybe ChannelBrandingSettings))
    , _cId                  :: !(Maybe Text)
    , _cInvideoPromotion    :: !(Maybe (Maybe InvideoPromotion))
    , _cStatistics          :: !(Maybe (Maybe ChannelStatistics))
    , _cLocalizations       :: !(Maybe ChannelLocalizations)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cEtag'
--
-- * 'cAuditDetails'
--
-- * 'cContentOwnerDetails'
--
-- * 'cSnippet'
--
-- * 'cKind'
--
-- * 'cTopicDetails'
--
-- * 'cContentDetails'
--
-- * 'cConversionPings'
--
-- * 'cBrandingSettings'
--
-- * 'cId'
--
-- * 'cInvideoPromotion'
--
-- * 'cStatistics'
--
-- * 'cLocalizations'
channel
    :: Channel
channel =
    Channel
    { _cStatus = Nothing
    , _cEtag = Nothing
    , _cAuditDetails = Nothing
    , _cContentOwnerDetails = Nothing
    , _cSnippet = Nothing
    , _cKind = "youtube#channel"
    , _cTopicDetails = Nothing
    , _cContentDetails = Nothing
    , _cConversionPings = Nothing
    , _cBrandingSettings = Nothing
    , _cId = Nothing
    , _cInvideoPromotion = Nothing
    , _cStatistics = Nothing
    , _cLocalizations = Nothing
    }

-- | The status object encapsulates information about the privacy status of
-- the channel.
cStatus :: Lens' Channel (Maybe (Maybe ChannelStatus))
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | Etag of this resource.
cEtag :: Lens' Channel (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | The auditionDetails object encapsulates channel data that is relevant
-- for YouTube Partners during the audition process.
cAuditDetails :: Lens' Channel (Maybe (Maybe ChannelAuditDetails))
cAuditDetails
  = lens _cAuditDetails
      (\ s a -> s{_cAuditDetails = a})

-- | The contentOwnerDetails object encapsulates channel data that is
-- relevant for YouTube Partners linked with the channel.
cContentOwnerDetails :: Lens' Channel (Maybe (Maybe ChannelContentOwnerDetails))
cContentOwnerDetails
  = lens _cContentOwnerDetails
      (\ s a -> s{_cContentOwnerDetails = a})

-- | The snippet object contains basic details about the channel, such as its
-- title, description, and thumbnail images.
cSnippet :: Lens' Channel (Maybe (Maybe ChannelSNIppet))
cSnippet = lens _cSnippet (\ s a -> s{_cSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channel\".
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The topicDetails object encapsulates information about Freebase topics
-- associated with the channel.
cTopicDetails :: Lens' Channel (Maybe (Maybe ChannelTopicDetails))
cTopicDetails
  = lens _cTopicDetails
      (\ s a -> s{_cTopicDetails = a})

-- | The contentDetails object encapsulates information about the channel\'s
-- content.
cContentDetails :: Lens' Channel (Maybe (Maybe ChannelContentDetails))
cContentDetails
  = lens _cContentDetails
      (\ s a -> s{_cContentDetails = a})

-- | The conversionPings object encapsulates information about conversion
-- pings that need to be respected by the channel.
cConversionPings :: Lens' Channel (Maybe (Maybe ChannelConversionPings))
cConversionPings
  = lens _cConversionPings
      (\ s a -> s{_cConversionPings = a})

-- | The brandingSettings object encapsulates information about the branding
-- of the channel.
cBrandingSettings :: Lens' Channel (Maybe (Maybe ChannelBrandingSettings))
cBrandingSettings
  = lens _cBrandingSettings
      (\ s a -> s{_cBrandingSettings = a})

-- | The ID that YouTube uses to uniquely identify the channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The invideoPromotion object encapsulates information about promotion
-- campaign associated with the channel.
cInvideoPromotion :: Lens' Channel (Maybe (Maybe InvideoPromotion))
cInvideoPromotion
  = lens _cInvideoPromotion
      (\ s a -> s{_cInvideoPromotion = a})

-- | The statistics object encapsulates statistics for the channel.
cStatistics :: Lens' Channel (Maybe (Maybe ChannelStatistics))
cStatistics
  = lens _cStatistics (\ s a -> s{_cStatistics = a})

-- | Localizations for different languages
cLocalizations :: Lens' Channel (Maybe ChannelLocalizations)
cLocalizations
  = lens _cLocalizations
      (\ s a -> s{_cLocalizations = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "auditDetails")
                     <*> (o .:? "contentOwnerDetails")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#channel")
                     <*> (o .:? "topicDetails")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "conversionPings")
                     <*> (o .:? "brandingSettings")
                     <*> (o .:? "id")
                     <*> (o .:? "invideoPromotion")
                     <*> (o .:? "statistics")
                     <*> (o .:? "localizations"))

instance ToJSON Channel where
        toJSON Channel{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus, ("etag" .=) <$> _cEtag,
                  ("auditDetails" .=) <$> _cAuditDetails,
                  ("contentOwnerDetails" .=) <$> _cContentOwnerDetails,
                  ("snippet" .=) <$> _cSnippet,
                  Just ("kind" .= _cKind),
                  ("topicDetails" .=) <$> _cTopicDetails,
                  ("contentDetails" .=) <$> _cContentDetails,
                  ("conversionPings" .=) <$> _cConversionPings,
                  ("brandingSettings" .=) <$> _cBrandingSettings,
                  ("id" .=) <$> _cId,
                  ("invideoPromotion" .=) <$> _cInvideoPromotion,
                  ("statistics" .=) <$> _cStatistics,
                  ("localizations" .=) <$> _cLocalizations])

--
-- /See:/ 'videoGetRatingResponse' smart constructor.
data VideoGetRatingResponse = VideoGetRatingResponse
    { _vgrrEtag      :: !(Maybe Text)
    , _vgrrKind      :: !Text
    , _vgrrItems     :: !(Maybe [Maybe VideoRating])
    , _vgrrVisitorId :: !(Maybe Text)
    , _vgrrEventId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoGetRatingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgrrEtag'
--
-- * 'vgrrKind'
--
-- * 'vgrrItems'
--
-- * 'vgrrVisitorId'
--
-- * 'vgrrEventId'
videoGetRatingResponse
    :: VideoGetRatingResponse
videoGetRatingResponse =
    VideoGetRatingResponse
    { _vgrrEtag = Nothing
    , _vgrrKind = "youtube#videoGetRatingResponse"
    , _vgrrItems = Nothing
    , _vgrrVisitorId = Nothing
    , _vgrrEventId = Nothing
    }

-- | Etag of this resource.
vgrrEtag :: Lens' VideoGetRatingResponse (Maybe Text)
vgrrEtag = lens _vgrrEtag (\ s a -> s{_vgrrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoGetRatingResponse\".
vgrrKind :: Lens' VideoGetRatingResponse Text
vgrrKind = lens _vgrrKind (\ s a -> s{_vgrrKind = a})

-- | A list of ratings that match the request criteria.
vgrrItems :: Lens' VideoGetRatingResponse [Maybe VideoRating]
vgrrItems
  = lens _vgrrItems (\ s a -> s{_vgrrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
vgrrVisitorId :: Lens' VideoGetRatingResponse (Maybe Text)
vgrrVisitorId
  = lens _vgrrVisitorId
      (\ s a -> s{_vgrrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
vgrrEventId :: Lens' VideoGetRatingResponse (Maybe Text)
vgrrEventId
  = lens _vgrrEventId (\ s a -> s{_vgrrEventId = a})

instance FromJSON VideoGetRatingResponse where
        parseJSON
          = withObject "VideoGetRatingResponse"
              (\ o ->
                 VideoGetRatingResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#videoGetRatingResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON VideoGetRatingResponse where
        toJSON VideoGetRatingResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vgrrEtag,
                  Just ("kind" .= _vgrrKind),
                  ("items" .=) <$> _vgrrItems,
                  ("visitorId" .=) <$> _vgrrVisitorId,
                  ("eventId" .=) <$> _vgrrEventId])

--
-- /See:/ 'liveStreamListResponse' smart constructor.
data LiveStreamListResponse = LiveStreamListResponse
    { _lslrEtag            :: !(Maybe Text)
    , _lslrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _lslrNextPageToken   :: !(Maybe Text)
    , _lslrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _lslrKind            :: !Text
    , _lslrItems           :: !(Maybe [Maybe LiveStream])
    , _lslrVisitorId       :: !(Maybe Text)
    , _lslrEventId         :: !(Maybe Text)
    , _lslrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslrEtag'
--
-- * 'lslrTokenPagination'
--
-- * 'lslrNextPageToken'
--
-- * 'lslrPageInfo'
--
-- * 'lslrKind'
--
-- * 'lslrItems'
--
-- * 'lslrVisitorId'
--
-- * 'lslrEventId'
--
-- * 'lslrPrevPageToken'
liveStreamListResponse
    :: LiveStreamListResponse
liveStreamListResponse =
    LiveStreamListResponse
    { _lslrEtag = Nothing
    , _lslrTokenPagination = Nothing
    , _lslrNextPageToken = Nothing
    , _lslrPageInfo = Nothing
    , _lslrKind = "youtube#liveStreamListResponse"
    , _lslrItems = Nothing
    , _lslrVisitorId = Nothing
    , _lslrEventId = Nothing
    , _lslrPrevPageToken = Nothing
    }

-- | Etag of this resource.
lslrEtag :: Lens' LiveStreamListResponse (Maybe Text)
lslrEtag = lens _lslrEtag (\ s a -> s{_lslrEtag = a})

lslrTokenPagination :: Lens' LiveStreamListResponse (Maybe (Maybe TokenPagination))
lslrTokenPagination
  = lens _lslrTokenPagination
      (\ s a -> s{_lslrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
lslrNextPageToken :: Lens' LiveStreamListResponse (Maybe Text)
lslrNextPageToken
  = lens _lslrNextPageToken
      (\ s a -> s{_lslrNextPageToken = a})

lslrPageInfo :: Lens' LiveStreamListResponse (Maybe (Maybe PageInfo))
lslrPageInfo
  = lens _lslrPageInfo (\ s a -> s{_lslrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveStreamListResponse\".
lslrKind :: Lens' LiveStreamListResponse Text
lslrKind = lens _lslrKind (\ s a -> s{_lslrKind = a})

-- | A list of live streams that match the request criteria.
lslrItems :: Lens' LiveStreamListResponse [Maybe LiveStream]
lslrItems
  = lens _lslrItems (\ s a -> s{_lslrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
lslrVisitorId :: Lens' LiveStreamListResponse (Maybe Text)
lslrVisitorId
  = lens _lslrVisitorId
      (\ s a -> s{_lslrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
lslrEventId :: Lens' LiveStreamListResponse (Maybe Text)
lslrEventId
  = lens _lslrEventId (\ s a -> s{_lslrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
lslrPrevPageToken :: Lens' LiveStreamListResponse (Maybe Text)
lslrPrevPageToken
  = lens _lslrPrevPageToken
      (\ s a -> s{_lslrPrevPageToken = a})

instance FromJSON LiveStreamListResponse where
        parseJSON
          = withObject "LiveStreamListResponse"
              (\ o ->
                 LiveStreamListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!= "youtube#liveStreamListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON LiveStreamListResponse where
        toJSON LiveStreamListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lslrEtag,
                  ("tokenPagination" .=) <$> _lslrTokenPagination,
                  ("nextPageToken" .=) <$> _lslrNextPageToken,
                  ("pageInfo" .=) <$> _lslrPageInfo,
                  Just ("kind" .= _lslrKind),
                  ("items" .=) <$> _lslrItems,
                  ("visitorId" .=) <$> _lslrVisitorId,
                  ("eventId" .=) <$> _lslrEventId,
                  ("prevPageToken" .=) <$> _lslrPrevPageToken])

-- | A i18nRegion resource identifies a region where YouTube is available.
--
-- /See:/ 'i18nRegion' smart constructor.
data I18nRegion = I18nRegion
    { _irEtag    :: !(Maybe Text)
    , _irSnippet :: !(Maybe (Maybe I18nRegionSNIppet))
    , _irKind    :: !Text
    , _irId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irEtag'
--
-- * 'irSnippet'
--
-- * 'irKind'
--
-- * 'irId'
i18nRegion
    :: I18nRegion
i18nRegion =
    I18nRegion
    { _irEtag = Nothing
    , _irSnippet = Nothing
    , _irKind = "youtube#i18nRegion"
    , _irId = Nothing
    }

-- | Etag of this resource.
irEtag :: Lens' I18nRegion (Maybe Text)
irEtag = lens _irEtag (\ s a -> s{_irEtag = a})

-- | The snippet object contains basic details about the i18n region, such as
-- region code and human-readable name.
irSnippet :: Lens' I18nRegion (Maybe (Maybe I18nRegionSNIppet))
irSnippet
  = lens _irSnippet (\ s a -> s{_irSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nRegion\".
irKind :: Lens' I18nRegion Text
irKind = lens _irKind (\ s a -> s{_irKind = a})

-- | The ID that YouTube uses to uniquely identify the i18n region.
irId :: Lens' I18nRegion (Maybe Text)
irId = lens _irId (\ s a -> s{_irId = a})

instance FromJSON I18nRegion where
        parseJSON
          = withObject "I18nRegion"
              (\ o ->
                 I18nRegion <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#i18nRegion")
                     <*> (o .:? "id"))

instance ToJSON I18nRegion where
        toJSON I18nRegion{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _irEtag,
                  ("snippet" .=) <$> _irSnippet,
                  Just ("kind" .= _irKind), ("id" .=) <$> _irId])

-- | Details about the content of an activity: the video that was shared, the
-- channel that was subscribed to, etc.
--
-- /See:/ 'activityContentDetails' smart constructor.
data ActivityContentDetails = ActivityContentDetails
    { _acdPromotedItem   :: !(Maybe (Maybe ActivityContentDetailsPromotedItem))
    , _acdChannelItem    :: !(Maybe (Maybe ActivityContentDetailsChannelItem))
    , _acdBulletin       :: !(Maybe (Maybe ActivityContentDetailsBulletin))
    , _acdFavorite       :: !(Maybe (Maybe ActivityContentDetailsFavorite))
    , _acdUpload         :: !(Maybe (Maybe ActivityContentDetailsUpload))
    , _acdComment        :: !(Maybe (Maybe ActivityContentDetailsComment))
    , _acdSocial         :: !(Maybe (Maybe ActivityContentDetailsSocial))
    , _acdSubscription   :: !(Maybe (Maybe ActivityContentDetailsSubscription))
    , _acdPlaylistItem   :: !(Maybe (Maybe ActivityContentDetailsPlaylistItem))
    , _acdLike           :: !(Maybe (Maybe ActivityContentDetailsLike))
    , _acdRecommendation :: !(Maybe (Maybe ActivityContentDetailsRecommendation))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdPromotedItem'
--
-- * 'acdChannelItem'
--
-- * 'acdBulletin'
--
-- * 'acdFavorite'
--
-- * 'acdUpload'
--
-- * 'acdComment'
--
-- * 'acdSocial'
--
-- * 'acdSubscription'
--
-- * 'acdPlaylistItem'
--
-- * 'acdLike'
--
-- * 'acdRecommendation'
activityContentDetails
    :: ActivityContentDetails
activityContentDetails =
    ActivityContentDetails
    { _acdPromotedItem = Nothing
    , _acdChannelItem = Nothing
    , _acdBulletin = Nothing
    , _acdFavorite = Nothing
    , _acdUpload = Nothing
    , _acdComment = Nothing
    , _acdSocial = Nothing
    , _acdSubscription = Nothing
    , _acdPlaylistItem = Nothing
    , _acdLike = Nothing
    , _acdRecommendation = Nothing
    }

-- | The promotedItem object contains details about a resource which is being
-- promoted. This property is only present if the snippet.type is
-- promotedItem.
acdPromotedItem :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsPromotedItem))
acdPromotedItem
  = lens _acdPromotedItem
      (\ s a -> s{_acdPromotedItem = a})

-- | The channelItem object contains details about a resource which was added
-- to a channel. This property is only present if the snippet.type is
-- channelItem.
acdChannelItem :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsChannelItem))
acdChannelItem
  = lens _acdChannelItem
      (\ s a -> s{_acdChannelItem = a})

-- | The bulletin object contains details about a channel bulletin post. This
-- object is only present if the snippet.type is bulletin.
acdBulletin :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsBulletin))
acdBulletin
  = lens _acdBulletin (\ s a -> s{_acdBulletin = a})

-- | The favorite object contains information about a video that was marked
-- as a favorite video. This property is only present if the snippet.type
-- is favorite.
acdFavorite :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsFavorite))
acdFavorite
  = lens _acdFavorite (\ s a -> s{_acdFavorite = a})

-- | The upload object contains information about the uploaded video. This
-- property is only present if the snippet.type is upload.
acdUpload :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsUpload))
acdUpload
  = lens _acdUpload (\ s a -> s{_acdUpload = a})

-- | The comment object contains information about a resource that received a
-- comment. This property is only present if the snippet.type is comment.
acdComment :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsComment))
acdComment
  = lens _acdComment (\ s a -> s{_acdComment = a})

-- | The social object contains details about a social network post. This
-- property is only present if the snippet.type is social.
acdSocial :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsSocial))
acdSocial
  = lens _acdSocial (\ s a -> s{_acdSocial = a})

-- | The subscription object contains information about a channel that a user
-- subscribed to. This property is only present if the snippet.type is
-- subscription.
acdSubscription :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsSubscription))
acdSubscription
  = lens _acdSubscription
      (\ s a -> s{_acdSubscription = a})

-- | The playlistItem object contains information about a new playlist item.
-- This property is only present if the snippet.type is playlistItem.
acdPlaylistItem :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsPlaylistItem))
acdPlaylistItem
  = lens _acdPlaylistItem
      (\ s a -> s{_acdPlaylistItem = a})

-- | The like object contains information about a resource that received a
-- positive (like) rating. This property is only present if the
-- snippet.type is like.
acdLike :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsLike))
acdLike = lens _acdLike (\ s a -> s{_acdLike = a})

-- | The recommendation object contains information about a recommended
-- resource. This property is only present if the snippet.type is
-- recommendation.
acdRecommendation :: Lens' ActivityContentDetails (Maybe (Maybe ActivityContentDetailsRecommendation))
acdRecommendation
  = lens _acdRecommendation
      (\ s a -> s{_acdRecommendation = a})

instance FromJSON ActivityContentDetails where
        parseJSON
          = withObject "ActivityContentDetails"
              (\ o ->
                 ActivityContentDetails <$>
                   (o .:? "promotedItem") <*> (o .:? "channelItem") <*>
                     (o .:? "bulletin")
                     <*> (o .:? "favorite")
                     <*> (o .:? "upload")
                     <*> (o .:? "comment")
                     <*> (o .:? "social")
                     <*> (o .:? "subscription")
                     <*> (o .:? "playlistItem")
                     <*> (o .:? "like")
                     <*> (o .:? "recommendation"))

instance ToJSON ActivityContentDetails where
        toJSON ActivityContentDetails{..}
          = object
              (catMaybes
                 [("promotedItem" .=) <$> _acdPromotedItem,
                  ("channelItem" .=) <$> _acdChannelItem,
                  ("bulletin" .=) <$> _acdBulletin,
                  ("favorite" .=) <$> _acdFavorite,
                  ("upload" .=) <$> _acdUpload,
                  ("comment" .=) <$> _acdComment,
                  ("social" .=) <$> _acdSocial,
                  ("subscription" .=) <$> _acdSubscription,
                  ("playlistItem" .=) <$> _acdPlaylistItem,
                  ("like" .=) <$> _acdLike,
                  ("recommendation" .=) <$> _acdRecommendation])

-- | Statistics about a channel: number of subscribers, number of videos in
-- the channel, etc.
--
-- /See:/ 'channelStatistics' smart constructor.
data ChannelStatistics = ChannelStatistics
    { _csCommentCount          :: !(Maybe Word64)
    , _csSubscriberCount       :: !(Maybe Word64)
    , _csVideoCount            :: !(Maybe Word64)
    , _csHiddenSubscriberCount :: !(Maybe Bool)
    , _csViewCount             :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csCommentCount'
--
-- * 'csSubscriberCount'
--
-- * 'csVideoCount'
--
-- * 'csHiddenSubscriberCount'
--
-- * 'csViewCount'
channelStatistics
    :: ChannelStatistics
channelStatistics =
    ChannelStatistics
    { _csCommentCount = Nothing
    , _csSubscriberCount = Nothing
    , _csVideoCount = Nothing
    , _csHiddenSubscriberCount = Nothing
    , _csViewCount = Nothing
    }

-- | The number of comments for the channel.
csCommentCount :: Lens' ChannelStatistics (Maybe Word64)
csCommentCount
  = lens _csCommentCount
      (\ s a -> s{_csCommentCount = a})

-- | The number of subscribers that the channel has.
csSubscriberCount :: Lens' ChannelStatistics (Maybe Word64)
csSubscriberCount
  = lens _csSubscriberCount
      (\ s a -> s{_csSubscriberCount = a})

-- | The number of videos uploaded to the channel.
csVideoCount :: Lens' ChannelStatistics (Maybe Word64)
csVideoCount
  = lens _csVideoCount (\ s a -> s{_csVideoCount = a})

-- | Whether or not the number of subscribers is shown for this user.
csHiddenSubscriberCount :: Lens' ChannelStatistics (Maybe Bool)
csHiddenSubscriberCount
  = lens _csHiddenSubscriberCount
      (\ s a -> s{_csHiddenSubscriberCount = a})

-- | The number of times the channel has been viewed.
csViewCount :: Lens' ChannelStatistics (Maybe Word64)
csViewCount
  = lens _csViewCount (\ s a -> s{_csViewCount = a})

instance FromJSON ChannelStatistics where
        parseJSON
          = withObject "ChannelStatistics"
              (\ o ->
                 ChannelStatistics <$>
                   (o .:? "commentCount") <*> (o .:? "subscriberCount")
                     <*> (o .:? "videoCount")
                     <*> (o .:? "hiddenSubscriberCount")
                     <*> (o .:? "viewCount"))

instance ToJSON ChannelStatistics where
        toJSON ChannelStatistics{..}
          = object
              (catMaybes
                 [("commentCount" .=) <$> _csCommentCount,
                  ("subscriberCount" .=) <$> _csSubscriberCount,
                  ("videoCount" .=) <$> _csVideoCount,
                  ("hiddenSubscriberCount" .=) <$>
                    _csHiddenSubscriberCount,
                  ("viewCount" .=) <$> _csViewCount])

--
-- /See:/ 'channelId' smart constructor.
newtype ChannelId = ChannelId
    { _ciValue :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciValue'
channelId
    :: ChannelId
channelId =
    ChannelId
    { _ciValue = Nothing
    }

ciValue :: Lens' ChannelId (Maybe Text)
ciValue = lens _ciValue (\ s a -> s{_ciValue = a})

instance FromJSON ChannelId where
        parseJSON
          = withObject "ChannelId"
              (\ o -> ChannelId <$> (o .:? "value"))

instance ToJSON ChannelId where
        toJSON ChannelId{..}
          = object (catMaybes [("value" .=) <$> _ciValue])

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'videoAbuseReportReasonSNIppet' smart constructor.
data VideoAbuseReportReasonSNIppet = VideoAbuseReportReasonSNIppet
    { _varrsSecondaryReasons :: !(Maybe [Maybe VideoAbuseReportSecondaryReason])
    , _varrsLabel            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReasonSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrsSecondaryReasons'
--
-- * 'varrsLabel'
videoAbuseReportReasonSNIppet
    :: VideoAbuseReportReasonSNIppet
videoAbuseReportReasonSNIppet =
    VideoAbuseReportReasonSNIppet
    { _varrsSecondaryReasons = Nothing
    , _varrsLabel = Nothing
    }

-- | The secondary reasons associated with this reason, if any are available.
-- (There might be 0 or more.)
varrsSecondaryReasons :: Lens' VideoAbuseReportReasonSNIppet [Maybe VideoAbuseReportSecondaryReason]
varrsSecondaryReasons
  = lens _varrsSecondaryReasons
      (\ s a -> s{_varrsSecondaryReasons = a})
      . _Default
      . _Coerce

-- | The localized label belonging to this abuse report reason.
varrsLabel :: Lens' VideoAbuseReportReasonSNIppet (Maybe Text)
varrsLabel
  = lens _varrsLabel (\ s a -> s{_varrsLabel = a})

instance FromJSON VideoAbuseReportReasonSNIppet where
        parseJSON
          = withObject "VideoAbuseReportReasonSNIppet"
              (\ o ->
                 VideoAbuseReportReasonSNIppet <$>
                   (o .:? "secondaryReasons" .!= mempty) <*>
                     (o .:? "label"))

instance ToJSON VideoAbuseReportReasonSNIppet where
        toJSON VideoAbuseReportReasonSNIppet{..}
          = object
              (catMaybes
                 [("secondaryReasons" .=) <$> _varrsSecondaryReasons,
                  ("label" .=) <$> _varrsLabel])

-- | Video processing progress and completion time estimate.
--
-- /See:/ 'videoProcessingDetailsProcessingProgress' smart constructor.
data VideoProcessingDetailsProcessingProgress = VideoProcessingDetailsProcessingProgress
    { _vpdppTimeLeftMs     :: !(Maybe Word64)
    , _vpdppPartsTotal     :: !(Maybe Word64)
    , _vpdppPartsProcessed :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoProcessingDetailsProcessingProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdppTimeLeftMs'
--
-- * 'vpdppPartsTotal'
--
-- * 'vpdppPartsProcessed'
videoProcessingDetailsProcessingProgress
    :: VideoProcessingDetailsProcessingProgress
videoProcessingDetailsProcessingProgress =
    VideoProcessingDetailsProcessingProgress
    { _vpdppTimeLeftMs = Nothing
    , _vpdppPartsTotal = Nothing
    , _vpdppPartsProcessed = Nothing
    }

-- | An estimate of the amount of time, in millseconds, that YouTube needs to
-- finish processing the video.
vpdppTimeLeftMs :: Lens' VideoProcessingDetailsProcessingProgress (Maybe Word64)
vpdppTimeLeftMs
  = lens _vpdppTimeLeftMs
      (\ s a -> s{_vpdppTimeLeftMs = a})

-- | An estimate of the total number of parts that need to be processed for
-- the video. The number may be updated with more precise estimates while
-- YouTube processes the video.
vpdppPartsTotal :: Lens' VideoProcessingDetailsProcessingProgress (Maybe Word64)
vpdppPartsTotal
  = lens _vpdppPartsTotal
      (\ s a -> s{_vpdppPartsTotal = a})

-- | The number of parts of the video that YouTube has already processed. You
-- can estimate the percentage of the video that YouTube has already
-- processed by calculating: 100 * parts_processed \/ parts_total Note that
-- since the estimated number of parts could increase without a
-- corresponding increase in the number of parts that have already been
-- processed, it is possible that the calculated progress could
-- periodically decrease while YouTube processes a video.
vpdppPartsProcessed :: Lens' VideoProcessingDetailsProcessingProgress (Maybe Word64)
vpdppPartsProcessed
  = lens _vpdppPartsProcessed
      (\ s a -> s{_vpdppPartsProcessed = a})

instance FromJSON
         VideoProcessingDetailsProcessingProgress where
        parseJSON
          = withObject
              "VideoProcessingDetailsProcessingProgress"
              (\ o ->
                 VideoProcessingDetailsProcessingProgress <$>
                   (o .:? "timeLeftMs") <*> (o .:? "partsTotal") <*>
                     (o .:? "partsProcessed"))

instance ToJSON
         VideoProcessingDetailsProcessingProgress where
        toJSON VideoProcessingDetailsProcessingProgress{..}
          = object
              (catMaybes
                 [("timeLeftMs" .=) <$> _vpdppTimeLeftMs,
                  ("partsTotal" .=) <$> _vpdppPartsTotal,
                  ("partsProcessed" .=) <$> _vpdppPartsProcessed])

-- | A caption resource represents a YouTube caption track. A caption track
-- is associated with exactly one YouTube video.
--
-- /See:/ 'caption' smart constructor.
data Caption = Caption
    { _capEtag    :: !(Maybe Text)
    , _capSnippet :: !(Maybe (Maybe CaptionSNIppet))
    , _capKind    :: !Text
    , _capId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Caption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capEtag'
--
-- * 'capSnippet'
--
-- * 'capKind'
--
-- * 'capId'
caption
    :: Caption
caption =
    Caption
    { _capEtag = Nothing
    , _capSnippet = Nothing
    , _capKind = "youtube#caption"
    , _capId = Nothing
    }

-- | Etag of this resource.
capEtag :: Lens' Caption (Maybe Text)
capEtag = lens _capEtag (\ s a -> s{_capEtag = a})

-- | The snippet object contains basic details about the caption.
capSnippet :: Lens' Caption (Maybe (Maybe CaptionSNIppet))
capSnippet
  = lens _capSnippet (\ s a -> s{_capSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#caption\".
capKind :: Lens' Caption Text
capKind = lens _capKind (\ s a -> s{_capKind = a})

-- | The ID that YouTube uses to uniquely identify the caption track.
capId :: Lens' Caption (Maybe Text)
capId = lens _capId (\ s a -> s{_capId = a})

instance FromJSON Caption where
        parseJSON
          = withObject "Caption"
              (\ o ->
                 Caption <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#caption")
                     <*> (o .:? "id"))

instance ToJSON Caption where
        toJSON Caption{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _capEtag,
                  ("snippet" .=) <$> _capSnippet,
                  Just ("kind" .= _capKind), ("id" .=) <$> _capId])

-- | DEPRECATED Region restriction of the video.
--
-- /See:/ 'videoContentDetailsRegionRestriction' smart constructor.
data VideoContentDetailsRegionRestriction = VideoContentDetailsRegionRestriction
    { _vcdrrAllowed :: !(Maybe [Text])
    , _vcdrrBlocked :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoContentDetailsRegionRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcdrrAllowed'
--
-- * 'vcdrrBlocked'
videoContentDetailsRegionRestriction
    :: VideoContentDetailsRegionRestriction
videoContentDetailsRegionRestriction =
    VideoContentDetailsRegionRestriction
    { _vcdrrAllowed = Nothing
    , _vcdrrBlocked = Nothing
    }

-- | A list of region codes that identify countries where the video is
-- viewable. If this property is present and a country is not listed in its
-- value, then the video is blocked from appearing in that country. If this
-- property is present and contains an empty list, the video is blocked in
-- all countries.
vcdrrAllowed :: Lens' VideoContentDetailsRegionRestriction [Text]
vcdrrAllowed
  = lens _vcdrrAllowed (\ s a -> s{_vcdrrAllowed = a})
      . _Default
      . _Coerce

-- | A list of region codes that identify countries where the video is
-- blocked. If this property is present and a country is not listed in its
-- value, then the video is viewable in that country. If this property is
-- present and contains an empty list, the video is viewable in all
-- countries.
vcdrrBlocked :: Lens' VideoContentDetailsRegionRestriction [Text]
vcdrrBlocked
  = lens _vcdrrBlocked (\ s a -> s{_vcdrrBlocked = a})
      . _Default
      . _Coerce

instance FromJSON
         VideoContentDetailsRegionRestriction where
        parseJSON
          = withObject "VideoContentDetailsRegionRestriction"
              (\ o ->
                 VideoContentDetailsRegionRestriction <$>
                   (o .:? "allowed" .!= mempty) <*>
                     (o .:? "blocked" .!= mempty))

instance ToJSON VideoContentDetailsRegionRestriction
         where
        toJSON VideoContentDetailsRegionRestriction{..}
          = object
              (catMaybes
                 [("allowed" .=) <$> _vcdrrAllowed,
                  ("blocked" .=) <$> _vcdrrBlocked])

-- | Internal representation of thumbnails for a YouTube resource.
--
-- /See:/ 'thumbnailDetails' smart constructor.
data ThumbnailDetails = ThumbnailDetails
    { _tdMedium   :: !(Maybe (Maybe Thumbnail))
    , _tdMaxres   :: !(Maybe (Maybe Thumbnail))
    , _tdDefault  :: !(Maybe (Maybe Thumbnail))
    , _tdStandard :: !(Maybe (Maybe Thumbnail))
    , _tdHigh     :: !(Maybe (Maybe Thumbnail))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdMedium'
--
-- * 'tdMaxres'
--
-- * 'tdDefault'
--
-- * 'tdStandard'
--
-- * 'tdHigh'
thumbnailDetails
    :: ThumbnailDetails
thumbnailDetails =
    ThumbnailDetails
    { _tdMedium = Nothing
    , _tdMaxres = Nothing
    , _tdDefault = Nothing
    , _tdStandard = Nothing
    , _tdHigh = Nothing
    }

-- | The medium quality image for this resource.
tdMedium :: Lens' ThumbnailDetails (Maybe (Maybe Thumbnail))
tdMedium = lens _tdMedium (\ s a -> s{_tdMedium = a})

-- | The maximum resolution quality image for this resource.
tdMaxres :: Lens' ThumbnailDetails (Maybe (Maybe Thumbnail))
tdMaxres = lens _tdMaxres (\ s a -> s{_tdMaxres = a})

-- | The default image for this resource.
tdDefault :: Lens' ThumbnailDetails (Maybe (Maybe Thumbnail))
tdDefault
  = lens _tdDefault (\ s a -> s{_tdDefault = a})

-- | The standard quality image for this resource.
tdStandard :: Lens' ThumbnailDetails (Maybe (Maybe Thumbnail))
tdStandard
  = lens _tdStandard (\ s a -> s{_tdStandard = a})

-- | The high quality image for this resource.
tdHigh :: Lens' ThumbnailDetails (Maybe (Maybe Thumbnail))
tdHigh = lens _tdHigh (\ s a -> s{_tdHigh = a})

instance FromJSON ThumbnailDetails where
        parseJSON
          = withObject "ThumbnailDetails"
              (\ o ->
                 ThumbnailDetails <$>
                   (o .:? "medium") <*> (o .:? "maxres") <*>
                     (o .:? "default")
                     <*> (o .:? "standard")
                     <*> (o .:? "high"))

instance ToJSON ThumbnailDetails where
        toJSON ThumbnailDetails{..}
          = object
              (catMaybes
                 [("medium" .=) <$> _tdMedium,
                  ("maxres" .=) <$> _tdMaxres,
                  ("default" .=) <$> _tdDefault,
                  ("standard" .=) <$> _tdStandard,
                  ("high" .=) <$> _tdHigh])

-- | Basic details about a channel, including title, description and
-- thumbnails.
--
-- /See:/ 'channelSNIppet' smart constructor.
data ChannelSNIppet = ChannelSNIppet
    { _csPublishedAt     :: !(Maybe UTCTime)
    , _csCountry         :: !(Maybe Text)
    , _csThumbnails      :: !(Maybe (Maybe ThumbnailDetails))
    , _csLocalized       :: !(Maybe (Maybe ChannelLocalization))
    , _csTitle           :: !(Maybe Text)
    , _csDescription     :: !(Maybe Text)
    , _csDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csPublishedAt'
--
-- * 'csCountry'
--
-- * 'csThumbnails'
--
-- * 'csLocalized'
--
-- * 'csTitle'
--
-- * 'csDescription'
--
-- * 'csDefaultLanguage'
channelSNIppet
    :: ChannelSNIppet
channelSNIppet =
    ChannelSNIppet
    { _csPublishedAt = Nothing
    , _csCountry = Nothing
    , _csThumbnails = Nothing
    , _csLocalized = Nothing
    , _csTitle = Nothing
    , _csDescription = Nothing
    , _csDefaultLanguage = Nothing
    }

-- | The date and time that the channel was created. The value is specified
-- in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
csPublishedAt :: Lens' ChannelSNIppet (Maybe UTCTime)
csPublishedAt
  = lens _csPublishedAt
      (\ s a -> s{_csPublishedAt = a})

-- | The country of the channel.
csCountry :: Lens' ChannelSNIppet (Maybe Text)
csCountry
  = lens _csCountry (\ s a -> s{_csCountry = a})

-- | A map of thumbnail images associated with the channel. For each object
-- in the map, the key is the name of the thumbnail image, and the value is
-- an object that contains other information about the thumbnail.
csThumbnails :: Lens' ChannelSNIppet (Maybe (Maybe ThumbnailDetails))
csThumbnails
  = lens _csThumbnails (\ s a -> s{_csThumbnails = a})

-- | Localized title and description, read-only.
csLocalized :: Lens' ChannelSNIppet (Maybe (Maybe ChannelLocalization))
csLocalized
  = lens _csLocalized (\ s a -> s{_csLocalized = a})

-- | The channel\'s title.
csTitle :: Lens' ChannelSNIppet (Maybe Text)
csTitle = lens _csTitle (\ s a -> s{_csTitle = a})

-- | The description of the channel.
csDescription :: Lens' ChannelSNIppet (Maybe Text)
csDescription
  = lens _csDescription
      (\ s a -> s{_csDescription = a})

-- | The language of the channel\'s default title and description.
csDefaultLanguage :: Lens' ChannelSNIppet (Maybe Text)
csDefaultLanguage
  = lens _csDefaultLanguage
      (\ s a -> s{_csDefaultLanguage = a})

instance FromJSON ChannelSNIppet where
        parseJSON
          = withObject "ChannelSNIppet"
              (\ o ->
                 ChannelSNIppet <$>
                   (o .:? "publishedAt") <*> (o .:? "country") <*>
                     (o .:? "thumbnails")
                     <*> (o .:? "localized")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON ChannelSNIppet where
        toJSON ChannelSNIppet{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _csPublishedAt,
                  ("country" .=) <$> _csCountry,
                  ("thumbnails" .=) <$> _csThumbnails,
                  ("localized" .=) <$> _csLocalized,
                  ("title" .=) <$> _csTitle,
                  ("description" .=) <$> _csDescription,
                  ("defaultLanguage" .=) <$> _csDefaultLanguage])

-- | Settings and Info of the monitor stream
--
-- /See:/ 'monitorStreamInfo' smart constructor.
data MonitorStreamInfo = MonitorStreamInfo
    { _msiBroadcastStreamDelayMs :: !(Maybe Word32)
    , _msiEmbedHtml              :: !(Maybe Text)
    , _msiEnableMonitorStream    :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitorStreamInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msiBroadcastStreamDelayMs'
--
-- * 'msiEmbedHtml'
--
-- * 'msiEnableMonitorStream'
monitorStreamInfo
    :: MonitorStreamInfo
monitorStreamInfo =
    MonitorStreamInfo
    { _msiBroadcastStreamDelayMs = Nothing
    , _msiEmbedHtml = Nothing
    , _msiEnableMonitorStream = Nothing
    }

-- | If you have set the enableMonitorStream property to true, then this
-- property determines the length of the live broadcast delay.
msiBroadcastStreamDelayMs :: Lens' MonitorStreamInfo (Maybe Word32)
msiBroadcastStreamDelayMs
  = lens _msiBroadcastStreamDelayMs
      (\ s a -> s{_msiBroadcastStreamDelayMs = a})

-- | HTML code that embeds a player that plays the monitor stream.
msiEmbedHtml :: Lens' MonitorStreamInfo (Maybe Text)
msiEmbedHtml
  = lens _msiEmbedHtml (\ s a -> s{_msiEmbedHtml = a})

-- | This value determines whether the monitor stream is enabled for the
-- broadcast. If the monitor stream is enabled, then YouTube will broadcast
-- the event content on a special stream intended only for the
-- broadcaster\'s consumption. The broadcaster can use the stream to review
-- the event content and also to identify the optimal times to insert
-- cuepoints. You need to set this value to true if you intend to have a
-- broadcast delay for your event. Note: This property cannot be updated
-- once the broadcast is in the testing or live state.
msiEnableMonitorStream :: Lens' MonitorStreamInfo (Maybe Bool)
msiEnableMonitorStream
  = lens _msiEnableMonitorStream
      (\ s a -> s{_msiEnableMonitorStream = a})

instance FromJSON MonitorStreamInfo where
        parseJSON
          = withObject "MonitorStreamInfo"
              (\ o ->
                 MonitorStreamInfo <$>
                   (o .:? "broadcastStreamDelayMs") <*>
                     (o .:? "embedHtml")
                     <*> (o .:? "enableMonitorStream"))

instance ToJSON MonitorStreamInfo where
        toJSON MonitorStreamInfo{..}
          = object
              (catMaybes
                 [("broadcastStreamDelayMs" .=) <$>
                    _msiBroadcastStreamDelayMs,
                  ("embedHtml" .=) <$> _msiEmbedHtml,
                  ("enableMonitorStream" .=) <$>
                    _msiEnableMonitorStream])

-- | Describes a temporal position of a visual widget inside a video.
--
-- /See:/ 'invideoTiming' smart constructor.
data InvideoTiming = InvideoTiming
    { _itDurationMs :: !(Maybe Word64)
    , _itOffsetMs   :: !(Maybe Word64)
    , _itType       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoTiming' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itDurationMs'
--
-- * 'itOffsetMs'
--
-- * 'itType'
invideoTiming
    :: InvideoTiming
invideoTiming =
    InvideoTiming
    { _itDurationMs = Nothing
    , _itOffsetMs = Nothing
    , _itType = Nothing
    }

-- | Defines the duration in milliseconds for which the promotion should be
-- displayed. If missing, the client should use the default.
itDurationMs :: Lens' InvideoTiming (Maybe Word64)
itDurationMs
  = lens _itDurationMs (\ s a -> s{_itDurationMs = a})

-- | Defines the time at which the promotion will appear. Depending on the
-- value of type the value of the offsetMs field will represent a time
-- offset from the start or from the end of the video, expressed in
-- milliseconds.
itOffsetMs :: Lens' InvideoTiming (Maybe Word64)
itOffsetMs
  = lens _itOffsetMs (\ s a -> s{_itOffsetMs = a})

-- | Describes a timing type. If the value is offsetFromStart, then the
-- offsetMs field represents an offset from the start of the video. If the
-- value is offsetFromEnd, then the offsetMs field represents an offset
-- from the end of the video.
itType :: Lens' InvideoTiming (Maybe Text)
itType = lens _itType (\ s a -> s{_itType = a})

instance FromJSON InvideoTiming where
        parseJSON
          = withObject "InvideoTiming"
              (\ o ->
                 InvideoTiming <$>
                   (o .:? "durationMs") <*> (o .:? "offsetMs") <*>
                     (o .:? "type"))

instance ToJSON InvideoTiming where
        toJSON InvideoTiming{..}
          = object
              (catMaybes
                 [("durationMs" .=) <$> _itDurationMs,
                  ("offsetMs" .=) <$> _itOffsetMs,
                  ("type" .=) <$> _itType])

-- | A videoCategory resource identifies a category that has been or could be
-- associated with uploaded videos.
--
-- /See:/ 'videoCategory' smart constructor.
data VideoCategory = VideoCategory
    { _vcEtag    :: !(Maybe Text)
    , _vcSnippet :: !(Maybe (Maybe VideoCategorySNIppet))
    , _vcKind    :: !Text
    , _vcId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcEtag'
--
-- * 'vcSnippet'
--
-- * 'vcKind'
--
-- * 'vcId'
videoCategory
    :: VideoCategory
videoCategory =
    VideoCategory
    { _vcEtag = Nothing
    , _vcSnippet = Nothing
    , _vcKind = "youtube#videoCategory"
    , _vcId = Nothing
    }

-- | Etag of this resource.
vcEtag :: Lens' VideoCategory (Maybe Text)
vcEtag = lens _vcEtag (\ s a -> s{_vcEtag = a})

-- | The snippet object contains basic details about the video category,
-- including its title.
vcSnippet :: Lens' VideoCategory (Maybe (Maybe VideoCategorySNIppet))
vcSnippet
  = lens _vcSnippet (\ s a -> s{_vcSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoCategory\".
vcKind :: Lens' VideoCategory Text
vcKind = lens _vcKind (\ s a -> s{_vcKind = a})

-- | The ID that YouTube uses to uniquely identify the video category.
vcId :: Lens' VideoCategory (Maybe Text)
vcId = lens _vcId (\ s a -> s{_vcId = a})

instance FromJSON VideoCategory where
        parseJSON
          = withObject "VideoCategory"
              (\ o ->
                 VideoCategory <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#videoCategory")
                     <*> (o .:? "id"))

instance ToJSON VideoCategory where
        toJSON VideoCategory{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vcEtag,
                  ("snippet" .=) <$> _vcSnippet,
                  Just ("kind" .= _vcKind), ("id" .=) <$> _vcId])

-- | A liveBroadcast resource represents an event that will be streamed, via
-- live video, on YouTube.
--
-- /See:/ 'liveBroadcast' smart constructor.
data LiveBroadcast = LiveBroadcast
    { _lbStatus         :: !(Maybe (Maybe LiveBroadcastStatus))
    , _lbEtag           :: !(Maybe Text)
    , _lbSnippet        :: !(Maybe (Maybe LiveBroadcastSNIppet))
    , _lbKind           :: !Text
    , _lbTopicDetails   :: !(Maybe (Maybe LiveBroadcastTopicDetails))
    , _lbContentDetails :: !(Maybe (Maybe LiveBroadcastContentDetails))
    , _lbId             :: !(Maybe Text)
    , _lbStatistics     :: !(Maybe (Maybe LiveBroadcastStatistics))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcast' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbStatus'
--
-- * 'lbEtag'
--
-- * 'lbSnippet'
--
-- * 'lbKind'
--
-- * 'lbTopicDetails'
--
-- * 'lbContentDetails'
--
-- * 'lbId'
--
-- * 'lbStatistics'
liveBroadcast
    :: LiveBroadcast
liveBroadcast =
    LiveBroadcast
    { _lbStatus = Nothing
    , _lbEtag = Nothing
    , _lbSnippet = Nothing
    , _lbKind = "youtube#liveBroadcast"
    , _lbTopicDetails = Nothing
    , _lbContentDetails = Nothing
    , _lbId = Nothing
    , _lbStatistics = Nothing
    }

-- | The status object contains information about the event\'s status.
lbStatus :: Lens' LiveBroadcast (Maybe (Maybe LiveBroadcastStatus))
lbStatus = lens _lbStatus (\ s a -> s{_lbStatus = a})

-- | Etag of this resource.
lbEtag :: Lens' LiveBroadcast (Maybe Text)
lbEtag = lens _lbEtag (\ s a -> s{_lbEtag = a})

-- | The snippet object contains basic details about the event, including its
-- title, description, start time, and end time.
lbSnippet :: Lens' LiveBroadcast (Maybe (Maybe LiveBroadcastSNIppet))
lbSnippet
  = lens _lbSnippet (\ s a -> s{_lbSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveBroadcast\".
lbKind :: Lens' LiveBroadcast Text
lbKind = lens _lbKind (\ s a -> s{_lbKind = a})

lbTopicDetails :: Lens' LiveBroadcast (Maybe (Maybe LiveBroadcastTopicDetails))
lbTopicDetails
  = lens _lbTopicDetails
      (\ s a -> s{_lbTopicDetails = a})

-- | The contentDetails object contains information about the event\'s video
-- content, such as whether the content can be shown in an embedded video
-- player or if it will be archived and therefore available for viewing
-- after the event has concluded.
lbContentDetails :: Lens' LiveBroadcast (Maybe (Maybe LiveBroadcastContentDetails))
lbContentDetails
  = lens _lbContentDetails
      (\ s a -> s{_lbContentDetails = a})

-- | The ID that YouTube assigns to uniquely identify the broadcast.
lbId :: Lens' LiveBroadcast (Maybe Text)
lbId = lens _lbId (\ s a -> s{_lbId = a})

-- | The statistics object contains info about the event\'s current stats.
-- These include concurrent viewers and total chat count. Statistics can
-- change (in either direction) during the lifetime of an event. Statistics
-- are only returned while the event is live.
lbStatistics :: Lens' LiveBroadcast (Maybe (Maybe LiveBroadcastStatistics))
lbStatistics
  = lens _lbStatistics (\ s a -> s{_lbStatistics = a})

instance FromJSON LiveBroadcast where
        parseJSON
          = withObject "LiveBroadcast"
              (\ o ->
                 LiveBroadcast <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#liveBroadcast")
                     <*> (o .:? "topicDetails")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id")
                     <*> (o .:? "statistics"))

instance ToJSON LiveBroadcast where
        toJSON LiveBroadcast{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lbStatus,
                  ("etag" .=) <$> _lbEtag,
                  ("snippet" .=) <$> _lbSnippet,
                  Just ("kind" .= _lbKind),
                  ("topicDetails" .=) <$> _lbTopicDetails,
                  ("contentDetails" .=) <$> _lbContentDetails,
                  ("id" .=) <$> _lbId,
                  ("statistics" .=) <$> _lbStatistics])

-- | Details about a channelsection, including playlists and channels.
--
-- /See:/ 'channelSectionContentDetails' smart constructor.
data ChannelSectionContentDetails = ChannelSectionContentDetails
    { _cscdChannels  :: !(Maybe [Text])
    , _cscdPlaylists :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscdChannels'
--
-- * 'cscdPlaylists'
channelSectionContentDetails
    :: ChannelSectionContentDetails
channelSectionContentDetails =
    ChannelSectionContentDetails
    { _cscdChannels = Nothing
    , _cscdPlaylists = Nothing
    }

-- | The channel ids for type multiple_channels.
cscdChannels :: Lens' ChannelSectionContentDetails [Text]
cscdChannels
  = lens _cscdChannels (\ s a -> s{_cscdChannels = a})
      . _Default
      . _Coerce

-- | The playlist ids for type single_playlist and multiple_playlists. For
-- singlePlaylist, only one playlistId is allowed.
cscdPlaylists :: Lens' ChannelSectionContentDetails [Text]
cscdPlaylists
  = lens _cscdPlaylists
      (\ s a -> s{_cscdPlaylists = a})
      . _Default
      . _Coerce

instance FromJSON ChannelSectionContentDetails where
        parseJSON
          = withObject "ChannelSectionContentDetails"
              (\ o ->
                 ChannelSectionContentDetails <$>
                   (o .:? "channels" .!= mempty) <*>
                     (o .:? "playlists" .!= mempty))

instance ToJSON ChannelSectionContentDetails where
        toJSON ChannelSectionContentDetails{..}
          = object
              (catMaybes
                 [("channels" .=) <$> _cscdChannels,
                  ("playlists" .=) <$> _cscdPlaylists])

-- | A video resource represents a YouTube video.
--
-- /See:/ 'video' smart constructor.
data Video = Video
    { _vStatus               :: !(Maybe (Maybe VideoStatus))
    , _vEtag                 :: !(Maybe Text)
    , _vProjectDetails       :: !(Maybe (Maybe VideoProjectDetails))
    , _vRecordingDetails     :: !(Maybe (Maybe VideoRecordingDetails))
    , _vSnippet              :: !(Maybe (Maybe VideoSNIppet))
    , _vKind                 :: !Text
    , _vTopicDetails         :: !(Maybe (Maybe VideoTopicDetails))
    , _vContentDetails       :: !(Maybe (Maybe VideoContentDetails))
    , _vConversionPings      :: !(Maybe (Maybe VideoConversionPings))
    , _vAgeGating            :: !(Maybe (Maybe VideoAgeGating))
    , _vFileDetails          :: !(Maybe (Maybe VideoFileDetails))
    , _vSuggestions          :: !(Maybe (Maybe VideoSuggestions))
    , _vId                   :: !(Maybe Text)
    , _vStatistics           :: !(Maybe (Maybe VideoStatistics))
    , _vLocalizations        :: !(Maybe VideoLocalizations)
    , _vLiveStreamingDetails :: !(Maybe (Maybe VideoLiveStreamingDetails))
    , _vPlayer               :: !(Maybe (Maybe VideoPlayer))
    , _vProcessingDetails    :: !(Maybe (Maybe VideoProcessingDetails))
    , _vMonetizationDetails  :: !(Maybe (Maybe VideoMonetizationDetails))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Video' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vStatus'
--
-- * 'vEtag'
--
-- * 'vProjectDetails'
--
-- * 'vRecordingDetails'
--
-- * 'vSnippet'
--
-- * 'vKind'
--
-- * 'vTopicDetails'
--
-- * 'vContentDetails'
--
-- * 'vConversionPings'
--
-- * 'vAgeGating'
--
-- * 'vFileDetails'
--
-- * 'vSuggestions'
--
-- * 'vId'
--
-- * 'vStatistics'
--
-- * 'vLocalizations'
--
-- * 'vLiveStreamingDetails'
--
-- * 'vPlayer'
--
-- * 'vProcessingDetails'
--
-- * 'vMonetizationDetails'
video
    :: Video
video =
    Video
    { _vStatus = Nothing
    , _vEtag = Nothing
    , _vProjectDetails = Nothing
    , _vRecordingDetails = Nothing
    , _vSnippet = Nothing
    , _vKind = "youtube#video"
    , _vTopicDetails = Nothing
    , _vContentDetails = Nothing
    , _vConversionPings = Nothing
    , _vAgeGating = Nothing
    , _vFileDetails = Nothing
    , _vSuggestions = Nothing
    , _vId = Nothing
    , _vStatistics = Nothing
    , _vLocalizations = Nothing
    , _vLiveStreamingDetails = Nothing
    , _vPlayer = Nothing
    , _vProcessingDetails = Nothing
    , _vMonetizationDetails = Nothing
    }

-- | The status object contains information about the video\'s uploading,
-- processing, and privacy statuses.
vStatus :: Lens' Video (Maybe (Maybe VideoStatus))
vStatus = lens _vStatus (\ s a -> s{_vStatus = a})

-- | Etag of this resource.
vEtag :: Lens' Video (Maybe Text)
vEtag = lens _vEtag (\ s a -> s{_vEtag = a})

-- | The projectDetails object contains information about the project
-- specific video metadata.
vProjectDetails :: Lens' Video (Maybe (Maybe VideoProjectDetails))
vProjectDetails
  = lens _vProjectDetails
      (\ s a -> s{_vProjectDetails = a})

-- | The recordingDetails object encapsulates information about the location,
-- date and address where the video was recorded.
vRecordingDetails :: Lens' Video (Maybe (Maybe VideoRecordingDetails))
vRecordingDetails
  = lens _vRecordingDetails
      (\ s a -> s{_vRecordingDetails = a})

-- | The snippet object contains basic details about the video, such as its
-- title, description, and category.
vSnippet :: Lens' Video (Maybe (Maybe VideoSNIppet))
vSnippet = lens _vSnippet (\ s a -> s{_vSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#video\".
vKind :: Lens' Video Text
vKind = lens _vKind (\ s a -> s{_vKind = a})

-- | The topicDetails object encapsulates information about Freebase topics
-- associated with the video.
vTopicDetails :: Lens' Video (Maybe (Maybe VideoTopicDetails))
vTopicDetails
  = lens _vTopicDetails
      (\ s a -> s{_vTopicDetails = a})

-- | The contentDetails object contains information about the video content,
-- including the length of the video and its aspect ratio.
vContentDetails :: Lens' Video (Maybe (Maybe VideoContentDetails))
vContentDetails
  = lens _vContentDetails
      (\ s a -> s{_vContentDetails = a})

-- | The conversionPings object encapsulates information about url pings that
-- need to be respected by the App in different video contexts.
vConversionPings :: Lens' Video (Maybe (Maybe VideoConversionPings))
vConversionPings
  = lens _vConversionPings
      (\ s a -> s{_vConversionPings = a})

-- | Age restriction details related to a video.
vAgeGating :: Lens' Video (Maybe (Maybe VideoAgeGating))
vAgeGating
  = lens _vAgeGating (\ s a -> s{_vAgeGating = a})

-- | The fileDetails object encapsulates information about the video file
-- that was uploaded to YouTube, including the file\'s resolution,
-- duration, audio and video codecs, stream bitrates, and more. This data
-- can only be retrieved by the video owner.
vFileDetails :: Lens' Video (Maybe (Maybe VideoFileDetails))
vFileDetails
  = lens _vFileDetails (\ s a -> s{_vFileDetails = a})

-- | The suggestions object encapsulates suggestions that identify
-- opportunities to improve the video quality or the metadata for the
-- uploaded video. This data can only be retrieved by the video owner.
vSuggestions :: Lens' Video (Maybe (Maybe VideoSuggestions))
vSuggestions
  = lens _vSuggestions (\ s a -> s{_vSuggestions = a})

-- | The ID that YouTube uses to uniquely identify the video.
vId :: Lens' Video (Maybe Text)
vId = lens _vId (\ s a -> s{_vId = a})

-- | The statistics object contains statistics about the video.
vStatistics :: Lens' Video (Maybe (Maybe VideoStatistics))
vStatistics
  = lens _vStatistics (\ s a -> s{_vStatistics = a})

-- | List with all localizations.
vLocalizations :: Lens' Video (Maybe VideoLocalizations)
vLocalizations
  = lens _vLocalizations
      (\ s a -> s{_vLocalizations = a})

-- | The liveStreamingDetails object contains metadata about a live video
-- broadcast. The object will only be present in a video resource if the
-- video is an upcoming, live, or completed live broadcast.
vLiveStreamingDetails :: Lens' Video (Maybe (Maybe VideoLiveStreamingDetails))
vLiveStreamingDetails
  = lens _vLiveStreamingDetails
      (\ s a -> s{_vLiveStreamingDetails = a})

-- | The player object contains information that you would use to play the
-- video in an embedded player.
vPlayer :: Lens' Video (Maybe (Maybe VideoPlayer))
vPlayer = lens _vPlayer (\ s a -> s{_vPlayer = a})

-- | The processingProgress object encapsulates information about YouTube\'s
-- progress in processing the uploaded video file. The properties in the
-- object identify the current processing status and an estimate of the
-- time remaining until YouTube finishes processing the video. This part
-- also indicates whether different types of data or content, such as file
-- details or thumbnail images, are available for the video. The
-- processingProgress object is designed to be polled so that the video
-- uploaded can track the progress that YouTube has made in processing the
-- uploaded video file. This data can only be retrieved by the video owner.
vProcessingDetails :: Lens' Video (Maybe (Maybe VideoProcessingDetails))
vProcessingDetails
  = lens _vProcessingDetails
      (\ s a -> s{_vProcessingDetails = a})

-- | The monetizationDetails object encapsulates information about the
-- monetization status of the video.
vMonetizationDetails :: Lens' Video (Maybe (Maybe VideoMonetizationDetails))
vMonetizationDetails
  = lens _vMonetizationDetails
      (\ s a -> s{_vMonetizationDetails = a})

instance FromJSON Video where
        parseJSON
          = withObject "Video"
              (\ o ->
                 Video <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "projectDetails")
                     <*> (o .:? "recordingDetails")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#video")
                     <*> (o .:? "topicDetails")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "conversionPings")
                     <*> (o .:? "ageGating")
                     <*> (o .:? "fileDetails")
                     <*> (o .:? "suggestions")
                     <*> (o .:? "id")
                     <*> (o .:? "statistics")
                     <*> (o .:? "localizations")
                     <*> (o .:? "liveStreamingDetails")
                     <*> (o .:? "player")
                     <*> (o .:? "processingDetails")
                     <*> (o .:? "monetizationDetails"))

instance ToJSON Video where
        toJSON Video{..}
          = object
              (catMaybes
                 [("status" .=) <$> _vStatus, ("etag" .=) <$> _vEtag,
                  ("projectDetails" .=) <$> _vProjectDetails,
                  ("recordingDetails" .=) <$> _vRecordingDetails,
                  ("snippet" .=) <$> _vSnippet,
                  Just ("kind" .= _vKind),
                  ("topicDetails" .=) <$> _vTopicDetails,
                  ("contentDetails" .=) <$> _vContentDetails,
                  ("conversionPings" .=) <$> _vConversionPings,
                  ("ageGating" .=) <$> _vAgeGating,
                  ("fileDetails" .=) <$> _vFileDetails,
                  ("suggestions" .=) <$> _vSuggestions,
                  ("id" .=) <$> _vId,
                  ("statistics" .=) <$> _vStatistics,
                  ("localizations" .=) <$> _vLocalizations,
                  ("liveStreamingDetails" .=) <$>
                    _vLiveStreamingDetails,
                  ("player" .=) <$> _vPlayer,
                  ("processingDetails" .=) <$> _vProcessingDetails,
                  ("monetizationDetails" .=) <$>
                    _vMonetizationDetails])

-- | Detailed settings of a stream.
--
-- /See:/ 'liveStreamContentDetails' smart constructor.
data LiveStreamContentDetails = LiveStreamContentDetails
    { _lscdClosedCaptionsIngestionUrl :: !(Maybe Text)
    , _lscdIsReusable                 :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscdClosedCaptionsIngestionUrl'
--
-- * 'lscdIsReusable'
liveStreamContentDetails
    :: LiveStreamContentDetails
liveStreamContentDetails =
    LiveStreamContentDetails
    { _lscdClosedCaptionsIngestionUrl = Nothing
    , _lscdIsReusable = Nothing
    }

-- | The ingestion URL where the closed captions of this stream are sent.
lscdClosedCaptionsIngestionUrl :: Lens' LiveStreamContentDetails (Maybe Text)
lscdClosedCaptionsIngestionUrl
  = lens _lscdClosedCaptionsIngestionUrl
      (\ s a -> s{_lscdClosedCaptionsIngestionUrl = a})

-- | Indicates whether the stream is reusable, which means that it can be
-- bound to multiple broadcasts. It is common for broadcasters to reuse the
-- same stream for many different broadcasts if those broadcasts occur at
-- different times. If you set this value to false, then the stream will
-- not be reusable, which means that it can only be bound to one broadcast.
-- Non-reusable streams differ from reusable streams in the following ways:
-- - A non-reusable stream can only be bound to one broadcast. - A
-- non-reusable stream might be deleted by an automated process after the
-- broadcast ends. - The liveStreams.list method does not list non-reusable
-- streams if you call the method and set the mine parameter to true. The
-- only way to use that method to retrieve the resource for a non-reusable
-- stream is to use the id parameter to identify the stream.
lscdIsReusable :: Lens' LiveStreamContentDetails (Maybe Bool)
lscdIsReusable
  = lens _lscdIsReusable
      (\ s a -> s{_lscdIsReusable = a})

instance FromJSON LiveStreamContentDetails where
        parseJSON
          = withObject "LiveStreamContentDetails"
              (\ o ->
                 LiveStreamContentDetails <$>
                   (o .:? "closedCaptionsIngestionUrl") <*>
                     (o .:? "isReusable"))

instance ToJSON LiveStreamContentDetails where
        toJSON LiveStreamContentDetails{..}
          = object
              (catMaybes
                 [("closedCaptionsIngestionUrl" .=) <$>
                    _lscdClosedCaptionsIngestionUrl,
                  ("isReusable" .=) <$> _lscdIsReusable])

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'videoCategorySNIppet' smart constructor.
data VideoCategorySNIppet = VideoCategorySNIppet
    { _vcsAssignable :: !(Maybe Bool)
    , _vcsChannelId  :: !Text
    , _vcsTitle      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoCategorySNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcsAssignable'
--
-- * 'vcsChannelId'
--
-- * 'vcsTitle'
videoCategorySNIppet
    :: VideoCategorySNIppet
videoCategorySNIppet =
    VideoCategorySNIppet
    { _vcsAssignable = Nothing
    , _vcsChannelId = "UCBR8-60-B28hp2BmDPdntcQ"
    , _vcsTitle = Nothing
    }

vcsAssignable :: Lens' VideoCategorySNIppet (Maybe Bool)
vcsAssignable
  = lens _vcsAssignable
      (\ s a -> s{_vcsAssignable = a})

-- | The YouTube channel that created the video category.
vcsChannelId :: Lens' VideoCategorySNIppet Text
vcsChannelId
  = lens _vcsChannelId (\ s a -> s{_vcsChannelId = a})

-- | The video category\'s title.
vcsTitle :: Lens' VideoCategorySNIppet (Maybe Text)
vcsTitle = lens _vcsTitle (\ s a -> s{_vcsTitle = a})

instance FromJSON VideoCategorySNIppet where
        parseJSON
          = withObject "VideoCategorySNIppet"
              (\ o ->
                 VideoCategorySNIppet <$>
                   (o .:? "assignable") <*>
                     (o .:? "channelId" .!= "UCBR8-60-B28hp2BmDPdntcQ")
                     <*> (o .:? "title"))

instance ToJSON VideoCategorySNIppet where
        toJSON VideoCategorySNIppet{..}
          = object
              (catMaybes
                 [("assignable" .=) <$> _vcsAssignable,
                  Just ("channelId" .= _vcsChannelId),
                  ("title" .=) <$> _vcsTitle])

--
-- /See:/ 'commentThreadListResponse' smart constructor.
data CommentThreadListResponse = CommentThreadListResponse
    { _ctlrEtag            :: !(Maybe Text)
    , _ctlrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _ctlrNextPageToken   :: !(Maybe Text)
    , _ctlrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _ctlrKind            :: !Text
    , _ctlrItems           :: !(Maybe [Maybe CommentThread])
    , _ctlrVisitorId       :: !(Maybe Text)
    , _ctlrEventId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlrEtag'
--
-- * 'ctlrTokenPagination'
--
-- * 'ctlrNextPageToken'
--
-- * 'ctlrPageInfo'
--
-- * 'ctlrKind'
--
-- * 'ctlrItems'
--
-- * 'ctlrVisitorId'
--
-- * 'ctlrEventId'
commentThreadListResponse
    :: CommentThreadListResponse
commentThreadListResponse =
    CommentThreadListResponse
    { _ctlrEtag = Nothing
    , _ctlrTokenPagination = Nothing
    , _ctlrNextPageToken = Nothing
    , _ctlrPageInfo = Nothing
    , _ctlrKind = "youtube#commentThreadListResponse"
    , _ctlrItems = Nothing
    , _ctlrVisitorId = Nothing
    , _ctlrEventId = Nothing
    }

-- | Etag of this resource.
ctlrEtag :: Lens' CommentThreadListResponse (Maybe Text)
ctlrEtag = lens _ctlrEtag (\ s a -> s{_ctlrEtag = a})

ctlrTokenPagination :: Lens' CommentThreadListResponse (Maybe (Maybe TokenPagination))
ctlrTokenPagination
  = lens _ctlrTokenPagination
      (\ s a -> s{_ctlrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
ctlrNextPageToken :: Lens' CommentThreadListResponse (Maybe Text)
ctlrNextPageToken
  = lens _ctlrNextPageToken
      (\ s a -> s{_ctlrNextPageToken = a})

ctlrPageInfo :: Lens' CommentThreadListResponse (Maybe (Maybe PageInfo))
ctlrPageInfo
  = lens _ctlrPageInfo (\ s a -> s{_ctlrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#commentThreadListResponse\".
ctlrKind :: Lens' CommentThreadListResponse Text
ctlrKind = lens _ctlrKind (\ s a -> s{_ctlrKind = a})

-- | A list of comment threads that match the request criteria.
ctlrItems :: Lens' CommentThreadListResponse [Maybe CommentThread]
ctlrItems
  = lens _ctlrItems (\ s a -> s{_ctlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
ctlrVisitorId :: Lens' CommentThreadListResponse (Maybe Text)
ctlrVisitorId
  = lens _ctlrVisitorId
      (\ s a -> s{_ctlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
ctlrEventId :: Lens' CommentThreadListResponse (Maybe Text)
ctlrEventId
  = lens _ctlrEventId (\ s a -> s{_ctlrEventId = a})

instance FromJSON CommentThreadListResponse where
        parseJSON
          = withObject "CommentThreadListResponse"
              (\ o ->
                 CommentThreadListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#commentThreadListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON CommentThreadListResponse where
        toJSON CommentThreadListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ctlrEtag,
                  ("tokenPagination" .=) <$> _ctlrTokenPagination,
                  ("nextPageToken" .=) <$> _ctlrNextPageToken,
                  ("pageInfo" .=) <$> _ctlrPageInfo,
                  Just ("kind" .= _ctlrKind),
                  ("items" .=) <$> _ctlrItems,
                  ("visitorId" .=) <$> _ctlrVisitorId,
                  ("eventId" .=) <$> _ctlrEventId])

-- | A pair Property \/ Value.
--
-- /See:/ 'propertyValue' smart constructor.
data PropertyValue = PropertyValue
    { _pvProperty :: !(Maybe Text)
    , _pvValue    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvProperty'
--
-- * 'pvValue'
propertyValue
    :: PropertyValue
propertyValue =
    PropertyValue
    { _pvProperty = Nothing
    , _pvValue = Nothing
    }

-- | A property.
pvProperty :: Lens' PropertyValue (Maybe Text)
pvProperty
  = lens _pvProperty (\ s a -> s{_pvProperty = a})

-- | The property\'s value.
pvValue :: Lens' PropertyValue (Maybe Text)
pvValue = lens _pvValue (\ s a -> s{_pvValue = a})

instance FromJSON PropertyValue where
        parseJSON
          = withObject "PropertyValue"
              (\ o ->
                 PropertyValue <$>
                   (o .:? "property") <*> (o .:? "value"))

instance ToJSON PropertyValue where
        toJSON PropertyValue{..}
          = object
              (catMaybes
                 [("property" .=) <$> _pvProperty,
                  ("value" .=) <$> _pvValue])

-- | An i18nLanguage resource identifies a UI language currently supported by
-- YouTube.
--
-- /See:/ 'i18nLanguage' smart constructor.
data I18nLanguage = I18nLanguage
    { _ilEtag    :: !(Maybe Text)
    , _ilSnippet :: !(Maybe (Maybe I18nLanguageSNIppet))
    , _ilKind    :: !Text
    , _ilId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilEtag'
--
-- * 'ilSnippet'
--
-- * 'ilKind'
--
-- * 'ilId'
i18nLanguage
    :: I18nLanguage
i18nLanguage =
    I18nLanguage
    { _ilEtag = Nothing
    , _ilSnippet = Nothing
    , _ilKind = "youtube#i18nLanguage"
    , _ilId = Nothing
    }

-- | Etag of this resource.
ilEtag :: Lens' I18nLanguage (Maybe Text)
ilEtag = lens _ilEtag (\ s a -> s{_ilEtag = a})

-- | The snippet object contains basic details about the i18n language, such
-- as language code and human-readable name.
ilSnippet :: Lens' I18nLanguage (Maybe (Maybe I18nLanguageSNIppet))
ilSnippet
  = lens _ilSnippet (\ s a -> s{_ilSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nLanguage\".
ilKind :: Lens' I18nLanguage Text
ilKind = lens _ilKind (\ s a -> s{_ilKind = a})

-- | The ID that YouTube uses to uniquely identify the i18n language.
ilId :: Lens' I18nLanguage (Maybe Text)
ilId = lens _ilId (\ s a -> s{_ilId = a})

instance FromJSON I18nLanguage where
        parseJSON
          = withObject "I18nLanguage"
              (\ o ->
                 I18nLanguage <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#i18nLanguage")
                     <*> (o .:? "id"))

instance ToJSON I18nLanguage where
        toJSON I18nLanguage{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ilEtag,
                  ("snippet" .=) <$> _ilSnippet,
                  Just ("kind" .= _ilKind), ("id" .=) <$> _ilId])

-- | Branding properties for the watch.
--
-- /See:/ 'watchSettings' smart constructor.
data WatchSettings = WatchSettings
    { _wsFeaturedPlaylistId :: !(Maybe Text)
    , _wsBackgroundColor    :: !(Maybe Text)
    , _wsTextColor          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatchSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsFeaturedPlaylistId'
--
-- * 'wsBackgroundColor'
--
-- * 'wsTextColor'
watchSettings
    :: WatchSettings
watchSettings =
    WatchSettings
    { _wsFeaturedPlaylistId = Nothing
    , _wsBackgroundColor = Nothing
    , _wsTextColor = Nothing
    }

-- | An ID that uniquely identifies a playlist that displays next to the
-- video player.
wsFeaturedPlaylistId :: Lens' WatchSettings (Maybe Text)
wsFeaturedPlaylistId
  = lens _wsFeaturedPlaylistId
      (\ s a -> s{_wsFeaturedPlaylistId = a})

-- | The text color for the video watch page\'s branded area.
wsBackgroundColor :: Lens' WatchSettings (Maybe Text)
wsBackgroundColor
  = lens _wsBackgroundColor
      (\ s a -> s{_wsBackgroundColor = a})

-- | The background color for the video watch page\'s branded area.
wsTextColor :: Lens' WatchSettings (Maybe Text)
wsTextColor
  = lens _wsTextColor (\ s a -> s{_wsTextColor = a})

instance FromJSON WatchSettings where
        parseJSON
          = withObject "WatchSettings"
              (\ o ->
                 WatchSettings <$>
                   (o .:? "featuredPlaylistId") <*>
                     (o .:? "backgroundColor")
                     <*> (o .:? "textColor"))

instance ToJSON WatchSettings where
        toJSON WatchSettings{..}
          = object
              (catMaybes
                 [("featuredPlaylistId" .=) <$> _wsFeaturedPlaylistId,
                  ("backgroundColor" .=) <$> _wsBackgroundColor,
                  ("textColor" .=) <$> _wsTextColor])

-- | Basic details about a video, including title, description, uploader,
-- thumbnails and category.
--
-- /See:/ 'videoSNIppet' smart constructor.
data VideoSNIppet = VideoSNIppet
    { _vsDefaultAudioLanguage :: !(Maybe Text)
    , _vsPublishedAt          :: !(Maybe UTCTime)
    , _vsChannelTitle         :: !(Maybe Text)
    , _vsChannelId            :: !(Maybe Text)
    , _vsThumbnails           :: !(Maybe (Maybe ThumbnailDetails))
    , _vsLocalized            :: !(Maybe (Maybe VideoLocalization))
    , _vsCategoryId           :: !(Maybe Text)
    , _vsTitle                :: !(Maybe Text)
    , _vsLiveBroadcastContent :: !(Maybe Text)
    , _vsDescription          :: !(Maybe Text)
    , _vsTags                 :: !(Maybe [Text])
    , _vsDefaultLanguage      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsDefaultAudioLanguage'
--
-- * 'vsPublishedAt'
--
-- * 'vsChannelTitle'
--
-- * 'vsChannelId'
--
-- * 'vsThumbnails'
--
-- * 'vsLocalized'
--
-- * 'vsCategoryId'
--
-- * 'vsTitle'
--
-- * 'vsLiveBroadcastContent'
--
-- * 'vsDescription'
--
-- * 'vsTags'
--
-- * 'vsDefaultLanguage'
videoSNIppet
    :: VideoSNIppet
videoSNIppet =
    VideoSNIppet
    { _vsDefaultAudioLanguage = Nothing
    , _vsPublishedAt = Nothing
    , _vsChannelTitle = Nothing
    , _vsChannelId = Nothing
    , _vsThumbnails = Nothing
    , _vsLocalized = Nothing
    , _vsCategoryId = Nothing
    , _vsTitle = Nothing
    , _vsLiveBroadcastContent = Nothing
    , _vsDescription = Nothing
    , _vsTags = Nothing
    , _vsDefaultLanguage = Nothing
    }

-- | The default_audio_language property specifies the language spoken in the
-- video\'s default audio track.
vsDefaultAudioLanguage :: Lens' VideoSNIppet (Maybe Text)
vsDefaultAudioLanguage
  = lens _vsDefaultAudioLanguage
      (\ s a -> s{_vsDefaultAudioLanguage = a})

-- | The date and time that the video was uploaded. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
vsPublishedAt :: Lens' VideoSNIppet (Maybe UTCTime)
vsPublishedAt
  = lens _vsPublishedAt
      (\ s a -> s{_vsPublishedAt = a})

-- | Channel title for the channel that the video belongs to.
vsChannelTitle :: Lens' VideoSNIppet (Maybe Text)
vsChannelTitle
  = lens _vsChannelTitle
      (\ s a -> s{_vsChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the channel that the video
-- was uploaded to.
vsChannelId :: Lens' VideoSNIppet (Maybe Text)
vsChannelId
  = lens _vsChannelId (\ s a -> s{_vsChannelId = a})

-- | A map of thumbnail images associated with the video. For each object in
-- the map, the key is the name of the thumbnail image, and the value is an
-- object that contains other information about the thumbnail.
vsThumbnails :: Lens' VideoSNIppet (Maybe (Maybe ThumbnailDetails))
vsThumbnails
  = lens _vsThumbnails (\ s a -> s{_vsThumbnails = a})

-- | Localized snippet selected with the hl parameter. If no such
-- localization exists, this field is populated with the default snippet.
-- (Read-only)
vsLocalized :: Lens' VideoSNIppet (Maybe (Maybe VideoLocalization))
vsLocalized
  = lens _vsLocalized (\ s a -> s{_vsLocalized = a})

-- | The YouTube video category associated with the video.
vsCategoryId :: Lens' VideoSNIppet (Maybe Text)
vsCategoryId
  = lens _vsCategoryId (\ s a -> s{_vsCategoryId = a})

-- | The video\'s title.
vsTitle :: Lens' VideoSNIppet (Maybe Text)
vsTitle = lens _vsTitle (\ s a -> s{_vsTitle = a})

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s
-- \"none\" if the video is not an upcoming\/active live broadcast.
vsLiveBroadcastContent :: Lens' VideoSNIppet (Maybe Text)
vsLiveBroadcastContent
  = lens _vsLiveBroadcastContent
      (\ s a -> s{_vsLiveBroadcastContent = a})

-- | The video\'s description.
vsDescription :: Lens' VideoSNIppet (Maybe Text)
vsDescription
  = lens _vsDescription
      (\ s a -> s{_vsDescription = a})

-- | A list of keyword tags associated with the video. Tags may contain
-- spaces.
vsTags :: Lens' VideoSNIppet [Text]
vsTags
  = lens _vsTags (\ s a -> s{_vsTags = a}) . _Default .
      _Coerce

-- | The language of the videos\'s default snippet.
vsDefaultLanguage :: Lens' VideoSNIppet (Maybe Text)
vsDefaultLanguage
  = lens _vsDefaultLanguage
      (\ s a -> s{_vsDefaultLanguage = a})

instance FromJSON VideoSNIppet where
        parseJSON
          = withObject "VideoSNIppet"
              (\ o ->
                 VideoSNIppet <$>
                   (o .:? "defaultAudioLanguage") <*>
                     (o .:? "publishedAt")
                     <*> (o .:? "channelTitle")
                     <*> (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "localized")
                     <*> (o .:? "categoryId")
                     <*> (o .:? "title")
                     <*> (o .:? "liveBroadcastContent")
                     <*> (o .:? "description")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON VideoSNIppet where
        toJSON VideoSNIppet{..}
          = object
              (catMaybes
                 [("defaultAudioLanguage" .=) <$>
                    _vsDefaultAudioLanguage,
                  ("publishedAt" .=) <$> _vsPublishedAt,
                  ("channelTitle" .=) <$> _vsChannelTitle,
                  ("channelId" .=) <$> _vsChannelId,
                  ("thumbnails" .=) <$> _vsThumbnails,
                  ("localized" .=) <$> _vsLocalized,
                  ("categoryId" .=) <$> _vsCategoryId,
                  ("title" .=) <$> _vsTitle,
                  ("liveBroadcastContent" .=) <$>
                    _vsLiveBroadcastContent,
                  ("description" .=) <$> _vsDescription,
                  ("tags" .=) <$> _vsTags,
                  ("defaultLanguage" .=) <$> _vsDefaultLanguage])

-- | Rights management policy for YouTube resources.
--
-- /See:/ 'accessPolicy' smart constructor.
data AccessPolicy = AccessPolicy
    { _apException :: !(Maybe [Text])
    , _apAllowed   :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apException'
--
-- * 'apAllowed'
accessPolicy
    :: AccessPolicy
accessPolicy =
    AccessPolicy
    { _apException = Nothing
    , _apAllowed = Nothing
    }

-- | A list of region codes that identify countries where the default policy
-- do not apply.
apException :: Lens' AccessPolicy [Text]
apException
  = lens _apException (\ s a -> s{_apException = a}) .
      _Default
      . _Coerce

-- | The value of allowed indicates whether the access to the policy is
-- allowed or denied by default.
apAllowed :: Lens' AccessPolicy (Maybe Bool)
apAllowed
  = lens _apAllowed (\ s a -> s{_apAllowed = a})

instance FromJSON AccessPolicy where
        parseJSON
          = withObject "AccessPolicy"
              (\ o ->
                 AccessPolicy <$>
                   (o .:? "exception" .!= mempty) <*> (o .:? "allowed"))

instance ToJSON AccessPolicy where
        toJSON AccessPolicy{..}
          = object
              (catMaybes
                 [("exception" .=) <$> _apException,
                  ("allowed" .=) <$> _apAllowed])

--
-- /See:/ 'activityListResponse' smart constructor.
data ActivityListResponse = ActivityListResponse
    { _alrEtag            :: !(Maybe Text)
    , _alrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _alrNextPageToken   :: !(Maybe Text)
    , _alrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _alrKind            :: !Text
    , _alrItems           :: !(Maybe [Maybe Activity])
    , _alrVisitorId       :: !(Maybe Text)
    , _alrEventId         :: !(Maybe Text)
    , _alrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrEtag'
--
-- * 'alrTokenPagination'
--
-- * 'alrNextPageToken'
--
-- * 'alrPageInfo'
--
-- * 'alrKind'
--
-- * 'alrItems'
--
-- * 'alrVisitorId'
--
-- * 'alrEventId'
--
-- * 'alrPrevPageToken'
activityListResponse
    :: ActivityListResponse
activityListResponse =
    ActivityListResponse
    { _alrEtag = Nothing
    , _alrTokenPagination = Nothing
    , _alrNextPageToken = Nothing
    , _alrPageInfo = Nothing
    , _alrKind = "youtube#activityListResponse"
    , _alrItems = Nothing
    , _alrVisitorId = Nothing
    , _alrEventId = Nothing
    , _alrPrevPageToken = Nothing
    }

-- | Etag of this resource.
alrEtag :: Lens' ActivityListResponse (Maybe Text)
alrEtag = lens _alrEtag (\ s a -> s{_alrEtag = a})

alrTokenPagination :: Lens' ActivityListResponse (Maybe (Maybe TokenPagination))
alrTokenPagination
  = lens _alrTokenPagination
      (\ s a -> s{_alrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
alrNextPageToken :: Lens' ActivityListResponse (Maybe Text)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

alrPageInfo :: Lens' ActivityListResponse (Maybe (Maybe PageInfo))
alrPageInfo
  = lens _alrPageInfo (\ s a -> s{_alrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#activityListResponse\".
alrKind :: Lens' ActivityListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

-- | A list of activities, or events, that match the request criteria.
alrItems :: Lens' ActivityListResponse [Maybe Activity]
alrItems
  = lens _alrItems (\ s a -> s{_alrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
alrVisitorId :: Lens' ActivityListResponse (Maybe Text)
alrVisitorId
  = lens _alrVisitorId (\ s a -> s{_alrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
alrEventId :: Lens' ActivityListResponse (Maybe Text)
alrEventId
  = lens _alrEventId (\ s a -> s{_alrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
alrPrevPageToken :: Lens' ActivityListResponse (Maybe Text)
alrPrevPageToken
  = lens _alrPrevPageToken
      (\ s a -> s{_alrPrevPageToken = a})

instance FromJSON ActivityListResponse where
        parseJSON
          = withObject "ActivityListResponse"
              (\ o ->
                 ActivityListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#activityListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON ActivityListResponse where
        toJSON ActivityListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _alrEtag,
                  ("tokenPagination" .=) <$> _alrTokenPagination,
                  ("nextPageToken" .=) <$> _alrNextPageToken,
                  ("pageInfo" .=) <$> _alrPageInfo,
                  Just ("kind" .= _alrKind),
                  ("items" .=) <$> _alrItems,
                  ("visitorId" .=) <$> _alrVisitorId,
                  ("eventId" .=) <$> _alrEventId,
                  ("prevPageToken" .=) <$> _alrPrevPageToken])

-- | Brief description of the live stream cdn settings.
--
-- /See:/ 'cdnSettings' smart constructor.
data CdnSettings = CdnSettings
    { _csIngestionInfo :: !(Maybe (Maybe IngestionInfo))
    , _csFormat        :: !(Maybe Text)
    , _csIngestionType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CdnSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csIngestionInfo'
--
-- * 'csFormat'
--
-- * 'csIngestionType'
cdnSettings
    :: CdnSettings
cdnSettings =
    CdnSettings
    { _csIngestionInfo = Nothing
    , _csFormat = Nothing
    , _csIngestionType = Nothing
    }

-- | The ingestionInfo object contains information that YouTube provides that
-- you need to transmit your RTMP or HTTP stream to YouTube.
csIngestionInfo :: Lens' CdnSettings (Maybe (Maybe IngestionInfo))
csIngestionInfo
  = lens _csIngestionInfo
      (\ s a -> s{_csIngestionInfo = a})

-- | The format of the video stream that you are sending to Youtube.
csFormat :: Lens' CdnSettings (Maybe Text)
csFormat = lens _csFormat (\ s a -> s{_csFormat = a})

-- | The method or protocol used to transmit the video stream.
csIngestionType :: Lens' CdnSettings (Maybe Text)
csIngestionType
  = lens _csIngestionType
      (\ s a -> s{_csIngestionType = a})

instance FromJSON CdnSettings where
        parseJSON
          = withObject "CdnSettings"
              (\ o ->
                 CdnSettings <$>
                   (o .:? "ingestionInfo") <*> (o .:? "format") <*>
                     (o .:? "ingestionType"))

instance ToJSON CdnSettings where
        toJSON CdnSettings{..}
          = object
              (catMaybes
                 [("ingestionInfo" .=) <$> _csIngestionInfo,
                  ("format" .=) <$> _csFormat,
                  ("ingestionType" .=) <$> _csIngestionType])

-- | Statistics about the video, such as the number of times the video was
-- viewed or liked.
--
-- /See:/ 'videoStatistics' smart constructor.
data VideoStatistics = VideoStatistics
    { _vsLikeCount     :: !(Maybe Word64)
    , _vsCommentCount  :: !(Maybe Word64)
    , _vsFavoriteCount :: !(Maybe Word64)
    , _vsDislikeCount  :: !(Maybe Word64)
    , _vsViewCount     :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsLikeCount'
--
-- * 'vsCommentCount'
--
-- * 'vsFavoriteCount'
--
-- * 'vsDislikeCount'
--
-- * 'vsViewCount'
videoStatistics
    :: VideoStatistics
videoStatistics =
    VideoStatistics
    { _vsLikeCount = Nothing
    , _vsCommentCount = Nothing
    , _vsFavoriteCount = Nothing
    , _vsDislikeCount = Nothing
    , _vsViewCount = Nothing
    }

-- | The number of users who have indicated that they liked the video by
-- giving it a positive rating.
vsLikeCount :: Lens' VideoStatistics (Maybe Word64)
vsLikeCount
  = lens _vsLikeCount (\ s a -> s{_vsLikeCount = a})

-- | The number of comments for the video.
vsCommentCount :: Lens' VideoStatistics (Maybe Word64)
vsCommentCount
  = lens _vsCommentCount
      (\ s a -> s{_vsCommentCount = a})

-- | The number of users who currently have the video marked as a favorite
-- video.
vsFavoriteCount :: Lens' VideoStatistics (Maybe Word64)
vsFavoriteCount
  = lens _vsFavoriteCount
      (\ s a -> s{_vsFavoriteCount = a})

-- | The number of users who have indicated that they disliked the video by
-- giving it a negative rating.
vsDislikeCount :: Lens' VideoStatistics (Maybe Word64)
vsDislikeCount
  = lens _vsDislikeCount
      (\ s a -> s{_vsDislikeCount = a})

-- | The number of times the video has been viewed.
vsViewCount :: Lens' VideoStatistics (Maybe Word64)
vsViewCount
  = lens _vsViewCount (\ s a -> s{_vsViewCount = a})

instance FromJSON VideoStatistics where
        parseJSON
          = withObject "VideoStatistics"
              (\ o ->
                 VideoStatistics <$>
                   (o .:? "likeCount") <*> (o .:? "commentCount") <*>
                     (o .:? "favoriteCount")
                     <*> (o .:? "dislikeCount")
                     <*> (o .:? "viewCount"))

instance ToJSON VideoStatistics where
        toJSON VideoStatistics{..}
          = object
              (catMaybes
                 [("likeCount" .=) <$> _vsLikeCount,
                  ("commentCount" .=) <$> _vsCommentCount,
                  ("favoriteCount" .=) <$> _vsFavoriteCount,
                  ("dislikeCount" .=) <$> _vsDislikeCount,
                  ("viewCount" .=) <$> _vsViewCount])

--
-- /See:/ 'liveBroadcastSNIppet' smart constructor.
data LiveBroadcastSNIppet = LiveBroadcastSNIppet
    { _lbsActualEndTime      :: !(Maybe UTCTime)
    , _lbsLiveChatId         :: !(Maybe Text)
    , _lbsPublishedAt        :: !(Maybe UTCTime)
    , _lbsScheduledEndTime   :: !(Maybe UTCTime)
    , _lbsChannelId          :: !(Maybe Text)
    , _lbsScheduledStartTime :: !(Maybe UTCTime)
    , _lbsThumbnails         :: !(Maybe (Maybe ThumbnailDetails))
    , _lbsTitle              :: !(Maybe Text)
    , _lbsActualStartTime    :: !(Maybe UTCTime)
    , _lbsIsDefaultBroadcast :: !(Maybe Bool)
    , _lbsDescription        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbsActualEndTime'
--
-- * 'lbsLiveChatId'
--
-- * 'lbsPublishedAt'
--
-- * 'lbsScheduledEndTime'
--
-- * 'lbsChannelId'
--
-- * 'lbsScheduledStartTime'
--
-- * 'lbsThumbnails'
--
-- * 'lbsTitle'
--
-- * 'lbsActualStartTime'
--
-- * 'lbsIsDefaultBroadcast'
--
-- * 'lbsDescription'
liveBroadcastSNIppet
    :: LiveBroadcastSNIppet
liveBroadcastSNIppet =
    LiveBroadcastSNIppet
    { _lbsActualEndTime = Nothing
    , _lbsLiveChatId = Nothing
    , _lbsPublishedAt = Nothing
    , _lbsScheduledEndTime = Nothing
    , _lbsChannelId = Nothing
    , _lbsScheduledStartTime = Nothing
    , _lbsThumbnails = Nothing
    , _lbsTitle = Nothing
    , _lbsActualStartTime = Nothing
    , _lbsIsDefaultBroadcast = Nothing
    , _lbsDescription = Nothing
    }

-- | The date and time that the broadcast actually ended. This information is
-- only available once the broadcast\'s state is complete. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsActualEndTime :: Lens' LiveBroadcastSNIppet (Maybe UTCTime)
lbsActualEndTime
  = lens _lbsActualEndTime
      (\ s a -> s{_lbsActualEndTime = a})

-- | The id of the live chat for this broadcast.
lbsLiveChatId :: Lens' LiveBroadcastSNIppet (Maybe Text)
lbsLiveChatId
  = lens _lbsLiveChatId
      (\ s a -> s{_lbsLiveChatId = a})

-- | The date and time that the broadcast was added to YouTube\'s live
-- broadcast schedule. The value is specified in ISO 8601
-- (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsPublishedAt :: Lens' LiveBroadcastSNIppet (Maybe UTCTime)
lbsPublishedAt
  = lens _lbsPublishedAt
      (\ s a -> s{_lbsPublishedAt = a})

-- | The date and time that the broadcast is scheduled to end. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsScheduledEndTime :: Lens' LiveBroadcastSNIppet (Maybe UTCTime)
lbsScheduledEndTime
  = lens _lbsScheduledEndTime
      (\ s a -> s{_lbsScheduledEndTime = a})

-- | The ID that YouTube uses to uniquely identify the channel that is
-- publishing the broadcast.
lbsChannelId :: Lens' LiveBroadcastSNIppet (Maybe Text)
lbsChannelId
  = lens _lbsChannelId (\ s a -> s{_lbsChannelId = a})

-- | The date and time that the broadcast is scheduled to start. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsScheduledStartTime :: Lens' LiveBroadcastSNIppet (Maybe UTCTime)
lbsScheduledStartTime
  = lens _lbsScheduledStartTime
      (\ s a -> s{_lbsScheduledStartTime = a})

-- | A map of thumbnail images associated with the broadcast. For each nested
-- object in this object, the key is the name of the thumbnail image, and
-- the value is an object that contains other information about the
-- thumbnail.
lbsThumbnails :: Lens' LiveBroadcastSNIppet (Maybe (Maybe ThumbnailDetails))
lbsThumbnails
  = lens _lbsThumbnails
      (\ s a -> s{_lbsThumbnails = a})

-- | The broadcast\'s title. Note that the broadcast represents exactly one
-- YouTube video. You can set this field by modifying the broadcast
-- resource or by setting the title field of the corresponding video
-- resource.
lbsTitle :: Lens' LiveBroadcastSNIppet (Maybe Text)
lbsTitle = lens _lbsTitle (\ s a -> s{_lbsTitle = a})

-- | The date and time that the broadcast actually started. This information
-- is only available once the broadcast\'s state is live. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsActualStartTime :: Lens' LiveBroadcastSNIppet (Maybe UTCTime)
lbsActualStartTime
  = lens _lbsActualStartTime
      (\ s a -> s{_lbsActualStartTime = a})

lbsIsDefaultBroadcast :: Lens' LiveBroadcastSNIppet (Maybe Bool)
lbsIsDefaultBroadcast
  = lens _lbsIsDefaultBroadcast
      (\ s a -> s{_lbsIsDefaultBroadcast = a})

-- | The broadcast\'s description. As with the title, you can set this field
-- by modifying the broadcast resource or by setting the description field
-- of the corresponding video resource.
lbsDescription :: Lens' LiveBroadcastSNIppet (Maybe Text)
lbsDescription
  = lens _lbsDescription
      (\ s a -> s{_lbsDescription = a})

instance FromJSON LiveBroadcastSNIppet where
        parseJSON
          = withObject "LiveBroadcastSNIppet"
              (\ o ->
                 LiveBroadcastSNIppet <$>
                   (o .:? "actualEndTime") <*> (o .:? "liveChatId") <*>
                     (o .:? "publishedAt")
                     <*> (o .:? "scheduledEndTime")
                     <*> (o .:? "channelId")
                     <*> (o .:? "scheduledStartTime")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "actualStartTime")
                     <*> (o .:? "isDefaultBroadcast")
                     <*> (o .:? "description"))

instance ToJSON LiveBroadcastSNIppet where
        toJSON LiveBroadcastSNIppet{..}
          = object
              (catMaybes
                 [("actualEndTime" .=) <$> _lbsActualEndTime,
                  ("liveChatId" .=) <$> _lbsLiveChatId,
                  ("publishedAt" .=) <$> _lbsPublishedAt,
                  ("scheduledEndTime" .=) <$> _lbsScheduledEndTime,
                  ("channelId" .=) <$> _lbsChannelId,
                  ("scheduledStartTime" .=) <$> _lbsScheduledStartTime,
                  ("thumbnails" .=) <$> _lbsThumbnails,
                  ("title" .=) <$> _lbsTitle,
                  ("actualStartTime" .=) <$> _lbsActualStartTime,
                  ("isDefaultBroadcast" .=) <$> _lbsIsDefaultBroadcast,
                  ("description" .=) <$> _lbsDescription])

-- | Statistics about the live broadcast. These represent a snapshot of the
-- values at the time of the request. Statistics are only returned for live
-- broadcasts.
--
-- /See:/ 'liveBroadcastStatistics' smart constructor.
data LiveBroadcastStatistics = LiveBroadcastStatistics
    { _lbsTotalChatCount    :: !(Maybe Word64)
    , _lbsConcurrentViewers :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbsTotalChatCount'
--
-- * 'lbsConcurrentViewers'
liveBroadcastStatistics
    :: LiveBroadcastStatistics
liveBroadcastStatistics =
    LiveBroadcastStatistics
    { _lbsTotalChatCount = Nothing
    , _lbsConcurrentViewers = Nothing
    }

-- | The total number of live chat messages currently on the broadcast. The
-- property and its value will be present if the broadcast is public, has
-- the live chat feature enabled, and has at least one message. Note that
-- this field will not be filled after the broadcast ends. So this property
-- would not identify the number of chat messages for an archived video of
-- a completed live broadcast.
lbsTotalChatCount :: Lens' LiveBroadcastStatistics (Maybe Word64)
lbsTotalChatCount
  = lens _lbsTotalChatCount
      (\ s a -> s{_lbsTotalChatCount = a})

-- | The number of viewers currently watching the broadcast. The property and
-- its value will be present if the broadcast has current viewers and the
-- broadcast owner has not hidden the viewcount for the video. Note that
-- YouTube stops tracking the number of concurrent viewers for a broadcast
-- when the broadcast ends. So, this property would not identify the number
-- of viewers watching an archived video of a live broadcast that already
-- ended.
lbsConcurrentViewers :: Lens' LiveBroadcastStatistics (Maybe Word64)
lbsConcurrentViewers
  = lens _lbsConcurrentViewers
      (\ s a -> s{_lbsConcurrentViewers = a})

instance FromJSON LiveBroadcastStatistics where
        parseJSON
          = withObject "LiveBroadcastStatistics"
              (\ o ->
                 LiveBroadcastStatistics <$>
                   (o .:? "totalChatCount") <*>
                     (o .:? "concurrentViewers"))

instance ToJSON LiveBroadcastStatistics where
        toJSON LiveBroadcastStatistics{..}
          = object
              (catMaybes
                 [("totalChatCount" .=) <$> _lbsTotalChatCount,
                  ("concurrentViewers" .=) <$> _lbsConcurrentViewers])

-- | Basic details about a guide category.
--
-- /See:/ 'guideCategorySNIppet' smart constructor.
data GuideCategorySNIppet = GuideCategorySNIppet
    { _gcsChannelId :: !Text
    , _gcsTitle     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategorySNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsChannelId'
--
-- * 'gcsTitle'
guideCategorySNIppet
    :: GuideCategorySNIppet
guideCategorySNIppet =
    GuideCategorySNIppet
    { _gcsChannelId = "UCBR8-60-B28hp2BmDPdntcQ"
    , _gcsTitle = Nothing
    }

gcsChannelId :: Lens' GuideCategorySNIppet Text
gcsChannelId
  = lens _gcsChannelId (\ s a -> s{_gcsChannelId = a})

-- | Description of the guide category.
gcsTitle :: Lens' GuideCategorySNIppet (Maybe Text)
gcsTitle = lens _gcsTitle (\ s a -> s{_gcsTitle = a})

instance FromJSON GuideCategorySNIppet where
        parseJSON
          = withObject "GuideCategorySNIppet"
              (\ o ->
                 GuideCategorySNIppet <$>
                   (o .:? "channelId" .!= "UCBR8-60-B28hp2BmDPdntcQ")
                     <*> (o .:? "title"))

instance ToJSON GuideCategorySNIppet where
        toJSON GuideCategorySNIppet{..}
          = object
              (catMaybes
                 [Just ("channelId" .= _gcsChannelId),
                  ("title" .=) <$> _gcsTitle])

--
-- /See:/ 'i18nRegionListResponse' smart constructor.
data I18nRegionListResponse = I18nRegionListResponse
    { _irlrEtag      :: !(Maybe Text)
    , _irlrKind      :: !Text
    , _irlrItems     :: !(Maybe [Maybe I18nRegion])
    , _irlrVisitorId :: !(Maybe Text)
    , _irlrEventId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irlrEtag'
--
-- * 'irlrKind'
--
-- * 'irlrItems'
--
-- * 'irlrVisitorId'
--
-- * 'irlrEventId'
i18nRegionListResponse
    :: I18nRegionListResponse
i18nRegionListResponse =
    I18nRegionListResponse
    { _irlrEtag = Nothing
    , _irlrKind = "youtube#i18nRegionListResponse"
    , _irlrItems = Nothing
    , _irlrVisitorId = Nothing
    , _irlrEventId = Nothing
    }

-- | Etag of this resource.
irlrEtag :: Lens' I18nRegionListResponse (Maybe Text)
irlrEtag = lens _irlrEtag (\ s a -> s{_irlrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nRegionListResponse\".
irlrKind :: Lens' I18nRegionListResponse Text
irlrKind = lens _irlrKind (\ s a -> s{_irlrKind = a})

-- | A list of regions where YouTube is available. In this map, the i18n
-- region ID is the map key, and its value is the corresponding i18nRegion
-- resource.
irlrItems :: Lens' I18nRegionListResponse [Maybe I18nRegion]
irlrItems
  = lens _irlrItems (\ s a -> s{_irlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
irlrVisitorId :: Lens' I18nRegionListResponse (Maybe Text)
irlrVisitorId
  = lens _irlrVisitorId
      (\ s a -> s{_irlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
irlrEventId :: Lens' I18nRegionListResponse (Maybe Text)
irlrEventId
  = lens _irlrEventId (\ s a -> s{_irlrEventId = a})

instance FromJSON I18nRegionListResponse where
        parseJSON
          = withObject "I18nRegionListResponse"
              (\ o ->
                 I18nRegionListResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#i18nRegionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON I18nRegionListResponse where
        toJSON I18nRegionListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _irlrEtag,
                  Just ("kind" .= _irlrKind),
                  ("items" .=) <$> _irlrItems,
                  ("visitorId" .=) <$> _irlrVisitorId,
                  ("eventId" .=) <$> _irlrEventId])

-- | Information about the playlist item\'s privacy status.
--
-- /See:/ 'playlistItemStatus' smart constructor.
newtype PlaylistItemStatus = PlaylistItemStatus
    { _pisPrivacyStatus :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pisPrivacyStatus'
playlistItemStatus
    :: PlaylistItemStatus
playlistItemStatus =
    PlaylistItemStatus
    { _pisPrivacyStatus = Nothing
    }

-- | This resource\'s privacy status.
pisPrivacyStatus :: Lens' PlaylistItemStatus (Maybe Text)
pisPrivacyStatus
  = lens _pisPrivacyStatus
      (\ s a -> s{_pisPrivacyStatus = a})

instance FromJSON PlaylistItemStatus where
        parseJSON
          = withObject "PlaylistItemStatus"
              (\ o ->
                 PlaylistItemStatus <$> (o .:? "privacyStatus"))

instance ToJSON PlaylistItemStatus where
        toJSON PlaylistItemStatus{..}
          = object
              (catMaybes
                 [("privacyStatus" .=) <$> _pisPrivacyStatus])

-- | Describes the spatial position of a visual widget inside a video. It is
-- a union of various position types, out of which only will be set one.
--
-- /See:/ 'invideoPosition' smart constructor.
data InvideoPosition = InvideoPosition
    { _ipCornerPosition :: !(Maybe Text)
    , _ipType           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipCornerPosition'
--
-- * 'ipType'
invideoPosition
    :: InvideoPosition
invideoPosition =
    InvideoPosition
    { _ipCornerPosition = Nothing
    , _ipType = Nothing
    }

-- | Describes in which corner of the video the visual widget will appear.
ipCornerPosition :: Lens' InvideoPosition (Maybe Text)
ipCornerPosition
  = lens _ipCornerPosition
      (\ s a -> s{_ipCornerPosition = a})

-- | Defines the position type.
ipType :: Lens' InvideoPosition (Maybe Text)
ipType = lens _ipType (\ s a -> s{_ipType = a})

instance FromJSON InvideoPosition where
        parseJSON
          = withObject "InvideoPosition"
              (\ o ->
                 InvideoPosition <$>
                   (o .:? "cornerPosition") <*> (o .:? "type"))

instance ToJSON InvideoPosition where
        toJSON InvideoPosition{..}
          = object
              (catMaybes
                 [("cornerPosition" .=) <$> _ipCornerPosition,
                  ("type" .=) <$> _ipType])

-- | Information about an audio stream.
--
-- /See:/ 'videoFileDetailsAudioStream' smart constructor.
data VideoFileDetailsAudioStream = VideoFileDetailsAudioStream
    { _vfdasBitrateBps   :: !(Maybe Word64)
    , _vfdasVendor       :: !(Maybe Text)
    , _vfdasCodec        :: !(Maybe Text)
    , _vfdasChannelCount :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFileDetailsAudioStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfdasBitrateBps'
--
-- * 'vfdasVendor'
--
-- * 'vfdasCodec'
--
-- * 'vfdasChannelCount'
videoFileDetailsAudioStream
    :: VideoFileDetailsAudioStream
videoFileDetailsAudioStream =
    VideoFileDetailsAudioStream
    { _vfdasBitrateBps = Nothing
    , _vfdasVendor = Nothing
    , _vfdasCodec = Nothing
    , _vfdasChannelCount = Nothing
    }

-- | The audio stream\'s bitrate, in bits per second.
vfdasBitrateBps :: Lens' VideoFileDetailsAudioStream (Maybe Word64)
vfdasBitrateBps
  = lens _vfdasBitrateBps
      (\ s a -> s{_vfdasBitrateBps = a})

-- | A value that uniquely identifies a video vendor. Typically, the value is
-- a four-letter vendor code.
vfdasVendor :: Lens' VideoFileDetailsAudioStream (Maybe Text)
vfdasVendor
  = lens _vfdasVendor (\ s a -> s{_vfdasVendor = a})

-- | The audio codec that the stream uses.
vfdasCodec :: Lens' VideoFileDetailsAudioStream (Maybe Text)
vfdasCodec
  = lens _vfdasCodec (\ s a -> s{_vfdasCodec = a})

-- | The number of audio channels that the stream contains.
vfdasChannelCount :: Lens' VideoFileDetailsAudioStream (Maybe Word32)
vfdasChannelCount
  = lens _vfdasChannelCount
      (\ s a -> s{_vfdasChannelCount = a})

instance FromJSON VideoFileDetailsAudioStream where
        parseJSON
          = withObject "VideoFileDetailsAudioStream"
              (\ o ->
                 VideoFileDetailsAudioStream <$>
                   (o .:? "bitrateBps") <*> (o .:? "vendor") <*>
                     (o .:? "codec")
                     <*> (o .:? "channelCount"))

instance ToJSON VideoFileDetailsAudioStream where
        toJSON VideoFileDetailsAudioStream{..}
          = object
              (catMaybes
                 [("bitrateBps" .=) <$> _vfdasBitrateBps,
                  ("vendor" .=) <$> _vfdasVendor,
                  ("codec" .=) <$> _vfdasCodec,
                  ("channelCount" .=) <$> _vfdasChannelCount])

-- | Details about a channel bulletin post.
--
-- /See:/ 'activityContentDetailsBulletin' smart constructor.
newtype ActivityContentDetailsBulletin = ActivityContentDetailsBulletin
    { _acdbResourceId :: Maybe (Maybe ResourceId)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsBulletin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdbResourceId'
activityContentDetailsBulletin
    :: ActivityContentDetailsBulletin
activityContentDetailsBulletin =
    ActivityContentDetailsBulletin
    { _acdbResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- associated with a bulletin post.
acdbResourceId :: Lens' ActivityContentDetailsBulletin (Maybe (Maybe ResourceId))
acdbResourceId
  = lens _acdbResourceId
      (\ s a -> s{_acdbResourceId = a})

instance FromJSON ActivityContentDetailsBulletin
         where
        parseJSON
          = withObject "ActivityContentDetailsBulletin"
              (\ o ->
                 ActivityContentDetailsBulletin <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsBulletin where
        toJSON ActivityContentDetailsBulletin{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdbResourceId])

--
-- /See:/ 'videoAbuseReport' smart constructor.
data VideoAbuseReport = VideoAbuseReport
    { _varSecondaryReasonId :: !(Maybe Text)
    , _varReasonId          :: !(Maybe Text)
    , _varVideoId           :: !(Maybe Text)
    , _varLanguage          :: !(Maybe Text)
    , _varComments          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varSecondaryReasonId'
--
-- * 'varReasonId'
--
-- * 'varVideoId'
--
-- * 'varLanguage'
--
-- * 'varComments'
videoAbuseReport
    :: VideoAbuseReport
videoAbuseReport =
    VideoAbuseReport
    { _varSecondaryReasonId = Nothing
    , _varReasonId = Nothing
    , _varVideoId = Nothing
    , _varLanguage = Nothing
    , _varComments = Nothing
    }

-- | The specific, or secondary, reason that this content is abusive (if
-- available). The value is an abuse report reason ID that is a valid
-- secondary reason for the primary reason.
varSecondaryReasonId :: Lens' VideoAbuseReport (Maybe Text)
varSecondaryReasonId
  = lens _varSecondaryReasonId
      (\ s a -> s{_varSecondaryReasonId = a})

-- | The high-level, or primary, reason that the content is abusive. The
-- value is an abuse report reason ID.
varReasonId :: Lens' VideoAbuseReport (Maybe Text)
varReasonId
  = lens _varReasonId (\ s a -> s{_varReasonId = a})

-- | The ID that YouTube uses to uniquely identify the video.
varVideoId :: Lens' VideoAbuseReport (Maybe Text)
varVideoId
  = lens _varVideoId (\ s a -> s{_varVideoId = a})

-- | The language that the content was viewed in.
varLanguage :: Lens' VideoAbuseReport (Maybe Text)
varLanguage
  = lens _varLanguage (\ s a -> s{_varLanguage = a})

-- | Additional comments regarding the abuse report.
varComments :: Lens' VideoAbuseReport (Maybe Text)
varComments
  = lens _varComments (\ s a -> s{_varComments = a})

instance FromJSON VideoAbuseReport where
        parseJSON
          = withObject "VideoAbuseReport"
              (\ o ->
                 VideoAbuseReport <$>
                   (o .:? "secondaryReasonId") <*> (o .:? "reasonId")
                     <*> (o .:? "videoId")
                     <*> (o .:? "language")
                     <*> (o .:? "comments"))

instance ToJSON VideoAbuseReport where
        toJSON VideoAbuseReport{..}
          = object
              (catMaybes
                 [("secondaryReasonId" .=) <$> _varSecondaryReasonId,
                  ("reasonId" .=) <$> _varReasonId,
                  ("videoId" .=) <$> _varVideoId,
                  ("language" .=) <$> _varLanguage,
                  ("comments" .=) <$> _varComments])

--
-- /See:/ 'captionListResponse' smart constructor.
data CaptionListResponse = CaptionListResponse
    { _clrlEtag      :: !(Maybe Text)
    , _clrlKind      :: !Text
    , _clrlItems     :: !(Maybe [Maybe Caption])
    , _clrlVisitorId :: !(Maybe Text)
    , _clrlEventId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrlEtag'
--
-- * 'clrlKind'
--
-- * 'clrlItems'
--
-- * 'clrlVisitorId'
--
-- * 'clrlEventId'
captionListResponse
    :: CaptionListResponse
captionListResponse =
    CaptionListResponse
    { _clrlEtag = Nothing
    , _clrlKind = "youtube#captionListResponse"
    , _clrlItems = Nothing
    , _clrlVisitorId = Nothing
    , _clrlEventId = Nothing
    }

-- | Etag of this resource.
clrlEtag :: Lens' CaptionListResponse (Maybe Text)
clrlEtag = lens _clrlEtag (\ s a -> s{_clrlEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#captionListResponse\".
clrlKind :: Lens' CaptionListResponse Text
clrlKind = lens _clrlKind (\ s a -> s{_clrlKind = a})

-- | A list of captions that match the request criteria.
clrlItems :: Lens' CaptionListResponse [Maybe Caption]
clrlItems
  = lens _clrlItems (\ s a -> s{_clrlItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
clrlVisitorId :: Lens' CaptionListResponse (Maybe Text)
clrlVisitorId
  = lens _clrlVisitorId
      (\ s a -> s{_clrlVisitorId = a})

-- | Serialized EventId of the request which produced this response.
clrlEventId :: Lens' CaptionListResponse (Maybe Text)
clrlEventId
  = lens _clrlEventId (\ s a -> s{_clrlEventId = a})

instance FromJSON CaptionListResponse where
        parseJSON
          = withObject "CaptionListResponse"
              (\ o ->
                 CaptionListResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#captionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON CaptionListResponse where
        toJSON CaptionListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _clrlEtag,
                  Just ("kind" .= _clrlKind),
                  ("items" .=) <$> _clrlItems,
                  ("visitorId" .=) <$> _clrlVisitorId,
                  ("eventId" .=) <$> _clrlEventId])

-- | Describes a single promoted item id. It is a union of various possible
-- types.
--
-- /See:/ 'promotedItemId' smart constructor.
data PromotedItemId = PromotedItemId
    { _piiRecentlyUploadedBy :: !(Maybe Text)
    , _piiVideoId            :: !(Maybe Text)
    , _piiWebsiteUrl         :: !(Maybe Text)
    , _piiType               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromotedItemId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiRecentlyUploadedBy'
--
-- * 'piiVideoId'
--
-- * 'piiWebsiteUrl'
--
-- * 'piiType'
promotedItemId
    :: PromotedItemId
promotedItemId =
    PromotedItemId
    { _piiRecentlyUploadedBy = Nothing
    , _piiVideoId = Nothing
    , _piiWebsiteUrl = Nothing
    , _piiType = Nothing
    }

-- | If type is recentUpload, this field identifies the channel from which to
-- take the recent upload. If missing, the channel is assumed to be the
-- same channel for which the invideoPromotion is set.
piiRecentlyUploadedBy :: Lens' PromotedItemId (Maybe Text)
piiRecentlyUploadedBy
  = lens _piiRecentlyUploadedBy
      (\ s a -> s{_piiRecentlyUploadedBy = a})

-- | If the promoted item represents a video, this field represents the
-- unique YouTube ID identifying it. This field will be present only if
-- type has the value video.
piiVideoId :: Lens' PromotedItemId (Maybe Text)
piiVideoId
  = lens _piiVideoId (\ s a -> s{_piiVideoId = a})

-- | If the promoted item represents a website, this field represents the url
-- pointing to the website. This field will be present only if type has the
-- value website.
piiWebsiteUrl :: Lens' PromotedItemId (Maybe Text)
piiWebsiteUrl
  = lens _piiWebsiteUrl
      (\ s a -> s{_piiWebsiteUrl = a})

-- | Describes the type of the promoted item.
piiType :: Lens' PromotedItemId (Maybe Text)
piiType = lens _piiType (\ s a -> s{_piiType = a})

instance FromJSON PromotedItemId where
        parseJSON
          = withObject "PromotedItemId"
              (\ o ->
                 PromotedItemId <$>
                   (o .:? "recentlyUploadedBy") <*> (o .:? "videoId")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "type"))

instance ToJSON PromotedItemId where
        toJSON PromotedItemId{..}
          = object
              (catMaybes
                 [("recentlyUploadedBy" .=) <$>
                    _piiRecentlyUploadedBy,
                  ("videoId" .=) <$> _piiVideoId,
                  ("websiteUrl" .=) <$> _piiWebsiteUrl,
                  ("type" .=) <$> _piiType])

-- | Basic details about a search result, including title, description and
-- thumbnails of the item referenced by the search result.
--
-- /See:/ 'searchResultSNIppet' smart constructor.
data SearchResultSNIppet = SearchResultSNIppet
    { _srsPublishedAt          :: !(Maybe UTCTime)
    , _srsChannelTitle         :: !(Maybe Text)
    , _srsChannelId            :: !(Maybe Text)
    , _srsThumbnails           :: !(Maybe (Maybe ThumbnailDetails))
    , _srsTitle                :: !(Maybe Text)
    , _srsLiveBroadcastContent :: !(Maybe Text)
    , _srsDescription          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchResultSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsPublishedAt'
--
-- * 'srsChannelTitle'
--
-- * 'srsChannelId'
--
-- * 'srsThumbnails'
--
-- * 'srsTitle'
--
-- * 'srsLiveBroadcastContent'
--
-- * 'srsDescription'
searchResultSNIppet
    :: SearchResultSNIppet
searchResultSNIppet =
    SearchResultSNIppet
    { _srsPublishedAt = Nothing
    , _srsChannelTitle = Nothing
    , _srsChannelId = Nothing
    , _srsThumbnails = Nothing
    , _srsTitle = Nothing
    , _srsLiveBroadcastContent = Nothing
    , _srsDescription = Nothing
    }

-- | The creation date and time of the resource that the search result
-- identifies. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ)
-- format.
srsPublishedAt :: Lens' SearchResultSNIppet (Maybe UTCTime)
srsPublishedAt
  = lens _srsPublishedAt
      (\ s a -> s{_srsPublishedAt = a})

-- | The title of the channel that published the resource that the search
-- result identifies.
srsChannelTitle :: Lens' SearchResultSNIppet (Maybe Text)
srsChannelTitle
  = lens _srsChannelTitle
      (\ s a -> s{_srsChannelTitle = a})

-- | The value that YouTube uses to uniquely identify the channel that
-- published the resource that the search result identifies.
srsChannelId :: Lens' SearchResultSNIppet (Maybe Text)
srsChannelId
  = lens _srsChannelId (\ s a -> s{_srsChannelId = a})

-- | A map of thumbnail images associated with the search result. For each
-- object in the map, the key is the name of the thumbnail image, and the
-- value is an object that contains other information about the thumbnail.
srsThumbnails :: Lens' SearchResultSNIppet (Maybe (Maybe ThumbnailDetails))
srsThumbnails
  = lens _srsThumbnails
      (\ s a -> s{_srsThumbnails = a})

-- | The title of the search result.
srsTitle :: Lens' SearchResultSNIppet (Maybe Text)
srsTitle = lens _srsTitle (\ s a -> s{_srsTitle = a})

-- | It indicates if the resource (video or channel) has upcoming\/active
-- live broadcast content. Or it\'s \"none\" if there is not any
-- upcoming\/active live broadcasts.
srsLiveBroadcastContent :: Lens' SearchResultSNIppet (Maybe Text)
srsLiveBroadcastContent
  = lens _srsLiveBroadcastContent
      (\ s a -> s{_srsLiveBroadcastContent = a})

-- | A description of the search result.
srsDescription :: Lens' SearchResultSNIppet (Maybe Text)
srsDescription
  = lens _srsDescription
      (\ s a -> s{_srsDescription = a})

instance FromJSON SearchResultSNIppet where
        parseJSON
          = withObject "SearchResultSNIppet"
              (\ o ->
                 SearchResultSNIppet <$>
                   (o .:? "publishedAt") <*> (o .:? "channelTitle") <*>
                     (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "liveBroadcastContent")
                     <*> (o .:? "description"))

instance ToJSON SearchResultSNIppet where
        toJSON SearchResultSNIppet{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _srsPublishedAt,
                  ("channelTitle" .=) <$> _srsChannelTitle,
                  ("channelId" .=) <$> _srsChannelId,
                  ("thumbnails" .=) <$> _srsThumbnails,
                  ("title" .=) <$> _srsTitle,
                  ("liveBroadcastContent" .=) <$>
                    _srsLiveBroadcastContent,
                  ("description" .=) <$> _srsDescription])

--
-- /See:/ 'videoConversionPings' smart constructor.
newtype VideoConversionPings = VideoConversionPings
    { _vcpPings :: Maybe [Maybe VideoConversionPing]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoConversionPings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcpPings'
videoConversionPings
    :: VideoConversionPings
videoConversionPings =
    VideoConversionPings
    { _vcpPings = Nothing
    }

-- | Pings that the app shall fire for a video (authenticated by biscotti
-- cookie). Each ping has a context, in which the app must fire the ping,
-- and a url identifying the ping.
vcpPings :: Lens' VideoConversionPings [Maybe VideoConversionPing]
vcpPings
  = lens _vcpPings (\ s a -> s{_vcpPings = a}) .
      _Default
      . _Coerce

instance FromJSON VideoConversionPings where
        parseJSON
          = withObject "VideoConversionPings"
              (\ o ->
                 VideoConversionPings <$> (o .:? "pings" .!= mempty))

instance ToJSON VideoConversionPings where
        toJSON VideoConversionPings{..}
          = object (catMaybes [("pings" .=) <$> _vcpPings])

-- | Localized versions of certain video properties (e.g. title).
--
-- /See:/ 'videoLocalization' smart constructor.
data VideoLocalization = VideoLocalization
    { _vlTitle       :: !(Maybe Text)
    , _vlDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlTitle'
--
-- * 'vlDescription'
videoLocalization
    :: VideoLocalization
videoLocalization =
    VideoLocalization
    { _vlTitle = Nothing
    , _vlDescription = Nothing
    }

-- | Localized version of the video\'s title.
vlTitle :: Lens' VideoLocalization (Maybe Text)
vlTitle = lens _vlTitle (\ s a -> s{_vlTitle = a})

-- | Localized version of the video\'s description.
vlDescription :: Lens' VideoLocalization (Maybe Text)
vlDescription
  = lens _vlDescription
      (\ s a -> s{_vlDescription = a})

instance FromJSON VideoLocalization where
        parseJSON
          = withObject "VideoLocalization"
              (\ o ->
                 VideoLocalization <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON VideoLocalization where
        toJSON VideoLocalization{..}
          = object
              (catMaybes
                 [("title" .=) <$> _vlTitle,
                  ("description" .=) <$> _vlDescription])

--
-- /See:/ 'playlistItemListResponse' smart constructor.
data PlaylistItemListResponse = PlaylistItemListResponse
    { _pilrEtag            :: !(Maybe Text)
    , _pilrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _pilrNextPageToken   :: !(Maybe Text)
    , _pilrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _pilrKind            :: !Text
    , _pilrItems           :: !(Maybe [Maybe PlaylistItem])
    , _pilrVisitorId       :: !(Maybe Text)
    , _pilrEventId         :: !(Maybe Text)
    , _pilrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilrEtag'
--
-- * 'pilrTokenPagination'
--
-- * 'pilrNextPageToken'
--
-- * 'pilrPageInfo'
--
-- * 'pilrKind'
--
-- * 'pilrItems'
--
-- * 'pilrVisitorId'
--
-- * 'pilrEventId'
--
-- * 'pilrPrevPageToken'
playlistItemListResponse
    :: PlaylistItemListResponse
playlistItemListResponse =
    PlaylistItemListResponse
    { _pilrEtag = Nothing
    , _pilrTokenPagination = Nothing
    , _pilrNextPageToken = Nothing
    , _pilrPageInfo = Nothing
    , _pilrKind = "youtube#playlistItemListResponse"
    , _pilrItems = Nothing
    , _pilrVisitorId = Nothing
    , _pilrEventId = Nothing
    , _pilrPrevPageToken = Nothing
    }

-- | Etag of this resource.
pilrEtag :: Lens' PlaylistItemListResponse (Maybe Text)
pilrEtag = lens _pilrEtag (\ s a -> s{_pilrEtag = a})

pilrTokenPagination :: Lens' PlaylistItemListResponse (Maybe (Maybe TokenPagination))
pilrTokenPagination
  = lens _pilrTokenPagination
      (\ s a -> s{_pilrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
pilrNextPageToken :: Lens' PlaylistItemListResponse (Maybe Text)
pilrNextPageToken
  = lens _pilrNextPageToken
      (\ s a -> s{_pilrNextPageToken = a})

pilrPageInfo :: Lens' PlaylistItemListResponse (Maybe (Maybe PageInfo))
pilrPageInfo
  = lens _pilrPageInfo (\ s a -> s{_pilrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlistItemListResponse\".
pilrKind :: Lens' PlaylistItemListResponse Text
pilrKind = lens _pilrKind (\ s a -> s{_pilrKind = a})

-- | A list of playlist items that match the request criteria.
pilrItems :: Lens' PlaylistItemListResponse [Maybe PlaylistItem]
pilrItems
  = lens _pilrItems (\ s a -> s{_pilrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
pilrVisitorId :: Lens' PlaylistItemListResponse (Maybe Text)
pilrVisitorId
  = lens _pilrVisitorId
      (\ s a -> s{_pilrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
pilrEventId :: Lens' PlaylistItemListResponse (Maybe Text)
pilrEventId
  = lens _pilrEventId (\ s a -> s{_pilrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
pilrPrevPageToken :: Lens' PlaylistItemListResponse (Maybe Text)
pilrPrevPageToken
  = lens _pilrPrevPageToken
      (\ s a -> s{_pilrPrevPageToken = a})

instance FromJSON PlaylistItemListResponse where
        parseJSON
          = withObject "PlaylistItemListResponse"
              (\ o ->
                 PlaylistItemListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!= "youtube#playlistItemListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON PlaylistItemListResponse where
        toJSON PlaylistItemListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pilrEtag,
                  ("tokenPagination" .=) <$> _pilrTokenPagination,
                  ("nextPageToken" .=) <$> _pilrNextPageToken,
                  ("pageInfo" .=) <$> _pilrPageInfo,
                  Just ("kind" .= _pilrKind),
                  ("items" .=) <$> _pilrItems,
                  ("visitorId" .=) <$> _pilrVisitorId,
                  ("eventId" .=) <$> _pilrEventId,
                  ("prevPageToken" .=) <$> _pilrPrevPageToken])

--
-- /See:/ 'liveStreamHealthStatus' smart constructor.
data LiveStreamHealthStatus = LiveStreamHealthStatus
    { _lshsStatus                :: !(Maybe Text)
    , _lshsConfigurationIssues   :: !(Maybe [Maybe LiveStreamConfigurationIssue])
    , _lshsLastUpdateTimeSeconds :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamHealthStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lshsStatus'
--
-- * 'lshsConfigurationIssues'
--
-- * 'lshsLastUpdateTimeSeconds'
liveStreamHealthStatus
    :: LiveStreamHealthStatus
liveStreamHealthStatus =
    LiveStreamHealthStatus
    { _lshsStatus = Nothing
    , _lshsConfigurationIssues = Nothing
    , _lshsLastUpdateTimeSeconds = Nothing
    }

-- | The status code of this stream
lshsStatus :: Lens' LiveStreamHealthStatus (Maybe Text)
lshsStatus
  = lens _lshsStatus (\ s a -> s{_lshsStatus = a})

-- | The configurations issues on this stream
lshsConfigurationIssues :: Lens' LiveStreamHealthStatus [Maybe LiveStreamConfigurationIssue]
lshsConfigurationIssues
  = lens _lshsConfigurationIssues
      (\ s a -> s{_lshsConfigurationIssues = a})
      . _Default
      . _Coerce

-- | The last time this status was updated (in seconds)
lshsLastUpdateTimeSeconds :: Lens' LiveStreamHealthStatus (Maybe Word64)
lshsLastUpdateTimeSeconds
  = lens _lshsLastUpdateTimeSeconds
      (\ s a -> s{_lshsLastUpdateTimeSeconds = a})

instance FromJSON LiveStreamHealthStatus where
        parseJSON
          = withObject "LiveStreamHealthStatus"
              (\ o ->
                 LiveStreamHealthStatus <$>
                   (o .:? "status") <*>
                     (o .:? "configurationIssues" .!= mempty)
                     <*> (o .:? "lastUpdateTimeSeconds"))

instance ToJSON LiveStreamHealthStatus where
        toJSON LiveStreamHealthStatus{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lshsStatus,
                  ("configurationIssues" .=) <$>
                    _lshsConfigurationIssues,
                  ("lastUpdateTimeSeconds" .=) <$>
                    _lshsLastUpdateTimeSeconds])

--
-- /See:/ 'commentListResponse' smart constructor.
data CommentListResponse = CommentListResponse
    { _comEtag            :: !(Maybe Text)
    , _comTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _comNextPageToken   :: !(Maybe Text)
    , _comPageInfo        :: !(Maybe (Maybe PageInfo))
    , _comKind            :: !Text
    , _comItems           :: !(Maybe [Maybe Comment])
    , _comVisitorId       :: !(Maybe Text)
    , _comEventId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comEtag'
--
-- * 'comTokenPagination'
--
-- * 'comNextPageToken'
--
-- * 'comPageInfo'
--
-- * 'comKind'
--
-- * 'comItems'
--
-- * 'comVisitorId'
--
-- * 'comEventId'
commentListResponse
    :: CommentListResponse
commentListResponse =
    CommentListResponse
    { _comEtag = Nothing
    , _comTokenPagination = Nothing
    , _comNextPageToken = Nothing
    , _comPageInfo = Nothing
    , _comKind = "youtube#commentListResponse"
    , _comItems = Nothing
    , _comVisitorId = Nothing
    , _comEventId = Nothing
    }

-- | Etag of this resource.
comEtag :: Lens' CommentListResponse (Maybe Text)
comEtag = lens _comEtag (\ s a -> s{_comEtag = a})

comTokenPagination :: Lens' CommentListResponse (Maybe (Maybe TokenPagination))
comTokenPagination
  = lens _comTokenPagination
      (\ s a -> s{_comTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
comNextPageToken :: Lens' CommentListResponse (Maybe Text)
comNextPageToken
  = lens _comNextPageToken
      (\ s a -> s{_comNextPageToken = a})

comPageInfo :: Lens' CommentListResponse (Maybe (Maybe PageInfo))
comPageInfo
  = lens _comPageInfo (\ s a -> s{_comPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#commentListResponse\".
comKind :: Lens' CommentListResponse Text
comKind = lens _comKind (\ s a -> s{_comKind = a})

-- | A list of comments that match the request criteria.
comItems :: Lens' CommentListResponse [Maybe Comment]
comItems
  = lens _comItems (\ s a -> s{_comItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
comVisitorId :: Lens' CommentListResponse (Maybe Text)
comVisitorId
  = lens _comVisitorId (\ s a -> s{_comVisitorId = a})

-- | Serialized EventId of the request which produced this response.
comEventId :: Lens' CommentListResponse (Maybe Text)
comEventId
  = lens _comEventId (\ s a -> s{_comEventId = a})

instance FromJSON CommentListResponse where
        parseJSON
          = withObject "CommentListResponse"
              (\ o ->
                 CommentListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#commentListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON CommentListResponse where
        toJSON CommentListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _comEtag,
                  ("tokenPagination" .=) <$> _comTokenPagination,
                  ("nextPageToken" .=) <$> _comNextPageToken,
                  ("pageInfo" .=) <$> _comPageInfo,
                  Just ("kind" .= _comKind),
                  ("items" .=) <$> _comItems,
                  ("visitorId" .=) <$> _comVisitorId,
                  ("eventId" .=) <$> _comEventId])

-- | Player to be used for a video playback.
--
-- /See:/ 'videoPlayer' smart constructor.
newtype VideoPlayer = VideoPlayer
    { _vpEmbedHtml :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpEmbedHtml'
videoPlayer
    :: VideoPlayer
videoPlayer =
    VideoPlayer
    { _vpEmbedHtml = Nothing
    }

-- | An
-- tag that embeds a player that will play the video.
vpEmbedHtml :: Lens' VideoPlayer (Maybe Text)
vpEmbedHtml
  = lens _vpEmbedHtml (\ s a -> s{_vpEmbedHtml = a})

instance FromJSON VideoPlayer where
        parseJSON
          = withObject "VideoPlayer"
              (\ o -> VideoPlayer <$> (o .:? "embedHtml"))

instance ToJSON VideoPlayer where
        toJSON VideoPlayer{..}
          = object
              (catMaybes [("embedHtml" .=) <$> _vpEmbedHtml])

--
-- /See:/ 'localizedString' smart constructor.
data LocalizedString = LocalizedString
    { _lsValue    :: !(Maybe Text)
    , _lsLanguage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsValue'
--
-- * 'lsLanguage'
localizedString
    :: LocalizedString
localizedString =
    LocalizedString
    { _lsValue = Nothing
    , _lsLanguage = Nothing
    }

lsValue :: Lens' LocalizedString (Maybe Text)
lsValue = lens _lsValue (\ s a -> s{_lsValue = a})

lsLanguage :: Lens' LocalizedString (Maybe Text)
lsLanguage
  = lens _lsLanguage (\ s a -> s{_lsLanguage = a})

instance FromJSON LocalizedString where
        parseJSON
          = withObject "LocalizedString"
              (\ o ->
                 LocalizedString <$>
                   (o .:? "value") <*> (o .:? "language"))

instance ToJSON LocalizedString where
        toJSON LocalizedString{..}
          = object
              (catMaybes
                 [("value" .=) <$> _lsValue,
                  ("language" .=) <$> _lsLanguage])

--
-- /See:/ 'subscriptionListResponse' smart constructor.
data SubscriptionListResponse = SubscriptionListResponse
    { _sEtag            :: !(Maybe Text)
    , _sTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _sNextPageToken   :: !(Maybe Text)
    , _sPageInfo        :: !(Maybe (Maybe PageInfo))
    , _sKind            :: !Text
    , _sItems           :: !(Maybe [Maybe Subscription])
    , _sVisitorId       :: !(Maybe Text)
    , _sEventId         :: !(Maybe Text)
    , _sPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEtag'
--
-- * 'sTokenPagination'
--
-- * 'sNextPageToken'
--
-- * 'sPageInfo'
--
-- * 'sKind'
--
-- * 'sItems'
--
-- * 'sVisitorId'
--
-- * 'sEventId'
--
-- * 'sPrevPageToken'
subscriptionListResponse
    :: SubscriptionListResponse
subscriptionListResponse =
    SubscriptionListResponse
    { _sEtag = Nothing
    , _sTokenPagination = Nothing
    , _sNextPageToken = Nothing
    , _sPageInfo = Nothing
    , _sKind = "youtube#subscriptionListResponse"
    , _sItems = Nothing
    , _sVisitorId = Nothing
    , _sEventId = Nothing
    , _sPrevPageToken = Nothing
    }

-- | Etag of this resource.
sEtag :: Lens' SubscriptionListResponse (Maybe Text)
sEtag = lens _sEtag (\ s a -> s{_sEtag = a})

sTokenPagination :: Lens' SubscriptionListResponse (Maybe (Maybe TokenPagination))
sTokenPagination
  = lens _sTokenPagination
      (\ s a -> s{_sTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
sNextPageToken :: Lens' SubscriptionListResponse (Maybe Text)
sNextPageToken
  = lens _sNextPageToken
      (\ s a -> s{_sNextPageToken = a})

sPageInfo :: Lens' SubscriptionListResponse (Maybe (Maybe PageInfo))
sPageInfo
  = lens _sPageInfo (\ s a -> s{_sPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#subscriptionListResponse\".
sKind :: Lens' SubscriptionListResponse Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | A list of subscriptions that match the request criteria.
sItems :: Lens' SubscriptionListResponse [Maybe Subscription]
sItems
  = lens _sItems (\ s a -> s{_sItems = a}) . _Default .
      _Coerce

-- | The visitorId identifies the visitor.
sVisitorId :: Lens' SubscriptionListResponse (Maybe Text)
sVisitorId
  = lens _sVisitorId (\ s a -> s{_sVisitorId = a})

-- | Serialized EventId of the request which produced this response.
sEventId :: Lens' SubscriptionListResponse (Maybe Text)
sEventId = lens _sEventId (\ s a -> s{_sEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
sPrevPageToken :: Lens' SubscriptionListResponse (Maybe Text)
sPrevPageToken
  = lens _sPrevPageToken
      (\ s a -> s{_sPrevPageToken = a})

instance FromJSON SubscriptionListResponse where
        parseJSON
          = withObject "SubscriptionListResponse"
              (\ o ->
                 SubscriptionListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!= "youtube#subscriptionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON SubscriptionListResponse where
        toJSON SubscriptionListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sEtag,
                  ("tokenPagination" .=) <$> _sTokenPagination,
                  ("nextPageToken" .=) <$> _sNextPageToken,
                  ("pageInfo" .=) <$> _sPageInfo,
                  Just ("kind" .= _sKind), ("items" .=) <$> _sItems,
                  ("visitorId" .=) <$> _sVisitorId,
                  ("eventId" .=) <$> _sEventId,
                  ("prevPageToken" .=) <$> _sPrevPageToken])

-- | A guideCategory resource identifies a category that YouTube
-- algorithmically assigns based on a channel\'s content or other
-- indicators, such as the channel\'s popularity. The list is similar to
-- video categories, with the difference being that a video\'s uploader can
-- assign a video category but only YouTube can assign a channel category.
--
-- /See:/ 'guideCategory' smart constructor.
data GuideCategory = GuideCategory
    { _gcEtag    :: !(Maybe Text)
    , _gcSnippet :: !(Maybe (Maybe GuideCategorySNIppet))
    , _gcKind    :: !Text
    , _gcId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcEtag'
--
-- * 'gcSnippet'
--
-- * 'gcKind'
--
-- * 'gcId'
guideCategory
    :: GuideCategory
guideCategory =
    GuideCategory
    { _gcEtag = Nothing
    , _gcSnippet = Nothing
    , _gcKind = "youtube#guideCategory"
    , _gcId = Nothing
    }

-- | Etag of this resource.
gcEtag :: Lens' GuideCategory (Maybe Text)
gcEtag = lens _gcEtag (\ s a -> s{_gcEtag = a})

-- | The snippet object contains basic details about the category, such as
-- its title.
gcSnippet :: Lens' GuideCategory (Maybe (Maybe GuideCategorySNIppet))
gcSnippet
  = lens _gcSnippet (\ s a -> s{_gcSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#guideCategory\".
gcKind :: Lens' GuideCategory Text
gcKind = lens _gcKind (\ s a -> s{_gcKind = a})

-- | The ID that YouTube uses to uniquely identify the guide category.
gcId :: Lens' GuideCategory (Maybe Text)
gcId = lens _gcId (\ s a -> s{_gcId = a})

instance FromJSON GuideCategory where
        parseJSON
          = withObject "GuideCategory"
              (\ o ->
                 GuideCategory <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#guideCategory")
                     <*> (o .:? "id"))

instance ToJSON GuideCategory where
        toJSON GuideCategory{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gcEtag,
                  ("snippet" .=) <$> _gcSnippet,
                  Just ("kind" .= _gcKind), ("id" .=) <$> _gcId])

--
-- /See:/ 'i18nLanguageListResponse' smart constructor.
data I18nLanguageListResponse = I18nLanguageListResponse
    { _illrEtag      :: !(Maybe Text)
    , _illrKind      :: !Text
    , _illrItems     :: !(Maybe [Maybe I18nLanguage])
    , _illrVisitorId :: !(Maybe Text)
    , _illrEventId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguageListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illrEtag'
--
-- * 'illrKind'
--
-- * 'illrItems'
--
-- * 'illrVisitorId'
--
-- * 'illrEventId'
i18nLanguageListResponse
    :: I18nLanguageListResponse
i18nLanguageListResponse =
    I18nLanguageListResponse
    { _illrEtag = Nothing
    , _illrKind = "youtube#i18nLanguageListResponse"
    , _illrItems = Nothing
    , _illrVisitorId = Nothing
    , _illrEventId = Nothing
    }

-- | Etag of this resource.
illrEtag :: Lens' I18nLanguageListResponse (Maybe Text)
illrEtag = lens _illrEtag (\ s a -> s{_illrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nLanguageListResponse\".
illrKind :: Lens' I18nLanguageListResponse Text
illrKind = lens _illrKind (\ s a -> s{_illrKind = a})

-- | A list of supported i18n languages. In this map, the i18n language ID is
-- the map key, and its value is the corresponding i18nLanguage resource.
illrItems :: Lens' I18nLanguageListResponse [Maybe I18nLanguage]
illrItems
  = lens _illrItems (\ s a -> s{_illrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
illrVisitorId :: Lens' I18nLanguageListResponse (Maybe Text)
illrVisitorId
  = lens _illrVisitorId
      (\ s a -> s{_illrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
illrEventId :: Lens' I18nLanguageListResponse (Maybe Text)
illrEventId
  = lens _illrEventId (\ s a -> s{_illrEventId = a})

instance FromJSON I18nLanguageListResponse where
        parseJSON
          = withObject "I18nLanguageListResponse"
              (\ o ->
                 I18nLanguageListResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#i18nLanguageListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON I18nLanguageListResponse where
        toJSON I18nLanguageListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _illrEtag,
                  Just ("kind" .= _illrKind),
                  ("items" .=) <$> _illrItems,
                  ("visitorId" .=) <$> _illrVisitorId,
                  ("eventId" .=) <$> _illrEventId])

--
-- /See:/ 'invideoBranding' smart constructor.
data InvideoBranding = InvideoBranding
    { _ibImageUrl        :: !(Maybe Text)
    , _ibTargetChannelId :: !(Maybe Text)
    , _ibTiming          :: !(Maybe (Maybe InvideoTiming))
    , _ibImageBytes      :: !(Maybe Word8)
    , _ibPosition        :: !(Maybe (Maybe InvideoPosition))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoBranding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibImageUrl'
--
-- * 'ibTargetChannelId'
--
-- * 'ibTiming'
--
-- * 'ibImageBytes'
--
-- * 'ibPosition'
invideoBranding
    :: InvideoBranding
invideoBranding =
    InvideoBranding
    { _ibImageUrl = Nothing
    , _ibTargetChannelId = Nothing
    , _ibTiming = Nothing
    , _ibImageBytes = Nothing
    , _ibPosition = Nothing
    }

ibImageUrl :: Lens' InvideoBranding (Maybe Text)
ibImageUrl
  = lens _ibImageUrl (\ s a -> s{_ibImageUrl = a})

ibTargetChannelId :: Lens' InvideoBranding (Maybe Text)
ibTargetChannelId
  = lens _ibTargetChannelId
      (\ s a -> s{_ibTargetChannelId = a})

ibTiming :: Lens' InvideoBranding (Maybe (Maybe InvideoTiming))
ibTiming = lens _ibTiming (\ s a -> s{_ibTiming = a})

ibImageBytes :: Lens' InvideoBranding (Maybe Word8)
ibImageBytes
  = lens _ibImageBytes (\ s a -> s{_ibImageBytes = a})

ibPosition :: Lens' InvideoBranding (Maybe (Maybe InvideoPosition))
ibPosition
  = lens _ibPosition (\ s a -> s{_ibPosition = a})

instance FromJSON InvideoBranding where
        parseJSON
          = withObject "InvideoBranding"
              (\ o ->
                 InvideoBranding <$>
                   (o .:? "imageUrl") <*> (o .:? "targetChannelId") <*>
                     (o .:? "timing")
                     <*> (o .:? "imageBytes")
                     <*> (o .:? "position"))

instance ToJSON InvideoBranding where
        toJSON InvideoBranding{..}
          = object
              (catMaybes
                 [("imageUrl" .=) <$> _ibImageUrl,
                  ("targetChannelId" .=) <$> _ibTargetChannelId,
                  ("timing" .=) <$> _ibTiming,
                  ("imageBytes" .=) <$> _ibImageBytes,
                  ("position" .=) <$> _ibPosition])

-- | Branding properties of a YouTube channel.
--
-- /See:/ 'channelBrandingSettings' smart constructor.
data ChannelBrandingSettings = ChannelBrandingSettings
    { _cbsImage   :: !(Maybe (Maybe ImageSettings))
    , _cbsHints   :: !(Maybe [Maybe PropertyValue])
    , _cbsChannel :: !(Maybe (Maybe ChannelSettings))
    , _cbsWatch   :: !(Maybe (Maybe WatchSettings))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelBrandingSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbsImage'
--
-- * 'cbsHints'
--
-- * 'cbsChannel'
--
-- * 'cbsWatch'
channelBrandingSettings
    :: ChannelBrandingSettings
channelBrandingSettings =
    ChannelBrandingSettings
    { _cbsImage = Nothing
    , _cbsHints = Nothing
    , _cbsChannel = Nothing
    , _cbsWatch = Nothing
    }

-- | Branding properties for branding images.
cbsImage :: Lens' ChannelBrandingSettings (Maybe (Maybe ImageSettings))
cbsImage = lens _cbsImage (\ s a -> s{_cbsImage = a})

-- | Additional experimental branding properties.
cbsHints :: Lens' ChannelBrandingSettings [Maybe PropertyValue]
cbsHints
  = lens _cbsHints (\ s a -> s{_cbsHints = a}) .
      _Default
      . _Coerce

-- | Branding properties for the channel view.
cbsChannel :: Lens' ChannelBrandingSettings (Maybe (Maybe ChannelSettings))
cbsChannel
  = lens _cbsChannel (\ s a -> s{_cbsChannel = a})

-- | Branding properties for the watch page.
cbsWatch :: Lens' ChannelBrandingSettings (Maybe (Maybe WatchSettings))
cbsWatch = lens _cbsWatch (\ s a -> s{_cbsWatch = a})

instance FromJSON ChannelBrandingSettings where
        parseJSON
          = withObject "ChannelBrandingSettings"
              (\ o ->
                 ChannelBrandingSettings <$>
                   (o .:? "image") <*> (o .:? "hints" .!= mempty) <*>
                     (o .:? "channel")
                     <*> (o .:? "watch"))

instance ToJSON ChannelBrandingSettings where
        toJSON ChannelBrandingSettings{..}
          = object
              (catMaybes
                 [("image" .=) <$> _cbsImage,
                  ("hints" .=) <$> _cbsHints,
                  ("channel" .=) <$> _cbsChannel,
                  ("watch" .=) <$> _cbsWatch])

-- | Describes an invideo promotion campaign consisting of multiple promoted
-- items. A campaign belongs to a single channel_id.
--
-- /See:/ 'invideoPromotion' smart constructor.
data InvideoPromotion = InvideoPromotion
    { _ipUseSmartTiming :: !(Maybe Bool)
    , _ipItems          :: !(Maybe [Maybe PromotedItem])
    , _ipDefaultTiming  :: !(Maybe (Maybe InvideoTiming))
    , _ipPosition       :: !(Maybe (Maybe InvideoPosition))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoPromotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipUseSmartTiming'
--
-- * 'ipItems'
--
-- * 'ipDefaultTiming'
--
-- * 'ipPosition'
invideoPromotion
    :: InvideoPromotion
invideoPromotion =
    InvideoPromotion
    { _ipUseSmartTiming = Nothing
    , _ipItems = Nothing
    , _ipDefaultTiming = Nothing
    , _ipPosition = Nothing
    }

-- | Indicates whether the channel\'s promotional campaign uses \"smart
-- timing.\" This feature attempts to show promotions at a point in the
-- video when they are more likely to be clicked and less likely to disrupt
-- the viewing experience. This feature also picks up a single promotion to
-- show on each video.
ipUseSmartTiming :: Lens' InvideoPromotion (Maybe Bool)
ipUseSmartTiming
  = lens _ipUseSmartTiming
      (\ s a -> s{_ipUseSmartTiming = a})

-- | List of promoted items in decreasing priority.
ipItems :: Lens' InvideoPromotion [Maybe PromotedItem]
ipItems
  = lens _ipItems (\ s a -> s{_ipItems = a}) . _Default
      . _Coerce

-- | The default temporal position within the video where the promoted item
-- will be displayed. Can be overriden by more specific timing in the item.
ipDefaultTiming :: Lens' InvideoPromotion (Maybe (Maybe InvideoTiming))
ipDefaultTiming
  = lens _ipDefaultTiming
      (\ s a -> s{_ipDefaultTiming = a})

-- | The spatial position within the video where the promoted item will be
-- displayed.
ipPosition :: Lens' InvideoPromotion (Maybe (Maybe InvideoPosition))
ipPosition
  = lens _ipPosition (\ s a -> s{_ipPosition = a})

instance FromJSON InvideoPromotion where
        parseJSON
          = withObject "InvideoPromotion"
              (\ o ->
                 InvideoPromotion <$>
                   (o .:? "useSmartTiming") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "defaultTiming")
                     <*> (o .:? "position"))

instance ToJSON InvideoPromotion where
        toJSON InvideoPromotion{..}
          = object
              (catMaybes
                 [("useSmartTiming" .=) <$> _ipUseSmartTiming,
                  ("items" .=) <$> _ipItems,
                  ("defaultTiming" .=) <$> _ipDefaultTiming,
                  ("position" .=) <$> _ipPosition])

--
-- /See:/ 'playlistPlayer' smart constructor.
newtype PlaylistPlayer = PlaylistPlayer
    { _ppEmbedHtml :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppEmbedHtml'
playlistPlayer
    :: PlaylistPlayer
playlistPlayer =
    PlaylistPlayer
    { _ppEmbedHtml = Nothing
    }

-- | An
-- tag that embeds a player that will play the playlist.
ppEmbedHtml :: Lens' PlaylistPlayer (Maybe Text)
ppEmbedHtml
  = lens _ppEmbedHtml (\ s a -> s{_ppEmbedHtml = a})

instance FromJSON PlaylistPlayer where
        parseJSON
          = withObject "PlaylistPlayer"
              (\ o -> PlaylistPlayer <$> (o .:? "embedHtml"))

instance ToJSON PlaylistPlayer where
        toJSON PlaylistPlayer{..}
          = object
              (catMaybes [("embedHtml" .=) <$> _ppEmbedHtml])

-- | A comment thread represents information that applies to a top level
-- comment and all its replies. It can also include the top level comment
-- itself and some of the replies.
--
-- /See:/ 'commentThread' smart constructor.
data CommentThread = CommentThread
    { _ctEtag    :: !(Maybe Text)
    , _ctSnippet :: !(Maybe (Maybe CommentThreadSNIppet))
    , _ctKind    :: !Text
    , _ctReplies :: !(Maybe (Maybe CommentThreadReplies))
    , _ctId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThread' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctEtag'
--
-- * 'ctSnippet'
--
-- * 'ctKind'
--
-- * 'ctReplies'
--
-- * 'ctId'
commentThread
    :: CommentThread
commentThread =
    CommentThread
    { _ctEtag = Nothing
    , _ctSnippet = Nothing
    , _ctKind = "youtube#commentThread"
    , _ctReplies = Nothing
    , _ctId = Nothing
    }

-- | Etag of this resource.
ctEtag :: Lens' CommentThread (Maybe Text)
ctEtag = lens _ctEtag (\ s a -> s{_ctEtag = a})

-- | The snippet object contains basic details about the comment thread and
-- also the top level comment.
ctSnippet :: Lens' CommentThread (Maybe (Maybe CommentThreadSNIppet))
ctSnippet
  = lens _ctSnippet (\ s a -> s{_ctSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#commentThread\".
ctKind :: Lens' CommentThread Text
ctKind = lens _ctKind (\ s a -> s{_ctKind = a})

-- | The replies object contains a limited number of replies (if any) to the
-- top level comment found in the snippet.
ctReplies :: Lens' CommentThread (Maybe (Maybe CommentThreadReplies))
ctReplies
  = lens _ctReplies (\ s a -> s{_ctReplies = a})

-- | The ID that YouTube uses to uniquely identify the comment thread.
ctId :: Lens' CommentThread (Maybe Text)
ctId = lens _ctId (\ s a -> s{_ctId = a})

instance FromJSON CommentThread where
        parseJSON
          = withObject "CommentThread"
              (\ o ->
                 CommentThread <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#commentThread")
                     <*> (o .:? "replies")
                     <*> (o .:? "id"))

instance ToJSON CommentThread where
        toJSON CommentThread{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ctEtag,
                  ("snippet" .=) <$> _ctSnippet,
                  Just ("kind" .= _ctKind),
                  ("replies" .=) <$> _ctReplies, ("id" .=) <$> _ctId])

-- | Playlist localization setting
--
-- /See:/ 'playlistLocalization' smart constructor.
data PlaylistLocalization = PlaylistLocalization
    { _plTitle       :: !(Maybe Text)
    , _plDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plTitle'
--
-- * 'plDescription'
playlistLocalization
    :: PlaylistLocalization
playlistLocalization =
    PlaylistLocalization
    { _plTitle = Nothing
    , _plDescription = Nothing
    }

-- | The localized strings for playlist\'s title.
plTitle :: Lens' PlaylistLocalization (Maybe Text)
plTitle = lens _plTitle (\ s a -> s{_plTitle = a})

-- | The localized strings for playlist\'s description.
plDescription :: Lens' PlaylistLocalization (Maybe Text)
plDescription
  = lens _plDescription
      (\ s a -> s{_plDescription = a})

instance FromJSON PlaylistLocalization where
        parseJSON
          = withObject "PlaylistLocalization"
              (\ o ->
                 PlaylistLocalization <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON PlaylistLocalization where
        toJSON PlaylistLocalization{..}
          = object
              (catMaybes
                 [("title" .=) <$> _plTitle,
                  ("description" .=) <$> _plDescription])

-- | An activity resource contains information about an action that a
-- particular channel, or user, has taken on YouTube.The actions reported
-- in activity feeds include rating a video, sharing a video, marking a
-- video as a favorite, commenting on a video, uploading a video, and so
-- forth. Each activity resource identifies the type of action, the channel
-- associated with the action, and the resource(s) associated with the
-- action, such as the video that was rated or uploaded.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aEtag           :: !(Maybe Text)
    , _aSnippet        :: !(Maybe (Maybe ActivitySNIppet))
    , _aKind           :: !Text
    , _aContentDetails :: !(Maybe (Maybe ActivityContentDetails))
    , _aId             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aSnippet'
--
-- * 'aKind'
--
-- * 'aContentDetails'
--
-- * 'aId'
activity
    :: Activity
activity =
    Activity
    { _aEtag = Nothing
    , _aSnippet = Nothing
    , _aKind = "youtube#activity"
    , _aContentDetails = Nothing
    , _aId = Nothing
    }

-- | Etag of this resource.
aEtag :: Lens' Activity (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | The snippet object contains basic details about the activity, including
-- the activity\'s type and group ID.
aSnippet :: Lens' Activity (Maybe (Maybe ActivitySNIppet))
aSnippet = lens _aSnippet (\ s a -> s{_aSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#activity\".
aKind :: Lens' Activity Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The contentDetails object contains information about the content
-- associated with the activity. For example, if the snippet.type value is
-- videoRated, then the contentDetails object\'s content identifies the
-- rated video.
aContentDetails :: Lens' Activity (Maybe (Maybe ActivityContentDetails))
aContentDetails
  = lens _aContentDetails
      (\ s a -> s{_aContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the activity.
aId :: Lens' Activity (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

instance FromJSON Activity where
        parseJSON
          = withObject "Activity"
              (\ o ->
                 Activity <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#activity")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id"))

instance ToJSON Activity where
        toJSON Activity{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("snippet" .=) <$> _aSnippet,
                  Just ("kind" .= _aKind),
                  ("contentDetails" .=) <$> _aContentDetails,
                  ("id" .=) <$> _aId])

-- | A channel banner returned as the response to a channel_banner.insert
-- call.
--
-- /See:/ 'channelBannerResource' smart constructor.
data ChannelBannerResource = ChannelBannerResource
    { _cbrEtag :: !(Maybe Text)
    , _cbrKind :: !Text
    , _cbrUrl  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelBannerResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrEtag'
--
-- * 'cbrKind'
--
-- * 'cbrUrl'
channelBannerResource
    :: ChannelBannerResource
channelBannerResource =
    ChannelBannerResource
    { _cbrEtag = Nothing
    , _cbrKind = "youtube#channelBannerResource"
    , _cbrUrl = Nothing
    }

-- | Etag of this resource.
cbrEtag :: Lens' ChannelBannerResource (Maybe Text)
cbrEtag = lens _cbrEtag (\ s a -> s{_cbrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelBannerResource\".
cbrKind :: Lens' ChannelBannerResource Text
cbrKind = lens _cbrKind (\ s a -> s{_cbrKind = a})

-- | The URL of this banner image.
cbrUrl :: Lens' ChannelBannerResource (Maybe Text)
cbrUrl = lens _cbrUrl (\ s a -> s{_cbrUrl = a})

instance FromJSON ChannelBannerResource where
        parseJSON
          = withObject "ChannelBannerResource"
              (\ o ->
                 ChannelBannerResource <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#channelBannerResource")
                     <*> (o .:? "url"))

instance ToJSON ChannelBannerResource where
        toJSON ChannelBannerResource{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cbrEtag, Just ("kind" .= _cbrKind),
                  ("url" .=) <$> _cbrUrl])

--
-- /See:/ 'liveBroadcastTopicSNIppet' smart constructor.
data LiveBroadcastTopicSNIppet = LiveBroadcastTopicSNIppet
    { _lbtsName        :: !(Maybe Text)
    , _lbtsReleaseDate :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastTopicSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtsName'
--
-- * 'lbtsReleaseDate'
liveBroadcastTopicSNIppet
    :: LiveBroadcastTopicSNIppet
liveBroadcastTopicSNIppet =
    LiveBroadcastTopicSNIppet
    { _lbtsName = Nothing
    , _lbtsReleaseDate = Nothing
    }

-- | The name of the topic.
lbtsName :: Lens' LiveBroadcastTopicSNIppet (Maybe Text)
lbtsName = lens _lbtsName (\ s a -> s{_lbtsName = a})

-- | The date at which the topic was released. Filled for types: videoGame
lbtsReleaseDate :: Lens' LiveBroadcastTopicSNIppet (Maybe Text)
lbtsReleaseDate
  = lens _lbtsReleaseDate
      (\ s a -> s{_lbtsReleaseDate = a})

instance FromJSON LiveBroadcastTopicSNIppet where
        parseJSON
          = withObject "LiveBroadcastTopicSNIppet"
              (\ o ->
                 LiveBroadcastTopicSNIppet <$>
                   (o .:? "name") <*> (o .:? "releaseDate"))

instance ToJSON LiveBroadcastTopicSNIppet where
        toJSON LiveBroadcastTopicSNIppet{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lbtsName,
                  ("releaseDate" .=) <$> _lbtsReleaseDate])

-- | The conversionPings object encapsulates information about conversion
-- pings that need to be respected by the channel.
--
-- /See:/ 'channelConversionPings' smart constructor.
newtype ChannelConversionPings = ChannelConversionPings
    { _ccpPings :: Maybe [Maybe ChannelConversionPing]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelConversionPings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpPings'
channelConversionPings
    :: ChannelConversionPings
channelConversionPings =
    ChannelConversionPings
    { _ccpPings = Nothing
    }

-- | Pings that the app shall fire (authenticated by biscotti cookie). Each
-- ping has a context, in which the app must fire the ping, and a url
-- identifying the ping.
ccpPings :: Lens' ChannelConversionPings [Maybe ChannelConversionPing]
ccpPings
  = lens _ccpPings (\ s a -> s{_ccpPings = a}) .
      _Default
      . _Coerce

instance FromJSON ChannelConversionPings where
        parseJSON
          = withObject "ChannelConversionPings"
              (\ o ->
                 ChannelConversionPings <$>
                   (o .:? "pings" .!= mempty))

instance ToJSON ChannelConversionPings where
        toJSON ChannelConversionPings{..}
          = object (catMaybes [("pings" .=) <$> _ccpPings])

--
-- /See:/ 'playlistItemContentDetails' smart constructor.
data PlaylistItemContentDetails = PlaylistItemContentDetails
    { _picdStartAt :: !(Maybe Text)
    , _picdNote    :: !(Maybe Text)
    , _picdVideoId :: !(Maybe Text)
    , _picdEndAt   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picdStartAt'
--
-- * 'picdNote'
--
-- * 'picdVideoId'
--
-- * 'picdEndAt'
playlistItemContentDetails
    :: PlaylistItemContentDetails
playlistItemContentDetails =
    PlaylistItemContentDetails
    { _picdStartAt = Nothing
    , _picdNote = Nothing
    , _picdVideoId = Nothing
    , _picdEndAt = Nothing
    }

-- | The time, measured in seconds from the start of the video, when the
-- video should start playing. (The playlist owner can specify the times
-- when the video should start and stop playing when the video is played in
-- the context of the playlist.) The default value is 0.
picdStartAt :: Lens' PlaylistItemContentDetails (Maybe Text)
picdStartAt
  = lens _picdStartAt (\ s a -> s{_picdStartAt = a})

-- | A user-generated note for this item.
picdNote :: Lens' PlaylistItemContentDetails (Maybe Text)
picdNote = lens _picdNote (\ s a -> s{_picdNote = a})

-- | The ID that YouTube uses to uniquely identify a video. To retrieve the
-- video resource, set the id query parameter to this value in your API
-- request.
picdVideoId :: Lens' PlaylistItemContentDetails (Maybe Text)
picdVideoId
  = lens _picdVideoId (\ s a -> s{_picdVideoId = a})

-- | The time, measured in seconds from the start of the video, when the
-- video should stop playing. (The playlist owner can specify the times
-- when the video should start and stop playing when the video is played in
-- the context of the playlist.) By default, assume that the video.endTime
-- is the end of the video.
picdEndAt :: Lens' PlaylistItemContentDetails (Maybe Text)
picdEndAt
  = lens _picdEndAt (\ s a -> s{_picdEndAt = a})

instance FromJSON PlaylistItemContentDetails where
        parseJSON
          = withObject "PlaylistItemContentDetails"
              (\ o ->
                 PlaylistItemContentDetails <$>
                   (o .:? "startAt") <*> (o .:? "note") <*>
                     (o .:? "videoId")
                     <*> (o .:? "endAt"))

instance ToJSON PlaylistItemContentDetails where
        toJSON PlaylistItemContentDetails{..}
          = object
              (catMaybes
                 [("startAt" .=) <$> _picdStartAt,
                  ("note" .=) <$> _picdNote,
                  ("videoId" .=) <$> _picdVideoId,
                  ("endAt" .=) <$> _picdEndAt])

-- | Channel localization setting
--
-- /See:/ 'channelLocalization' smart constructor.
data ChannelLocalization = ChannelLocalization
    { _clTitle       :: !(Maybe Text)
    , _clDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clTitle'
--
-- * 'clDescription'
channelLocalization
    :: ChannelLocalization
channelLocalization =
    ChannelLocalization
    { _clTitle = Nothing
    , _clDescription = Nothing
    }

-- | The localized strings for channel\'s title.
clTitle :: Lens' ChannelLocalization (Maybe Text)
clTitle = lens _clTitle (\ s a -> s{_clTitle = a})

-- | The localized strings for channel\'s description.
clDescription :: Lens' ChannelLocalization (Maybe Text)
clDescription
  = lens _clDescription
      (\ s a -> s{_clDescription = a})

instance FromJSON ChannelLocalization where
        parseJSON
          = withObject "ChannelLocalization"
              (\ o ->
                 ChannelLocalization <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON ChannelLocalization where
        toJSON ChannelLocalization{..}
          = object
              (catMaybes
                 [("title" .=) <$> _clTitle,
                  ("description" .=) <$> _clDescription])

--
-- /See:/ 'videoAgeGating' smart constructor.
data VideoAgeGating = VideoAgeGating
    { _vagAlcoholContent  :: !(Maybe Bool)
    , _vagRestricted      :: !(Maybe Bool)
    , _vagVideoGameRating :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAgeGating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vagAlcoholContent'
--
-- * 'vagRestricted'
--
-- * 'vagVideoGameRating'
videoAgeGating
    :: VideoAgeGating
videoAgeGating =
    VideoAgeGating
    { _vagAlcoholContent = Nothing
    , _vagRestricted = Nothing
    , _vagVideoGameRating = Nothing
    }

-- | Indicates whether or not the video has alcoholic beverage content. Only
-- users of legal purchasing age in a particular country, as identified by
-- ICAP, can view the content.
vagAlcoholContent :: Lens' VideoAgeGating (Maybe Bool)
vagAlcoholContent
  = lens _vagAlcoholContent
      (\ s a -> s{_vagAlcoholContent = a})

-- | Age-restricted trailers. For redband trailers and adult-rated
-- video-games. Only users aged 18+ can view the content. The the field is
-- true the content is restricted to viewers aged 18+. Otherwise The field
-- won\'t be present.
vagRestricted :: Lens' VideoAgeGating (Maybe Bool)
vagRestricted
  = lens _vagRestricted
      (\ s a -> s{_vagRestricted = a})

-- | Video game rating, if any.
vagVideoGameRating :: Lens' VideoAgeGating (Maybe Text)
vagVideoGameRating
  = lens _vagVideoGameRating
      (\ s a -> s{_vagVideoGameRating = a})

instance FromJSON VideoAgeGating where
        parseJSON
          = withObject "VideoAgeGating"
              (\ o ->
                 VideoAgeGating <$>
                   (o .:? "alcoholContent") <*> (o .:? "restricted") <*>
                     (o .:? "videoGameRating"))

instance ToJSON VideoAgeGating where
        toJSON VideoAgeGating{..}
          = object
              (catMaybes
                 [("alcoholContent" .=) <$> _vagAlcoholContent,
                  ("restricted" .=) <$> _vagRestricted,
                  ("videoGameRating" .=) <$> _vagVideoGameRating])

--
-- /See:/ 'localizedProperty' smart constructor.
data LocalizedProperty = LocalizedProperty
    { _lpDefault         :: !(Maybe Text)
    , _lpLocalized       :: !(Maybe [Maybe LocalizedString])
    , _lpDefaultLanguage :: !(Maybe (Maybe LanguageTag))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpDefault'
--
-- * 'lpLocalized'
--
-- * 'lpDefaultLanguage'
localizedProperty
    :: LocalizedProperty
localizedProperty =
    LocalizedProperty
    { _lpDefault = Nothing
    , _lpLocalized = Nothing
    , _lpDefaultLanguage = Nothing
    }

lpDefault :: Lens' LocalizedProperty (Maybe Text)
lpDefault
  = lens _lpDefault (\ s a -> s{_lpDefault = a})

lpLocalized :: Lens' LocalizedProperty [Maybe LocalizedString]
lpLocalized
  = lens _lpLocalized (\ s a -> s{_lpLocalized = a}) .
      _Default
      . _Coerce

-- | The language of the default property.
lpDefaultLanguage :: Lens' LocalizedProperty (Maybe (Maybe LanguageTag))
lpDefaultLanguage
  = lens _lpDefaultLanguage
      (\ s a -> s{_lpDefaultLanguage = a})

instance FromJSON LocalizedProperty where
        parseJSON
          = withObject "LocalizedProperty"
              (\ o ->
                 LocalizedProperty <$>
                   (o .:? "default") <*> (o .:? "localized" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON LocalizedProperty where
        toJSON LocalizedProperty{..}
          = object
              (catMaybes
                 [("default" .=) <$> _lpDefault,
                  ("localized" .=) <$> _lpLocalized,
                  ("defaultLanguage" .=) <$> _lpDefaultLanguage])

-- | Information about a video stream.
--
-- /See:/ 'videoFileDetailsVideoStream' smart constructor.
data VideoFileDetailsVideoStream = VideoFileDetailsVideoStream
    { _vfdvsHeightPixels :: !(Maybe Word32)
    , _vfdvsBitrateBps   :: !(Maybe Word64)
    , _vfdvsVendor       :: !(Maybe Text)
    , _vfdvsRotation     :: !(Maybe Text)
    , _vfdvsFrameRateFps :: !(Maybe Double)
    , _vfdvsCodec        :: !(Maybe Text)
    , _vfdvsAspectRatio  :: !(Maybe Double)
    , _vfdvsWidthPixels  :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFileDetailsVideoStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfdvsHeightPixels'
--
-- * 'vfdvsBitrateBps'
--
-- * 'vfdvsVendor'
--
-- * 'vfdvsRotation'
--
-- * 'vfdvsFrameRateFps'
--
-- * 'vfdvsCodec'
--
-- * 'vfdvsAspectRatio'
--
-- * 'vfdvsWidthPixels'
videoFileDetailsVideoStream
    :: VideoFileDetailsVideoStream
videoFileDetailsVideoStream =
    VideoFileDetailsVideoStream
    { _vfdvsHeightPixels = Nothing
    , _vfdvsBitrateBps = Nothing
    , _vfdvsVendor = Nothing
    , _vfdvsRotation = Nothing
    , _vfdvsFrameRateFps = Nothing
    , _vfdvsCodec = Nothing
    , _vfdvsAspectRatio = Nothing
    , _vfdvsWidthPixels = Nothing
    }

-- | The encoded video content\'s height in pixels.
vfdvsHeightPixels :: Lens' VideoFileDetailsVideoStream (Maybe Word32)
vfdvsHeightPixels
  = lens _vfdvsHeightPixels
      (\ s a -> s{_vfdvsHeightPixels = a})

-- | The video stream\'s bitrate, in bits per second.
vfdvsBitrateBps :: Lens' VideoFileDetailsVideoStream (Maybe Word64)
vfdvsBitrateBps
  = lens _vfdvsBitrateBps
      (\ s a -> s{_vfdvsBitrateBps = a})

-- | A value that uniquely identifies a video vendor. Typically, the value is
-- a four-letter vendor code.
vfdvsVendor :: Lens' VideoFileDetailsVideoStream (Maybe Text)
vfdvsVendor
  = lens _vfdvsVendor (\ s a -> s{_vfdvsVendor = a})

-- | The amount that YouTube needs to rotate the original source content to
-- properly display the video.
vfdvsRotation :: Lens' VideoFileDetailsVideoStream (Maybe Text)
vfdvsRotation
  = lens _vfdvsRotation
      (\ s a -> s{_vfdvsRotation = a})

-- | The video stream\'s frame rate, in frames per second.
vfdvsFrameRateFps :: Lens' VideoFileDetailsVideoStream (Maybe Double)
vfdvsFrameRateFps
  = lens _vfdvsFrameRateFps
      (\ s a -> s{_vfdvsFrameRateFps = a})

-- | The video codec that the stream uses.
vfdvsCodec :: Lens' VideoFileDetailsVideoStream (Maybe Text)
vfdvsCodec
  = lens _vfdvsCodec (\ s a -> s{_vfdvsCodec = a})

-- | The video content\'s display aspect ratio, which specifies the aspect
-- ratio in which the video should be displayed.
vfdvsAspectRatio :: Lens' VideoFileDetailsVideoStream (Maybe Double)
vfdvsAspectRatio
  = lens _vfdvsAspectRatio
      (\ s a -> s{_vfdvsAspectRatio = a})

-- | The encoded video content\'s width in pixels. You can calculate the
-- video\'s encoding aspect ratio as width_pixels \/ height_pixels.
vfdvsWidthPixels :: Lens' VideoFileDetailsVideoStream (Maybe Word32)
vfdvsWidthPixels
  = lens _vfdvsWidthPixels
      (\ s a -> s{_vfdvsWidthPixels = a})

instance FromJSON VideoFileDetailsVideoStream where
        parseJSON
          = withObject "VideoFileDetailsVideoStream"
              (\ o ->
                 VideoFileDetailsVideoStream <$>
                   (o .:? "heightPixels") <*> (o .:? "bitrateBps") <*>
                     (o .:? "vendor")
                     <*> (o .:? "rotation")
                     <*> (o .:? "frameRateFps")
                     <*> (o .:? "codec")
                     <*> (o .:? "aspectRatio")
                     <*> (o .:? "widthPixels"))

instance ToJSON VideoFileDetailsVideoStream where
        toJSON VideoFileDetailsVideoStream{..}
          = object
              (catMaybes
                 [("heightPixels" .=) <$> _vfdvsHeightPixels,
                  ("bitrateBps" .=) <$> _vfdvsBitrateBps,
                  ("vendor" .=) <$> _vfdvsVendor,
                  ("rotation" .=) <$> _vfdvsRotation,
                  ("frameRateFps" .=) <$> _vfdvsFrameRateFps,
                  ("codec" .=) <$> _vfdvsCodec,
                  ("aspectRatio" .=) <$> _vfdvsAspectRatio,
                  ("widthPixels" .=) <$> _vfdvsWidthPixels])

-- | Details about the content to witch a subscription refers.
--
-- /See:/ 'subscriptionContentDetails' smart constructor.
data SubscriptionContentDetails = SubscriptionContentDetails
    { _scdActivityType   :: !(Maybe Text)
    , _scdTotalItemCount :: !(Maybe Word32)
    , _scdNewItemCount   :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdActivityType'
--
-- * 'scdTotalItemCount'
--
-- * 'scdNewItemCount'
subscriptionContentDetails
    :: SubscriptionContentDetails
subscriptionContentDetails =
    SubscriptionContentDetails
    { _scdActivityType = Nothing
    , _scdTotalItemCount = Nothing
    , _scdNewItemCount = Nothing
    }

-- | The type of activity this subscription is for (only uploads,
-- everything).
scdActivityType :: Lens' SubscriptionContentDetails (Maybe Text)
scdActivityType
  = lens _scdActivityType
      (\ s a -> s{_scdActivityType = a})

-- | The approximate number of items that the subscription points to.
scdTotalItemCount :: Lens' SubscriptionContentDetails (Maybe Word32)
scdTotalItemCount
  = lens _scdTotalItemCount
      (\ s a -> s{_scdTotalItemCount = a})

-- | The number of new items in the subscription since its content was last
-- read.
scdNewItemCount :: Lens' SubscriptionContentDetails (Maybe Word32)
scdNewItemCount
  = lens _scdNewItemCount
      (\ s a -> s{_scdNewItemCount = a})

instance FromJSON SubscriptionContentDetails where
        parseJSON
          = withObject "SubscriptionContentDetails"
              (\ o ->
                 SubscriptionContentDetails <$>
                   (o .:? "activityType") <*> (o .:? "totalItemCount")
                     <*> (o .:? "newItemCount"))

instance ToJSON SubscriptionContentDetails where
        toJSON SubscriptionContentDetails{..}
          = object
              (catMaybes
                 [("activityType" .=) <$> _scdActivityType,
                  ("totalItemCount" .=) <$> _scdTotalItemCount,
                  ("newItemCount" .=) <$> _scdNewItemCount])

--
-- /See:/ 'languageTag' smart constructor.
newtype LanguageTag = LanguageTag
    { _ltValue :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguageTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltValue'
languageTag
    :: LanguageTag
languageTag =
    LanguageTag
    { _ltValue = Nothing
    }

ltValue :: Lens' LanguageTag (Maybe Text)
ltValue = lens _ltValue (\ s a -> s{_ltValue = a})

instance FromJSON LanguageTag where
        parseJSON
          = withObject "LanguageTag"
              (\ o -> LanguageTag <$> (o .:? "value"))

instance ToJSON LanguageTag where
        toJSON LanguageTag{..}
          = object (catMaybes [("value" .=) <$> _ltValue])

--
-- /See:/ 'liveBroadcastTopic' smart constructor.
data LiveBroadcastTopic = LiveBroadcastTopic
    { _lbtSnippet   :: !(Maybe (Maybe LiveBroadcastTopicSNIppet))
    , _lbtUnmatched :: !(Maybe Bool)
    , _lbtType      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastTopic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtSnippet'
--
-- * 'lbtUnmatched'
--
-- * 'lbtType'
liveBroadcastTopic
    :: LiveBroadcastTopic
liveBroadcastTopic =
    LiveBroadcastTopic
    { _lbtSnippet = Nothing
    , _lbtUnmatched = Nothing
    , _lbtType = Nothing
    }

-- | Information about the topic matched.
lbtSnippet :: Lens' LiveBroadcastTopic (Maybe (Maybe LiveBroadcastTopicSNIppet))
lbtSnippet
  = lens _lbtSnippet (\ s a -> s{_lbtSnippet = a})

-- | If this flag is set it means that we have not been able to match the
-- topic title and type provided to a known entity.
lbtUnmatched :: Lens' LiveBroadcastTopic (Maybe Bool)
lbtUnmatched
  = lens _lbtUnmatched (\ s a -> s{_lbtUnmatched = a})

-- | The type of the topic.
lbtType :: Lens' LiveBroadcastTopic (Maybe Text)
lbtType = lens _lbtType (\ s a -> s{_lbtType = a})

instance FromJSON LiveBroadcastTopic where
        parseJSON
          = withObject "LiveBroadcastTopic"
              (\ o ->
                 LiveBroadcastTopic <$>
                   (o .:? "snippet") <*> (o .:? "unmatched") <*>
                     (o .:? "type"))

instance ToJSON LiveBroadcastTopic where
        toJSON LiveBroadcastTopic{..}
          = object
              (catMaybes
                 [("snippet" .=) <$> _lbtSnippet,
                  ("unmatched" .=) <$> _lbtUnmatched,
                  ("type" .=) <$> _lbtType])

-- | A playlistItem resource identifies another resource, such as a video,
-- that is included in a playlist. In addition, the playlistItem resource
-- contains details about the included resource that pertain specifically
-- to how that resource is used in that playlist. YouTube uses playlists to
-- identify special collections of videos for a channel, such as: -
-- uploaded videos - favorite videos - positively rated (liked) videos -
-- watch history - watch later To be more specific, these lists are
-- associated with a channel, which is a collection of a person, group, or
-- company\'s videos, playlists, and other YouTube information. You can
-- retrieve the playlist IDs for each of these lists from the channel
-- resource for a given channel. You can then use the playlistItems.list
-- method to retrieve any of those lists. You can also add or remove items
-- from those lists by calling the playlistItems.insert and
-- playlistItems.delete methods. For example, if a user gives a positive
-- rating to a video, you would insert that video into the liked videos
-- playlist for that user\'s channel.
--
-- /See:/ 'playlistItem' smart constructor.
data PlaylistItem = PlaylistItem
    { _pStatus         :: !(Maybe (Maybe PlaylistItemStatus))
    , _pEtag           :: !(Maybe Text)
    , _pSnippet        :: !(Maybe (Maybe PlaylistItemSNIppet))
    , _pKind           :: !Text
    , _pContentDetails :: !(Maybe (Maybe PlaylistItemContentDetails))
    , _pId             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pStatus'
--
-- * 'pEtag'
--
-- * 'pSnippet'
--
-- * 'pKind'
--
-- * 'pContentDetails'
--
-- * 'pId'
playlistItem
    :: PlaylistItem
playlistItem =
    PlaylistItem
    { _pStatus = Nothing
    , _pEtag = Nothing
    , _pSnippet = Nothing
    , _pKind = "youtube#playlistItem"
    , _pContentDetails = Nothing
    , _pId = Nothing
    }

-- | The status object contains information about the playlist item\'s
-- privacy status.
pStatus :: Lens' PlaylistItem (Maybe (Maybe PlaylistItemStatus))
pStatus = lens _pStatus (\ s a -> s{_pStatus = a})

-- | Etag of this resource.
pEtag :: Lens' PlaylistItem (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | The snippet object contains basic details about the playlist item, such
-- as its title and position in the playlist.
pSnippet :: Lens' PlaylistItem (Maybe (Maybe PlaylistItemSNIppet))
pSnippet = lens _pSnippet (\ s a -> s{_pSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlistItem\".
pKind :: Lens' PlaylistItem Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The contentDetails object is included in the resource if the included
-- item is a YouTube video. The object contains additional information
-- about the video.
pContentDetails :: Lens' PlaylistItem (Maybe (Maybe PlaylistItemContentDetails))
pContentDetails
  = lens _pContentDetails
      (\ s a -> s{_pContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the playlist item.
pId :: Lens' PlaylistItem (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

instance FromJSON PlaylistItem where
        parseJSON
          = withObject "PlaylistItem"
              (\ o ->
                 PlaylistItem <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#playlistItem")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id"))

instance ToJSON PlaylistItem where
        toJSON PlaylistItem{..}
          = object
              (catMaybes
                 [("status" .=) <$> _pStatus, ("etag" .=) <$> _pEtag,
                  ("snippet" .=) <$> _pSnippet,
                  Just ("kind" .= _pKind),
                  ("contentDetails" .=) <$> _pContentDetails,
                  ("id" .=) <$> _pId])

-- | Pings that the app shall fire (authenticated by biscotti cookie). Each
-- ping has a context, in which the app must fire the ping, and a url
-- identifying the ping.
--
-- /See:/ 'channelConversionPing' smart constructor.
data ChannelConversionPing = ChannelConversionPing
    { _ccpContext       :: !(Maybe Text)
    , _ccpConversionUrl :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelConversionPing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpContext'
--
-- * 'ccpConversionUrl'
channelConversionPing
    :: ChannelConversionPing
channelConversionPing =
    ChannelConversionPing
    { _ccpContext = Nothing
    , _ccpConversionUrl = Nothing
    }

-- | Defines the context of the ping.
ccpContext :: Lens' ChannelConversionPing (Maybe Text)
ccpContext
  = lens _ccpContext (\ s a -> s{_ccpContext = a})

-- | The url (without the schema) that the player shall send the ping to.
-- It\'s at caller\'s descretion to decide which schema to use (http vs
-- https) Example of a returned url:
-- \/\/googleads.g.doubleclick.net\/pagead\/
-- viewthroughconversion\/962985656\/?data=path%3DtHe_path%3Btype%3D
-- cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must
-- append biscotti authentication (ms param in case of mobile, for example)
-- to this ping.
ccpConversionUrl :: Lens' ChannelConversionPing (Maybe Text)
ccpConversionUrl
  = lens _ccpConversionUrl
      (\ s a -> s{_ccpConversionUrl = a})

instance FromJSON ChannelConversionPing where
        parseJSON
          = withObject "ChannelConversionPing"
              (\ o ->
                 ChannelConversionPing <$>
                   (o .:? "context") <*> (o .:? "conversionUrl"))

instance ToJSON ChannelConversionPing where
        toJSON ChannelConversionPing{..}
          = object
              (catMaybes
                 [("context" .=) <$> _ccpContext,
                  ("conversionUrl" .=) <$> _ccpConversionUrl])

--
-- /See:/ 'guideCategoryListResponse' smart constructor.
data GuideCategoryListResponse = GuideCategoryListResponse
    { _gclrEtag            :: !(Maybe Text)
    , _gclrTokenPagination :: !(Maybe (Maybe TokenPagination))
    , _gclrNextPageToken   :: !(Maybe Text)
    , _gclrPageInfo        :: !(Maybe (Maybe PageInfo))
    , _gclrKind            :: !Text
    , _gclrItems           :: !(Maybe [Maybe GuideCategory])
    , _gclrVisitorId       :: !(Maybe Text)
    , _gclrEventId         :: !(Maybe Text)
    , _gclrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategoryListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gclrEtag'
--
-- * 'gclrTokenPagination'
--
-- * 'gclrNextPageToken'
--
-- * 'gclrPageInfo'
--
-- * 'gclrKind'
--
-- * 'gclrItems'
--
-- * 'gclrVisitorId'
--
-- * 'gclrEventId'
--
-- * 'gclrPrevPageToken'
guideCategoryListResponse
    :: GuideCategoryListResponse
guideCategoryListResponse =
    GuideCategoryListResponse
    { _gclrEtag = Nothing
    , _gclrTokenPagination = Nothing
    , _gclrNextPageToken = Nothing
    , _gclrPageInfo = Nothing
    , _gclrKind = "youtube#guideCategoryListResponse"
    , _gclrItems = Nothing
    , _gclrVisitorId = Nothing
    , _gclrEventId = Nothing
    , _gclrPrevPageToken = Nothing
    }

-- | Etag of this resource.
gclrEtag :: Lens' GuideCategoryListResponse (Maybe Text)
gclrEtag = lens _gclrEtag (\ s a -> s{_gclrEtag = a})

gclrTokenPagination :: Lens' GuideCategoryListResponse (Maybe (Maybe TokenPagination))
gclrTokenPagination
  = lens _gclrTokenPagination
      (\ s a -> s{_gclrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
gclrNextPageToken :: Lens' GuideCategoryListResponse (Maybe Text)
gclrNextPageToken
  = lens _gclrNextPageToken
      (\ s a -> s{_gclrNextPageToken = a})

gclrPageInfo :: Lens' GuideCategoryListResponse (Maybe (Maybe PageInfo))
gclrPageInfo
  = lens _gclrPageInfo (\ s a -> s{_gclrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#guideCategoryListResponse\".
gclrKind :: Lens' GuideCategoryListResponse Text
gclrKind = lens _gclrKind (\ s a -> s{_gclrKind = a})

-- | A list of categories that can be associated with YouTube channels. In
-- this map, the category ID is the map key, and its value is the
-- corresponding guideCategory resource.
gclrItems :: Lens' GuideCategoryListResponse [Maybe GuideCategory]
gclrItems
  = lens _gclrItems (\ s a -> s{_gclrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
gclrVisitorId :: Lens' GuideCategoryListResponse (Maybe Text)
gclrVisitorId
  = lens _gclrVisitorId
      (\ s a -> s{_gclrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
gclrEventId :: Lens' GuideCategoryListResponse (Maybe Text)
gclrEventId
  = lens _gclrEventId (\ s a -> s{_gclrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
gclrPrevPageToken :: Lens' GuideCategoryListResponse (Maybe Text)
gclrPrevPageToken
  = lens _gclrPrevPageToken
      (\ s a -> s{_gclrPrevPageToken = a})

instance FromJSON GuideCategoryListResponse where
        parseJSON
          = withObject "GuideCategoryListResponse"
              (\ o ->
                 GuideCategoryListResponse <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#guideCategoryListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON GuideCategoryListResponse where
        toJSON GuideCategoryListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gclrEtag,
                  ("tokenPagination" .=) <$> _gclrTokenPagination,
                  ("nextPageToken" .=) <$> _gclrNextPageToken,
                  ("pageInfo" .=) <$> _gclrPageInfo,
                  Just ("kind" .= _gclrKind),
                  ("items" .=) <$> _gclrItems,
                  ("visitorId" .=) <$> _gclrVisitorId,
                  ("eventId" .=) <$> _gclrEventId,
                  ("prevPageToken" .=) <$> _gclrPrevPageToken])

-- | A subscription resource contains information about a YouTube user
-- subscription. A subscription notifies a user when new videos are added
-- to a channel or when another user takes one of several actions on
-- YouTube, such as uploading a video, rating a video, or commenting on a
-- video.
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription
    { _subEtag              :: !(Maybe Text)
    , _subSubscriberSnippet :: !(Maybe (Maybe SubscriptionSubscriberSNIppet))
    , _subSnippet           :: !(Maybe (Maybe SubscriptionSNIppet))
    , _subKind              :: !Text
    , _subContentDetails    :: !(Maybe (Maybe SubscriptionContentDetails))
    , _subId                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subEtag'
--
-- * 'subSubscriberSnippet'
--
-- * 'subSnippet'
--
-- * 'subKind'
--
-- * 'subContentDetails'
--
-- * 'subId'
subscription
    :: Subscription
subscription =
    Subscription
    { _subEtag = Nothing
    , _subSubscriberSnippet = Nothing
    , _subSnippet = Nothing
    , _subKind = "youtube#subscription"
    , _subContentDetails = Nothing
    , _subId = Nothing
    }

-- | Etag of this resource.
subEtag :: Lens' Subscription (Maybe Text)
subEtag = lens _subEtag (\ s a -> s{_subEtag = a})

-- | The subscriberSnippet object contains basic details about the
-- sbuscriber.
subSubscriberSnippet :: Lens' Subscription (Maybe (Maybe SubscriptionSubscriberSNIppet))
subSubscriberSnippet
  = lens _subSubscriberSnippet
      (\ s a -> s{_subSubscriberSnippet = a})

-- | The snippet object contains basic details about the subscription,
-- including its title and the channel that the user subscribed to.
subSnippet :: Lens' Subscription (Maybe (Maybe SubscriptionSNIppet))
subSnippet
  = lens _subSnippet (\ s a -> s{_subSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#subscription\".
subKind :: Lens' Subscription Text
subKind = lens _subKind (\ s a -> s{_subKind = a})

-- | The contentDetails object contains basic statistics about the
-- subscription.
subContentDetails :: Lens' Subscription (Maybe (Maybe SubscriptionContentDetails))
subContentDetails
  = lens _subContentDetails
      (\ s a -> s{_subContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the subscription.
subId :: Lens' Subscription (Maybe Text)
subId = lens _subId (\ s a -> s{_subId = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ o ->
                 Subscription <$>
                   (o .:? "etag") <*> (o .:? "subscriberSnippet") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#subscription")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id"))

instance ToJSON Subscription where
        toJSON Subscription{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _subEtag,
                  ("subscriberSnippet" .=) <$> _subSubscriberSnippet,
                  ("snippet" .=) <$> _subSnippet,
                  Just ("kind" .= _subKind),
                  ("contentDetails" .=) <$> _subContentDetails,
                  ("id" .=) <$> _subId])

-- | Basic details about an i18n region, such as region code and
-- human-readable name.
--
-- /See:/ 'i18nRegionSNIppet' smart constructor.
data I18nRegionSNIppet = I18nRegionSNIppet
    { _irsName :: !(Maybe Text)
    , _irsGl   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegionSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irsName'
--
-- * 'irsGl'
i18nRegionSNIppet
    :: I18nRegionSNIppet
i18nRegionSNIppet =
    I18nRegionSNIppet
    { _irsName = Nothing
    , _irsGl = Nothing
    }

-- | The human-readable name of the region.
irsName :: Lens' I18nRegionSNIppet (Maybe Text)
irsName = lens _irsName (\ s a -> s{_irsName = a})

-- | The region code as a 2-letter ISO country code.
irsGl :: Lens' I18nRegionSNIppet (Maybe Text)
irsGl = lens _irsGl (\ s a -> s{_irsGl = a})

instance FromJSON I18nRegionSNIppet where
        parseJSON
          = withObject "I18nRegionSNIppet"
              (\ o ->
                 I18nRegionSNIppet <$>
                   (o .:? "name") <*> (o .:? "gl"))

instance ToJSON I18nRegionSNIppet where
        toJSON I18nRegionSNIppet{..}
          = object
              (catMaybes
                 [("name" .=) <$> _irsName, ("gl" .=) <$> _irsGl])

-- | Basic details about a caption track, such as its language and name.
--
-- /See:/ 'captionSNIppet' smart constructor.
data CaptionSNIppet = CaptionSNIppet
    { _csFailureReason  :: !(Maybe Text)
    , _csStatus         :: !(Maybe Text)
    , _csLastUpdated    :: !(Maybe UTCTime)
    , _csTrackKind      :: !(Maybe Text)
    , _csIsDraft        :: !(Maybe Bool)
    , _csIsCC           :: !(Maybe Bool)
    , _csVideoId        :: !(Maybe Text)
    , _csName           :: !(Maybe Text)
    , _csIsLarge        :: !(Maybe Bool)
    , _csLanguage       :: !(Maybe Text)
    , _csIsAutoSynced   :: !(Maybe Bool)
    , _csIsEasyReader   :: !(Maybe Bool)
    , _csAudioTrackType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csFailureReason'
--
-- * 'csStatus'
--
-- * 'csLastUpdated'
--
-- * 'csTrackKind'
--
-- * 'csIsDraft'
--
-- * 'csIsCC'
--
-- * 'csVideoId'
--
-- * 'csName'
--
-- * 'csIsLarge'
--
-- * 'csLanguage'
--
-- * 'csIsAutoSynced'
--
-- * 'csIsEasyReader'
--
-- * 'csAudioTrackType'
captionSNIppet
    :: CaptionSNIppet
captionSNIppet =
    CaptionSNIppet
    { _csFailureReason = Nothing
    , _csStatus = Nothing
    , _csLastUpdated = Nothing
    , _csTrackKind = Nothing
    , _csIsDraft = Nothing
    , _csIsCC = Nothing
    , _csVideoId = Nothing
    , _csName = Nothing
    , _csIsLarge = Nothing
    , _csLanguage = Nothing
    , _csIsAutoSynced = Nothing
    , _csIsEasyReader = Nothing
    , _csAudioTrackType = Nothing
    }

-- | The reason that YouTube failed to process the caption track. This
-- property is only present if the state property\'s value is failed.
csFailureReason :: Lens' CaptionSNIppet (Maybe Text)
csFailureReason
  = lens _csFailureReason
      (\ s a -> s{_csFailureReason = a})

-- | The caption track\'s status.
csStatus :: Lens' CaptionSNIppet (Maybe Text)
csStatus = lens _csStatus (\ s a -> s{_csStatus = a})

-- | The date and time when the caption track was last updated. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
csLastUpdated :: Lens' CaptionSNIppet (Maybe UTCTime)
csLastUpdated
  = lens _csLastUpdated
      (\ s a -> s{_csLastUpdated = a})

-- | The caption track\'s type.
csTrackKind :: Lens' CaptionSNIppet (Maybe Text)
csTrackKind
  = lens _csTrackKind (\ s a -> s{_csTrackKind = a})

-- | Indicates whether the caption track is a draft. If the value is true,
-- then the track is not publicly visible. The default value is false.
csIsDraft :: Lens' CaptionSNIppet (Maybe Bool)
csIsDraft
  = lens _csIsDraft (\ s a -> s{_csIsDraft = a})

-- | Indicates whether the track contains closed captions for the deaf and
-- hard of hearing. The default value is false.
csIsCC :: Lens' CaptionSNIppet (Maybe Bool)
csIsCC = lens _csIsCC (\ s a -> s{_csIsCC = a})

-- | The ID that YouTube uses to uniquely identify the video associated with
-- the caption track.
csVideoId :: Lens' CaptionSNIppet (Maybe Text)
csVideoId
  = lens _csVideoId (\ s a -> s{_csVideoId = a})

-- | The name of the caption track. The name is intended to be visible to the
-- user as an option during playback.
csName :: Lens' CaptionSNIppet (Maybe Text)
csName = lens _csName (\ s a -> s{_csName = a})

-- | Indicates whether the caption track uses large text for the
-- vision-impaired. The default value is false.
csIsLarge :: Lens' CaptionSNIppet (Maybe Bool)
csIsLarge
  = lens _csIsLarge (\ s a -> s{_csIsLarge = a})

-- | The language of the caption track. The property value is a BCP-47
-- language tag.
csLanguage :: Lens' CaptionSNIppet (Maybe Text)
csLanguage
  = lens _csLanguage (\ s a -> s{_csLanguage = a})

-- | Indicates whether YouTube synchronized the caption track to the audio
-- track in the video. The value will be true if a sync was explicitly
-- requested when the caption track was uploaded. For example, when calling
-- the captions.insert or captions.update methods, you can set the sync
-- parameter to true to instruct YouTube to sync the uploaded track to the
-- video. If the value is false, YouTube uses the time codes in the
-- uploaded caption track to determine when to display captions.
csIsAutoSynced :: Lens' CaptionSNIppet (Maybe Bool)
csIsAutoSynced
  = lens _csIsAutoSynced
      (\ s a -> s{_csIsAutoSynced = a})

-- | Indicates whether caption track is formatted for \"easy reader,\"
-- meaning it is at a third-grade level for language learners. The default
-- value is false.
csIsEasyReader :: Lens' CaptionSNIppet (Maybe Bool)
csIsEasyReader
  = lens _csIsEasyReader
      (\ s a -> s{_csIsEasyReader = a})

-- | The type of audio track associated with the caption track.
csAudioTrackType :: Lens' CaptionSNIppet (Maybe Text)
csAudioTrackType
  = lens _csAudioTrackType
      (\ s a -> s{_csAudioTrackType = a})

instance FromJSON CaptionSNIppet where
        parseJSON
          = withObject "CaptionSNIppet"
              (\ o ->
                 CaptionSNIppet <$>
                   (o .:? "failureReason") <*> (o .:? "status") <*>
                     (o .:? "lastUpdated")
                     <*> (o .:? "trackKind")
                     <*> (o .:? "isDraft")
                     <*> (o .:? "isCC")
                     <*> (o .:? "videoId")
                     <*> (o .:? "name")
                     <*> (o .:? "isLarge")
                     <*> (o .:? "language")
                     <*> (o .:? "isAutoSynced")
                     <*> (o .:? "isEasyReader")
                     <*> (o .:? "audioTrackType"))

instance ToJSON CaptionSNIppet where
        toJSON CaptionSNIppet{..}
          = object
              (catMaybes
                 [("failureReason" .=) <$> _csFailureReason,
                  ("status" .=) <$> _csStatus,
                  ("lastUpdated" .=) <$> _csLastUpdated,
                  ("trackKind" .=) <$> _csTrackKind,
                  ("isDraft" .=) <$> _csIsDraft,
                  ("isCC" .=) <$> _csIsCC,
                  ("videoId" .=) <$> _csVideoId,
                  ("name" .=) <$> _csName,
                  ("isLarge" .=) <$> _csIsLarge,
                  ("language" .=) <$> _csLanguage,
                  ("isAutoSynced" .=) <$> _csIsAutoSynced,
                  ("isEasyReader" .=) <$> _csIsEasyReader,
                  ("audioTrackType" .=) <$> _csAudioTrackType])

-- | A comment represents a single YouTube comment.
--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _ccEtag    :: !(Maybe Text)
    , _ccSnippet :: !(Maybe (Maybe CommentSNIppet))
    , _ccKind    :: !Text
    , _ccId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccEtag'
--
-- * 'ccSnippet'
--
-- * 'ccKind'
--
-- * 'ccId'
comment
    :: Comment
comment =
    Comment
    { _ccEtag = Nothing
    , _ccSnippet = Nothing
    , _ccKind = "youtube#comment"
    , _ccId = Nothing
    }

-- | Etag of this resource.
ccEtag :: Lens' Comment (Maybe Text)
ccEtag = lens _ccEtag (\ s a -> s{_ccEtag = a})

-- | The snippet object contains basic details about the comment.
ccSnippet :: Lens' Comment (Maybe (Maybe CommentSNIppet))
ccSnippet
  = lens _ccSnippet (\ s a -> s{_ccSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#comment\".
ccKind :: Lens' Comment Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | The ID that YouTube uses to uniquely identify the comment.
ccId :: Lens' Comment (Maybe Text)
ccId = lens _ccId (\ s a -> s{_ccId = a})

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#comment")
                     <*> (o .:? "id"))

instance ToJSON Comment where
        toJSON Comment{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ccEtag,
                  ("snippet" .=) <$> _ccSnippet,
                  Just ("kind" .= _ccKind), ("id" .=) <$> _ccId])

-- | Basic details about a playlist, including title, description and
-- thumbnails.
--
-- /See:/ 'playlistItemSNIppet' smart constructor.
data PlaylistItemSNIppet = PlaylistItemSNIppet
    { _pisResourceId   :: !(Maybe (Maybe ResourceId))
    , _pisPublishedAt  :: !(Maybe UTCTime)
    , _pisChannelTitle :: !(Maybe Text)
    , _pisChannelId    :: !(Maybe Text)
    , _pisThumbnails   :: !(Maybe (Maybe ThumbnailDetails))
    , _pisTitle        :: !(Maybe Text)
    , _pisPlaylistId   :: !(Maybe Text)
    , _pisDescription  :: !(Maybe Text)
    , _pisPosition     :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pisResourceId'
--
-- * 'pisPublishedAt'
--
-- * 'pisChannelTitle'
--
-- * 'pisChannelId'
--
-- * 'pisThumbnails'
--
-- * 'pisTitle'
--
-- * 'pisPlaylistId'
--
-- * 'pisDescription'
--
-- * 'pisPosition'
playlistItemSNIppet
    :: PlaylistItemSNIppet
playlistItemSNIppet =
    PlaylistItemSNIppet
    { _pisResourceId = Nothing
    , _pisPublishedAt = Nothing
    , _pisChannelTitle = Nothing
    , _pisChannelId = Nothing
    , _pisThumbnails = Nothing
    , _pisTitle = Nothing
    , _pisPlaylistId = Nothing
    , _pisDescription = Nothing
    , _pisPosition = Nothing
    }

-- | The id object contains information that can be used to uniquely identify
-- the resource that is included in the playlist as the playlist item.
pisResourceId :: Lens' PlaylistItemSNIppet (Maybe (Maybe ResourceId))
pisResourceId
  = lens _pisResourceId
      (\ s a -> s{_pisResourceId = a})

-- | The date and time that the item was added to the playlist. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
pisPublishedAt :: Lens' PlaylistItemSNIppet (Maybe UTCTime)
pisPublishedAt
  = lens _pisPublishedAt
      (\ s a -> s{_pisPublishedAt = a})

-- | Channel title for the channel that the playlist item belongs to.
pisChannelTitle :: Lens' PlaylistItemSNIppet (Maybe Text)
pisChannelTitle
  = lens _pisChannelTitle
      (\ s a -> s{_pisChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the user that added the
-- item to the playlist.
pisChannelId :: Lens' PlaylistItemSNIppet (Maybe Text)
pisChannelId
  = lens _pisChannelId (\ s a -> s{_pisChannelId = a})

-- | A map of thumbnail images associated with the playlist item. For each
-- object in the map, the key is the name of the thumbnail image, and the
-- value is an object that contains other information about the thumbnail.
pisThumbnails :: Lens' PlaylistItemSNIppet (Maybe (Maybe ThumbnailDetails))
pisThumbnails
  = lens _pisThumbnails
      (\ s a -> s{_pisThumbnails = a})

-- | The item\'s title.
pisTitle :: Lens' PlaylistItemSNIppet (Maybe Text)
pisTitle = lens _pisTitle (\ s a -> s{_pisTitle = a})

-- | The ID that YouTube uses to uniquely identify the playlist that the
-- playlist item is in.
pisPlaylistId :: Lens' PlaylistItemSNIppet (Maybe Text)
pisPlaylistId
  = lens _pisPlaylistId
      (\ s a -> s{_pisPlaylistId = a})

-- | The item\'s description.
pisDescription :: Lens' PlaylistItemSNIppet (Maybe Text)
pisDescription
  = lens _pisDescription
      (\ s a -> s{_pisDescription = a})

-- | The order in which the item appears in the playlist. The value uses a
-- zero-based index, so the first item has a position of 0, the second item
-- has a position of 1, and so forth.
pisPosition :: Lens' PlaylistItemSNIppet (Maybe Word32)
pisPosition
  = lens _pisPosition (\ s a -> s{_pisPosition = a})

instance FromJSON PlaylistItemSNIppet where
        parseJSON
          = withObject "PlaylistItemSNIppet"
              (\ o ->
                 PlaylistItemSNIppet <$>
                   (o .:? "resourceId") <*> (o .:? "publishedAt") <*>
                     (o .:? "channelTitle")
                     <*> (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "playlistId")
                     <*> (o .:? "description")
                     <*> (o .:? "position"))

instance ToJSON PlaylistItemSNIppet where
        toJSON PlaylistItemSNIppet{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _pisResourceId,
                  ("publishedAt" .=) <$> _pisPublishedAt,
                  ("channelTitle" .=) <$> _pisChannelTitle,
                  ("channelId" .=) <$> _pisChannelId,
                  ("thumbnails" .=) <$> _pisThumbnails,
                  ("title" .=) <$> _pisTitle,
                  ("playlistId" .=) <$> _pisPlaylistId,
                  ("description" .=) <$> _pisDescription,
                  ("position" .=) <$> _pisPosition])

--
-- /See:/ 'videoRating' smart constructor.
data VideoRating = VideoRating
    { _vrRating  :: !(Maybe Text)
    , _vrVideoId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoRating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrRating'
--
-- * 'vrVideoId'
videoRating
    :: VideoRating
videoRating =
    VideoRating
    { _vrRating = Nothing
    , _vrVideoId = Nothing
    }

vrRating :: Lens' VideoRating (Maybe Text)
vrRating = lens _vrRating (\ s a -> s{_vrRating = a})

vrVideoId :: Lens' VideoRating (Maybe Text)
vrVideoId
  = lens _vrVideoId (\ s a -> s{_vrVideoId = a})

instance FromJSON VideoRating where
        parseJSON
          = withObject "VideoRating"
              (\ o ->
                 VideoRating <$>
                   (o .:? "rating") <*> (o .:? "videoId"))

instance ToJSON VideoRating where
        toJSON VideoRating{..}
          = object
              (catMaybes
                 [("rating" .=) <$> _vrRating,
                  ("videoId" .=) <$> _vrVideoId])

-- | Project specific details about the content of a YouTube Video.
--
-- /See:/ 'videoProjectDetails' smart constructor.
newtype VideoProjectDetails = VideoProjectDetails
    { _vpdTags :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoProjectDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdTags'
videoProjectDetails
    :: VideoProjectDetails
videoProjectDetails =
    VideoProjectDetails
    { _vpdTags = Nothing
    }

-- | A list of project tags associated with the video during the upload.
vpdTags :: Lens' VideoProjectDetails [Text]
vpdTags
  = lens _vpdTags (\ s a -> s{_vpdTags = a}) . _Default
      . _Coerce

instance FromJSON VideoProjectDetails where
        parseJSON
          = withObject "VideoProjectDetails"
              (\ o ->
                 VideoProjectDetails <$> (o .:? "tags" .!= mempty))

instance ToJSON VideoProjectDetails where
        toJSON VideoProjectDetails{..}
          = object (catMaybes [("tags" .=) <$> _vpdTags])

-- | Specifies suggestions on how to improve video content, including
-- encoding hints, tag suggestions, and editor suggestions.
--
-- /See:/ 'videoSuggestions' smart constructor.
data VideoSuggestions = VideoSuggestions
    { _vsProcessingErrors   :: !(Maybe [Text])
    , _vsProcessingHints    :: !(Maybe [Text])
    , _vsEditorSuggestions  :: !(Maybe [Text])
    , _vsProcessingWarnings :: !(Maybe [Text])
    , _vsTagSuggestions     :: !(Maybe [Maybe VideoSuggestionsTagSuggestion])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoSuggestions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsProcessingErrors'
--
-- * 'vsProcessingHints'
--
-- * 'vsEditorSuggestions'
--
-- * 'vsProcessingWarnings'
--
-- * 'vsTagSuggestions'
videoSuggestions
    :: VideoSuggestions
videoSuggestions =
    VideoSuggestions
    { _vsProcessingErrors = Nothing
    , _vsProcessingHints = Nothing
    , _vsEditorSuggestions = Nothing
    , _vsProcessingWarnings = Nothing
    , _vsTagSuggestions = Nothing
    }

-- | A list of errors that will prevent YouTube from successfully processing
-- the uploaded video video. These errors indicate that, regardless of the
-- video\'s current processing status, eventually, that status will almost
-- certainly be failed.
vsProcessingErrors :: Lens' VideoSuggestions [Text]
vsProcessingErrors
  = lens _vsProcessingErrors
      (\ s a -> s{_vsProcessingErrors = a})
      . _Default
      . _Coerce

-- | A list of suggestions that may improve YouTube\'s ability to process the
-- video.
vsProcessingHints :: Lens' VideoSuggestions [Text]
vsProcessingHints
  = lens _vsProcessingHints
      (\ s a -> s{_vsProcessingHints = a})
      . _Default
      . _Coerce

-- | A list of video editing operations that might improve the video quality
-- or playback experience of the uploaded video.
vsEditorSuggestions :: Lens' VideoSuggestions [Text]
vsEditorSuggestions
  = lens _vsEditorSuggestions
      (\ s a -> s{_vsEditorSuggestions = a})
      . _Default
      . _Coerce

-- | A list of reasons why YouTube may have difficulty transcoding the
-- uploaded video or that might result in an erroneous transcoding. These
-- warnings are generated before YouTube actually processes the uploaded
-- video file. In addition, they identify issues that are unlikely to cause
-- the video processing to fail but that might cause problems such as sync
-- issues, video artifacts, or a missing audio track.
vsProcessingWarnings :: Lens' VideoSuggestions [Text]
vsProcessingWarnings
  = lens _vsProcessingWarnings
      (\ s a -> s{_vsProcessingWarnings = a})
      . _Default
      . _Coerce

-- | A list of keyword tags that could be added to the video\'s metadata to
-- increase the likelihood that users will locate your video when searching
-- or browsing on YouTube.
vsTagSuggestions :: Lens' VideoSuggestions [Maybe VideoSuggestionsTagSuggestion]
vsTagSuggestions
  = lens _vsTagSuggestions
      (\ s a -> s{_vsTagSuggestions = a})
      . _Default
      . _Coerce

instance FromJSON VideoSuggestions where
        parseJSON
          = withObject "VideoSuggestions"
              (\ o ->
                 VideoSuggestions <$>
                   (o .:? "processingErrors" .!= mempty) <*>
                     (o .:? "processingHints" .!= mempty)
                     <*> (o .:? "editorSuggestions" .!= mempty)
                     <*> (o .:? "processingWarnings" .!= mempty)
                     <*> (o .:? "tagSuggestions" .!= mempty))

instance ToJSON VideoSuggestions where
        toJSON VideoSuggestions{..}
          = object
              (catMaybes
                 [("processingErrors" .=) <$> _vsProcessingErrors,
                  ("processingHints" .=) <$> _vsProcessingHints,
                  ("editorSuggestions" .=) <$> _vsEditorSuggestions,
                  ("processingWarnings" .=) <$> _vsProcessingWarnings,
                  ("tagSuggestions" .=) <$> _vsTagSuggestions])

-- | A playlist resource represents a YouTube playlist. A playlist is a
-- collection of videos that can be viewed sequentially and shared with
-- other users. A playlist can contain up to 200 videos, and YouTube does
-- not limit the number of playlists that each user creates. By default,
-- playlists are publicly visible to other users, but playlists can be
-- public or private. YouTube also uses playlists to identify special
-- collections of videos for a channel, such as: - uploaded videos -
-- favorite videos - positively rated (liked) videos - watch history -
-- watch later To be more specific, these lists are associated with a
-- channel, which is a collection of a person, group, or company\'s videos,
-- playlists, and other YouTube information. You can retrieve the playlist
-- IDs for each of these lists from the channel resource for a given
-- channel. You can then use the playlistItems.list method to retrieve any
-- of those lists. You can also add or remove items from those lists by
-- calling the playlistItems.insert and playlistItems.delete methods.
--
-- /See:/ 'playlist' smart constructor.
data Playlist = Playlist
    { _plaStatus         :: !(Maybe (Maybe PlaylistStatus))
    , _plaEtag           :: !(Maybe Text)
    , _plaSnippet        :: !(Maybe (Maybe PlaylistSNIppet))
    , _plaKind           :: !Text
    , _plaContentDetails :: !(Maybe (Maybe PlaylistContentDetails))
    , _plaId             :: !(Maybe Text)
    , _plaLocalizations  :: !(Maybe PlaylistLocalizations)
    , _plaPlayer         :: !(Maybe (Maybe PlaylistPlayer))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Playlist' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaStatus'
--
-- * 'plaEtag'
--
-- * 'plaSnippet'
--
-- * 'plaKind'
--
-- * 'plaContentDetails'
--
-- * 'plaId'
--
-- * 'plaLocalizations'
--
-- * 'plaPlayer'
playlist
    :: Playlist
playlist =
    Playlist
    { _plaStatus = Nothing
    , _plaEtag = Nothing
    , _plaSnippet = Nothing
    , _plaKind = "youtube#playlist"
    , _plaContentDetails = Nothing
    , _plaId = Nothing
    , _plaLocalizations = Nothing
    , _plaPlayer = Nothing
    }

-- | The status object contains status information for the playlist.
plaStatus :: Lens' Playlist (Maybe (Maybe PlaylistStatus))
plaStatus
  = lens _plaStatus (\ s a -> s{_plaStatus = a})

-- | Etag of this resource.
plaEtag :: Lens' Playlist (Maybe Text)
plaEtag = lens _plaEtag (\ s a -> s{_plaEtag = a})

-- | The snippet object contains basic details about the playlist, such as
-- its title and description.
plaSnippet :: Lens' Playlist (Maybe (Maybe PlaylistSNIppet))
plaSnippet
  = lens _plaSnippet (\ s a -> s{_plaSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlist\".
plaKind :: Lens' Playlist Text
plaKind = lens _plaKind (\ s a -> s{_plaKind = a})

-- | The contentDetails object contains information like video count.
plaContentDetails :: Lens' Playlist (Maybe (Maybe PlaylistContentDetails))
plaContentDetails
  = lens _plaContentDetails
      (\ s a -> s{_plaContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the playlist.
plaId :: Lens' Playlist (Maybe Text)
plaId = lens _plaId (\ s a -> s{_plaId = a})

-- | Localizations for different languages
plaLocalizations :: Lens' Playlist (Maybe PlaylistLocalizations)
plaLocalizations
  = lens _plaLocalizations
      (\ s a -> s{_plaLocalizations = a})

-- | The player object contains information that you would use to play the
-- playlist in an embedded player.
plaPlayer :: Lens' Playlist (Maybe (Maybe PlaylistPlayer))
plaPlayer
  = lens _plaPlayer (\ s a -> s{_plaPlayer = a})

instance FromJSON Playlist where
        parseJSON
          = withObject "Playlist"
              (\ o ->
                 Playlist <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#playlist")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id")
                     <*> (o .:? "localizations")
                     <*> (o .:? "player"))

instance ToJSON Playlist where
        toJSON Playlist{..}
          = object
              (catMaybes
                 [("status" .=) <$> _plaStatus,
                  ("etag" .=) <$> _plaEtag,
                  ("snippet" .=) <$> _plaSnippet,
                  Just ("kind" .= _plaKind),
                  ("contentDetails" .=) <$> _plaContentDetails,
                  ("id" .=) <$> _plaId,
                  ("localizations" .=) <$> _plaLocalizations,
                  ("player" .=) <$> _plaPlayer])

-- | Ratings schemes. The country-specific ratings are mostly for movies and
-- shows. NEXT_ID: 66
--
-- /See:/ 'contentRating' smart constructor.
data ContentRating = ContentRating
    { _crPefilmRating           :: !(Maybe Text)
    , _crCccRating              :: !(Maybe Text)
    , _crAnatelRating           :: !(Maybe Text)
    , _crMpaaRating             :: !(Maybe Text)
    , _crCceRating              :: !(Maybe Text)
    , _crMccaaRating            :: !(Maybe Text)
    , _crChfilmRating           :: !(Maybe Text)
    , _crIcaaRating             :: !(Maybe Text)
    , _crFcbmRating             :: !(Maybe Text)
    , _crBmukkRating            :: !(Maybe Text)
    , _crMoctwRating            :: !(Maybe Text)
    , _crNfvcbRating            :: !(Maybe Text)
    , _crDjctqRatingReasons     :: !(Maybe [Text])
    , _crAgcomRating            :: !(Maybe Text)
    , _crCnaRating              :: !(Maybe Text)
    , _crCatvfrRating           :: !(Maybe Text)
    , _crCbfcRating             :: !(Maybe Text)
    , _crKfcbRating             :: !(Maybe Text)
    , _crSmsaRating             :: !(Maybe Text)
    , _crChvrsRating            :: !(Maybe Text)
    , _crIncaaRating            :: !(Maybe Text)
    , _crNfrcRating             :: !(Maybe Text)
    , _crCsaRating              :: !(Maybe Text)
    , _crMocRating              :: !(Maybe Text)
    , _crEirinRating            :: !(Maybe Text)
    , _crFskRating              :: !(Maybe Text)
    , _crEefilmRating           :: !(Maybe Text)
    , _crRcnofRating            :: !(Maybe Text)
    , _crMekuRating             :: !(Maybe Text)
    , _crIlfilmRating           :: !(Maybe Text)
    , _crIfcoRating             :: !(Maybe Text)
    , _crNbcplRating            :: !(Maybe Text)
    , _crGrfilmRating           :: !(Maybe Text)
    , _crRteRating              :: !(Maybe Text)
    , _crAcbRating              :: !(Maybe Text)
    , _crCatvRating             :: !(Maybe Text)
    , _crMdaRating              :: !(Maybe Text)
    , _crDjctqRating            :: !(Maybe Text)
    , _crSmaisRating            :: !(Maybe Text)
    , _crCscfRating             :: !(Maybe Text)
    , _crTvpgRating             :: !(Maybe Text)
    , _crRtcRating              :: !(Maybe Text)
    , _crYtRating               :: !(Maybe Text)
    , _crBbfcRating             :: !(Maybe Text)
    , _crKijkwijzerRating       :: !(Maybe Text)
    , _crMtrcbRating            :: !(Maybe Text)
    , _crFcoRating              :: !(Maybe Text)
    , _crCicfRating             :: !(Maybe Text)
    , _crCzfilmRating           :: !(Maybe Text)
    , _crNbcRating              :: !(Maybe Text)
    , _crFmocRating             :: !(Maybe Text)
    , _crRussiaRating           :: !(Maybe Text)
    , _crEgfilmRating           :: !(Maybe Text)
    , _crResorteviolenciaRating :: !(Maybe Text)
    , _crMibacRating            :: !(Maybe Text)
    , _crMedietilsynetRating    :: !(Maybe Text)
    , _crMccypRating            :: !(Maybe Text)
    , _crNkclvRating            :: !(Maybe Text)
    , _crFpbRating              :: !(Maybe Text)
    , _crLsfRating              :: !(Maybe Text)
    , _crBfvcRating             :: !(Maybe Text)
    , _crCncRating              :: !(Maybe Text)
    , _crSkfilmRating           :: !(Maybe Text)
    , _crOflcRating             :: !(Maybe Text)
    , _crKmrbRating             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentRating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crPefilmRating'
--
-- * 'crCccRating'
--
-- * 'crAnatelRating'
--
-- * 'crMpaaRating'
--
-- * 'crCceRating'
--
-- * 'crMccaaRating'
--
-- * 'crChfilmRating'
--
-- * 'crIcaaRating'
--
-- * 'crFcbmRating'
--
-- * 'crBmukkRating'
--
-- * 'crMoctwRating'
--
-- * 'crNfvcbRating'
--
-- * 'crDjctqRatingReasons'
--
-- * 'crAgcomRating'
--
-- * 'crCnaRating'
--
-- * 'crCatvfrRating'
--
-- * 'crCbfcRating'
--
-- * 'crKfcbRating'
--
-- * 'crSmsaRating'
--
-- * 'crChvrsRating'
--
-- * 'crIncaaRating'
--
-- * 'crNfrcRating'
--
-- * 'crCsaRating'
--
-- * 'crMocRating'
--
-- * 'crEirinRating'
--
-- * 'crFskRating'
--
-- * 'crEefilmRating'
--
-- * 'crRcnofRating'
--
-- * 'crMekuRating'
--
-- * 'crIlfilmRating'
--
-- * 'crIfcoRating'
--
-- * 'crNbcplRating'
--
-- * 'crGrfilmRating'
--
-- * 'crRteRating'
--
-- * 'crAcbRating'
--
-- * 'crCatvRating'
--
-- * 'crMdaRating'
--
-- * 'crDjctqRating'
--
-- * 'crSmaisRating'
--
-- * 'crCscfRating'
--
-- * 'crTvpgRating'
--
-- * 'crRtcRating'
--
-- * 'crYtRating'
--
-- * 'crBbfcRating'
--
-- * 'crKijkwijzerRating'
--
-- * 'crMtrcbRating'
--
-- * 'crFcoRating'
--
-- * 'crCicfRating'
--
-- * 'crCzfilmRating'
--
-- * 'crNbcRating'
--
-- * 'crFmocRating'
--
-- * 'crRussiaRating'
--
-- * 'crEgfilmRating'
--
-- * 'crResorteviolenciaRating'
--
-- * 'crMibacRating'
--
-- * 'crMedietilsynetRating'
--
-- * 'crMccypRating'
--
-- * 'crNkclvRating'
--
-- * 'crFpbRating'
--
-- * 'crLsfRating'
--
-- * 'crBfvcRating'
--
-- * 'crCncRating'
--
-- * 'crSkfilmRating'
--
-- * 'crOflcRating'
--
-- * 'crKmrbRating'
contentRating
    :: ContentRating
contentRating =
    ContentRating
    { _crPefilmRating = Nothing
    , _crCccRating = Nothing
    , _crAnatelRating = Nothing
    , _crMpaaRating = Nothing
    , _crCceRating = Nothing
    , _crMccaaRating = Nothing
    , _crChfilmRating = Nothing
    , _crIcaaRating = Nothing
    , _crFcbmRating = Nothing
    , _crBmukkRating = Nothing
    , _crMoctwRating = Nothing
    , _crNfvcbRating = Nothing
    , _crDjctqRatingReasons = Nothing
    , _crAgcomRating = Nothing
    , _crCnaRating = Nothing
    , _crCatvfrRating = Nothing
    , _crCbfcRating = Nothing
    , _crKfcbRating = Nothing
    , _crSmsaRating = Nothing
    , _crChvrsRating = Nothing
    , _crIncaaRating = Nothing
    , _crNfrcRating = Nothing
    , _crCsaRating = Nothing
    , _crMocRating = Nothing
    , _crEirinRating = Nothing
    , _crFskRating = Nothing
    , _crEefilmRating = Nothing
    , _crRcnofRating = Nothing
    , _crMekuRating = Nothing
    , _crIlfilmRating = Nothing
    , _crIfcoRating = Nothing
    , _crNbcplRating = Nothing
    , _crGrfilmRating = Nothing
    , _crRteRating = Nothing
    , _crAcbRating = Nothing
    , _crCatvRating = Nothing
    , _crMdaRating = Nothing
    , _crDjctqRating = Nothing
    , _crSmaisRating = Nothing
    , _crCscfRating = Nothing
    , _crTvpgRating = Nothing
    , _crRtcRating = Nothing
    , _crYtRating = Nothing
    , _crBbfcRating = Nothing
    , _crKijkwijzerRating = Nothing
    , _crMtrcbRating = Nothing
    , _crFcoRating = Nothing
    , _crCicfRating = Nothing
    , _crCzfilmRating = Nothing
    , _crNbcRating = Nothing
    , _crFmocRating = Nothing
    , _crRussiaRating = Nothing
    , _crEgfilmRating = Nothing
    , _crResorteviolenciaRating = Nothing
    , _crMibacRating = Nothing
    , _crMedietilsynetRating = Nothing
    , _crMccypRating = Nothing
    , _crNkclvRating = Nothing
    , _crFpbRating = Nothing
    , _crLsfRating = Nothing
    , _crBfvcRating = Nothing
    , _crCncRating = Nothing
    , _crSkfilmRating = Nothing
    , _crOflcRating = Nothing
    , _crKmrbRating = Nothing
    }

-- | The video\'s rating in Peru.
crPefilmRating :: Lens' ContentRating (Maybe Text)
crPefilmRating
  = lens _crPefilmRating
      (\ s a -> s{_crPefilmRating = a})

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
crCccRating :: Lens' ContentRating (Maybe Text)
crCccRating
  = lens _crCccRating (\ s a -> s{_crCccRating = a})

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for
-- Chilean television.
crAnatelRating :: Lens' ContentRating (Maybe Text)
crAnatelRating
  = lens _crAnatelRating
      (\ s a -> s{_crAnatelRating = a})

-- | The video\'s Motion Picture Association of America (MPAA) rating.
crMpaaRating :: Lens' ContentRating (Maybe Text)
crMpaaRating
  = lens _crMpaaRating (\ s a -> s{_crMpaaRating = a})

-- | The video\'s rating from Portugal\'s Comissão de Classificação de
-- Espect´culos.
crCceRating :: Lens' ContentRating (Maybe Text)
crCceRating
  = lens _crCceRating (\ s a -> s{_crCceRating = a})

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
crMccaaRating :: Lens' ContentRating (Maybe Text)
crMccaaRating
  = lens _crMccaaRating
      (\ s a -> s{_crMccaaRating = a})

-- | The video\'s rating in Switzerland.
crChfilmRating :: Lens' ContentRating (Maybe Text)
crChfilmRating
  = lens _crChfilmRating
      (\ s a -> s{_crChfilmRating = a})

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales
-- (ICAA - Spain) rating.
crIcaaRating :: Lens' ContentRating (Maybe Text)
crIcaaRating
  = lens _crIcaaRating (\ s a -> s{_crIcaaRating = a})

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
crFcbmRating :: Lens' ContentRating (Maybe Text)
crFcbmRating
  = lens _crFcbmRating (\ s a -> s{_crFcbmRating = a})

-- | The video\'s rating from the Austrian Board of Media Classification
-- (Bundesministerium für Unterricht, Kunst und Kultur).
crBmukkRating :: Lens' ContentRating (Maybe Text)
crBmukkRating
  = lens _crBmukkRating
      (\ s a -> s{_crBmukkRating = a})

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
crMoctwRating :: Lens' ContentRating (Maybe Text)
crMoctwRating
  = lens _crMoctwRating
      (\ s a -> s{_crMoctwRating = a})

-- | The video\'s rating from Nigeria\'s National Film and Video Censors
-- Board.
crNfvcbRating :: Lens' ContentRating (Maybe Text)
crNfvcbRating
  = lens _crNfvcbRating
      (\ s a -> s{_crNfvcbRating = a})

-- | Reasons that explain why the video received its DJCQT (Brazil) rating.
crDjctqRatingReasons :: Lens' ContentRating [Text]
crDjctqRatingReasons
  = lens _crDjctqRatingReasons
      (\ s a -> s{_crDjctqRatingReasons = a})
      . _Default
      . _Coerce

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle
-- Comunicazioni (AGCOM).
crAgcomRating :: Lens' ContentRating (Maybe Text)
crAgcomRating
  = lens _crAgcomRating
      (\ s a -> s{_crAgcomRating = a})

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL
-- AUDIOVIZUALULUI (CNA).
crCnaRating :: Lens' ContentRating (Maybe Text)
crCnaRating
  = lens _crCnaRating (\ s a -> s{_crCnaRating = a})

-- | The video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian French-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
crCatvfrRating :: Lens' ContentRating (Maybe Text)
crCatvfrRating
  = lens _crCatvfrRating
      (\ s a -> s{_crCatvfrRating = a})

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
crCbfcRating :: Lens' ContentRating (Maybe Text)
crCbfcRating
  = lens _crCbfcRating (\ s a -> s{_crCbfcRating = a})

-- | The video\'s rating from the Kenya Film Classification Board.
crKfcbRating :: Lens' ContentRating (Maybe Text)
crKfcbRating
  = lens _crKfcbRating (\ s a -> s{_crKfcbRating = a})

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media
-- Council).
crSmsaRating :: Lens' ContentRating (Maybe Text)
crSmsaRating
  = lens _crSmsaRating (\ s a -> s{_crSmsaRating = a})

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
crChvrsRating :: Lens' ContentRating (Maybe Text)
crChvrsRating
  = lens _crChvrsRating
      (\ s a -> s{_crChvrsRating = a})

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
-- Argentina) rating.
crIncaaRating :: Lens' ContentRating (Maybe Text)
crIncaaRating
  = lens _crIncaaRating
      (\ s a -> s{_crIncaaRating = a})

-- | The video\'s rating from the Bulgarian National Film Center.
crNfrcRating :: Lens' ContentRating (Maybe Text)
crNfrcRating
  = lens _crNfrcRating (\ s a -> s{_crNfrcRating = a})

-- | The video\'s rating from France\'s Conseil supérieur de l?audiovisuel,
-- which rates broadcast content.
crCsaRating :: Lens' ContentRating (Maybe Text)
crCsaRating
  = lens _crCsaRating (\ s a -> s{_crCsaRating = a})

-- | The video\'s Ministerio de Cultura (Colombia) rating.
crMocRating :: Lens' ContentRating (Maybe Text)
crMocRating
  = lens _crMocRating (\ s a -> s{_crMocRating = a})

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
crEirinRating :: Lens' ContentRating (Maybe Text)
crEirinRating
  = lens _crEirinRating
      (\ s a -> s{_crEirinRating = a})

-- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK -
-- Germany) rating.
crFskRating :: Lens' ContentRating (Maybe Text)
crFskRating
  = lens _crFskRating (\ s a -> s{_crFskRating = a})

-- | The video\'s rating in Estonia.
crEefilmRating :: Lens' ContentRating (Maybe Text)
crEefilmRating
  = lens _crEefilmRating
      (\ s a -> s{_crEefilmRating = a})

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating
-- Committee of the National Office of Film.
crRcnofRating :: Lens' ContentRating (Maybe Text)
crRcnofRating
  = lens _crRcnofRating
      (\ s a -> s{_crRcnofRating = a})

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen
-- Instituutti (National Audiovisual Institute).
crMekuRating :: Lens' ContentRating (Maybe Text)
crMekuRating
  = lens _crMekuRating (\ s a -> s{_crMekuRating = a})

-- | The video\'s rating in Israel.
crIlfilmRating :: Lens' ContentRating (Maybe Text)
crIlfilmRating
  = lens _crIlfilmRating
      (\ s a -> s{_crIlfilmRating = a})

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating.
-- See the IFCO website for more information.
crIfcoRating :: Lens' ContentRating (Maybe Text)
crIfcoRating
  = lens _crIfcoRating (\ s a -> s{_crIfcoRating = a})

-- | The video\'s rating in Poland.
crNbcplRating :: Lens' ContentRating (Maybe Text)
crNbcplRating
  = lens _crNbcplRating
      (\ s a -> s{_crNbcplRating = a})

-- | The video\'s rating in Greece.
crGrfilmRating :: Lens' ContentRating (Maybe Text)
crGrfilmRating
  = lens _crGrfilmRating
      (\ s a -> s{_crGrfilmRating = a})

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
crRteRating :: Lens' ContentRating (Maybe Text)
crRteRating
  = lens _crRteRating (\ s a -> s{_crRteRating = a})

-- | The video\'s Australian Classification Board (ACB) or Australian
-- Communications and Media Authority (ACMA) rating. ACMA ratings are used
-- to classify children\'s television programming.
crAcbRating :: Lens' ContentRating (Maybe Text)
crAcbRating
  = lens _crAcbRating (\ s a -> s{_crAcbRating = a})

-- | Rating system for Canadian TV - Canadian TV Classification System The
-- video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian English-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
crCatvRating :: Lens' ContentRating (Maybe Text)
crCatvRating
  = lens _crCatvRating (\ s a -> s{_crCatvRating = a})

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA)
-- and, specifically, it\'s Board of Film Censors (BFC).
crMdaRating :: Lens' ContentRating (Maybe Text)
crMdaRating
  = lens _crMdaRating (\ s a -> s{_crMdaRating = a})

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e
-- Títulos (DJCQT - Brazil) rating.
crDjctqRating :: Lens' ContentRating (Maybe Text)
crDjctqRating
  = lens _crDjctqRating
      (\ s a -> s{_crDjctqRating = a})

-- | The video\'s rating in Iceland.
crSmaisRating :: Lens' ContentRating (Maybe Text)
crSmaisRating
  = lens _crSmaisRating
      (\ s a -> s{_crSmaisRating = a})

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la
-- classification des films (CSCF).
crCscfRating :: Lens' ContentRating (Maybe Text)
crCscfRating
  = lens _crCscfRating (\ s a -> s{_crCscfRating = a})

-- | The video\'s TV Parental Guidelines (TVPG) rating.
crTvpgRating :: Lens' ContentRating (Maybe Text)
crTvpgRating
  = lens _crTvpgRating (\ s a -> s{_crTvpgRating = a})

-- | The video\'s General Directorate of Radio, Television and Cinematography
-- (Mexico) rating.
crRtcRating :: Lens' ContentRating (Maybe Text)
crRtcRating
  = lens _crRtcRating (\ s a -> s{_crRtcRating = a})

-- | A rating that YouTube uses to identify age-restricted content.
crYtRating :: Lens' ContentRating (Maybe Text)
crYtRating
  = lens _crYtRating (\ s a -> s{_crYtRating = a})

-- | The video\'s British Board of Film Classification (BBFC) rating.
crBbfcRating :: Lens' ContentRating (Maybe Text)
crBbfcRating
  = lens _crBbfcRating (\ s a -> s{_crBbfcRating = a})

-- | voor de Classificatie van Audiovisuele Media (Netherlands).
crKijkwijzerRating :: Lens' ContentRating (Maybe Text)
crKijkwijzerRating
  = lens _crKijkwijzerRating
      (\ s a -> s{_crKijkwijzerRating = a})

-- | The video\'s rating from the Movie and Television Review and
-- Classification Board (Philippines).
crMtrcbRating :: Lens' ContentRating (Maybe Text)
crMtrcbRating
  = lens _crMtrcbRating
      (\ s a -> s{_crMtrcbRating = a})

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and
-- Article Administration.
crFcoRating :: Lens' ContentRating (Maybe Text)
crFcoRating
  = lens _crFcoRating (\ s a -> s{_crFcoRating = a})

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
crCicfRating :: Lens' ContentRating (Maybe Text)
crCicfRating
  = lens _crCicfRating (\ s a -> s{_crCicfRating = a})

-- | The video\'s rating in the Czech Republic.
crCzfilmRating :: Lens' ContentRating (Maybe Text)
crCzfilmRating
  = lens _crCzfilmRating
      (\ s a -> s{_crCzfilmRating = a})

-- | The video\'s rating from the Maldives National Bureau of Classification.
crNbcRating :: Lens' ContentRating (Maybe Text)
crNbcRating
  = lens _crNbcRating (\ s a -> s{_crNbcRating = a})

-- | This property has been deprecated. Use the
-- contentDetails.contentRating.cncRating instead.
crFmocRating :: Lens' ContentRating (Maybe Text)
crFmocRating
  = lens _crFmocRating (\ s a -> s{_crFmocRating = a})

-- | The video\'s National Film Registry of the Russian Federation (MKRF -
-- Russia) rating.
crRussiaRating :: Lens' ContentRating (Maybe Text)
crRussiaRating
  = lens _crRussiaRating
      (\ s a -> s{_crRussiaRating = a})

-- | The video\'s rating in Egypt.
crEgfilmRating :: Lens' ContentRating (Maybe Text)
crEgfilmRating
  = lens _crEgfilmRating
      (\ s a -> s{_crEgfilmRating = a})

-- | The video\'s rating in Venezuela.
crResorteviolenciaRating :: Lens' ContentRating (Maybe Text)
crResorteviolenciaRating
  = lens _crResorteviolenciaRating
      (\ s a -> s{_crResorteviolenciaRating = a})

-- | The video\'s rating from the Ministero dei Beni e delle Attività
-- Culturali e del Turismo (Italy).
crMibacRating :: Lens' ContentRating (Maybe Text)
crMibacRating
  = lens _crMibacRating
      (\ s a -> s{_crMibacRating = a})

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
crMedietilsynetRating :: Lens' ContentRating (Maybe Text)
crMedietilsynetRating
  = lens _crMedietilsynetRating
      (\ s a -> s{_crMedietilsynetRating = a})

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske
-- Filminstitut) Media Council for Children and Young People.
crMccypRating :: Lens' ContentRating (Maybe Text)
crMccypRating
  = lens _crMccypRating
      (\ s a -> s{_crMccypRating = a})

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film
-- Centre of Latvia).
crNkclvRating :: Lens' ContentRating (Maybe Text)
crNkclvRating
  = lens _crNkclvRating
      (\ s a -> s{_crNkclvRating = a})

-- | The video\'s rating from South Africa\'s Film and Publication Board.
crFpbRating :: Lens' ContentRating (Maybe Text)
crFpbRating
  = lens _crFpbRating (\ s a -> s{_crFpbRating = a})

-- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
crLsfRating :: Lens' ContentRating (Maybe Text)
crLsfRating
  = lens _crLsfRating (\ s a -> s{_crLsfRating = a})

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
crBfvcRating :: Lens' ContentRating (Maybe Text)
crBfvcRating
  = lens _crBfvcRating (\ s a -> s{_crBfvcRating = a})

-- | Rating system in France - Commission de classification cinematographique
crCncRating :: Lens' ContentRating (Maybe Text)
crCncRating
  = lens _crCncRating (\ s a -> s{_crCncRating = a})

-- | The video\'s rating in Slovakia.
crSkfilmRating :: Lens' ContentRating (Maybe Text)
crSkfilmRating
  = lens _crSkfilmRating
      (\ s a -> s{_crSkfilmRating = a})

-- | The video\'s Office of Film and Literature Classification (OFLC - New
-- Zealand) rating.
crOflcRating :: Lens' ContentRating (Maybe Text)
crOflcRating
  = lens _crOflcRating (\ s a -> s{_crOflcRating = a})

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The
-- KMRB rates videos in South Korea.
crKmrbRating :: Lens' ContentRating (Maybe Text)
crKmrbRating
  = lens _crKmrbRating (\ s a -> s{_crKmrbRating = a})

instance FromJSON ContentRating where
        parseJSON
          = withObject "ContentRating"
              (\ o ->
                 ContentRating <$>
                   (o .:? "pefilmRating") <*> (o .:? "cccRating") <*>
                     (o .:? "anatelRating")
                     <*> (o .:? "mpaaRating")
                     <*> (o .:? "cceRating")
                     <*> (o .:? "mccaaRating")
                     <*> (o .:? "chfilmRating")
                     <*> (o .:? "icaaRating")
                     <*> (o .:? "fcbmRating")
                     <*> (o .:? "bmukkRating")
                     <*> (o .:? "moctwRating")
                     <*> (o .:? "nfvcbRating")
                     <*> (o .:? "djctqRatingReasons" .!= mempty)
                     <*> (o .:? "agcomRating")
                     <*> (o .:? "cnaRating")
                     <*> (o .:? "catvfrRating")
                     <*> (o .:? "cbfcRating")
                     <*> (o .:? "kfcbRating")
                     <*> (o .:? "smsaRating")
                     <*> (o .:? "chvrsRating")
                     <*> (o .:? "incaaRating")
                     <*> (o .:? "nfrcRating")
                     <*> (o .:? "csaRating")
                     <*> (o .:? "mocRating")
                     <*> (o .:? "eirinRating")
                     <*> (o .:? "fskRating")
                     <*> (o .:? "eefilmRating")
                     <*> (o .:? "rcnofRating")
                     <*> (o .:? "mekuRating")
                     <*> (o .:? "ilfilmRating")
                     <*> (o .:? "ifcoRating")
                     <*> (o .:? "nbcplRating")
                     <*> (o .:? "grfilmRating")
                     <*> (o .:? "rteRating")
                     <*> (o .:? "acbRating")
                     <*> (o .:? "catvRating")
                     <*> (o .:? "mdaRating")
                     <*> (o .:? "djctqRating")
                     <*> (o .:? "smaisRating")
                     <*> (o .:? "cscfRating")
                     <*> (o .:? "tvpgRating")
                     <*> (o .:? "rtcRating")
                     <*> (o .:? "ytRating")
                     <*> (o .:? "bbfcRating")
                     <*> (o .:? "kijkwijzerRating")
                     <*> (o .:? "mtrcbRating")
                     <*> (o .:? "fcoRating")
                     <*> (o .:? "cicfRating")
                     <*> (o .:? "czfilmRating")
                     <*> (o .:? "nbcRating")
                     <*> (o .:? "fmocRating")
                     <*> (o .:? "russiaRating")
                     <*> (o .:? "egfilmRating")
                     <*> (o .:? "resorteviolenciaRating")
                     <*> (o .:? "mibacRating")
                     <*> (o .:? "medietilsynetRating")
                     <*> (o .:? "mccypRating")
                     <*> (o .:? "nkclvRating")
                     <*> (o .:? "fpbRating")
                     <*> (o .:? "lsfRating")
                     <*> (o .:? "bfvcRating")
                     <*> (o .:? "cncRating")
                     <*> (o .:? "skfilmRating")
                     <*> (o .:? "oflcRating")
                     <*> (o .:? "kmrbRating"))

instance ToJSON ContentRating where
        toJSON ContentRating{..}
          = object
              (catMaybes
                 [("pefilmRating" .=) <$> _crPefilmRating,
                  ("cccRating" .=) <$> _crCccRating,
                  ("anatelRating" .=) <$> _crAnatelRating,
                  ("mpaaRating" .=) <$> _crMpaaRating,
                  ("cceRating" .=) <$> _crCceRating,
                  ("mccaaRating" .=) <$> _crMccaaRating,
                  ("chfilmRating" .=) <$> _crChfilmRating,
                  ("icaaRating" .=) <$> _crIcaaRating,
                  ("fcbmRating" .=) <$> _crFcbmRating,
                  ("bmukkRating" .=) <$> _crBmukkRating,
                  ("moctwRating" .=) <$> _crMoctwRating,
                  ("nfvcbRating" .=) <$> _crNfvcbRating,
                  ("djctqRatingReasons" .=) <$> _crDjctqRatingReasons,
                  ("agcomRating" .=) <$> _crAgcomRating,
                  ("cnaRating" .=) <$> _crCnaRating,
                  ("catvfrRating" .=) <$> _crCatvfrRating,
                  ("cbfcRating" .=) <$> _crCbfcRating,
                  ("kfcbRating" .=) <$> _crKfcbRating,
                  ("smsaRating" .=) <$> _crSmsaRating,
                  ("chvrsRating" .=) <$> _crChvrsRating,
                  ("incaaRating" .=) <$> _crIncaaRating,
                  ("nfrcRating" .=) <$> _crNfrcRating,
                  ("csaRating" .=) <$> _crCsaRating,
                  ("mocRating" .=) <$> _crMocRating,
                  ("eirinRating" .=) <$> _crEirinRating,
                  ("fskRating" .=) <$> _crFskRating,
                  ("eefilmRating" .=) <$> _crEefilmRating,
                  ("rcnofRating" .=) <$> _crRcnofRating,
                  ("mekuRating" .=) <$> _crMekuRating,
                  ("ilfilmRating" .=) <$> _crIlfilmRating,
                  ("ifcoRating" .=) <$> _crIfcoRating,
                  ("nbcplRating" .=) <$> _crNbcplRating,
                  ("grfilmRating" .=) <$> _crGrfilmRating,
                  ("rteRating" .=) <$> _crRteRating,
                  ("acbRating" .=) <$> _crAcbRating,
                  ("catvRating" .=) <$> _crCatvRating,
                  ("mdaRating" .=) <$> _crMdaRating,
                  ("djctqRating" .=) <$> _crDjctqRating,
                  ("smaisRating" .=) <$> _crSmaisRating,
                  ("cscfRating" .=) <$> _crCscfRating,
                  ("tvpgRating" .=) <$> _crTvpgRating,
                  ("rtcRating" .=) <$> _crRtcRating,
                  ("ytRating" .=) <$> _crYtRating,
                  ("bbfcRating" .=) <$> _crBbfcRating,
                  ("kijkwijzerRating" .=) <$> _crKijkwijzerRating,
                  ("mtrcbRating" .=) <$> _crMtrcbRating,
                  ("fcoRating" .=) <$> _crFcoRating,
                  ("cicfRating" .=) <$> _crCicfRating,
                  ("czfilmRating" .=) <$> _crCzfilmRating,
                  ("nbcRating" .=) <$> _crNbcRating,
                  ("fmocRating" .=) <$> _crFmocRating,
                  ("russiaRating" .=) <$> _crRussiaRating,
                  ("egfilmRating" .=) <$> _crEgfilmRating,
                  ("resorteviolenciaRating" .=) <$>
                    _crResorteviolenciaRating,
                  ("mibacRating" .=) <$> _crMibacRating,
                  ("medietilsynetRating" .=) <$>
                    _crMedietilsynetRating,
                  ("mccypRating" .=) <$> _crMccypRating,
                  ("nkclvRating" .=) <$> _crNkclvRating,
                  ("fpbRating" .=) <$> _crFpbRating,
                  ("lsfRating" .=) <$> _crLsfRating,
                  ("bfvcRating" .=) <$> _crBfvcRating,
                  ("cncRating" .=) <$> _crCncRating,
                  ("skfilmRating" .=) <$> _crSkfilmRating,
                  ("oflcRating" .=) <$> _crOflcRating,
                  ("kmrbRating" .=) <$> _crKmrbRating])

-- | Basic details about a comment, such as its author and text.
--
-- /See:/ 'commentSNIppet' smart constructor.
data CommentSNIppet = CommentSNIppet
    { _csnipViewerRating               :: !(Maybe Text)
    , _csnipPublishedAt                :: !(Maybe UTCTime)
    , _csnipAuthorChannelUrl           :: !(Maybe Text)
    , _csnipModerationStatus           :: !(Maybe Text)
    , _csnipLikeCount                  :: !(Maybe Word32)
    , _csnipChannelId                  :: !(Maybe Text)
    , _csnipTextOriginal               :: !(Maybe Text)
    , _csnipVideoId                    :: !(Maybe Text)
    , _csnipTextDisplay                :: !(Maybe Text)
    , _csnipAuthorProfileImageUrl      :: !(Maybe Text)
    , _csnipAuthorDisplayName          :: !(Maybe Text)
    , _csnipUpdatedAt                  :: !(Maybe UTCTime)
    , _csnipAuthorChannelId            :: !(Maybe (Maybe ChannelId))
    , _csnipCanRate                    :: !(Maybe Bool)
    , _csnipAuthorGoogleplusProfileUrl :: !(Maybe Text)
    , _csnipParentId                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csnipViewerRating'
--
-- * 'csnipPublishedAt'
--
-- * 'csnipAuthorChannelUrl'
--
-- * 'csnipModerationStatus'
--
-- * 'csnipLikeCount'
--
-- * 'csnipChannelId'
--
-- * 'csnipTextOriginal'
--
-- * 'csnipVideoId'
--
-- * 'csnipTextDisplay'
--
-- * 'csnipAuthorProfileImageUrl'
--
-- * 'csnipAuthorDisplayName'
--
-- * 'csnipUpdatedAt'
--
-- * 'csnipAuthorChannelId'
--
-- * 'csnipCanRate'
--
-- * 'csnipAuthorGoogleplusProfileUrl'
--
-- * 'csnipParentId'
commentSNIppet
    :: CommentSNIppet
commentSNIppet =
    CommentSNIppet
    { _csnipViewerRating = Nothing
    , _csnipPublishedAt = Nothing
    , _csnipAuthorChannelUrl = Nothing
    , _csnipModerationStatus = Nothing
    , _csnipLikeCount = Nothing
    , _csnipChannelId = Nothing
    , _csnipTextOriginal = Nothing
    , _csnipVideoId = Nothing
    , _csnipTextDisplay = Nothing
    , _csnipAuthorProfileImageUrl = Nothing
    , _csnipAuthorDisplayName = Nothing
    , _csnipUpdatedAt = Nothing
    , _csnipAuthorChannelId = Nothing
    , _csnipCanRate = Nothing
    , _csnipAuthorGoogleplusProfileUrl = Nothing
    , _csnipParentId = Nothing
    }

-- | The rating the viewer has given to this comment. For the time being this
-- will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE.
-- This may change in the future.
csnipViewerRating :: Lens' CommentSNIppet (Maybe Text)
csnipViewerRating
  = lens _csnipViewerRating
      (\ s a -> s{_csnipViewerRating = a})

-- | The date and time when the comment was orignally published. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
csnipPublishedAt :: Lens' CommentSNIppet (Maybe UTCTime)
csnipPublishedAt
  = lens _csnipPublishedAt
      (\ s a -> s{_csnipPublishedAt = a})

-- | Link to the author\'s YouTube channel, if any.
csnipAuthorChannelUrl :: Lens' CommentSNIppet (Maybe Text)
csnipAuthorChannelUrl
  = lens _csnipAuthorChannelUrl
      (\ s a -> s{_csnipAuthorChannelUrl = a})

-- | The comment\'s moderation status. Will not be set if the comments were
-- requested through the id filter.
csnipModerationStatus :: Lens' CommentSNIppet (Maybe Text)
csnipModerationStatus
  = lens _csnipModerationStatus
      (\ s a -> s{_csnipModerationStatus = a})

-- | The total number of likes this comment has received.
csnipLikeCount :: Lens' CommentSNIppet (Maybe Word32)
csnipLikeCount
  = lens _csnipLikeCount
      (\ s a -> s{_csnipLikeCount = a})

-- | The id of the corresponding YouTube channel. In case of a channel
-- comment this is the channel the comment refers to. In case of a video
-- comment it\'s the video\'s channel.
csnipChannelId :: Lens' CommentSNIppet (Maybe Text)
csnipChannelId
  = lens _csnipChannelId
      (\ s a -> s{_csnipChannelId = a})

-- | The comment\'s original raw text as initially posted or last updated.
-- The original text will only be returned if it is accessible to the
-- viewer, which is only guaranteed if the viewer is the comment\'s author.
csnipTextOriginal :: Lens' CommentSNIppet (Maybe Text)
csnipTextOriginal
  = lens _csnipTextOriginal
      (\ s a -> s{_csnipTextOriginal = a})

-- | The ID of the video the comment refers to, if any.
csnipVideoId :: Lens' CommentSNIppet (Maybe Text)
csnipVideoId
  = lens _csnipVideoId (\ s a -> s{_csnipVideoId = a})

-- | The comment\'s text. The format is either plain text or HTML dependent
-- on what has been requested. Even the plain text representation may
-- differ from the text originally posted in that it may replace video
-- links with video titles etc.
csnipTextDisplay :: Lens' CommentSNIppet (Maybe Text)
csnipTextDisplay
  = lens _csnipTextDisplay
      (\ s a -> s{_csnipTextDisplay = a})

-- | The URL for the avatar of the user who posted the comment.
csnipAuthorProfileImageUrl :: Lens' CommentSNIppet (Maybe Text)
csnipAuthorProfileImageUrl
  = lens _csnipAuthorProfileImageUrl
      (\ s a -> s{_csnipAuthorProfileImageUrl = a})

-- | The name of the user who posted the comment.
csnipAuthorDisplayName :: Lens' CommentSNIppet (Maybe Text)
csnipAuthorDisplayName
  = lens _csnipAuthorDisplayName
      (\ s a -> s{_csnipAuthorDisplayName = a})

-- | The date and time when was last updated . The value is specified in ISO
-- 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
csnipUpdatedAt :: Lens' CommentSNIppet (Maybe UTCTime)
csnipUpdatedAt
  = lens _csnipUpdatedAt
      (\ s a -> s{_csnipUpdatedAt = a})

-- | The id of the author\'s YouTube channel, if any.
csnipAuthorChannelId :: Lens' CommentSNIppet (Maybe (Maybe ChannelId))
csnipAuthorChannelId
  = lens _csnipAuthorChannelId
      (\ s a -> s{_csnipAuthorChannelId = a})

-- | Whether the current viewer can rate this comment.
csnipCanRate :: Lens' CommentSNIppet (Maybe Bool)
csnipCanRate
  = lens _csnipCanRate (\ s a -> s{_csnipCanRate = a})

-- | Link to the author\'s Google+ profile, if any.
csnipAuthorGoogleplusProfileUrl :: Lens' CommentSNIppet (Maybe Text)
csnipAuthorGoogleplusProfileUrl
  = lens _csnipAuthorGoogleplusProfileUrl
      (\ s a -> s{_csnipAuthorGoogleplusProfileUrl = a})

-- | The unique id of the parent comment, only set for replies.
csnipParentId :: Lens' CommentSNIppet (Maybe Text)
csnipParentId
  = lens _csnipParentId
      (\ s a -> s{_csnipParentId = a})

instance FromJSON CommentSNIppet where
        parseJSON
          = withObject "CommentSNIppet"
              (\ o ->
                 CommentSNIppet <$>
                   (o .:? "viewerRating") <*> (o .:? "publishedAt") <*>
                     (o .:? "authorChannelUrl")
                     <*> (o .:? "moderationStatus")
                     <*> (o .:? "likeCount")
                     <*> (o .:? "channelId")
                     <*> (o .:? "textOriginal")
                     <*> (o .:? "videoId")
                     <*> (o .:? "textDisplay")
                     <*> (o .:? "authorProfileImageUrl")
                     <*> (o .:? "authorDisplayName")
                     <*> (o .:? "updatedAt")
                     <*> (o .:? "authorChannelId")
                     <*> (o .:? "canRate")
                     <*> (o .:? "authorGoogleplusProfileUrl")
                     <*> (o .:? "parentId"))

instance ToJSON CommentSNIppet where
        toJSON CommentSNIppet{..}
          = object
              (catMaybes
                 [("viewerRating" .=) <$> _csnipViewerRating,
                  ("publishedAt" .=) <$> _csnipPublishedAt,
                  ("authorChannelUrl" .=) <$> _csnipAuthorChannelUrl,
                  ("moderationStatus" .=) <$> _csnipModerationStatus,
                  ("likeCount" .=) <$> _csnipLikeCount,
                  ("channelId" .=) <$> _csnipChannelId,
                  ("textOriginal" .=) <$> _csnipTextOriginal,
                  ("videoId" .=) <$> _csnipVideoId,
                  ("textDisplay" .=) <$> _csnipTextDisplay,
                  ("authorProfileImageUrl" .=) <$>
                    _csnipAuthorProfileImageUrl,
                  ("authorDisplayName" .=) <$> _csnipAuthorDisplayName,
                  ("updatedAt" .=) <$> _csnipUpdatedAt,
                  ("authorChannelId" .=) <$> _csnipAuthorChannelId,
                  ("canRate" .=) <$> _csnipCanRate,
                  ("authorGoogleplusProfileUrl" .=) <$>
                    _csnipAuthorGoogleplusProfileUrl,
                  ("parentId" .=) <$> _csnipParentId])

-- | Recording information associated with the video.
--
-- /See:/ 'videoRecordingDetails' smart constructor.
data VideoRecordingDetails = VideoRecordingDetails
    { _vrdLocation            :: !(Maybe (Maybe GeoPoint))
    , _vrdLocationDescription :: !(Maybe Text)
    , _vrdRecordingDate       :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoRecordingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrdLocation'
--
-- * 'vrdLocationDescription'
--
-- * 'vrdRecordingDate'
videoRecordingDetails
    :: VideoRecordingDetails
videoRecordingDetails =
    VideoRecordingDetails
    { _vrdLocation = Nothing
    , _vrdLocationDescription = Nothing
    , _vrdRecordingDate = Nothing
    }

-- | The geolocation information associated with the video.
vrdLocation :: Lens' VideoRecordingDetails (Maybe (Maybe GeoPoint))
vrdLocation
  = lens _vrdLocation (\ s a -> s{_vrdLocation = a})

-- | The text description of the location where the video was recorded.
vrdLocationDescription :: Lens' VideoRecordingDetails (Maybe Text)
vrdLocationDescription
  = lens _vrdLocationDescription
      (\ s a -> s{_vrdLocationDescription = a})

-- | The date and time when the video was recorded. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sssZ) format.
vrdRecordingDate :: Lens' VideoRecordingDetails (Maybe UTCTime)
vrdRecordingDate
  = lens _vrdRecordingDate
      (\ s a -> s{_vrdRecordingDate = a})

instance FromJSON VideoRecordingDetails where
        parseJSON
          = withObject "VideoRecordingDetails"
              (\ o ->
                 VideoRecordingDetails <$>
                   (o .:? "location") <*> (o .:? "locationDescription")
                     <*> (o .:? "recordingDate"))

instance ToJSON VideoRecordingDetails where
        toJSON VideoRecordingDetails{..}
          = object
              (catMaybes
                 [("location" .=) <$> _vrdLocation,
                  ("locationDescription" .=) <$>
                    _vrdLocationDescription,
                  ("recordingDate" .=) <$> _vrdRecordingDate])

-- | Branding properties for the channel view.
--
-- /See:/ 'channelSettings' smart constructor.
data ChannelSettings = ChannelSettings
    { _cShowRelatedChannels        :: !(Maybe Bool)
    , _cDefaultTab                 :: !(Maybe Text)
    , _cFeaturedChannelsTitle      :: !(Maybe Text)
    , _cCountry                    :: !(Maybe Text)
    , _cProfileColor               :: !(Maybe Text)
    , _cModerateComments           :: !(Maybe Bool)
    , _cKeywords                   :: !(Maybe Text)
    , _cUnsubscribedTrailer        :: !(Maybe Text)
    , _cTrackingAnalyticsAccountId :: !(Maybe Text)
    , _cFeaturedChannelsUrls       :: !(Maybe [Text])
    , _cShowBrowseView             :: !(Maybe Bool)
    , _cTitle                      :: !(Maybe Text)
    , _cDescription                :: !(Maybe Text)
    , _cDefaultLanguage            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cShowRelatedChannels'
--
-- * 'cDefaultTab'
--
-- * 'cFeaturedChannelsTitle'
--
-- * 'cCountry'
--
-- * 'cProfileColor'
--
-- * 'cModerateComments'
--
-- * 'cKeywords'
--
-- * 'cUnsubscribedTrailer'
--
-- * 'cTrackingAnalyticsAccountId'
--
-- * 'cFeaturedChannelsUrls'
--
-- * 'cShowBrowseView'
--
-- * 'cTitle'
--
-- * 'cDescription'
--
-- * 'cDefaultLanguage'
channelSettings
    :: ChannelSettings
channelSettings =
    ChannelSettings
    { _cShowRelatedChannels = Nothing
    , _cDefaultTab = Nothing
    , _cFeaturedChannelsTitle = Nothing
    , _cCountry = Nothing
    , _cProfileColor = Nothing
    , _cModerateComments = Nothing
    , _cKeywords = Nothing
    , _cUnsubscribedTrailer = Nothing
    , _cTrackingAnalyticsAccountId = Nothing
    , _cFeaturedChannelsUrls = Nothing
    , _cShowBrowseView = Nothing
    , _cTitle = Nothing
    , _cDescription = Nothing
    , _cDefaultLanguage = Nothing
    }

-- | Whether related channels should be proposed.
cShowRelatedChannels :: Lens' ChannelSettings (Maybe Bool)
cShowRelatedChannels
  = lens _cShowRelatedChannels
      (\ s a -> s{_cShowRelatedChannels = a})

-- | Which content tab users should see when viewing the channel.
cDefaultTab :: Lens' ChannelSettings (Maybe Text)
cDefaultTab
  = lens _cDefaultTab (\ s a -> s{_cDefaultTab = a})

-- | Title for the featured channels tab.
cFeaturedChannelsTitle :: Lens' ChannelSettings (Maybe Text)
cFeaturedChannelsTitle
  = lens _cFeaturedChannelsTitle
      (\ s a -> s{_cFeaturedChannelsTitle = a})

-- | The country of the channel.
cCountry :: Lens' ChannelSettings (Maybe Text)
cCountry = lens _cCountry (\ s a -> s{_cCountry = a})

-- | A prominent color that can be rendered on this channel page.
cProfileColor :: Lens' ChannelSettings (Maybe Text)
cProfileColor
  = lens _cProfileColor
      (\ s a -> s{_cProfileColor = a})

-- | Whether user-submitted comments left on the channel page need to be
-- approved by the channel owner to be publicly visible.
cModerateComments :: Lens' ChannelSettings (Maybe Bool)
cModerateComments
  = lens _cModerateComments
      (\ s a -> s{_cModerateComments = a})

-- | Lists keywords associated with the channel, comma-separated.
cKeywords :: Lens' ChannelSettings (Maybe Text)
cKeywords
  = lens _cKeywords (\ s a -> s{_cKeywords = a})

-- | The trailer of the channel, for users that are not subscribers.
cUnsubscribedTrailer :: Lens' ChannelSettings (Maybe Text)
cUnsubscribedTrailer
  = lens _cUnsubscribedTrailer
      (\ s a -> s{_cUnsubscribedTrailer = a})

-- | The ID for a Google Analytics account to track and measure traffic to
-- the channels.
cTrackingAnalyticsAccountId :: Lens' ChannelSettings (Maybe Text)
cTrackingAnalyticsAccountId
  = lens _cTrackingAnalyticsAccountId
      (\ s a -> s{_cTrackingAnalyticsAccountId = a})

-- | The list of featured channels.
cFeaturedChannelsUrls :: Lens' ChannelSettings [Text]
cFeaturedChannelsUrls
  = lens _cFeaturedChannelsUrls
      (\ s a -> s{_cFeaturedChannelsUrls = a})
      . _Default
      . _Coerce

-- | Whether the tab to browse the videos should be displayed.
cShowBrowseView :: Lens' ChannelSettings (Maybe Bool)
cShowBrowseView
  = lens _cShowBrowseView
      (\ s a -> s{_cShowBrowseView = a})

-- | Specifies the channel title.
cTitle :: Lens' ChannelSettings (Maybe Text)
cTitle = lens _cTitle (\ s a -> s{_cTitle = a})

-- | Specifies the channel description.
cDescription :: Lens' ChannelSettings (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

cDefaultLanguage :: Lens' ChannelSettings (Maybe Text)
cDefaultLanguage
  = lens _cDefaultLanguage
      (\ s a -> s{_cDefaultLanguage = a})

instance FromJSON ChannelSettings where
        parseJSON
          = withObject "ChannelSettings"
              (\ o ->
                 ChannelSettings <$>
                   (o .:? "showRelatedChannels") <*>
                     (o .:? "defaultTab")
                     <*> (o .:? "featuredChannelsTitle")
                     <*> (o .:? "country")
                     <*> (o .:? "profileColor")
                     <*> (o .:? "moderateComments")
                     <*> (o .:? "keywords")
                     <*> (o .:? "unsubscribedTrailer")
                     <*> (o .:? "trackingAnalyticsAccountId")
                     <*> (o .:? "featuredChannelsUrls" .!= mempty)
                     <*> (o .:? "showBrowseView")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON ChannelSettings where
        toJSON ChannelSettings{..}
          = object
              (catMaybes
                 [("showRelatedChannels" .=) <$>
                    _cShowRelatedChannels,
                  ("defaultTab" .=) <$> _cDefaultTab,
                  ("featuredChannelsTitle" .=) <$>
                    _cFeaturedChannelsTitle,
                  ("country" .=) <$> _cCountry,
                  ("profileColor" .=) <$> _cProfileColor,
                  ("moderateComments" .=) <$> _cModerateComments,
                  ("keywords" .=) <$> _cKeywords,
                  ("unsubscribedTrailer" .=) <$> _cUnsubscribedTrailer,
                  ("trackingAnalyticsAccountId" .=) <$>
                    _cTrackingAnalyticsAccountId,
                  ("featuredChannelsUrls" .=) <$>
                    _cFeaturedChannelsUrls,
                  ("showBrowseView" .=) <$> _cShowBrowseView,
                  ("title" .=) <$> _cTitle,
                  ("description" .=) <$> _cDescription,
                  ("defaultLanguage" .=) <$> _cDefaultLanguage])

-- | Basic details about a subscription, including title, description and
-- thumbnails of the subscribed item.
--
-- /See:/ 'subscriptionSNIppet' smart constructor.
data SubscriptionSNIppet = SubscriptionSNIppet
    { _ssResourceId   :: !(Maybe (Maybe ResourceId))
    , _ssPublishedAt  :: !(Maybe UTCTime)
    , _ssChannelTitle :: !(Maybe Text)
    , _ssChannelId    :: !(Maybe Text)
    , _ssThumbnails   :: !(Maybe (Maybe ThumbnailDetails))
    , _ssTitle        :: !(Maybe Text)
    , _ssDescription  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssResourceId'
--
-- * 'ssPublishedAt'
--
-- * 'ssChannelTitle'
--
-- * 'ssChannelId'
--
-- * 'ssThumbnails'
--
-- * 'ssTitle'
--
-- * 'ssDescription'
subscriptionSNIppet
    :: SubscriptionSNIppet
subscriptionSNIppet =
    SubscriptionSNIppet
    { _ssResourceId = Nothing
    , _ssPublishedAt = Nothing
    , _ssChannelTitle = Nothing
    , _ssChannelId = Nothing
    , _ssThumbnails = Nothing
    , _ssTitle = Nothing
    , _ssDescription = Nothing
    }

-- | The id object contains information about the channel that the user
-- subscribed to.
ssResourceId :: Lens' SubscriptionSNIppet (Maybe (Maybe ResourceId))
ssResourceId
  = lens _ssResourceId (\ s a -> s{_ssResourceId = a})

-- | The date and time that the subscription was created. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
ssPublishedAt :: Lens' SubscriptionSNIppet (Maybe UTCTime)
ssPublishedAt
  = lens _ssPublishedAt
      (\ s a -> s{_ssPublishedAt = a})

-- | Channel title for the channel that the subscription belongs to.
ssChannelTitle :: Lens' SubscriptionSNIppet (Maybe Text)
ssChannelTitle
  = lens _ssChannelTitle
      (\ s a -> s{_ssChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the subscriber\'s channel.
ssChannelId :: Lens' SubscriptionSNIppet (Maybe Text)
ssChannelId
  = lens _ssChannelId (\ s a -> s{_ssChannelId = a})

-- | A map of thumbnail images associated with the video. For each object in
-- the map, the key is the name of the thumbnail image, and the value is an
-- object that contains other information about the thumbnail.
ssThumbnails :: Lens' SubscriptionSNIppet (Maybe (Maybe ThumbnailDetails))
ssThumbnails
  = lens _ssThumbnails (\ s a -> s{_ssThumbnails = a})

-- | The subscription\'s title.
ssTitle :: Lens' SubscriptionSNIppet (Maybe Text)
ssTitle = lens _ssTitle (\ s a -> s{_ssTitle = a})

-- | The subscription\'s details.
ssDescription :: Lens' SubscriptionSNIppet (Maybe Text)
ssDescription
  = lens _ssDescription
      (\ s a -> s{_ssDescription = a})

instance FromJSON SubscriptionSNIppet where
        parseJSON
          = withObject "SubscriptionSNIppet"
              (\ o ->
                 SubscriptionSNIppet <$>
                   (o .:? "resourceId") <*> (o .:? "publishedAt") <*>
                     (o .:? "channelTitle")
                     <*> (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON SubscriptionSNIppet where
        toJSON SubscriptionSNIppet{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _ssResourceId,
                  ("publishedAt" .=) <$> _ssPublishedAt,
                  ("channelTitle" .=) <$> _ssChannelTitle,
                  ("channelId" .=) <$> _ssChannelId,
                  ("thumbnails" .=) <$> _ssThumbnails,
                  ("title" .=) <$> _ssTitle,
                  ("description" .=) <$> _ssDescription])

-- | Brief description of the live stream status.
--
-- /See:/ 'liveStreamStatus' smart constructor.
data LiveStreamStatus = LiveStreamStatus
    { _lssStreamStatus :: !(Maybe Text)
    , _lssHealthStatus :: !(Maybe (Maybe LiveStreamHealthStatus))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssStreamStatus'
--
-- * 'lssHealthStatus'
liveStreamStatus
    :: LiveStreamStatus
liveStreamStatus =
    LiveStreamStatus
    { _lssStreamStatus = Nothing
    , _lssHealthStatus = Nothing
    }

lssStreamStatus :: Lens' LiveStreamStatus (Maybe Text)
lssStreamStatus
  = lens _lssStreamStatus
      (\ s a -> s{_lssStreamStatus = a})

-- | The health status of the stream.
lssHealthStatus :: Lens' LiveStreamStatus (Maybe (Maybe LiveStreamHealthStatus))
lssHealthStatus
  = lens _lssHealthStatus
      (\ s a -> s{_lssHealthStatus = a})

instance FromJSON LiveStreamStatus where
        parseJSON
          = withObject "LiveStreamStatus"
              (\ o ->
                 LiveStreamStatus <$>
                   (o .:? "streamStatus") <*> (o .:? "healthStatus"))

instance ToJSON LiveStreamStatus where
        toJSON LiveStreamStatus{..}
          = object
              (catMaybes
                 [("streamStatus" .=) <$> _lssStreamStatus,
                  ("healthStatus" .=) <$> _lssHealthStatus])

-- | Details about the live streaming metadata.
--
-- /See:/ 'videoLiveStreamingDetails' smart constructor.
data VideoLiveStreamingDetails = VideoLiveStreamingDetails
    { _vlsdActualEndTime      :: !(Maybe UTCTime)
    , _vlsdConcurrentViewers  :: !(Maybe Word64)
    , _vlsdScheduledEndTime   :: !(Maybe UTCTime)
    , _vlsdScheduledStartTime :: !(Maybe UTCTime)
    , _vlsdActualStartTime    :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoLiveStreamingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlsdActualEndTime'
--
-- * 'vlsdConcurrentViewers'
--
-- * 'vlsdScheduledEndTime'
--
-- * 'vlsdScheduledStartTime'
--
-- * 'vlsdActualStartTime'
videoLiveStreamingDetails
    :: VideoLiveStreamingDetails
videoLiveStreamingDetails =
    VideoLiveStreamingDetails
    { _vlsdActualEndTime = Nothing
    , _vlsdConcurrentViewers = Nothing
    , _vlsdScheduledEndTime = Nothing
    , _vlsdScheduledStartTime = Nothing
    , _vlsdActualStartTime = Nothing
    }

-- | The time that the broadcast actually ended. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. This value will not be
-- available until the broadcast is over.
vlsdActualEndTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdActualEndTime
  = lens _vlsdActualEndTime
      (\ s a -> s{_vlsdActualEndTime = a})

-- | The number of viewers currently watching the broadcast. The property and
-- its value will be present if the broadcast has current viewers and the
-- broadcast owner has not hidden the viewcount for the video. Note that
-- YouTube stops tracking the number of concurrent viewers for a broadcast
-- when the broadcast ends. So, this property would not identify the number
-- of viewers watching an archived video of a live broadcast that already
-- ended.
vlsdConcurrentViewers :: Lens' VideoLiveStreamingDetails (Maybe Word64)
vlsdConcurrentViewers
  = lens _vlsdConcurrentViewers
      (\ s a -> s{_vlsdConcurrentViewers = a})

-- | The time that the broadcast is scheduled to end. The value is specified
-- in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. If the value is empty or
-- the property is not present, then the broadcast is scheduled to continue
-- indefinitely.
vlsdScheduledEndTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdScheduledEndTime
  = lens _vlsdScheduledEndTime
      (\ s a -> s{_vlsdScheduledEndTime = a})

-- | The time that the broadcast is scheduled to begin. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
vlsdScheduledStartTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdScheduledStartTime
  = lens _vlsdScheduledStartTime
      (\ s a -> s{_vlsdScheduledStartTime = a})

-- | The time that the broadcast actually started. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. This value will not be
-- available until the broadcast begins.
vlsdActualStartTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdActualStartTime
  = lens _vlsdActualStartTime
      (\ s a -> s{_vlsdActualStartTime = a})

instance FromJSON VideoLiveStreamingDetails where
        parseJSON
          = withObject "VideoLiveStreamingDetails"
              (\ o ->
                 VideoLiveStreamingDetails <$>
                   (o .:? "actualEndTime") <*>
                     (o .:? "concurrentViewers")
                     <*> (o .:? "scheduledEndTime")
                     <*> (o .:? "scheduledStartTime")
                     <*> (o .:? "actualStartTime"))

instance ToJSON VideoLiveStreamingDetails where
        toJSON VideoLiveStreamingDetails{..}
          = object
              (catMaybes
                 [("actualEndTime" .=) <$> _vlsdActualEndTime,
                  ("concurrentViewers" .=) <$> _vlsdConcurrentViewers,
                  ("scheduledEndTime" .=) <$> _vlsdScheduledEndTime,
                  ("scheduledStartTime" .=) <$>
                    _vlsdScheduledStartTime,
                  ("actualStartTime" .=) <$> _vlsdActualStartTime])

-- | Comments written in (direct or indirect) reply to the top level comment.
--
-- /See:/ 'commentThreadReplies' smart constructor.
newtype CommentThreadReplies = CommentThreadReplies
    { _ctrComments :: Maybe [Maybe Comment]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrComments'
commentThreadReplies
    :: CommentThreadReplies
commentThreadReplies =
    CommentThreadReplies
    { _ctrComments = Nothing
    }

-- | A limited number of replies. Unless the number of replies returned
-- equals total_reply_count in the snippet the returned replies are only a
-- subset of the total number of replies.
ctrComments :: Lens' CommentThreadReplies [Maybe Comment]
ctrComments
  = lens _ctrComments (\ s a -> s{_ctrComments = a}) .
      _Default
      . _Coerce

instance FromJSON CommentThreadReplies where
        parseJSON
          = withObject "CommentThreadReplies"
              (\ o ->
                 CommentThreadReplies <$>
                   (o .:? "comments" .!= mempty))

instance ToJSON CommentThreadReplies where
        toJSON CommentThreadReplies{..}
          = object
              (catMaybes [("comments" .=) <$> _ctrComments])

-- | ChannelSection localization setting
--
-- /See:/ 'channelSectionLocalization' smart constructor.
newtype ChannelSectionLocalization = ChannelSectionLocalization
    { _cslTitle :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslTitle'
channelSectionLocalization
    :: ChannelSectionLocalization
channelSectionLocalization =
    ChannelSectionLocalization
    { _cslTitle = Nothing
    }

-- | The localized strings for channel section\'s title.
cslTitle :: Lens' ChannelSectionLocalization (Maybe Text)
cslTitle = lens _cslTitle (\ s a -> s{_cslTitle = a})

instance FromJSON ChannelSectionLocalization where
        parseJSON
          = withObject "ChannelSectionLocalization"
              (\ o ->
                 ChannelSectionLocalization <$> (o .:? "title"))

instance ToJSON ChannelSectionLocalization where
        toJSON ChannelSectionLocalization{..}
          = object (catMaybes [("title" .=) <$> _cslTitle])

-- | Details about a resource which is being promoted.
--
-- /See:/ 'activityContentDetailsPromotedItem' smart constructor.
data ActivityContentDetailsPromotedItem = ActivityContentDetailsPromotedItem
    { _acdpiDestinationUrl      :: !(Maybe Text)
    , _acdpiClickTrackingUrl    :: !(Maybe Text)
    , _acdpiForecastingUrl      :: !(Maybe [Text])
    , _acdpiDescriptionText     :: !(Maybe Text)
    , _acdpiCtaType             :: !(Maybe Text)
    , _acdpiVideoId             :: !(Maybe Text)
    , _acdpiAdTag               :: !(Maybe Text)
    , _acdpiCreativeViewUrl     :: !(Maybe Text)
    , _acdpiImpressionUrl       :: !(Maybe [Text])
    , _acdpiCustomCtaButtonText :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsPromotedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdpiDestinationUrl'
--
-- * 'acdpiClickTrackingUrl'
--
-- * 'acdpiForecastingUrl'
--
-- * 'acdpiDescriptionText'
--
-- * 'acdpiCtaType'
--
-- * 'acdpiVideoId'
--
-- * 'acdpiAdTag'
--
-- * 'acdpiCreativeViewUrl'
--
-- * 'acdpiImpressionUrl'
--
-- * 'acdpiCustomCtaButtonText'
activityContentDetailsPromotedItem
    :: ActivityContentDetailsPromotedItem
activityContentDetailsPromotedItem =
    ActivityContentDetailsPromotedItem
    { _acdpiDestinationUrl = Nothing
    , _acdpiClickTrackingUrl = Nothing
    , _acdpiForecastingUrl = Nothing
    , _acdpiDescriptionText = Nothing
    , _acdpiCtaType = Nothing
    , _acdpiVideoId = Nothing
    , _acdpiAdTag = Nothing
    , _acdpiCreativeViewUrl = Nothing
    , _acdpiImpressionUrl = Nothing
    , _acdpiCustomCtaButtonText = Nothing
    }

-- | The URL the client should direct the user to, if the user chooses to
-- visit the advertiser\'s website.
acdpiDestinationUrl :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiDestinationUrl
  = lens _acdpiDestinationUrl
      (\ s a -> s{_acdpiDestinationUrl = a})

-- | The URL the client should ping to indicate that the user clicked through
-- on this promoted item.
acdpiClickTrackingUrl :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiClickTrackingUrl
  = lens _acdpiClickTrackingUrl
      (\ s a -> s{_acdpiClickTrackingUrl = a})

-- | The list of forecasting URLs. The client should ping all of these URLs
-- when a promoted item is not available, to indicate that a promoted item
-- could have been shown.
acdpiForecastingUrl :: Lens' ActivityContentDetailsPromotedItem [Text]
acdpiForecastingUrl
  = lens _acdpiForecastingUrl
      (\ s a -> s{_acdpiForecastingUrl = a})
      . _Default
      . _Coerce

-- | The text description to accompany the promoted item.
acdpiDescriptionText :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiDescriptionText
  = lens _acdpiDescriptionText
      (\ s a -> s{_acdpiDescriptionText = a})

-- | The type of call-to-action, a message to the user indicating action that
-- can be taken.
acdpiCtaType :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiCtaType
  = lens _acdpiCtaType (\ s a -> s{_acdpiCtaType = a})

-- | The ID that YouTube uses to uniquely identify the promoted video.
acdpiVideoId :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiVideoId
  = lens _acdpiVideoId (\ s a -> s{_acdpiVideoId = a})

-- | The URL the client should fetch to request a promoted item.
acdpiAdTag :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiAdTag
  = lens _acdpiAdTag (\ s a -> s{_acdpiAdTag = a})

-- | The URL the client should ping to indicate that the user was shown this
-- promoted item.
acdpiCreativeViewUrl :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiCreativeViewUrl
  = lens _acdpiCreativeViewUrl
      (\ s a -> s{_acdpiCreativeViewUrl = a})

-- | The list of impression URLs. The client should ping all of these URLs to
-- indicate that the user was shown this promoted item.
acdpiImpressionUrl :: Lens' ActivityContentDetailsPromotedItem [Text]
acdpiImpressionUrl
  = lens _acdpiImpressionUrl
      (\ s a -> s{_acdpiImpressionUrl = a})
      . _Default
      . _Coerce

-- | The custom call-to-action button text. If specified, it will override
-- the default button text for the cta_type.
acdpiCustomCtaButtonText :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiCustomCtaButtonText
  = lens _acdpiCustomCtaButtonText
      (\ s a -> s{_acdpiCustomCtaButtonText = a})

instance FromJSON ActivityContentDetailsPromotedItem
         where
        parseJSON
          = withObject "ActivityContentDetailsPromotedItem"
              (\ o ->
                 ActivityContentDetailsPromotedItem <$>
                   (o .:? "destinationUrl") <*>
                     (o .:? "clickTrackingUrl")
                     <*> (o .:? "forecastingUrl" .!= mempty)
                     <*> (o .:? "descriptionText")
                     <*> (o .:? "ctaType")
                     <*> (o .:? "videoId")
                     <*> (o .:? "adTag")
                     <*> (o .:? "creativeViewUrl")
                     <*> (o .:? "impressionUrl" .!= mempty)
                     <*> (o .:? "customCtaButtonText"))

instance ToJSON ActivityContentDetailsPromotedItem
         where
        toJSON ActivityContentDetailsPromotedItem{..}
          = object
              (catMaybes
                 [("destinationUrl" .=) <$> _acdpiDestinationUrl,
                  ("clickTrackingUrl" .=) <$> _acdpiClickTrackingUrl,
                  ("forecastingUrl" .=) <$> _acdpiForecastingUrl,
                  ("descriptionText" .=) <$> _acdpiDescriptionText,
                  ("ctaType" .=) <$> _acdpiCtaType,
                  ("videoId" .=) <$> _acdpiVideoId,
                  ("adTag" .=) <$> _acdpiAdTag,
                  ("creativeViewUrl" .=) <$> _acdpiCreativeViewUrl,
                  ("impressionUrl" .=) <$> _acdpiImpressionUrl,
                  ("customCtaButtonText" .=) <$>
                    _acdpiCustomCtaButtonText])

-- | Geographical coordinates of a point, in WGS84.
--
-- /See:/ 'geoPoint' smart constructor.
data GeoPoint = GeoPoint
    { _gpLatitude  :: !(Maybe Double)
    , _gpAltitude  :: !(Maybe Double)
    , _gpLongitude :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpLatitude'
--
-- * 'gpAltitude'
--
-- * 'gpLongitude'
geoPoint
    :: GeoPoint
geoPoint =
    GeoPoint
    { _gpLatitude = Nothing
    , _gpAltitude = Nothing
    , _gpLongitude = Nothing
    }

-- | Latitude in degrees.
gpLatitude :: Lens' GeoPoint (Maybe Double)
gpLatitude
  = lens _gpLatitude (\ s a -> s{_gpLatitude = a})

-- | Altitude above the reference ellipsoid, in meters.
gpAltitude :: Lens' GeoPoint (Maybe Double)
gpAltitude
  = lens _gpAltitude (\ s a -> s{_gpAltitude = a})

-- | Longitude in degrees.
gpLongitude :: Lens' GeoPoint (Maybe Double)
gpLongitude
  = lens _gpLongitude (\ s a -> s{_gpLongitude = a})

instance FromJSON GeoPoint where
        parseJSON
          = withObject "GeoPoint"
              (\ o ->
                 GeoPoint <$>
                   (o .:? "latitude") <*> (o .:? "altitude") <*>
                     (o .:? "longitude"))

instance ToJSON GeoPoint where
        toJSON GeoPoint{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _gpLatitude,
                  ("altitude" .=) <$> _gpAltitude,
                  ("longitude" .=) <$> _gpLongitude])

-- | Basic details about an i18n language, such as language code and
-- human-readable name.
--
-- /See:/ 'i18nLanguageSNIppet' smart constructor.
data I18nLanguageSNIppet = I18nLanguageSNIppet
    { _ilsHl   :: !(Maybe Text)
    , _ilsName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguageSNIppet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilsHl'
--
-- * 'ilsName'
i18nLanguageSNIppet
    :: I18nLanguageSNIppet
i18nLanguageSNIppet =
    I18nLanguageSNIppet
    { _ilsHl = Nothing
    , _ilsName = Nothing
    }

-- | A short BCP-47 code that uniquely identifies a language.
ilsHl :: Lens' I18nLanguageSNIppet (Maybe Text)
ilsHl = lens _ilsHl (\ s a -> s{_ilsHl = a})

-- | The human-readable name of the language in the language itself.
ilsName :: Lens' I18nLanguageSNIppet (Maybe Text)
ilsName = lens _ilsName (\ s a -> s{_ilsName = a})

instance FromJSON I18nLanguageSNIppet where
        parseJSON
          = withObject "I18nLanguageSNIppet"
              (\ o ->
                 I18nLanguageSNIppet <$>
                   (o .:? "hl") <*> (o .:? "name"))

instance ToJSON I18nLanguageSNIppet where
        toJSON I18nLanguageSNIppet{..}
          = object
              (catMaybes
                 [("hl" .=) <$> _ilsHl, ("name" .=) <$> _ilsName])

--
-- /See:/ 'videoAbuseReportSecondaryReason' smart constructor.
data VideoAbuseReportSecondaryReason = VideoAbuseReportSecondaryReason
    { _varsrId    :: !(Maybe Text)
    , _varsrLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportSecondaryReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varsrId'
--
-- * 'varsrLabel'
videoAbuseReportSecondaryReason
    :: VideoAbuseReportSecondaryReason
videoAbuseReportSecondaryReason =
    VideoAbuseReportSecondaryReason
    { _varsrId = Nothing
    , _varsrLabel = Nothing
    }

-- | The ID of this abuse report secondary reason.
varsrId :: Lens' VideoAbuseReportSecondaryReason (Maybe Text)
varsrId = lens _varsrId (\ s a -> s{_varsrId = a})

-- | The localized label for this abuse report secondary reason.
varsrLabel :: Lens' VideoAbuseReportSecondaryReason (Maybe Text)
varsrLabel
  = lens _varsrLabel (\ s a -> s{_varsrLabel = a})

instance FromJSON VideoAbuseReportSecondaryReason
         where
        parseJSON
          = withObject "VideoAbuseReportSecondaryReason"
              (\ o ->
                 VideoAbuseReportSecondaryReason <$>
                   (o .:? "id") <*> (o .:? "label"))

instance ToJSON VideoAbuseReportSecondaryReason where
        toJSON VideoAbuseReportSecondaryReason{..}
          = object
              (catMaybes
                 [("id" .=) <$> _varsrId,
                  ("label" .=) <$> _varsrLabel])

--
-- /See:/ 'videoConversionPing' smart constructor.
data VideoConversionPing = VideoConversionPing
    { _vcpContext       :: !(Maybe Text)
    , _vcpConversionUrl :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoConversionPing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcpContext'
--
-- * 'vcpConversionUrl'
videoConversionPing
    :: VideoConversionPing
videoConversionPing =
    VideoConversionPing
    { _vcpContext = Nothing
    , _vcpConversionUrl = Nothing
    }

-- | Defines the context of the ping.
vcpContext :: Lens' VideoConversionPing (Maybe Text)
vcpContext
  = lens _vcpContext (\ s a -> s{_vcpContext = a})

-- | The url (without the schema) that the app shall send the ping to. It\'s
-- at caller\'s descretion to decide which schema to use (http vs https)
-- Example of a returned url: \/\/googleads.g.doubleclick.net\/pagead\/
-- viewthroughconversion\/962985656\/?data=path%3DtHe_path%3Btype%3D
-- like%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA%3Bytvid%3DUrIaJUvIQDg&labe=default
-- The caller must append biscotti authentication (ms param in case of
-- mobile, for example) to this ping.
vcpConversionUrl :: Lens' VideoConversionPing (Maybe Text)
vcpConversionUrl
  = lens _vcpConversionUrl
      (\ s a -> s{_vcpConversionUrl = a})

instance FromJSON VideoConversionPing where
        parseJSON
          = withObject "VideoConversionPing"
              (\ o ->
                 VideoConversionPing <$>
                   (o .:? "context") <*> (o .:? "conversionUrl"))

instance ToJSON VideoConversionPing where
        toJSON VideoConversionPing{..}
          = object
              (catMaybes
                 [("context" .=) <$> _vcpContext,
                  ("conversionUrl" .=) <$> _vcpConversionUrl])

-- | The contentOwnerDetails object encapsulates channel data that is
-- relevant for YouTube Partners linked with the channel.
--
-- /See:/ 'channelContentOwnerDetails' smart constructor.
data ChannelContentOwnerDetails = ChannelContentOwnerDetails
    { _ccodTimeLinked   :: !(Maybe UTCTime)
    , _ccodContentOwner :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelContentOwnerDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccodTimeLinked'
--
-- * 'ccodContentOwner'
channelContentOwnerDetails
    :: ChannelContentOwnerDetails
channelContentOwnerDetails =
    ChannelContentOwnerDetails
    { _ccodTimeLinked = Nothing
    , _ccodContentOwner = Nothing
    }

-- | The date and time of when the channel was linked to the content owner.
-- The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
ccodTimeLinked :: Lens' ChannelContentOwnerDetails (Maybe UTCTime)
ccodTimeLinked
  = lens _ccodTimeLinked
      (\ s a -> s{_ccodTimeLinked = a})

-- | The ID of the content owner linked to the channel.
ccodContentOwner :: Lens' ChannelContentOwnerDetails (Maybe Text)
ccodContentOwner
  = lens _ccodContentOwner
      (\ s a -> s{_ccodContentOwner = a})

instance FromJSON ChannelContentOwnerDetails where
        parseJSON
          = withObject "ChannelContentOwnerDetails"
              (\ o ->
                 ChannelContentOwnerDetails <$>
                   (o .:? "timeLinked") <*> (o .:? "contentOwner"))

instance ToJSON ChannelContentOwnerDetails where
        toJSON ChannelContentOwnerDetails{..}
          = object
              (catMaybes
                 [("timeLinked" .=) <$> _ccodTimeLinked,
                  ("contentOwner" .=) <$> _ccodContentOwner])
