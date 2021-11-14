{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlusDomains.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlusDomains.Types.Product where

import Network.Google.PlusDomains.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'audience' smart constructor.
data Audience =
  Audience'
    { _aEtag :: !(Maybe Text)
    , _aKind :: !Text
    , _aVisibility :: !(Maybe Text)
    , _aItem :: !(Maybe PlusDomainsACLentryResource)
    , _aMemberCount :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Audience' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aKind'
--
-- * 'aVisibility'
--
-- * 'aItem'
--
-- * 'aMemberCount'
audience
    :: Audience
audience =
  Audience'
    { _aEtag = Nothing
    , _aKind = "plus#audience"
    , _aVisibility = Nothing
    , _aItem = Nothing
    , _aMemberCount = Nothing
    }


-- | ETag of this response for caching purposes.
aEtag :: Lens' Audience (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Identifies this resource as an audience. Value: \"plus#audience\".
aKind :: Lens' Audience Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The circle members\' visibility as chosen by the owner of the circle.
-- This only applies for items with \"item.type\" equals \"circle\".
-- Possible values are: - \"public\" - Members are visible to the public. -
-- \"limited\" - Members are visible to a limited audience. - \"private\" -
-- Members are visible to the owner only.
aVisibility :: Lens' Audience (Maybe Text)
aVisibility
  = lens _aVisibility (\ s a -> s{_aVisibility = a})

-- | The access control list entry.
aItem :: Lens' Audience (Maybe PlusDomainsACLentryResource)
aItem = lens _aItem (\ s a -> s{_aItem = a})

-- | The number of people in this circle. This only applies if entity_type is
-- CIRCLE.
aMemberCount :: Lens' Audience (Maybe Word32)
aMemberCount
  = lens _aMemberCount (\ s a -> s{_aMemberCount = a})
      . mapping _Coerce

instance FromJSON Audience where
        parseJSON
          = withObject "Audience"
              (\ o ->
                 Audience' <$>
                   (o .:? "etag") <*> (o .:? "kind" .!= "plus#audience")
                     <*> (o .:? "visibility")
                     <*> (o .:? "item")
                     <*> (o .:? "memberCount"))

instance ToJSON Audience where
        toJSON Audience'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag, Just ("kind" .= _aKind),
                  ("visibility" .=) <$> _aVisibility,
                  ("item" .=) <$> _aItem,
                  ("memberCount" .=) <$> _aMemberCount])

-- | The service provider that initially published this activity.
--
-- /See:/ 'activityProvider' smart constructor.
newtype ActivityProvider =
  ActivityProvider'
    { _apTitle :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apTitle'
activityProvider
    :: ActivityProvider
activityProvider = ActivityProvider' {_apTitle = Nothing}


-- | Name of the service provider.
apTitle :: Lens' ActivityProvider (Maybe Text)
apTitle = lens _apTitle (\ s a -> s{_apTitle = a})

instance FromJSON ActivityProvider where
        parseJSON
          = withObject "ActivityProvider"
              (\ o -> ActivityProvider' <$> (o .:? "title"))

instance ToJSON ActivityProvider where
        toJSON ActivityProvider'{..}
          = object (catMaybes [("title" .=) <$> _apTitle])

-- | If the attachment is a video, the embeddable link.
--
-- /See:/ 'activityObjectAttachmentsItemEmbed' smart constructor.
data ActivityObjectAttachmentsItemEmbed =
  ActivityObjectAttachmentsItemEmbed'
    { _aoaieURL :: !(Maybe Text)
    , _aoaieType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectAttachmentsItemEmbed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaieURL'
--
-- * 'aoaieType'
activityObjectAttachmentsItemEmbed
    :: ActivityObjectAttachmentsItemEmbed
activityObjectAttachmentsItemEmbed =
  ActivityObjectAttachmentsItemEmbed'
    {_aoaieURL = Nothing, _aoaieType = Nothing}


-- | URL of the link.
aoaieURL :: Lens' ActivityObjectAttachmentsItemEmbed (Maybe Text)
aoaieURL = lens _aoaieURL (\ s a -> s{_aoaieURL = a})

-- | Media type of the link.
aoaieType :: Lens' ActivityObjectAttachmentsItemEmbed (Maybe Text)
aoaieType
  = lens _aoaieType (\ s a -> s{_aoaieType = a})

instance FromJSON ActivityObjectAttachmentsItemEmbed
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsItemEmbed"
              (\ o ->
                 ActivityObjectAttachmentsItemEmbed' <$>
                   (o .:? "url") <*> (o .:? "type"))

instance ToJSON ActivityObjectAttachmentsItemEmbed
         where
        toJSON ActivityObjectAttachmentsItemEmbed'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _aoaieURL,
                  ("type" .=) <$> _aoaieType])

-- | People who +1\'d this comment.
--
-- /See:/ 'commentPlusoners' smart constructor.
newtype CommentPlusoners =
  CommentPlusoners'
    { _cpTotalItems :: Maybe (Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentPlusoners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpTotalItems'
commentPlusoners
    :: CommentPlusoners
commentPlusoners = CommentPlusoners' {_cpTotalItems = Nothing}


-- | Total number of people who +1\'d this comment.
cpTotalItems :: Lens' CommentPlusoners (Maybe Word32)
cpTotalItems
  = lens _cpTotalItems (\ s a -> s{_cpTotalItems = a})
      . mapping _Coerce

instance FromJSON CommentPlusoners where
        parseJSON
          = withObject "CommentPlusoners"
              (\ o -> CommentPlusoners' <$> (o .:? "totalItems"))

instance ToJSON CommentPlusoners where
        toJSON CommentPlusoners'{..}
          = object
              (catMaybes [("totalItems" .=) <$> _cpTotalItems])

-- | Actor info specific to particular clients.
--
-- /See:/ 'commentActorClientSpecificActorInfo' smart constructor.
newtype CommentActorClientSpecificActorInfo =
  CommentActorClientSpecificActorInfo'
    { _cacsaiYouTubeActorInfo :: Maybe CommentActorClientSpecificActorInfoYouTubeActorInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentActorClientSpecificActorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacsaiYouTubeActorInfo'
commentActorClientSpecificActorInfo
    :: CommentActorClientSpecificActorInfo
commentActorClientSpecificActorInfo =
  CommentActorClientSpecificActorInfo' {_cacsaiYouTubeActorInfo = Nothing}


-- | Actor info specific to YouTube clients.
cacsaiYouTubeActorInfo :: Lens' CommentActorClientSpecificActorInfo (Maybe CommentActorClientSpecificActorInfoYouTubeActorInfo)
cacsaiYouTubeActorInfo
  = lens _cacsaiYouTubeActorInfo
      (\ s a -> s{_cacsaiYouTubeActorInfo = a})

instance FromJSON CommentActorClientSpecificActorInfo
         where
        parseJSON
          = withObject "CommentActorClientSpecificActorInfo"
              (\ o ->
                 CommentActorClientSpecificActorInfo' <$>
                   (o .:? "youtubeActorInfo"))

instance ToJSON CommentActorClientSpecificActorInfo
         where
        toJSON CommentActorClientSpecificActorInfo'{..}
          = object
              (catMaybes
                 [("youtubeActorInfo" .=) <$>
                    _cacsaiYouTubeActorInfo])

-- | Actor info specific to YouTube clients.
--
-- /See:/ 'activityObjectActorClientSpecificActorInfoYouTubeActorInfo' smart constructor.
newtype ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo =
  ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo'
    { _aoacsaiytaiChannelId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoacsaiytaiChannelId'
activityObjectActorClientSpecificActorInfoYouTubeActorInfo
    :: ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
activityObjectActorClientSpecificActorInfoYouTubeActorInfo =
  ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo'
    {_aoacsaiytaiChannelId = Nothing}


-- | ID of the YouTube channel owned by the Actor.
aoacsaiytaiChannelId :: Lens' ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo (Maybe Text)
aoacsaiytaiChannelId
  = lens _aoacsaiytaiChannelId
      (\ s a -> s{_aoacsaiytaiChannelId = a})

instance FromJSON
           ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
         where
        parseJSON
          = withObject
              "ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo"
              (\ o ->
                 ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo'
                   <$> (o .:? "channelId"))

instance ToJSON
           ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
         where
        toJSON
          ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo'{..}
          = object
              (catMaybes
                 [("channelId" .=) <$> _aoacsaiytaiChannelId])

-- | People who +1\'d this activity.
--
-- /See:/ 'activityObjectPlusoners' smart constructor.
data ActivityObjectPlusoners =
  ActivityObjectPlusoners'
    { _aopTotalItems :: !(Maybe (Textual Word32))
    , _aopSelfLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectPlusoners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aopTotalItems'
--
-- * 'aopSelfLink'
activityObjectPlusoners
    :: ActivityObjectPlusoners
activityObjectPlusoners =
  ActivityObjectPlusoners' {_aopTotalItems = Nothing, _aopSelfLink = Nothing}


-- | Total number of people who +1\'d this activity.
aopTotalItems :: Lens' ActivityObjectPlusoners (Maybe Word32)
aopTotalItems
  = lens _aopTotalItems
      (\ s a -> s{_aopTotalItems = a})
      . mapping _Coerce

-- | The URL for the collection of people who +1\'d this activity.
aopSelfLink :: Lens' ActivityObjectPlusoners (Maybe Text)
aopSelfLink
  = lens _aopSelfLink (\ s a -> s{_aopSelfLink = a})

instance FromJSON ActivityObjectPlusoners where
        parseJSON
          = withObject "ActivityObjectPlusoners"
              (\ o ->
                 ActivityObjectPlusoners' <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON ActivityObjectPlusoners where
        toJSON ActivityObjectPlusoners'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aopTotalItems,
                  ("selfLink" .=) <$> _aopSelfLink])

--
-- /See:/ 'personEmailsItem' smart constructor.
data PersonEmailsItem =
  PersonEmailsItem'
    { _peiValue :: !(Maybe Text)
    , _peiType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonEmailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peiValue'
--
-- * 'peiType'
personEmailsItem
    :: PersonEmailsItem
personEmailsItem = PersonEmailsItem' {_peiValue = Nothing, _peiType = Nothing}


-- | The email address.
peiValue :: Lens' PersonEmailsItem (Maybe Text)
peiValue = lens _peiValue (\ s a -> s{_peiValue = a})

-- | The type of address. Possible values include, but are not limited to,
-- the following values: - \"account\" - Google account email address. -
-- \"home\" - Home email address. - \"work\" - Work email address. -
-- \"other\" - Other.
peiType :: Lens' PersonEmailsItem (Maybe Text)
peiType = lens _peiType (\ s a -> s{_peiType = a})

instance FromJSON PersonEmailsItem where
        parseJSON
          = withObject "PersonEmailsItem"
              (\ o ->
                 PersonEmailsItem' <$>
                   (o .:? "value") <*> (o .:? "type"))

instance ToJSON PersonEmailsItem where
        toJSON PersonEmailsItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _peiValue,
                  ("type" .=) <$> _peiType])

-- | The image representation of this actor.
--
-- /See:/ 'commentActorImage' smart constructor.
newtype CommentActorImage =
  CommentActorImage'
    { _caiURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiURL'
commentActorImage
    :: CommentActorImage
commentActorImage = CommentActorImage' {_caiURL = Nothing}


-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
caiURL :: Lens' CommentActorImage (Maybe Text)
caiURL = lens _caiURL (\ s a -> s{_caiURL = a})

instance FromJSON CommentActorImage where
        parseJSON
          = withObject "CommentActorImage"
              (\ o -> CommentActorImage' <$> (o .:? "url"))

instance ToJSON CommentActorImage where
        toJSON CommentActorImage'{..}
          = object (catMaybes [("url" .=) <$> _caiURL])

-- | Image resource.
--
-- /See:/ 'activityObjectAttachmentsItemThumbnailsItemImage' smart constructor.
data ActivityObjectAttachmentsItemThumbnailsItemImage =
  ActivityObjectAttachmentsItemThumbnailsItemImage'
    { _aoaitiiHeight :: !(Maybe (Textual Word32))
    , _aoaitiiURL :: !(Maybe Text)
    , _aoaitiiWidth :: !(Maybe (Textual Word32))
    , _aoaitiiType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectAttachmentsItemThumbnailsItemImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaitiiHeight'
--
-- * 'aoaitiiURL'
--
-- * 'aoaitiiWidth'
--
-- * 'aoaitiiType'
activityObjectAttachmentsItemThumbnailsItemImage
    :: ActivityObjectAttachmentsItemThumbnailsItemImage
activityObjectAttachmentsItemThumbnailsItemImage =
  ActivityObjectAttachmentsItemThumbnailsItemImage'
    { _aoaitiiHeight = Nothing
    , _aoaitiiURL = Nothing
    , _aoaitiiWidth = Nothing
    , _aoaitiiType = Nothing
    }


-- | The height, in pixels, of the linked resource.
aoaitiiHeight :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Word32)
aoaitiiHeight
  = lens _aoaitiiHeight
      (\ s a -> s{_aoaitiiHeight = a})
      . mapping _Coerce

-- | Image url.
aoaitiiURL :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Text)
aoaitiiURL
  = lens _aoaitiiURL (\ s a -> s{_aoaitiiURL = a})

-- | The width, in pixels, of the linked resource.
aoaitiiWidth :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Word32)
aoaitiiWidth
  = lens _aoaitiiWidth (\ s a -> s{_aoaitiiWidth = a})
      . mapping _Coerce

-- | Media type of the link.
aoaitiiType :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Text)
aoaitiiType
  = lens _aoaitiiType (\ s a -> s{_aoaitiiType = a})

instance FromJSON
           ActivityObjectAttachmentsItemThumbnailsItemImage
         where
        parseJSON
          = withObject
              "ActivityObjectAttachmentsItemThumbnailsItemImage"
              (\ o ->
                 ActivityObjectAttachmentsItemThumbnailsItemImage' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON
           ActivityObjectAttachmentsItemThumbnailsItemImage
         where
        toJSON
          ActivityObjectAttachmentsItemThumbnailsItemImage'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoaitiiHeight,
                  ("url" .=) <$> _aoaitiiURL,
                  ("width" .=) <$> _aoaitiiWidth,
                  ("type" .=) <$> _aoaitiiType])

-- | The position of the place.
--
-- /See:/ 'placePosition' smart constructor.
data PlacePosition =
  PlacePosition'
    { _ppLatitude :: !(Maybe (Textual Double))
    , _ppLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacePosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppLatitude'
--
-- * 'ppLongitude'
placePosition
    :: PlacePosition
placePosition = PlacePosition' {_ppLatitude = Nothing, _ppLongitude = Nothing}


-- | The latitude of this position.
ppLatitude :: Lens' PlacePosition (Maybe Double)
ppLatitude
  = lens _ppLatitude (\ s a -> s{_ppLatitude = a}) .
      mapping _Coerce

-- | The longitude of this position.
ppLongitude :: Lens' PlacePosition (Maybe Double)
ppLongitude
  = lens _ppLongitude (\ s a -> s{_ppLongitude = a}) .
      mapping _Coerce

instance FromJSON PlacePosition where
        parseJSON
          = withObject "PlacePosition"
              (\ o ->
                 PlacePosition' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON PlacePosition where
        toJSON PlacePosition'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _ppLatitude,
                  ("longitude" .=) <$> _ppLongitude])

--
-- /See:/ 'personPlacesLivedItem' smart constructor.
data PersonPlacesLivedItem =
  PersonPlacesLivedItem'
    { _ppliValue :: !(Maybe Text)
    , _ppliPrimary :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonPlacesLivedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppliValue'
--
-- * 'ppliPrimary'
personPlacesLivedItem
    :: PersonPlacesLivedItem
personPlacesLivedItem =
  PersonPlacesLivedItem' {_ppliValue = Nothing, _ppliPrimary = Nothing}


-- | A place where this person has lived. For example: \"Seattle, WA\",
-- \"Near Toronto\".
ppliValue :: Lens' PersonPlacesLivedItem (Maybe Text)
ppliValue
  = lens _ppliValue (\ s a -> s{_ppliValue = a})

-- | If \"true\", this place of residence is this person\'s primary
-- residence.
ppliPrimary :: Lens' PersonPlacesLivedItem (Maybe Bool)
ppliPrimary
  = lens _ppliPrimary (\ s a -> s{_ppliPrimary = a})

instance FromJSON PersonPlacesLivedItem where
        parseJSON
          = withObject "PersonPlacesLivedItem"
              (\ o ->
                 PersonPlacesLivedItem' <$>
                   (o .:? "value") <*> (o .:? "primary"))

instance ToJSON PersonPlacesLivedItem where
        toJSON PersonPlacesLivedItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ppliValue,
                  ("primary" .=) <$> _ppliPrimary])

--
-- /See:/ 'circle' smart constructor.
data Circle =
  Circle'
    { _cEtag :: !(Maybe Text)
    , _cKind :: !Text
    , _cPeople :: !(Maybe CirclePeople)
    , _cSelfLink :: !(Maybe Text)
    , _cDisplayName :: !(Maybe Text)
    , _cId :: !(Maybe Text)
    , _cDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Circle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEtag'
--
-- * 'cKind'
--
-- * 'cPeople'
--
-- * 'cSelfLink'
--
-- * 'cDisplayName'
--
-- * 'cId'
--
-- * 'cDescription'
circle
    :: Circle
circle =
  Circle'
    { _cEtag = Nothing
    , _cKind = "plus#circle"
    , _cPeople = Nothing
    , _cSelfLink = Nothing
    , _cDisplayName = Nothing
    , _cId = Nothing
    , _cDescription = Nothing
    }


-- | ETag of this response for caching purposes.
cEtag :: Lens' Circle (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | Identifies this resource as a circle. Value: \"plus#circle\".
cKind :: Lens' Circle Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The people in this circle.
cPeople :: Lens' Circle (Maybe CirclePeople)
cPeople = lens _cPeople (\ s a -> s{_cPeople = a})

-- | Link to this circle resource
cSelfLink :: Lens' Circle (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The circle name.
cDisplayName :: Lens' Circle (Maybe Text)
cDisplayName
  = lens _cDisplayName (\ s a -> s{_cDisplayName = a})

-- | The ID of the circle.
cId :: Lens' Circle (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The description of this circle.
cDescription :: Lens' Circle (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

instance FromJSON Circle where
        parseJSON
          = withObject "Circle"
              (\ o ->
                 Circle' <$>
                   (o .:? "etag") <*> (o .:? "kind" .!= "plus#circle")
                     <*> (o .:? "people")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON Circle where
        toJSON Circle'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cEtag, Just ("kind" .= _cKind),
                  ("people" .=) <$> _cPeople,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("displayName" .=) <$> _cDisplayName,
                  ("id" .=) <$> _cId,
                  ("description" .=) <$> _cDescription])

-- | Actor info specific to particular clients.
--
-- /See:/ 'activityActorClientSpecificActorInfo' smart constructor.
newtype ActivityActorClientSpecificActorInfo =
  ActivityActorClientSpecificActorInfo'
    { _aacsaiYouTubeActorInfo :: Maybe ActivityActorClientSpecificActorInfoYouTubeActorInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityActorClientSpecificActorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacsaiYouTubeActorInfo'
activityActorClientSpecificActorInfo
    :: ActivityActorClientSpecificActorInfo
activityActorClientSpecificActorInfo =
  ActivityActorClientSpecificActorInfo' {_aacsaiYouTubeActorInfo = Nothing}


-- | Actor info specific to YouTube clients.
aacsaiYouTubeActorInfo :: Lens' ActivityActorClientSpecificActorInfo (Maybe ActivityActorClientSpecificActorInfoYouTubeActorInfo)
aacsaiYouTubeActorInfo
  = lens _aacsaiYouTubeActorInfo
      (\ s a -> s{_aacsaiYouTubeActorInfo = a})

instance FromJSON
           ActivityActorClientSpecificActorInfo
         where
        parseJSON
          = withObject "ActivityActorClientSpecificActorInfo"
              (\ o ->
                 ActivityActorClientSpecificActorInfo' <$>
                   (o .:? "youtubeActorInfo"))

instance ToJSON ActivityActorClientSpecificActorInfo
         where
        toJSON ActivityActorClientSpecificActorInfo'{..}
          = object
              (catMaybes
                 [("youtubeActorInfo" .=) <$>
                    _aacsaiYouTubeActorInfo])

--
-- /See:/ 'person' smart constructor.
data Person =
  Person'
    { _pCurrentLocation :: !(Maybe Text)
    , _pEtag :: !(Maybe Text)
    , _pImage :: !(Maybe PersonImage)
    , _pBraggingRights :: !(Maybe Text)
    , _pPlacesLived :: !(Maybe [PersonPlacesLivedItem])
    , _pPlusOneCount :: !(Maybe (Textual Int32))
    , _pObjectType :: !(Maybe Text)
    , _pCover :: !(Maybe PersonCover)
    , _pKind :: !Text
    , _pRelationshipStatus :: !(Maybe Text)
    , _pURLs :: !(Maybe [PersonURLsItem])
    , _pDomain :: !(Maybe Text)
    , _pURL :: !(Maybe Text)
    , _pVerified :: !(Maybe Bool)
    , _pBirthday :: !(Maybe Text)
    , _pIsPlusUser :: !(Maybe Bool)
    , _pTagline :: !(Maybe Text)
    , _pGender :: !(Maybe Text)
    , _pName :: !(Maybe PersonName)
    , _pEmails :: !(Maybe [PersonEmailsItem])
    , _pOccupation :: !(Maybe Text)
    , _pSkills :: !(Maybe Text)
    , _pAboutMe :: !(Maybe Text)
    , _pDisplayName :: !(Maybe Text)
    , _pId :: !(Maybe Text)
    , _pNickname :: !(Maybe Text)
    , _pOrganizations :: !(Maybe [PersonOrganizationsItem])
    , _pCircledByCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCurrentLocation'
--
-- * 'pEtag'
--
-- * 'pImage'
--
-- * 'pBraggingRights'
--
-- * 'pPlacesLived'
--
-- * 'pPlusOneCount'
--
-- * 'pObjectType'
--
-- * 'pCover'
--
-- * 'pKind'
--
-- * 'pRelationshipStatus'
--
-- * 'pURLs'
--
-- * 'pDomain'
--
-- * 'pURL'
--
-- * 'pVerified'
--
-- * 'pBirthday'
--
-- * 'pIsPlusUser'
--
-- * 'pTagline'
--
-- * 'pGender'
--
-- * 'pName'
--
-- * 'pEmails'
--
-- * 'pOccupation'
--
-- * 'pSkills'
--
-- * 'pAboutMe'
--
-- * 'pDisplayName'
--
-- * 'pId'
--
-- * 'pNickname'
--
-- * 'pOrganizations'
--
-- * 'pCircledByCount'
person
    :: Person
person =
  Person'
    { _pCurrentLocation = Nothing
    , _pEtag = Nothing
    , _pImage = Nothing
    , _pBraggingRights = Nothing
    , _pPlacesLived = Nothing
    , _pPlusOneCount = Nothing
    , _pObjectType = Nothing
    , _pCover = Nothing
    , _pKind = "plus#person"
    , _pRelationshipStatus = Nothing
    , _pURLs = Nothing
    , _pDomain = Nothing
    , _pURL = Nothing
    , _pVerified = Nothing
    , _pBirthday = Nothing
    , _pIsPlusUser = Nothing
    , _pTagline = Nothing
    , _pGender = Nothing
    , _pName = Nothing
    , _pEmails = Nothing
    , _pOccupation = Nothing
    , _pSkills = Nothing
    , _pAboutMe = Nothing
    , _pDisplayName = Nothing
    , _pId = Nothing
    , _pNickname = Nothing
    , _pOrganizations = Nothing
    , _pCircledByCount = Nothing
    }


-- | (this field is not currently used)
pCurrentLocation :: Lens' Person (Maybe Text)
pCurrentLocation
  = lens _pCurrentLocation
      (\ s a -> s{_pCurrentLocation = a})

-- | ETag of this response for caching purposes.
pEtag :: Lens' Person (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | The representation of the person\'s profile photo.
pImage :: Lens' Person (Maybe PersonImage)
pImage = lens _pImage (\ s a -> s{_pImage = a})

-- | The \"bragging rights\" line of this person.
pBraggingRights :: Lens' Person (Maybe Text)
pBraggingRights
  = lens _pBraggingRights
      (\ s a -> s{_pBraggingRights = a})

-- | A list of places where this person has lived.
pPlacesLived :: Lens' Person [PersonPlacesLivedItem]
pPlacesLived
  = lens _pPlacesLived (\ s a -> s{_pPlacesLived = a})
      . _Default
      . _Coerce

-- | If a Google+ Page, the number of people who have +1\'d this page.
pPlusOneCount :: Lens' Person (Maybe Int32)
pPlusOneCount
  = lens _pPlusOneCount
      (\ s a -> s{_pPlusOneCount = a})
      . mapping _Coerce

-- | Type of person within Google+. Possible values include, but are not
-- limited to, the following values: - \"person\" - represents an actual
-- person. - \"page\" - represents a page.
pObjectType :: Lens' Person (Maybe Text)
pObjectType
  = lens _pObjectType (\ s a -> s{_pObjectType = a})

-- | The cover photo content.
pCover :: Lens' Person (Maybe PersonCover)
pCover = lens _pCover (\ s a -> s{_pCover = a})

-- | Identifies this resource as a person. Value: \"plus#person\".
pKind :: Lens' Person Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The person\'s relationship status. Possible values include, but are not
-- limited to, the following values: - \"single\" - Person is single. -
-- \"in_a_relationship\" - Person is in a relationship. - \"engaged\" -
-- Person is engaged. - \"married\" - Person is married. -
-- \"its_complicated\" - The relationship is complicated. -
-- \"open_relationship\" - Person is in an open relationship. - \"widowed\"
-- - Person is widowed. - \"in_domestic_partnership\" - Person is in a
-- domestic partnership. - \"in_civil_union\" - Person is in a civil union.
pRelationshipStatus :: Lens' Person (Maybe Text)
pRelationshipStatus
  = lens _pRelationshipStatus
      (\ s a -> s{_pRelationshipStatus = a})

-- | A list of URLs for this person.
pURLs :: Lens' Person [PersonURLsItem]
pURLs
  = lens _pURLs (\ s a -> s{_pURLs = a}) . _Default .
      _Coerce

-- | The hosted domain name for the user\'s Google Apps account. For
-- instance, example.com. The plus.profile.emails.read or email scope is
-- needed to get this domain name.
pDomain :: Lens' Person (Maybe Text)
pDomain = lens _pDomain (\ s a -> s{_pDomain = a})

-- | The URL of this person\'s profile.
pURL :: Lens' Person (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

-- | Whether the person or Google+ Page has been verified.
pVerified :: Lens' Person (Maybe Bool)
pVerified
  = lens _pVerified (\ s a -> s{_pVerified = a})

-- | The person\'s date of birth, represented as YYYY-MM-DD.
pBirthday :: Lens' Person (Maybe Text)
pBirthday
  = lens _pBirthday (\ s a -> s{_pBirthday = a})

-- | Whether this user has signed up for Google+.
pIsPlusUser :: Lens' Person (Maybe Bool)
pIsPlusUser
  = lens _pIsPlusUser (\ s a -> s{_pIsPlusUser = a})

-- | The brief description (tagline) of this person.
pTagline :: Lens' Person (Maybe Text)
pTagline = lens _pTagline (\ s a -> s{_pTagline = a})

-- | The person\'s gender. Possible values include, but are not limited to,
-- the following values: - \"male\" - Male gender. - \"female\" - Female
-- gender. - \"other\" - Other.
pGender :: Lens' Person (Maybe Text)
pGender = lens _pGender (\ s a -> s{_pGender = a})

-- | An object representation of the individual components of a person\'s
-- name.
pName :: Lens' Person (Maybe PersonName)
pName = lens _pName (\ s a -> s{_pName = a})

-- | A list of email addresses that this person has, including their Google
-- account email address, and the public verified email addresses on their
-- Google+ profile. The plus.profile.emails.read scope is needed to
-- retrieve these email addresses, or the email scope can be used to
-- retrieve just the Google account email address.
pEmails :: Lens' Person [PersonEmailsItem]
pEmails
  = lens _pEmails (\ s a -> s{_pEmails = a}) . _Default
      . _Coerce

-- | The occupation of this person.
pOccupation :: Lens' Person (Maybe Text)
pOccupation
  = lens _pOccupation (\ s a -> s{_pOccupation = a})

-- | The person\'s skills.
pSkills :: Lens' Person (Maybe Text)
pSkills = lens _pSkills (\ s a -> s{_pSkills = a})

-- | A short biography for this person.
pAboutMe :: Lens' Person (Maybe Text)
pAboutMe = lens _pAboutMe (\ s a -> s{_pAboutMe = a})

-- | The name of this person, which is suitable for display.
pDisplayName :: Lens' Person (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | The ID of this person.
pId :: Lens' Person (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The nickname of this person.
pNickname :: Lens' Person (Maybe Text)
pNickname
  = lens _pNickname (\ s a -> s{_pNickname = a})

-- | A list of current or past organizations with which this person is
-- associated.
pOrganizations :: Lens' Person [PersonOrganizationsItem]
pOrganizations
  = lens _pOrganizations
      (\ s a -> s{_pOrganizations = a})
      . _Default
      . _Coerce

-- | For followers who are visible, the number of people who have added this
-- person or page to a circle.
pCircledByCount :: Lens' Person (Maybe Int32)
pCircledByCount
  = lens _pCircledByCount
      (\ s a -> s{_pCircledByCount = a})
      . mapping _Coerce

instance FromJSON Person where
        parseJSON
          = withObject "Person"
              (\ o ->
                 Person' <$>
                   (o .:? "currentLocation") <*> (o .:? "etag") <*>
                     (o .:? "image")
                     <*> (o .:? "braggingRights")
                     <*> (o .:? "placesLived" .!= mempty)
                     <*> (o .:? "plusOneCount")
                     <*> (o .:? "objectType")
                     <*> (o .:? "cover")
                     <*> (o .:? "kind" .!= "plus#person")
                     <*> (o .:? "relationshipStatus")
                     <*> (o .:? "urls" .!= mempty)
                     <*> (o .:? "domain")
                     <*> (o .:? "url")
                     <*> (o .:? "verified")
                     <*> (o .:? "birthday")
                     <*> (o .:? "isPlusUser")
                     <*> (o .:? "tagline")
                     <*> (o .:? "gender")
                     <*> (o .:? "name")
                     <*> (o .:? "emails" .!= mempty)
                     <*> (o .:? "occupation")
                     <*> (o .:? "skills")
                     <*> (o .:? "aboutMe")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "nickname")
                     <*> (o .:? "organizations" .!= mempty)
                     <*> (o .:? "circledByCount"))

instance ToJSON Person where
        toJSON Person'{..}
          = object
              (catMaybes
                 [("currentLocation" .=) <$> _pCurrentLocation,
                  ("etag" .=) <$> _pEtag, ("image" .=) <$> _pImage,
                  ("braggingRights" .=) <$> _pBraggingRights,
                  ("placesLived" .=) <$> _pPlacesLived,
                  ("plusOneCount" .=) <$> _pPlusOneCount,
                  ("objectType" .=) <$> _pObjectType,
                  ("cover" .=) <$> _pCover, Just ("kind" .= _pKind),
                  ("relationshipStatus" .=) <$> _pRelationshipStatus,
                  ("urls" .=) <$> _pURLs, ("domain" .=) <$> _pDomain,
                  ("url" .=) <$> _pURL, ("verified" .=) <$> _pVerified,
                  ("birthday" .=) <$> _pBirthday,
                  ("isPlusUser" .=) <$> _pIsPlusUser,
                  ("tagline" .=) <$> _pTagline,
                  ("gender" .=) <$> _pGender, ("name" .=) <$> _pName,
                  ("emails" .=) <$> _pEmails,
                  ("occupation" .=) <$> _pOccupation,
                  ("skills" .=) <$> _pSkills,
                  ("aboutMe" .=) <$> _pAboutMe,
                  ("displayName" .=) <$> _pDisplayName,
                  ("id" .=) <$> _pId, ("nickname" .=) <$> _pNickname,
                  ("organizations" .=) <$> _pOrganizations,
                  ("circledByCount" .=) <$> _pCircledByCount])

--
-- /See:/ 'videostream' smart constructor.
data Videostream =
  Videostream'
    { _vHeight :: !(Maybe (Textual Int32))
    , _vURL :: !(Maybe Text)
    , _vWidth :: !(Maybe (Textual Int32))
    , _vType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Videostream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vHeight'
--
-- * 'vURL'
--
-- * 'vWidth'
--
-- * 'vType'
videostream
    :: Videostream
videostream =
  Videostream'
    {_vHeight = Nothing, _vURL = Nothing, _vWidth = Nothing, _vType = Nothing}


-- | The height, in pixels, of the video resource.
vHeight :: Lens' Videostream (Maybe Int32)
vHeight
  = lens _vHeight (\ s a -> s{_vHeight = a}) .
      mapping _Coerce

-- | URL of the video stream.
vURL :: Lens' Videostream (Maybe Text)
vURL = lens _vURL (\ s a -> s{_vURL = a})

-- | The width, in pixels, of the video resource.
vWidth :: Lens' Videostream (Maybe Int32)
vWidth
  = lens _vWidth (\ s a -> s{_vWidth = a}) .
      mapping _Coerce

-- | MIME type of the video stream.
vType :: Lens' Videostream (Maybe Text)
vType = lens _vType (\ s a -> s{_vType = a})

instance FromJSON Videostream where
        parseJSON
          = withObject "Videostream"
              (\ o ->
                 Videostream' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON Videostream where
        toJSON Videostream'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _vHeight, ("url" .=) <$> _vURL,
                  ("width" .=) <$> _vWidth, ("type" .=) <$> _vType])

--
-- /See:/ 'circleFeed' smart constructor.
data CircleFeed =
  CircleFeed'
    { _cfTotalItems :: !(Maybe (Textual Int32))
    , _cfEtag :: !(Maybe Text)
    , _cfNextPageToken :: !(Maybe Text)
    , _cfNextLink :: !(Maybe Text)
    , _cfKind :: !Text
    , _cfItems :: !(Maybe [Circle])
    , _cfSelfLink :: !(Maybe Text)
    , _cfTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CircleFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfTotalItems'
--
-- * 'cfEtag'
--
-- * 'cfNextPageToken'
--
-- * 'cfNextLink'
--
-- * 'cfKind'
--
-- * 'cfItems'
--
-- * 'cfSelfLink'
--
-- * 'cfTitle'
circleFeed
    :: CircleFeed
circleFeed =
  CircleFeed'
    { _cfTotalItems = Nothing
    , _cfEtag = Nothing
    , _cfNextPageToken = Nothing
    , _cfNextLink = Nothing
    , _cfKind = "plus#circleFeed"
    , _cfItems = Nothing
    , _cfSelfLink = Nothing
    , _cfTitle = Nothing
    }


-- | The total number of circles. The number of circles in this response may
-- be smaller due to paging.
cfTotalItems :: Lens' CircleFeed (Maybe Int32)
cfTotalItems
  = lens _cfTotalItems (\ s a -> s{_cfTotalItems = a})
      . mapping _Coerce

-- | ETag of this response for caching purposes.
cfEtag :: Lens' CircleFeed (Maybe Text)
cfEtag = lens _cfEtag (\ s a -> s{_cfEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
cfNextPageToken :: Lens' CircleFeed (Maybe Text)
cfNextPageToken
  = lens _cfNextPageToken
      (\ s a -> s{_cfNextPageToken = a})

-- | Link to the next page of circles.
cfNextLink :: Lens' CircleFeed (Maybe Text)
cfNextLink
  = lens _cfNextLink (\ s a -> s{_cfNextLink = a})

-- | Identifies this resource as a collection of circles. Value:
-- \"plus#circleFeed\".
cfKind :: Lens' CircleFeed Text
cfKind = lens _cfKind (\ s a -> s{_cfKind = a})

-- | The circles in this page of results.
cfItems :: Lens' CircleFeed [Circle]
cfItems
  = lens _cfItems (\ s a -> s{_cfItems = a}) . _Default
      . _Coerce

-- | Link to this page of circles.
cfSelfLink :: Lens' CircleFeed (Maybe Text)
cfSelfLink
  = lens _cfSelfLink (\ s a -> s{_cfSelfLink = a})

-- | The title of this list of resources.
cfTitle :: Lens' CircleFeed (Maybe Text)
cfTitle = lens _cfTitle (\ s a -> s{_cfTitle = a})

instance FromJSON CircleFeed where
        parseJSON
          = withObject "CircleFeed"
              (\ o ->
                 CircleFeed' <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "plus#circleFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "title"))

instance ToJSON CircleFeed where
        toJSON CircleFeed'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _cfTotalItems,
                  ("etag" .=) <$> _cfEtag,
                  ("nextPageToken" .=) <$> _cfNextPageToken,
                  ("nextLink" .=) <$> _cfNextLink,
                  Just ("kind" .= _cfKind), ("items" .=) <$> _cfItems,
                  ("selfLink" .=) <$> _cfSelfLink,
                  ("title" .=) <$> _cfTitle])

-- | The preview image for photos or videos.
--
-- /See:/ 'activityObjectAttachmentsItemImage' smart constructor.
data ActivityObjectAttachmentsItemImage =
  ActivityObjectAttachmentsItemImage'
    { _aoaiiHeight :: !(Maybe (Textual Word32))
    , _aoaiiURL :: !(Maybe Text)
    , _aoaiiWidth :: !(Maybe (Textual Word32))
    , _aoaiiType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectAttachmentsItemImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaiiHeight'
--
-- * 'aoaiiURL'
--
-- * 'aoaiiWidth'
--
-- * 'aoaiiType'
activityObjectAttachmentsItemImage
    :: ActivityObjectAttachmentsItemImage
activityObjectAttachmentsItemImage =
  ActivityObjectAttachmentsItemImage'
    { _aoaiiHeight = Nothing
    , _aoaiiURL = Nothing
    , _aoaiiWidth = Nothing
    , _aoaiiType = Nothing
    }


-- | The height, in pixels, of the linked resource.
aoaiiHeight :: Lens' ActivityObjectAttachmentsItemImage (Maybe Word32)
aoaiiHeight
  = lens _aoaiiHeight (\ s a -> s{_aoaiiHeight = a}) .
      mapping _Coerce

-- | Image URL.
aoaiiURL :: Lens' ActivityObjectAttachmentsItemImage (Maybe Text)
aoaiiURL = lens _aoaiiURL (\ s a -> s{_aoaiiURL = a})

-- | The width, in pixels, of the linked resource.
aoaiiWidth :: Lens' ActivityObjectAttachmentsItemImage (Maybe Word32)
aoaiiWidth
  = lens _aoaiiWidth (\ s a -> s{_aoaiiWidth = a}) .
      mapping _Coerce

-- | Media type of the link.
aoaiiType :: Lens' ActivityObjectAttachmentsItemImage (Maybe Text)
aoaiiType
  = lens _aoaiiType (\ s a -> s{_aoaiiType = a})

instance FromJSON ActivityObjectAttachmentsItemImage
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsItemImage"
              (\ o ->
                 ActivityObjectAttachmentsItemImage' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON ActivityObjectAttachmentsItemImage
         where
        toJSON ActivityObjectAttachmentsItemImage'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoaiiHeight,
                  ("url" .=) <$> _aoaiiURL,
                  ("width" .=) <$> _aoaiiWidth,
                  ("type" .=) <$> _aoaiiType])

-- | The person who posted this comment.
--
-- /See:/ 'commentActor' smart constructor.
data CommentActor =
  CommentActor'
    { _caClientSpecificActorInfo :: !(Maybe CommentActorClientSpecificActorInfo)
    , _caImage :: !(Maybe CommentActorImage)
    , _caURL :: !(Maybe Text)
    , _caDisplayName :: !(Maybe Text)
    , _caId :: !(Maybe Text)
    , _caVerification :: !(Maybe CommentActorVerification)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caClientSpecificActorInfo'
--
-- * 'caImage'
--
-- * 'caURL'
--
-- * 'caDisplayName'
--
-- * 'caId'
--
-- * 'caVerification'
commentActor
    :: CommentActor
commentActor =
  CommentActor'
    { _caClientSpecificActorInfo = Nothing
    , _caImage = Nothing
    , _caURL = Nothing
    , _caDisplayName = Nothing
    , _caId = Nothing
    , _caVerification = Nothing
    }


-- | Actor info specific to particular clients.
caClientSpecificActorInfo :: Lens' CommentActor (Maybe CommentActorClientSpecificActorInfo)
caClientSpecificActorInfo
  = lens _caClientSpecificActorInfo
      (\ s a -> s{_caClientSpecificActorInfo = a})

-- | The image representation of this actor.
caImage :: Lens' CommentActor (Maybe CommentActorImage)
caImage = lens _caImage (\ s a -> s{_caImage = a})

-- | A link to the Person resource for this actor.
caURL :: Lens' CommentActor (Maybe Text)
caURL = lens _caURL (\ s a -> s{_caURL = a})

-- | The name of this actor, suitable for display.
caDisplayName :: Lens' CommentActor (Maybe Text)
caDisplayName
  = lens _caDisplayName
      (\ s a -> s{_caDisplayName = a})

-- | The ID of the actor.
caId :: Lens' CommentActor (Maybe Text)
caId = lens _caId (\ s a -> s{_caId = a})

-- | Verification status of actor.
caVerification :: Lens' CommentActor (Maybe CommentActorVerification)
caVerification
  = lens _caVerification
      (\ s a -> s{_caVerification = a})

instance FromJSON CommentActor where
        parseJSON
          = withObject "CommentActor"
              (\ o ->
                 CommentActor' <$>
                   (o .:? "clientSpecificActorInfo") <*> (o .:? "image")
                     <*> (o .:? "url")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON CommentActor where
        toJSON CommentActor'{..}
          = object
              (catMaybes
                 [("clientSpecificActorInfo" .=) <$>
                    _caClientSpecificActorInfo,
                  ("image" .=) <$> _caImage, ("url" .=) <$> _caURL,
                  ("displayName" .=) <$> _caDisplayName,
                  ("id" .=) <$> _caId,
                  ("verification" .=) <$> _caVerification])

-- | The object of this activity.
--
-- /See:/ 'activityObject' smart constructor.
data ActivityObject =
  ActivityObject'
    { _aoPlusoners :: !(Maybe ActivityObjectPlusoners)
    , _aoAttachments :: !(Maybe [ActivityObjectAttachmentsItem])
    , _aoObjectType :: !(Maybe Text)
    , _aoOriginalContent :: !(Maybe Text)
    , _aoURL :: !(Maybe Text)
    , _aoActor :: !(Maybe ActivityObjectActor)
    , _aoContent :: !(Maybe Text)
    , _aoReplies :: !(Maybe ActivityObjectReplies)
    , _aoId :: !(Maybe Text)
    , _aoStatusForViewer :: !(Maybe ActivityObjectStatusForViewer)
    , _aoResharers :: !(Maybe ActivityObjectResharers)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoPlusoners'
--
-- * 'aoAttachments'
--
-- * 'aoObjectType'
--
-- * 'aoOriginalContent'
--
-- * 'aoURL'
--
-- * 'aoActor'
--
-- * 'aoContent'
--
-- * 'aoReplies'
--
-- * 'aoId'
--
-- * 'aoStatusForViewer'
--
-- * 'aoResharers'
activityObject
    :: ActivityObject
activityObject =
  ActivityObject'
    { _aoPlusoners = Nothing
    , _aoAttachments = Nothing
    , _aoObjectType = Nothing
    , _aoOriginalContent = Nothing
    , _aoURL = Nothing
    , _aoActor = Nothing
    , _aoContent = Nothing
    , _aoReplies = Nothing
    , _aoId = Nothing
    , _aoStatusForViewer = Nothing
    , _aoResharers = Nothing
    }


-- | People who +1\'d this activity.
aoPlusoners :: Lens' ActivityObject (Maybe ActivityObjectPlusoners)
aoPlusoners
  = lens _aoPlusoners (\ s a -> s{_aoPlusoners = a})

-- | The media objects attached to this activity.
aoAttachments :: Lens' ActivityObject [ActivityObjectAttachmentsItem]
aoAttachments
  = lens _aoAttachments
      (\ s a -> s{_aoAttachments = a})
      . _Default
      . _Coerce

-- | The type of the object. Possible values include, but are not limited to,
-- the following values: - \"note\" - Textual content. - \"activity\" - A
-- Google+ activity.
aoObjectType :: Lens' ActivityObject (Maybe Text)
aoObjectType
  = lens _aoObjectType (\ s a -> s{_aoObjectType = a})

-- | The content (text) as provided by the author, which is stored without
-- any HTML formatting. When creating or updating an activity, this value
-- must be supplied as plain text in the request.
aoOriginalContent :: Lens' ActivityObject (Maybe Text)
aoOriginalContent
  = lens _aoOriginalContent
      (\ s a -> s{_aoOriginalContent = a})

-- | The URL that points to the linked resource.
aoURL :: Lens' ActivityObject (Maybe Text)
aoURL = lens _aoURL (\ s a -> s{_aoURL = a})

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
aoActor :: Lens' ActivityObject (Maybe ActivityObjectActor)
aoActor = lens _aoActor (\ s a -> s{_aoActor = a})

-- | The HTML-formatted content, which is suitable for display.
aoContent :: Lens' ActivityObject (Maybe Text)
aoContent
  = lens _aoContent (\ s a -> s{_aoContent = a})

-- | Comments in reply to this activity.
aoReplies :: Lens' ActivityObject (Maybe ActivityObjectReplies)
aoReplies
  = lens _aoReplies (\ s a -> s{_aoReplies = a})

-- | The ID of the object. When resharing an activity, this is the ID of the
-- activity that is being reshared.
aoId :: Lens' ActivityObject (Maybe Text)
aoId = lens _aoId (\ s a -> s{_aoId = a})

-- | Status of the activity as seen by the viewer.
aoStatusForViewer :: Lens' ActivityObject (Maybe ActivityObjectStatusForViewer)
aoStatusForViewer
  = lens _aoStatusForViewer
      (\ s a -> s{_aoStatusForViewer = a})

-- | People who reshared this activity.
aoResharers :: Lens' ActivityObject (Maybe ActivityObjectResharers)
aoResharers
  = lens _aoResharers (\ s a -> s{_aoResharers = a})

instance FromJSON ActivityObject where
        parseJSON
          = withObject "ActivityObject"
              (\ o ->
                 ActivityObject' <$>
                   (o .:? "plusoners") <*>
                     (o .:? "attachments" .!= mempty)
                     <*> (o .:? "objectType")
                     <*> (o .:? "originalContent")
                     <*> (o .:? "url")
                     <*> (o .:? "actor")
                     <*> (o .:? "content")
                     <*> (o .:? "replies")
                     <*> (o .:? "id")
                     <*> (o .:? "statusForViewer")
                     <*> (o .:? "resharers"))

instance ToJSON ActivityObject where
        toJSON ActivityObject'{..}
          = object
              (catMaybes
                 [("plusoners" .=) <$> _aoPlusoners,
                  ("attachments" .=) <$> _aoAttachments,
                  ("objectType" .=) <$> _aoObjectType,
                  ("originalContent" .=) <$> _aoOriginalContent,
                  ("url" .=) <$> _aoURL, ("actor" .=) <$> _aoActor,
                  ("content" .=) <$> _aoContent,
                  ("replies" .=) <$> _aoReplies, ("id" .=) <$> _aoId,
                  ("statusForViewer" .=) <$> _aoStatusForViewer,
                  ("resharers" .=) <$> _aoResharers])

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
--
-- /See:/ 'activityObjectActor' smart constructor.
data ActivityObjectActor =
  ActivityObjectActor'
    { _aoaClientSpecificActorInfo :: !(Maybe ActivityObjectActorClientSpecificActorInfo)
    , _aoaImage :: !(Maybe ActivityObjectActorImage)
    , _aoaURL :: !(Maybe Text)
    , _aoaDisplayName :: !(Maybe Text)
    , _aoaId :: !(Maybe Text)
    , _aoaVerification :: !(Maybe ActivityObjectActorVerification)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaClientSpecificActorInfo'
--
-- * 'aoaImage'
--
-- * 'aoaURL'
--
-- * 'aoaDisplayName'
--
-- * 'aoaId'
--
-- * 'aoaVerification'
activityObjectActor
    :: ActivityObjectActor
activityObjectActor =
  ActivityObjectActor'
    { _aoaClientSpecificActorInfo = Nothing
    , _aoaImage = Nothing
    , _aoaURL = Nothing
    , _aoaDisplayName = Nothing
    , _aoaId = Nothing
    , _aoaVerification = Nothing
    }


-- | Actor info specific to particular clients.
aoaClientSpecificActorInfo :: Lens' ActivityObjectActor (Maybe ActivityObjectActorClientSpecificActorInfo)
aoaClientSpecificActorInfo
  = lens _aoaClientSpecificActorInfo
      (\ s a -> s{_aoaClientSpecificActorInfo = a})

-- | The image representation of the original actor.
aoaImage :: Lens' ActivityObjectActor (Maybe ActivityObjectActorImage)
aoaImage = lens _aoaImage (\ s a -> s{_aoaImage = a})

-- | A link to the original actor\'s Google profile.
aoaURL :: Lens' ActivityObjectActor (Maybe Text)
aoaURL = lens _aoaURL (\ s a -> s{_aoaURL = a})

-- | The original actor\'s name, which is suitable for display.
aoaDisplayName :: Lens' ActivityObjectActor (Maybe Text)
aoaDisplayName
  = lens _aoaDisplayName
      (\ s a -> s{_aoaDisplayName = a})

-- | ID of the original actor.
aoaId :: Lens' ActivityObjectActor (Maybe Text)
aoaId = lens _aoaId (\ s a -> s{_aoaId = a})

-- | Verification status of actor.
aoaVerification :: Lens' ActivityObjectActor (Maybe ActivityObjectActorVerification)
aoaVerification
  = lens _aoaVerification
      (\ s a -> s{_aoaVerification = a})

instance FromJSON ActivityObjectActor where
        parseJSON
          = withObject "ActivityObjectActor"
              (\ o ->
                 ActivityObjectActor' <$>
                   (o .:? "clientSpecificActorInfo") <*> (o .:? "image")
                     <*> (o .:? "url")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON ActivityObjectActor where
        toJSON ActivityObjectActor'{..}
          = object
              (catMaybes
                 [("clientSpecificActorInfo" .=) <$>
                    _aoaClientSpecificActorInfo,
                  ("image" .=) <$> _aoaImage, ("url" .=) <$> _aoaURL,
                  ("displayName" .=) <$> _aoaDisplayName,
                  ("id" .=) <$> _aoaId,
                  ("verification" .=) <$> _aoaVerification])

-- | The full image URL for photo attachments.
--
-- /See:/ 'activityObjectAttachmentsItemFullImage' smart constructor.
data ActivityObjectAttachmentsItemFullImage =
  ActivityObjectAttachmentsItemFullImage'
    { _aoaifiHeight :: !(Maybe (Textual Word32))
    , _aoaifiURL :: !(Maybe Text)
    , _aoaifiWidth :: !(Maybe (Textual Word32))
    , _aoaifiType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectAttachmentsItemFullImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaifiHeight'
--
-- * 'aoaifiURL'
--
-- * 'aoaifiWidth'
--
-- * 'aoaifiType'
activityObjectAttachmentsItemFullImage
    :: ActivityObjectAttachmentsItemFullImage
activityObjectAttachmentsItemFullImage =
  ActivityObjectAttachmentsItemFullImage'
    { _aoaifiHeight = Nothing
    , _aoaifiURL = Nothing
    , _aoaifiWidth = Nothing
    , _aoaifiType = Nothing
    }


-- | The height, in pixels, of the linked resource.
aoaifiHeight :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Word32)
aoaifiHeight
  = lens _aoaifiHeight (\ s a -> s{_aoaifiHeight = a})
      . mapping _Coerce

-- | URL of the image.
aoaifiURL :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Text)
aoaifiURL
  = lens _aoaifiURL (\ s a -> s{_aoaifiURL = a})

-- | The width, in pixels, of the linked resource.
aoaifiWidth :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Word32)
aoaifiWidth
  = lens _aoaifiWidth (\ s a -> s{_aoaifiWidth = a}) .
      mapping _Coerce

-- | Media type of the link.
aoaifiType :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Text)
aoaifiType
  = lens _aoaifiType (\ s a -> s{_aoaifiType = a})

instance FromJSON
           ActivityObjectAttachmentsItemFullImage
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsItemFullImage"
              (\ o ->
                 ActivityObjectAttachmentsItemFullImage' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON
           ActivityObjectAttachmentsItemFullImage
         where
        toJSON ActivityObjectAttachmentsItemFullImage'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoaifiHeight,
                  ("url" .=) <$> _aoaifiURL,
                  ("width" .=) <$> _aoaifiWidth,
                  ("type" .=) <$> _aoaifiType])

-- | The author\'s Google profile image.
--
-- /See:/ 'mediaAuthorImage' smart constructor.
newtype MediaAuthorImage =
  MediaAuthorImage'
    { _maiURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MediaAuthorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maiURL'
mediaAuthorImage
    :: MediaAuthorImage
mediaAuthorImage = MediaAuthorImage' {_maiURL = Nothing}


-- | The URL of the author\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
maiURL :: Lens' MediaAuthorImage (Maybe Text)
maiURL = lens _maiURL (\ s a -> s{_maiURL = a})

instance FromJSON MediaAuthorImage where
        parseJSON
          = withObject "MediaAuthorImage"
              (\ o -> MediaAuthorImage' <$> (o .:? "url"))

instance ToJSON MediaAuthorImage where
        toJSON MediaAuthorImage'{..}
          = object (catMaybes [("url" .=) <$> _maiURL])

-- | The people in this circle.
--
-- /See:/ 'circlePeople' smart constructor.
newtype CirclePeople =
  CirclePeople'
    { _cTotalItems :: Maybe (Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CirclePeople' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTotalItems'
circlePeople
    :: CirclePeople
circlePeople = CirclePeople' {_cTotalItems = Nothing}


-- | The total number of people in this circle.
cTotalItems :: Lens' CirclePeople (Maybe Word32)
cTotalItems
  = lens _cTotalItems (\ s a -> s{_cTotalItems = a}) .
      mapping _Coerce

instance FromJSON CirclePeople where
        parseJSON
          = withObject "CirclePeople"
              (\ o -> CirclePeople' <$> (o .:? "totalItems"))

instance ToJSON CirclePeople where
        toJSON CirclePeople'{..}
          = object
              (catMaybes [("totalItems" .=) <$> _cTotalItems])

--
-- /See:/ 'plusDomainsACLentryResource' smart constructor.
data PlusDomainsACLentryResource =
  PlusDomainsACLentryResource'
    { _pdarDisplayName :: !(Maybe Text)
    , _pdarId :: !(Maybe Text)
    , _pdarType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlusDomainsACLentryResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdarDisplayName'
--
-- * 'pdarId'
--
-- * 'pdarType'
plusDomainsACLentryResource
    :: PlusDomainsACLentryResource
plusDomainsACLentryResource =
  PlusDomainsACLentryResource'
    {_pdarDisplayName = Nothing, _pdarId = Nothing, _pdarType = Nothing}


-- | A descriptive name for this entry. Suitable for display.
pdarDisplayName :: Lens' PlusDomainsACLentryResource (Maybe Text)
pdarDisplayName
  = lens _pdarDisplayName
      (\ s a -> s{_pdarDisplayName = a})

-- | The ID of the entry. For entries of type \"person\" or \"circle\", this
-- is the ID of the resource. For other types, this property is not set.
pdarId :: Lens' PlusDomainsACLentryResource (Maybe Text)
pdarId = lens _pdarId (\ s a -> s{_pdarId = a})

-- | The type of entry describing to whom access is granted. Possible values
-- are: - \"person\" - Access to an individual. - \"circle\" - Access to
-- members of a circle. - \"myCircles\" - Access to members of all the
-- person\'s circles. - \"extendedCircles\" - Access to members of all the
-- person\'s circles, plus all of the people in their circles. - \"domain\"
-- - Access to members of the person\'s Google Apps domain. - \"public\" -
-- Access to anyone on the web.
pdarType :: Lens' PlusDomainsACLentryResource (Maybe Text)
pdarType = lens _pdarType (\ s a -> s{_pdarType = a})

instance FromJSON PlusDomainsACLentryResource where
        parseJSON
          = withObject "PlusDomainsACLentryResource"
              (\ o ->
                 PlusDomainsACLentryResource' <$>
                   (o .:? "displayName") <*> (o .:? "id") <*>
                     (o .:? "type"))

instance ToJSON PlusDomainsACLentryResource where
        toJSON PlusDomainsACLentryResource'{..}
          = object
              (catMaybes
                 [("displayName" .=) <$> _pdarDisplayName,
                  ("id" .=) <$> _pdarId, ("type" .=) <$> _pdarType])

-- | The image representation of the actor.
--
-- /See:/ 'activityActorImage' smart constructor.
newtype ActivityActorImage =
  ActivityActorImage'
    { _aaiURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaiURL'
activityActorImage
    :: ActivityActorImage
activityActorImage = ActivityActorImage' {_aaiURL = Nothing}


-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
aaiURL :: Lens' ActivityActorImage (Maybe Text)
aaiURL = lens _aaiURL (\ s a -> s{_aaiURL = a})

instance FromJSON ActivityActorImage where
        parseJSON
          = withObject "ActivityActorImage"
              (\ o -> ActivityActorImage' <$> (o .:? "url"))

instance ToJSON ActivityActorImage where
        toJSON ActivityActorImage'{..}
          = object (catMaybes [("url" .=) <$> _aaiURL])

--
-- /See:/ 'peopleFeed' smart constructor.
data PeopleFeed =
  PeopleFeed'
    { _pfTotalItems :: !(Maybe (Textual Int32))
    , _pfEtag :: !(Maybe Text)
    , _pfNextPageToken :: !(Maybe Text)
    , _pfKind :: !Text
    , _pfItems :: !(Maybe [Person])
    , _pfSelfLink :: !(Maybe Text)
    , _pfTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfTotalItems'
--
-- * 'pfEtag'
--
-- * 'pfNextPageToken'
--
-- * 'pfKind'
--
-- * 'pfItems'
--
-- * 'pfSelfLink'
--
-- * 'pfTitle'
peopleFeed
    :: PeopleFeed
peopleFeed =
  PeopleFeed'
    { _pfTotalItems = Nothing
    , _pfEtag = Nothing
    , _pfNextPageToken = Nothing
    , _pfKind = "plus#peopleFeed"
    , _pfItems = Nothing
    , _pfSelfLink = Nothing
    , _pfTitle = Nothing
    }


-- | The total number of people available in this list. The number of people
-- in a response might be smaller due to paging. This might not be set for
-- all collections.
pfTotalItems :: Lens' PeopleFeed (Maybe Int32)
pfTotalItems
  = lens _pfTotalItems (\ s a -> s{_pfTotalItems = a})
      . mapping _Coerce

-- | ETag of this response for caching purposes.
pfEtag :: Lens' PeopleFeed (Maybe Text)
pfEtag = lens _pfEtag (\ s a -> s{_pfEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
pfNextPageToken :: Lens' PeopleFeed (Maybe Text)
pfNextPageToken
  = lens _pfNextPageToken
      (\ s a -> s{_pfNextPageToken = a})

-- | Identifies this resource as a collection of people. Value:
-- \"plus#peopleFeed\".
pfKind :: Lens' PeopleFeed Text
pfKind = lens _pfKind (\ s a -> s{_pfKind = a})

-- | The people in this page of results. Each item includes the id,
-- displayName, image, and url for the person. To retrieve additional
-- profile data, see the people.get method.
pfItems :: Lens' PeopleFeed [Person]
pfItems
  = lens _pfItems (\ s a -> s{_pfItems = a}) . _Default
      . _Coerce

-- | Link to this resource.
pfSelfLink :: Lens' PeopleFeed (Maybe Text)
pfSelfLink
  = lens _pfSelfLink (\ s a -> s{_pfSelfLink = a})

-- | The title of this collection of people.
pfTitle :: Lens' PeopleFeed (Maybe Text)
pfTitle = lens _pfTitle (\ s a -> s{_pfTitle = a})

instance FromJSON PeopleFeed where
        parseJSON
          = withObject "PeopleFeed"
              (\ o ->
                 PeopleFeed' <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "plus#peopleFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "title"))

instance ToJSON PeopleFeed where
        toJSON PeopleFeed'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _pfTotalItems,
                  ("etag" .=) <$> _pfEtag,
                  ("nextPageToken" .=) <$> _pfNextPageToken,
                  Just ("kind" .= _pfKind), ("items" .=) <$> _pfItems,
                  ("selfLink" .=) <$> _pfSelfLink,
                  ("title" .=) <$> _pfTitle])

-- | The person\'s primary cover image.
--
-- /See:/ 'personCoverCoverPhoto' smart constructor.
data PersonCoverCoverPhoto =
  PersonCoverCoverPhoto'
    { _pccpHeight :: !(Maybe (Textual Int32))
    , _pccpURL :: !(Maybe Text)
    , _pccpWidth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonCoverCoverPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccpHeight'
--
-- * 'pccpURL'
--
-- * 'pccpWidth'
personCoverCoverPhoto
    :: PersonCoverCoverPhoto
personCoverCoverPhoto =
  PersonCoverCoverPhoto'
    {_pccpHeight = Nothing, _pccpURL = Nothing, _pccpWidth = Nothing}


-- | The height of the image.
pccpHeight :: Lens' PersonCoverCoverPhoto (Maybe Int32)
pccpHeight
  = lens _pccpHeight (\ s a -> s{_pccpHeight = a}) .
      mapping _Coerce

-- | The URL of the image.
pccpURL :: Lens' PersonCoverCoverPhoto (Maybe Text)
pccpURL = lens _pccpURL (\ s a -> s{_pccpURL = a})

-- | The width of the image.
pccpWidth :: Lens' PersonCoverCoverPhoto (Maybe Int32)
pccpWidth
  = lens _pccpWidth (\ s a -> s{_pccpWidth = a}) .
      mapping _Coerce

instance FromJSON PersonCoverCoverPhoto where
        parseJSON
          = withObject "PersonCoverCoverPhoto"
              (\ o ->
                 PersonCoverCoverPhoto' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON PersonCoverCoverPhoto where
        toJSON PersonCoverCoverPhoto'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pccpHeight,
                  ("url" .=) <$> _pccpURL,
                  ("width" .=) <$> _pccpWidth])

-- | The person who uploaded this media.
--
-- /See:/ 'mediaAuthor' smart constructor.
data MediaAuthor =
  MediaAuthor'
    { _maImage :: !(Maybe MediaAuthorImage)
    , _maURL :: !(Maybe Text)
    , _maDisplayName :: !(Maybe Text)
    , _maId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MediaAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maImage'
--
-- * 'maURL'
--
-- * 'maDisplayName'
--
-- * 'maId'
mediaAuthor
    :: MediaAuthor
mediaAuthor =
  MediaAuthor'
    { _maImage = Nothing
    , _maURL = Nothing
    , _maDisplayName = Nothing
    , _maId = Nothing
    }


-- | The author\'s Google profile image.
maImage :: Lens' MediaAuthor (Maybe MediaAuthorImage)
maImage = lens _maImage (\ s a -> s{_maImage = a})

-- | A link to the author\'s Google profile.
maURL :: Lens' MediaAuthor (Maybe Text)
maURL = lens _maURL (\ s a -> s{_maURL = a})

-- | The author\'s name.
maDisplayName :: Lens' MediaAuthor (Maybe Text)
maDisplayName
  = lens _maDisplayName
      (\ s a -> s{_maDisplayName = a})

-- | ID of the author.
maId :: Lens' MediaAuthor (Maybe Text)
maId = lens _maId (\ s a -> s{_maId = a})

instance FromJSON MediaAuthor where
        parseJSON
          = withObject "MediaAuthor"
              (\ o ->
                 MediaAuthor' <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON MediaAuthor where
        toJSON MediaAuthor'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _maImage, ("url" .=) <$> _maURL,
                  ("displayName" .=) <$> _maDisplayName,
                  ("id" .=) <$> _maId])

-- | The image representation of the original actor.
--
-- /See:/ 'activityObjectActorImage' smart constructor.
newtype ActivityObjectActorImage =
  ActivityObjectActorImage'
    { _aoaiURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaiURL'
activityObjectActorImage
    :: ActivityObjectActorImage
activityObjectActorImage = ActivityObjectActorImage' {_aoaiURL = Nothing}


-- | A URL that points to a thumbnail photo of the original actor.
aoaiURL :: Lens' ActivityObjectActorImage (Maybe Text)
aoaiURL = lens _aoaiURL (\ s a -> s{_aoaiURL = a})

instance FromJSON ActivityObjectActorImage where
        parseJSON
          = withObject "ActivityObjectActorImage"
              (\ o -> ActivityObjectActorImage' <$> (o .:? "url"))

instance ToJSON ActivityObjectActorImage where
        toJSON ActivityObjectActorImage'{..}
          = object (catMaybes [("url" .=) <$> _aoaiURL])

-- | Actor info specific to YouTube clients.
--
-- /See:/ 'commentActorClientSpecificActorInfoYouTubeActorInfo' smart constructor.
newtype CommentActorClientSpecificActorInfoYouTubeActorInfo =
  CommentActorClientSpecificActorInfoYouTubeActorInfo'
    { _cacsaiytaiChannelId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentActorClientSpecificActorInfoYouTubeActorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacsaiytaiChannelId'
commentActorClientSpecificActorInfoYouTubeActorInfo
    :: CommentActorClientSpecificActorInfoYouTubeActorInfo
commentActorClientSpecificActorInfoYouTubeActorInfo =
  CommentActorClientSpecificActorInfoYouTubeActorInfo'
    {_cacsaiytaiChannelId = Nothing}


-- | ID of the YouTube channel owned by the Actor.
cacsaiytaiChannelId :: Lens' CommentActorClientSpecificActorInfoYouTubeActorInfo (Maybe Text)
cacsaiytaiChannelId
  = lens _cacsaiytaiChannelId
      (\ s a -> s{_cacsaiytaiChannelId = a})

instance FromJSON
           CommentActorClientSpecificActorInfoYouTubeActorInfo
         where
        parseJSON
          = withObject
              "CommentActorClientSpecificActorInfoYouTubeActorInfo"
              (\ o ->
                 CommentActorClientSpecificActorInfoYouTubeActorInfo'
                   <$> (o .:? "channelId"))

instance ToJSON
           CommentActorClientSpecificActorInfoYouTubeActorInfo
         where
        toJSON
          CommentActorClientSpecificActorInfoYouTubeActorInfo'{..}
          = object
              (catMaybes
                 [("channelId" .=) <$> _cacsaiytaiChannelId])

--
-- /See:/ 'media' smart constructor.
data Media =
  Media'
    { _mSizeBytes :: !(Maybe (Textual Int64))
    , _mSummary :: !(Maybe Text)
    , _mEtag :: !(Maybe Text)
    , _mHeight :: !(Maybe (Textual Word32))
    , _mVideoDuration :: !(Maybe (Textual Int64))
    , _mVideoStatus :: !(Maybe Text)
    , _mKind :: !Text
    , _mPublished :: !(Maybe DateTime')
    , _mURL :: !(Maybe Text)
    , _mWidth :: !(Maybe (Textual Word32))
    , _mMediaURL :: !(Maybe Text)
    , _mStreams :: !(Maybe [Videostream])
    , _mExif :: !(Maybe MediaExif)
    , _mDisplayName :: !(Maybe Text)
    , _mAuthor :: !(Maybe MediaAuthor)
    , _mId :: !(Maybe Text)
    , _mUpdated :: !(Maybe DateTime')
    , _mMediaCreatedTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Media' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mSizeBytes'
--
-- * 'mSummary'
--
-- * 'mEtag'
--
-- * 'mHeight'
--
-- * 'mVideoDuration'
--
-- * 'mVideoStatus'
--
-- * 'mKind'
--
-- * 'mPublished'
--
-- * 'mURL'
--
-- * 'mWidth'
--
-- * 'mMediaURL'
--
-- * 'mStreams'
--
-- * 'mExif'
--
-- * 'mDisplayName'
--
-- * 'mAuthor'
--
-- * 'mId'
--
-- * 'mUpdated'
--
-- * 'mMediaCreatedTime'
media
    :: Media
media =
  Media'
    { _mSizeBytes = Nothing
    , _mSummary = Nothing
    , _mEtag = Nothing
    , _mHeight = Nothing
    , _mVideoDuration = Nothing
    , _mVideoStatus = Nothing
    , _mKind = "plus#media"
    , _mPublished = Nothing
    , _mURL = Nothing
    , _mWidth = Nothing
    , _mMediaURL = Nothing
    , _mStreams = Nothing
    , _mExif = Nothing
    , _mDisplayName = Nothing
    , _mAuthor = Nothing
    , _mId = Nothing
    , _mUpdated = Nothing
    , _mMediaCreatedTime = Nothing
    }


-- | The size in bytes of this video.
mSizeBytes :: Lens' Media (Maybe Int64)
mSizeBytes
  = lens _mSizeBytes (\ s a -> s{_mSizeBytes = a}) .
      mapping _Coerce

-- | A description, or caption, for this media.
mSummary :: Lens' Media (Maybe Text)
mSummary = lens _mSummary (\ s a -> s{_mSummary = a})

-- | ETag of this response for caching purposes.
mEtag :: Lens' Media (Maybe Text)
mEtag = lens _mEtag (\ s a -> s{_mEtag = a})

-- | The height in pixels of the original image.
mHeight :: Lens' Media (Maybe Word32)
mHeight
  = lens _mHeight (\ s a -> s{_mHeight = a}) .
      mapping _Coerce

-- | The duration in milliseconds of this video.
mVideoDuration :: Lens' Media (Maybe Int64)
mVideoDuration
  = lens _mVideoDuration
      (\ s a -> s{_mVideoDuration = a})
      . mapping _Coerce

-- | The encoding status of this video. Possible values are: - \"UPLOADING\"
-- - Not all the video bytes have been received. - \"PENDING\" - Video not
-- yet processed. - \"FAILED\" - Video processing failed. - \"READY\" - A
-- single video stream is playable. - \"FINAL\" - All video streams are
-- playable.
mVideoStatus :: Lens' Media (Maybe Text)
mVideoStatus
  = lens _mVideoStatus (\ s a -> s{_mVideoStatus = a})

-- | The type of resource.
mKind :: Lens' Media Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | The time at which this media was uploaded. Formatted as an RFC 3339
-- timestamp.
mPublished :: Lens' Media (Maybe UTCTime)
mPublished
  = lens _mPublished (\ s a -> s{_mPublished = a}) .
      mapping _DateTime

-- | The URL for the page that hosts this media.
mURL :: Lens' Media (Maybe Text)
mURL = lens _mURL (\ s a -> s{_mURL = a})

-- | The width in pixels of the original image.
mWidth :: Lens' Media (Maybe Word32)
mWidth
  = lens _mWidth (\ s a -> s{_mWidth = a}) .
      mapping _Coerce

-- | The URL of this photo or video\'s still image.
mMediaURL :: Lens' Media (Maybe Text)
mMediaURL
  = lens _mMediaURL (\ s a -> s{_mMediaURL = a})

-- | The list of video streams for this video. There might be several
-- different streams available for a single video, either Flash or MPEG, of
-- various sizes
mStreams :: Lens' Media [Videostream]
mStreams
  = lens _mStreams (\ s a -> s{_mStreams = a}) .
      _Default
      . _Coerce

-- | Exif information of the media item.
mExif :: Lens' Media (Maybe MediaExif)
mExif = lens _mExif (\ s a -> s{_mExif = a})

-- | The display name for this media.
mDisplayName :: Lens' Media (Maybe Text)
mDisplayName
  = lens _mDisplayName (\ s a -> s{_mDisplayName = a})

-- | The person who uploaded this media.
mAuthor :: Lens' Media (Maybe MediaAuthor)
mAuthor = lens _mAuthor (\ s a -> s{_mAuthor = a})

-- | ID of this media, which is generated by the API.
mId :: Lens' Media (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | The time at which this media was last updated. This includes changes to
-- media metadata. Formatted as an RFC 3339 timestamp.
mUpdated :: Lens' Media (Maybe UTCTime)
mUpdated
  = lens _mUpdated (\ s a -> s{_mUpdated = a}) .
      mapping _DateTime

-- | The time at which this media was originally created in UTC. Formatted as
-- an RFC 3339 timestamp that matches this example:
-- 2010-11-25T14:30:27.655Z
mMediaCreatedTime :: Lens' Media (Maybe UTCTime)
mMediaCreatedTime
  = lens _mMediaCreatedTime
      (\ s a -> s{_mMediaCreatedTime = a})
      . mapping _DateTime

instance FromJSON Media where
        parseJSON
          = withObject "Media"
              (\ o ->
                 Media' <$>
                   (o .:? "sizeBytes") <*> (o .:? "summary") <*>
                     (o .:? "etag")
                     <*> (o .:? "height")
                     <*> (o .:? "videoDuration")
                     <*> (o .:? "videoStatus")
                     <*> (o .:? "kind" .!= "plus#media")
                     <*> (o .:? "published")
                     <*> (o .:? "url")
                     <*> (o .:? "width")
                     <*> (o .:? "mediaUrl")
                     <*> (o .:? "streams" .!= mempty)
                     <*> (o .:? "exif")
                     <*> (o .:? "displayName")
                     <*> (o .:? "author")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "mediaCreatedTime"))

instance ToJSON Media where
        toJSON Media'{..}
          = object
              (catMaybes
                 [("sizeBytes" .=) <$> _mSizeBytes,
                  ("summary" .=) <$> _mSummary, ("etag" .=) <$> _mEtag,
                  ("height" .=) <$> _mHeight,
                  ("videoDuration" .=) <$> _mVideoDuration,
                  ("videoStatus" .=) <$> _mVideoStatus,
                  Just ("kind" .= _mKind),
                  ("published" .=) <$> _mPublished,
                  ("url" .=) <$> _mURL, ("width" .=) <$> _mWidth,
                  ("mediaUrl" .=) <$> _mMediaURL,
                  ("streams" .=) <$> _mStreams, ("exif" .=) <$> _mExif,
                  ("displayName" .=) <$> _mDisplayName,
                  ("author" .=) <$> _mAuthor, ("id" .=) <$> _mId,
                  ("updated" .=) <$> _mUpdated,
                  ("mediaCreatedTime" .=) <$> _mMediaCreatedTime])

-- | Comments in reply to this activity.
--
-- /See:/ 'activityObjectReplies' smart constructor.
data ActivityObjectReplies =
  ActivityObjectReplies'
    { _aorTotalItems :: !(Maybe (Textual Word32))
    , _aorSelfLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aorTotalItems'
--
-- * 'aorSelfLink'
activityObjectReplies
    :: ActivityObjectReplies
activityObjectReplies =
  ActivityObjectReplies' {_aorTotalItems = Nothing, _aorSelfLink = Nothing}


-- | Total number of comments on this activity.
aorTotalItems :: Lens' ActivityObjectReplies (Maybe Word32)
aorTotalItems
  = lens _aorTotalItems
      (\ s a -> s{_aorTotalItems = a})
      . mapping _Coerce

-- | The URL for the collection of comments in reply to this activity.
aorSelfLink :: Lens' ActivityObjectReplies (Maybe Text)
aorSelfLink
  = lens _aorSelfLink (\ s a -> s{_aorSelfLink = a})

instance FromJSON ActivityObjectReplies where
        parseJSON
          = withObject "ActivityObjectReplies"
              (\ o ->
                 ActivityObjectReplies' <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON ActivityObjectReplies where
        toJSON ActivityObjectReplies'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aorTotalItems,
                  ("selfLink" .=) <$> _aorSelfLink])

--
-- /See:/ 'activityObjectAttachmentsItemPreviewThumbnailsItem' smart constructor.
newtype ActivityObjectAttachmentsItemPreviewThumbnailsItem =
  ActivityObjectAttachmentsItemPreviewThumbnailsItem'
    { _aoaiptiURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectAttachmentsItemPreviewThumbnailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaiptiURL'
activityObjectAttachmentsItemPreviewThumbnailsItem
    :: ActivityObjectAttachmentsItemPreviewThumbnailsItem
activityObjectAttachmentsItemPreviewThumbnailsItem =
  ActivityObjectAttachmentsItemPreviewThumbnailsItem' {_aoaiptiURL = Nothing}


-- | URL of the thumbnail image.
aoaiptiURL :: Lens' ActivityObjectAttachmentsItemPreviewThumbnailsItem (Maybe Text)
aoaiptiURL
  = lens _aoaiptiURL (\ s a -> s{_aoaiptiURL = a})

instance FromJSON
           ActivityObjectAttachmentsItemPreviewThumbnailsItem
         where
        parseJSON
          = withObject
              "ActivityObjectAttachmentsItemPreviewThumbnailsItem"
              (\ o ->
                 ActivityObjectAttachmentsItemPreviewThumbnailsItem'
                   <$> (o .:? "url"))

instance ToJSON
           ActivityObjectAttachmentsItemPreviewThumbnailsItem
         where
        toJSON
          ActivityObjectAttachmentsItemPreviewThumbnailsItem'{..}
          = object (catMaybes [("url" .=) <$> _aoaiptiURL])

-- | Verification status of actor.
--
-- /See:/ 'activityActorVerification' smart constructor.
newtype ActivityActorVerification =
  ActivityActorVerification'
    { _aavAdHocVerified :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityActorVerification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aavAdHocVerified'
activityActorVerification
    :: ActivityActorVerification
activityActorVerification =
  ActivityActorVerification' {_aavAdHocVerified = Nothing}


-- | Verification for one-time or manual processes.
aavAdHocVerified :: Lens' ActivityActorVerification (Maybe Text)
aavAdHocVerified
  = lens _aavAdHocVerified
      (\ s a -> s{_aavAdHocVerified = a})

instance FromJSON ActivityActorVerification where
        parseJSON
          = withObject "ActivityActorVerification"
              (\ o ->
                 ActivityActorVerification' <$>
                   (o .:? "adHocVerified"))

instance ToJSON ActivityActorVerification where
        toJSON ActivityActorVerification'{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _aavAdHocVerified])

-- | Actor info specific to particular clients.
--
-- /See:/ 'activityObjectActorClientSpecificActorInfo' smart constructor.
newtype ActivityObjectActorClientSpecificActorInfo =
  ActivityObjectActorClientSpecificActorInfo'
    { _aoacsaiYouTubeActorInfo :: Maybe ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectActorClientSpecificActorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoacsaiYouTubeActorInfo'
activityObjectActorClientSpecificActorInfo
    :: ActivityObjectActorClientSpecificActorInfo
activityObjectActorClientSpecificActorInfo =
  ActivityObjectActorClientSpecificActorInfo'
    {_aoacsaiYouTubeActorInfo = Nothing}


-- | Actor info specific to YouTube clients.
aoacsaiYouTubeActorInfo :: Lens' ActivityObjectActorClientSpecificActorInfo (Maybe ActivityObjectActorClientSpecificActorInfoYouTubeActorInfo)
aoacsaiYouTubeActorInfo
  = lens _aoacsaiYouTubeActorInfo
      (\ s a -> s{_aoacsaiYouTubeActorInfo = a})

instance FromJSON
           ActivityObjectActorClientSpecificActorInfo
         where
        parseJSON
          = withObject
              "ActivityObjectActorClientSpecificActorInfo"
              (\ o ->
                 ActivityObjectActorClientSpecificActorInfo' <$>
                   (o .:? "youtubeActorInfo"))

instance ToJSON
           ActivityObjectActorClientSpecificActorInfo
         where
        toJSON
          ActivityObjectActorClientSpecificActorInfo'{..}
          = object
              (catMaybes
                 [("youtubeActorInfo" .=) <$>
                    _aoacsaiYouTubeActorInfo])

--
-- /See:/ 'activityObjectAttachmentsItem' smart constructor.
data ActivityObjectAttachmentsItem =
  ActivityObjectAttachmentsItem'
    { _aFullImage :: !(Maybe ActivityObjectAttachmentsItemFullImage)
    , _aImage :: !(Maybe ActivityObjectAttachmentsItemImage)
    , _aObjectType :: !(Maybe Text)
    , _aPreviewThumbnails :: !(Maybe [ActivityObjectAttachmentsItemPreviewThumbnailsItem])
    , _aURL :: !(Maybe Text)
    , _aEmbed :: !(Maybe ActivityObjectAttachmentsItemEmbed)
    , _aContent :: !(Maybe Text)
    , _aThumbnails :: !(Maybe [ActivityObjectAttachmentsItemThumbnailsItem])
    , _aDisplayName :: !(Maybe Text)
    , _aId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectAttachmentsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aFullImage'
--
-- * 'aImage'
--
-- * 'aObjectType'
--
-- * 'aPreviewThumbnails'
--
-- * 'aURL'
--
-- * 'aEmbed'
--
-- * 'aContent'
--
-- * 'aThumbnails'
--
-- * 'aDisplayName'
--
-- * 'aId'
activityObjectAttachmentsItem
    :: ActivityObjectAttachmentsItem
activityObjectAttachmentsItem =
  ActivityObjectAttachmentsItem'
    { _aFullImage = Nothing
    , _aImage = Nothing
    , _aObjectType = Nothing
    , _aPreviewThumbnails = Nothing
    , _aURL = Nothing
    , _aEmbed = Nothing
    , _aContent = Nothing
    , _aThumbnails = Nothing
    , _aDisplayName = Nothing
    , _aId = Nothing
    }


-- | The full image URL for photo attachments.
aFullImage :: Lens' ActivityObjectAttachmentsItem (Maybe ActivityObjectAttachmentsItemFullImage)
aFullImage
  = lens _aFullImage (\ s a -> s{_aFullImage = a})

-- | The preview image for photos or videos.
aImage :: Lens' ActivityObjectAttachmentsItem (Maybe ActivityObjectAttachmentsItemImage)
aImage = lens _aImage (\ s a -> s{_aImage = a})

-- | The type of media object. Possible values include, but are not limited
-- to, the following values: - \"photo\" - A photo. - \"album\" - A photo
-- album. - \"video\" - A video. - \"article\" - An article, specified by a
-- link.
aObjectType :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aObjectType
  = lens _aObjectType (\ s a -> s{_aObjectType = a})

-- | When previewing, these are the optional thumbnails for the post. When
-- posting an article, choose one by setting the attachment.image.url
-- property. If you don\'t choose one, one will be chosen for you.
aPreviewThumbnails :: Lens' ActivityObjectAttachmentsItem [ActivityObjectAttachmentsItemPreviewThumbnailsItem]
aPreviewThumbnails
  = lens _aPreviewThumbnails
      (\ s a -> s{_aPreviewThumbnails = a})
      . _Default
      . _Coerce

-- | The link to the attachment, which should be of type text\/html.
aURL :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aURL = lens _aURL (\ s a -> s{_aURL = a})

-- | If the attachment is a video, the embeddable link.
aEmbed :: Lens' ActivityObjectAttachmentsItem (Maybe ActivityObjectAttachmentsItemEmbed)
aEmbed = lens _aEmbed (\ s a -> s{_aEmbed = a})

-- | If the attachment is an article, this property contains a snippet of
-- text from the article. It can also include descriptions for other types.
aContent :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aContent = lens _aContent (\ s a -> s{_aContent = a})

-- | If the attachment is an album, this property is a list of potential
-- additional thumbnails from the album.
aThumbnails :: Lens' ActivityObjectAttachmentsItem [ActivityObjectAttachmentsItemThumbnailsItem]
aThumbnails
  = lens _aThumbnails (\ s a -> s{_aThumbnails = a}) .
      _Default
      . _Coerce

-- | The title of the attachment, such as a photo caption or an article
-- title.
aDisplayName :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aDisplayName
  = lens _aDisplayName (\ s a -> s{_aDisplayName = a})

-- | The ID of the attachment.
aId :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

instance FromJSON ActivityObjectAttachmentsItem where
        parseJSON
          = withObject "ActivityObjectAttachmentsItem"
              (\ o ->
                 ActivityObjectAttachmentsItem' <$>
                   (o .:? "fullImage") <*> (o .:? "image") <*>
                     (o .:? "objectType")
                     <*> (o .:? "previewThumbnails" .!= mempty)
                     <*> (o .:? "url")
                     <*> (o .:? "embed")
                     <*> (o .:? "content")
                     <*> (o .:? "thumbnails" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON ActivityObjectAttachmentsItem where
        toJSON ActivityObjectAttachmentsItem'{..}
          = object
              (catMaybes
                 [("fullImage" .=) <$> _aFullImage,
                  ("image" .=) <$> _aImage,
                  ("objectType" .=) <$> _aObjectType,
                  ("previewThumbnails" .=) <$> _aPreviewThumbnails,
                  ("url" .=) <$> _aURL, ("embed" .=) <$> _aEmbed,
                  ("content" .=) <$> _aContent,
                  ("thumbnails" .=) <$> _aThumbnails,
                  ("displayName" .=) <$> _aDisplayName,
                  ("id" .=) <$> _aId])

--
-- /See:/ 'activityFeed' smart constructor.
data ActivityFeed =
  ActivityFeed'
    { _afEtag :: !(Maybe Text)
    , _afNextPageToken :: !(Maybe Text)
    , _afNextLink :: !(Maybe Text)
    , _afKind :: !Text
    , _afItems :: !(Maybe [Activity])
    , _afSelfLink :: !(Maybe Text)
    , _afId :: !(Maybe Text)
    , _afUpdated :: !(Maybe DateTime')
    , _afTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afEtag'
--
-- * 'afNextPageToken'
--
-- * 'afNextLink'
--
-- * 'afKind'
--
-- * 'afItems'
--
-- * 'afSelfLink'
--
-- * 'afId'
--
-- * 'afUpdated'
--
-- * 'afTitle'
activityFeed
    :: ActivityFeed
activityFeed =
  ActivityFeed'
    { _afEtag = Nothing
    , _afNextPageToken = Nothing
    , _afNextLink = Nothing
    , _afKind = "plus#activityFeed"
    , _afItems = Nothing
    , _afSelfLink = Nothing
    , _afId = Nothing
    , _afUpdated = Nothing
    , _afTitle = Nothing
    }


-- | ETag of this response for caching purposes.
afEtag :: Lens' ActivityFeed (Maybe Text)
afEtag = lens _afEtag (\ s a -> s{_afEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
afNextPageToken :: Lens' ActivityFeed (Maybe Text)
afNextPageToken
  = lens _afNextPageToken
      (\ s a -> s{_afNextPageToken = a})

-- | Link to the next page of activities.
afNextLink :: Lens' ActivityFeed (Maybe Text)
afNextLink
  = lens _afNextLink (\ s a -> s{_afNextLink = a})

-- | Identifies this resource as a collection of activities. Value:
-- \"plus#activityFeed\".
afKind :: Lens' ActivityFeed Text
afKind = lens _afKind (\ s a -> s{_afKind = a})

-- | The activities in this page of results.
afItems :: Lens' ActivityFeed [Activity]
afItems
  = lens _afItems (\ s a -> s{_afItems = a}) . _Default
      . _Coerce

-- | Link to this activity resource.
afSelfLink :: Lens' ActivityFeed (Maybe Text)
afSelfLink
  = lens _afSelfLink (\ s a -> s{_afSelfLink = a})

-- | The ID of this collection of activities. Deprecated.
afId :: Lens' ActivityFeed (Maybe Text)
afId = lens _afId (\ s a -> s{_afId = a})

-- | The time at which this collection of activities was last updated.
-- Formatted as an RFC 3339 timestamp.
afUpdated :: Lens' ActivityFeed (Maybe UTCTime)
afUpdated
  = lens _afUpdated (\ s a -> s{_afUpdated = a}) .
      mapping _DateTime

-- | The title of this collection of activities, which is a truncated portion
-- of the content.
afTitle :: Lens' ActivityFeed (Maybe Text)
afTitle = lens _afTitle (\ s a -> s{_afTitle = a})

instance FromJSON ActivityFeed where
        parseJSON
          = withObject "ActivityFeed"
              (\ o ->
                 ActivityFeed' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "plus#activityFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON ActivityFeed where
        toJSON ActivityFeed'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _afEtag,
                  ("nextPageToken" .=) <$> _afNextPageToken,
                  ("nextLink" .=) <$> _afNextLink,
                  Just ("kind" .= _afKind), ("items" .=) <$> _afItems,
                  ("selfLink" .=) <$> _afSelfLink, ("id" .=) <$> _afId,
                  ("updated" .=) <$> _afUpdated,
                  ("title" .=) <$> _afTitle])

-- | Verification status of actor.
--
-- /See:/ 'activityObjectActorVerification' smart constructor.
newtype ActivityObjectActorVerification =
  ActivityObjectActorVerification'
    { _aoavAdHocVerified :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectActorVerification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoavAdHocVerified'
activityObjectActorVerification
    :: ActivityObjectActorVerification
activityObjectActorVerification =
  ActivityObjectActorVerification' {_aoavAdHocVerified = Nothing}


-- | Verification for one-time or manual processes.
aoavAdHocVerified :: Lens' ActivityObjectActorVerification (Maybe Text)
aoavAdHocVerified
  = lens _aoavAdHocVerified
      (\ s a -> s{_aoavAdHocVerified = a})

instance FromJSON ActivityObjectActorVerification
         where
        parseJSON
          = withObject "ActivityObjectActorVerification"
              (\ o ->
                 ActivityObjectActorVerification' <$>
                   (o .:? "adHocVerified"))

instance ToJSON ActivityObjectActorVerification where
        toJSON ActivityObjectActorVerification'{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _aoavAdHocVerified])

-- | An object representation of the individual components of a person\'s
-- name.
--
-- /See:/ 'personName' smart constructor.
data PersonName =
  PersonName'
    { _pnGivenName :: !(Maybe Text)
    , _pnMiddleName :: !(Maybe Text)
    , _pnFormatted :: !(Maybe Text)
    , _pnHonorificPrefix :: !(Maybe Text)
    , _pnFamilyName :: !(Maybe Text)
    , _pnHonorificSuffix :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnGivenName'
--
-- * 'pnMiddleName'
--
-- * 'pnFormatted'
--
-- * 'pnHonorificPrefix'
--
-- * 'pnFamilyName'
--
-- * 'pnHonorificSuffix'
personName
    :: PersonName
personName =
  PersonName'
    { _pnGivenName = Nothing
    , _pnMiddleName = Nothing
    , _pnFormatted = Nothing
    , _pnHonorificPrefix = Nothing
    , _pnFamilyName = Nothing
    , _pnHonorificSuffix = Nothing
    }


-- | The given name (first name) of this person.
pnGivenName :: Lens' PersonName (Maybe Text)
pnGivenName
  = lens _pnGivenName (\ s a -> s{_pnGivenName = a})

-- | The middle name of this person.
pnMiddleName :: Lens' PersonName (Maybe Text)
pnMiddleName
  = lens _pnMiddleName (\ s a -> s{_pnMiddleName = a})

-- | The full name of this person, including middle names, suffixes, etc.
pnFormatted :: Lens' PersonName (Maybe Text)
pnFormatted
  = lens _pnFormatted (\ s a -> s{_pnFormatted = a})

-- | The honorific prefixes (such as \"Dr.\" or \"Mrs.\") for this person.
pnHonorificPrefix :: Lens' PersonName (Maybe Text)
pnHonorificPrefix
  = lens _pnHonorificPrefix
      (\ s a -> s{_pnHonorificPrefix = a})

-- | The family name (last name) of this person.
pnFamilyName :: Lens' PersonName (Maybe Text)
pnFamilyName
  = lens _pnFamilyName (\ s a -> s{_pnFamilyName = a})

-- | The honorific suffixes (such as \"Jr.\") for this person.
pnHonorificSuffix :: Lens' PersonName (Maybe Text)
pnHonorificSuffix
  = lens _pnHonorificSuffix
      (\ s a -> s{_pnHonorificSuffix = a})

instance FromJSON PersonName where
        parseJSON
          = withObject "PersonName"
              (\ o ->
                 PersonName' <$>
                   (o .:? "givenName") <*> (o .:? "middleName") <*>
                     (o .:? "formatted")
                     <*> (o .:? "honorificPrefix")
                     <*> (o .:? "familyName")
                     <*> (o .:? "honorificSuffix"))

instance ToJSON PersonName where
        toJSON PersonName'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _pnGivenName,
                  ("middleName" .=) <$> _pnMiddleName,
                  ("formatted" .=) <$> _pnFormatted,
                  ("honorificPrefix" .=) <$> _pnHonorificPrefix,
                  ("familyName" .=) <$> _pnFamilyName,
                  ("honorificSuffix" .=) <$> _pnHonorificSuffix])

-- | The representation of the person\'s profile photo.
--
-- /See:/ 'personImage' smart constructor.
data PersonImage =
  PersonImage'
    { _piURL :: !(Maybe Text)
    , _piIsDefault :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piURL'
--
-- * 'piIsDefault'
personImage
    :: PersonImage
personImage = PersonImage' {_piURL = Nothing, _piIsDefault = Nothing}


-- | The URL of the person\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
piURL :: Lens' PersonImage (Maybe Text)
piURL = lens _piURL (\ s a -> s{_piURL = a})

-- | Whether the person\'s profile photo is the default one
piIsDefault :: Lens' PersonImage (Maybe Bool)
piIsDefault
  = lens _piIsDefault (\ s a -> s{_piIsDefault = a})

instance FromJSON PersonImage where
        parseJSON
          = withObject "PersonImage"
              (\ o ->
                 PersonImage' <$>
                   (o .:? "url") <*> (o .:? "isDefault"))

instance ToJSON PersonImage where
        toJSON PersonImage'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _piURL,
                  ("isDefault" .=) <$> _piIsDefault])

-- | Actor info specific to YouTube clients.
--
-- /See:/ 'activityActorClientSpecificActorInfoYouTubeActorInfo' smart constructor.
newtype ActivityActorClientSpecificActorInfoYouTubeActorInfo =
  ActivityActorClientSpecificActorInfoYouTubeActorInfo'
    { _aacsaiytaiChannelId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityActorClientSpecificActorInfoYouTubeActorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacsaiytaiChannelId'
activityActorClientSpecificActorInfoYouTubeActorInfo
    :: ActivityActorClientSpecificActorInfoYouTubeActorInfo
activityActorClientSpecificActorInfoYouTubeActorInfo =
  ActivityActorClientSpecificActorInfoYouTubeActorInfo'
    {_aacsaiytaiChannelId = Nothing}


-- | ID of the YouTube channel owned by the Actor.
aacsaiytaiChannelId :: Lens' ActivityActorClientSpecificActorInfoYouTubeActorInfo (Maybe Text)
aacsaiytaiChannelId
  = lens _aacsaiytaiChannelId
      (\ s a -> s{_aacsaiytaiChannelId = a})

instance FromJSON
           ActivityActorClientSpecificActorInfoYouTubeActorInfo
         where
        parseJSON
          = withObject
              "ActivityActorClientSpecificActorInfoYouTubeActorInfo"
              (\ o ->
                 ActivityActorClientSpecificActorInfoYouTubeActorInfo'
                   <$> (o .:? "channelId"))

instance ToJSON
           ActivityActorClientSpecificActorInfoYouTubeActorInfo
         where
        toJSON
          ActivityActorClientSpecificActorInfoYouTubeActorInfo'{..}
          = object
              (catMaybes
                 [("channelId" .=) <$> _aacsaiytaiChannelId])

-- | Status of the activity as seen by the viewer.
--
-- /See:/ 'activityObjectStatusForViewer' smart constructor.
data ActivityObjectStatusForViewer =
  ActivityObjectStatusForViewer'
    { _aosfvCanComment :: !(Maybe Bool)
    , _aosfvResharingDisabled :: !(Maybe Bool)
    , _aosfvCanUpdate :: !(Maybe Bool)
    , _aosfvIsPlusOned :: !(Maybe Bool)
    , _aosfvCanPlusone :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectStatusForViewer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aosfvCanComment'
--
-- * 'aosfvResharingDisabled'
--
-- * 'aosfvCanUpdate'
--
-- * 'aosfvIsPlusOned'
--
-- * 'aosfvCanPlusone'
activityObjectStatusForViewer
    :: ActivityObjectStatusForViewer
activityObjectStatusForViewer =
  ActivityObjectStatusForViewer'
    { _aosfvCanComment = Nothing
    , _aosfvResharingDisabled = Nothing
    , _aosfvCanUpdate = Nothing
    , _aosfvIsPlusOned = Nothing
    , _aosfvCanPlusone = Nothing
    }


-- | Whether the viewer can comment on the activity.
aosfvCanComment :: Lens' ActivityObjectStatusForViewer (Maybe Bool)
aosfvCanComment
  = lens _aosfvCanComment
      (\ s a -> s{_aosfvCanComment = a})

-- | Whether reshares are disabled for the activity.
aosfvResharingDisabled :: Lens' ActivityObjectStatusForViewer (Maybe Bool)
aosfvResharingDisabled
  = lens _aosfvResharingDisabled
      (\ s a -> s{_aosfvResharingDisabled = a})

-- | Whether the viewer can edit or delete the activity.
aosfvCanUpdate :: Lens' ActivityObjectStatusForViewer (Maybe Bool)
aosfvCanUpdate
  = lens _aosfvCanUpdate
      (\ s a -> s{_aosfvCanUpdate = a})

-- | Whether the viewer has +1\'d the activity.
aosfvIsPlusOned :: Lens' ActivityObjectStatusForViewer (Maybe Bool)
aosfvIsPlusOned
  = lens _aosfvIsPlusOned
      (\ s a -> s{_aosfvIsPlusOned = a})

-- | Whether the viewer can +1 the activity.
aosfvCanPlusone :: Lens' ActivityObjectStatusForViewer (Maybe Bool)
aosfvCanPlusone
  = lens _aosfvCanPlusone
      (\ s a -> s{_aosfvCanPlusone = a})

instance FromJSON ActivityObjectStatusForViewer where
        parseJSON
          = withObject "ActivityObjectStatusForViewer"
              (\ o ->
                 ActivityObjectStatusForViewer' <$>
                   (o .:? "canComment") <*> (o .:? "resharingDisabled")
                     <*> (o .:? "canUpdate")
                     <*> (o .:? "isPlusOned")
                     <*> (o .:? "canPlusone"))

instance ToJSON ActivityObjectStatusForViewer where
        toJSON ActivityObjectStatusForViewer'{..}
          = object
              (catMaybes
                 [("canComment" .=) <$> _aosfvCanComment,
                  ("resharingDisabled" .=) <$> _aosfvResharingDisabled,
                  ("canUpdate" .=) <$> _aosfvCanUpdate,
                  ("isPlusOned" .=) <$> _aosfvIsPlusOned,
                  ("canPlusone" .=) <$> _aosfvCanPlusone])

--
-- /See:/ 'activity' smart constructor.
data Activity =
  Activity'
    { _actAccess :: !(Maybe ACL)
    , _actPlaceName :: !(Maybe Text)
    , _actEtag :: !(Maybe Text)
    , _actAnnotation :: !(Maybe Text)
    , _actLocation :: !(Maybe Place)
    , _actGeocode :: !(Maybe Text)
    , _actKind :: !Text
    , _actRadius :: !(Maybe Text)
    , _actPublished :: !(Maybe DateTime')
    , _actURL :: !(Maybe Text)
    , _actActor :: !(Maybe ActivityActor)
    , _actAddress :: !(Maybe Text)
    , _actObject :: !(Maybe ActivityObject)
    , _actId :: !(Maybe Text)
    , _actUpdated :: !(Maybe DateTime')
    , _actTitle :: !(Maybe Text)
    , _actVerb :: !(Maybe Text)
    , _actCrosspostSource :: !(Maybe Text)
    , _actPlaceId :: !(Maybe Text)
    , _actProvider :: !(Maybe ActivityProvider)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actAccess'
--
-- * 'actPlaceName'
--
-- * 'actEtag'
--
-- * 'actAnnotation'
--
-- * 'actLocation'
--
-- * 'actGeocode'
--
-- * 'actKind'
--
-- * 'actRadius'
--
-- * 'actPublished'
--
-- * 'actURL'
--
-- * 'actActor'
--
-- * 'actAddress'
--
-- * 'actObject'
--
-- * 'actId'
--
-- * 'actUpdated'
--
-- * 'actTitle'
--
-- * 'actVerb'
--
-- * 'actCrosspostSource'
--
-- * 'actPlaceId'
--
-- * 'actProvider'
activity
    :: Activity
activity =
  Activity'
    { _actAccess = Nothing
    , _actPlaceName = Nothing
    , _actEtag = Nothing
    , _actAnnotation = Nothing
    , _actLocation = Nothing
    , _actGeocode = Nothing
    , _actKind = "plus#activity"
    , _actRadius = Nothing
    , _actPublished = Nothing
    , _actURL = Nothing
    , _actActor = Nothing
    , _actAddress = Nothing
    , _actObject = Nothing
    , _actId = Nothing
    , _actUpdated = Nothing
    , _actTitle = Nothing
    , _actVerb = Nothing
    , _actCrosspostSource = Nothing
    , _actPlaceId = Nothing
    , _actProvider = Nothing
    }


-- | Identifies who has access to see this activity.
actAccess :: Lens' Activity (Maybe ACL)
actAccess
  = lens _actAccess (\ s a -> s{_actAccess = a})

-- | Name of the place where this activity occurred.
actPlaceName :: Lens' Activity (Maybe Text)
actPlaceName
  = lens _actPlaceName (\ s a -> s{_actPlaceName = a})

-- | ETag of this response for caching purposes.
actEtag :: Lens' Activity (Maybe Text)
actEtag = lens _actEtag (\ s a -> s{_actEtag = a})

-- | Additional content added by the person who shared this activity,
-- applicable only when resharing an activity.
actAnnotation :: Lens' Activity (Maybe Text)
actAnnotation
  = lens _actAnnotation
      (\ s a -> s{_actAnnotation = a})

-- | The location where this activity occurred.
actLocation :: Lens' Activity (Maybe Place)
actLocation
  = lens _actLocation (\ s a -> s{_actLocation = a})

-- | Latitude and longitude where this activity occurred. Format is latitude
-- followed by longitude, space separated.
actGeocode :: Lens' Activity (Maybe Text)
actGeocode
  = lens _actGeocode (\ s a -> s{_actGeocode = a})

-- | Identifies this resource as an activity. Value: \"plus#activity\".
actKind :: Lens' Activity Text
actKind = lens _actKind (\ s a -> s{_actKind = a})

-- | Radius, in meters, of the region where this activity occurred, centered
-- at the latitude and longitude identified in geocode.
actRadius :: Lens' Activity (Maybe Text)
actRadius
  = lens _actRadius (\ s a -> s{_actRadius = a})

-- | The time at which this activity was initially published. Formatted as an
-- RFC 3339 timestamp.
actPublished :: Lens' Activity (Maybe UTCTime)
actPublished
  = lens _actPublished (\ s a -> s{_actPublished = a})
      . mapping _DateTime

-- | The link to this activity.
actURL :: Lens' Activity (Maybe Text)
actURL = lens _actURL (\ s a -> s{_actURL = a})

-- | The person who performed this activity.
actActor :: Lens' Activity (Maybe ActivityActor)
actActor = lens _actActor (\ s a -> s{_actActor = a})

-- | Street address where this activity occurred.
actAddress :: Lens' Activity (Maybe Text)
actAddress
  = lens _actAddress (\ s a -> s{_actAddress = a})

-- | The object of this activity.
actObject :: Lens' Activity (Maybe ActivityObject)
actObject
  = lens _actObject (\ s a -> s{_actObject = a})

-- | The ID of this activity.
actId :: Lens' Activity (Maybe Text)
actId = lens _actId (\ s a -> s{_actId = a})

-- | The time at which this activity was last updated. Formatted as an RFC
-- 3339 timestamp.
actUpdated :: Lens' Activity (Maybe UTCTime)
actUpdated
  = lens _actUpdated (\ s a -> s{_actUpdated = a}) .
      mapping _DateTime

-- | Title of this activity.
actTitle :: Lens' Activity (Maybe Text)
actTitle = lens _actTitle (\ s a -> s{_actTitle = a})

-- | This activity\'s verb, which indicates the action that was performed.
-- Possible values include, but are not limited to, the following values: -
-- \"post\" - Publish content to the stream. - \"share\" - Reshare an
-- activity.
actVerb :: Lens' Activity (Maybe Text)
actVerb = lens _actVerb (\ s a -> s{_actVerb = a})

-- | If this activity is a crosspost from another system, this property
-- specifies the ID of the original activity.
actCrosspostSource :: Lens' Activity (Maybe Text)
actCrosspostSource
  = lens _actCrosspostSource
      (\ s a -> s{_actCrosspostSource = a})

-- | ID of the place where this activity occurred.
actPlaceId :: Lens' Activity (Maybe Text)
actPlaceId
  = lens _actPlaceId (\ s a -> s{_actPlaceId = a})

-- | The service provider that initially published this activity.
actProvider :: Lens' Activity (Maybe ActivityProvider)
actProvider
  = lens _actProvider (\ s a -> s{_actProvider = a})

instance FromJSON Activity where
        parseJSON
          = withObject "Activity"
              (\ o ->
                 Activity' <$>
                   (o .:? "access") <*> (o .:? "placeName") <*>
                     (o .:? "etag")
                     <*> (o .:? "annotation")
                     <*> (o .:? "location")
                     <*> (o .:? "geocode")
                     <*> (o .:? "kind" .!= "plus#activity")
                     <*> (o .:? "radius")
                     <*> (o .:? "published")
                     <*> (o .:? "url")
                     <*> (o .:? "actor")
                     <*> (o .:? "address")
                     <*> (o .:? "object")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title")
                     <*> (o .:? "verb")
                     <*> (o .:? "crosspostSource")
                     <*> (o .:? "placeId")
                     <*> (o .:? "provider"))

instance ToJSON Activity where
        toJSON Activity'{..}
          = object
              (catMaybes
                 [("access" .=) <$> _actAccess,
                  ("placeName" .=) <$> _actPlaceName,
                  ("etag" .=) <$> _actEtag,
                  ("annotation" .=) <$> _actAnnotation,
                  ("location" .=) <$> _actLocation,
                  ("geocode" .=) <$> _actGeocode,
                  Just ("kind" .= _actKind),
                  ("radius" .=) <$> _actRadius,
                  ("published" .=) <$> _actPublished,
                  ("url" .=) <$> _actURL, ("actor" .=) <$> _actActor,
                  ("address" .=) <$> _actAddress,
                  ("object" .=) <$> _actObject, ("id" .=) <$> _actId,
                  ("updated" .=) <$> _actUpdated,
                  ("title" .=) <$> _actTitle, ("verb" .=) <$> _actVerb,
                  ("crosspostSource" .=) <$> _actCrosspostSource,
                  ("placeId" .=) <$> _actPlaceId,
                  ("provider" .=) <$> _actProvider])

-- | The physical address of the place.
--
-- /See:/ 'placeAddress' smart constructor.
newtype PlaceAddress =
  PlaceAddress'
    { _paFormatted :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlaceAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paFormatted'
placeAddress
    :: PlaceAddress
placeAddress = PlaceAddress' {_paFormatted = Nothing}


-- | The formatted address for display.
paFormatted :: Lens' PlaceAddress (Maybe Text)
paFormatted
  = lens _paFormatted (\ s a -> s{_paFormatted = a})

instance FromJSON PlaceAddress where
        parseJSON
          = withObject "PlaceAddress"
              (\ o -> PlaceAddress' <$> (o .:? "formatted"))

instance ToJSON PlaceAddress where
        toJSON PlaceAddress'{..}
          = object
              (catMaybes [("formatted" .=) <$> _paFormatted])

--
-- /See:/ 'audiencesFeed' smart constructor.
data AudiencesFeed =
  AudiencesFeed'
    { _audTotalItems :: !(Maybe (Textual Int32))
    , _audEtag :: !(Maybe Text)
    , _audNextPageToken :: !(Maybe Text)
    , _audKind :: !Text
    , _audItems :: !(Maybe [Audience])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AudiencesFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'audTotalItems'
--
-- * 'audEtag'
--
-- * 'audNextPageToken'
--
-- * 'audKind'
--
-- * 'audItems'
audiencesFeed
    :: AudiencesFeed
audiencesFeed =
  AudiencesFeed'
    { _audTotalItems = Nothing
    , _audEtag = Nothing
    , _audNextPageToken = Nothing
    , _audKind = "plus#audiencesFeed"
    , _audItems = Nothing
    }


-- | The total number of ACL entries. The number of entries in this response
-- may be smaller due to paging.
audTotalItems :: Lens' AudiencesFeed (Maybe Int32)
audTotalItems
  = lens _audTotalItems
      (\ s a -> s{_audTotalItems = a})
      . mapping _Coerce

-- | ETag of this response for caching purposes.
audEtag :: Lens' AudiencesFeed (Maybe Text)
audEtag = lens _audEtag (\ s a -> s{_audEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
audNextPageToken :: Lens' AudiencesFeed (Maybe Text)
audNextPageToken
  = lens _audNextPageToken
      (\ s a -> s{_audNextPageToken = a})

-- | Identifies this resource as a collection of audiences. Value:
-- \"plus#audienceFeed\".
audKind :: Lens' AudiencesFeed Text
audKind = lens _audKind (\ s a -> s{_audKind = a})

-- | The audiences in this result.
audItems :: Lens' AudiencesFeed [Audience]
audItems
  = lens _audItems (\ s a -> s{_audItems = a}) .
      _Default
      . _Coerce

instance FromJSON AudiencesFeed where
        parseJSON
          = withObject "AudiencesFeed"
              (\ o ->
                 AudiencesFeed' <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "plus#audiencesFeed")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AudiencesFeed where
        toJSON AudiencesFeed'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _audTotalItems,
                  ("etag" .=) <$> _audEtag,
                  ("nextPageToken" .=) <$> _audNextPageToken,
                  Just ("kind" .= _audKind),
                  ("items" .=) <$> _audItems])

--
-- /See:/ 'activityObjectAttachmentsItemThumbnailsItem' smart constructor.
data ActivityObjectAttachmentsItemThumbnailsItem =
  ActivityObjectAttachmentsItemThumbnailsItem'
    { _aoaitiImage :: !(Maybe ActivityObjectAttachmentsItemThumbnailsItemImage)
    , _aoaitiURL :: !(Maybe Text)
    , _aoaitiDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectAttachmentsItemThumbnailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaitiImage'
--
-- * 'aoaitiURL'
--
-- * 'aoaitiDescription'
activityObjectAttachmentsItemThumbnailsItem
    :: ActivityObjectAttachmentsItemThumbnailsItem
activityObjectAttachmentsItemThumbnailsItem =
  ActivityObjectAttachmentsItemThumbnailsItem'
    {_aoaitiImage = Nothing, _aoaitiURL = Nothing, _aoaitiDescription = Nothing}


-- | Image resource.
aoaitiImage :: Lens' ActivityObjectAttachmentsItemThumbnailsItem (Maybe ActivityObjectAttachmentsItemThumbnailsItemImage)
aoaitiImage
  = lens _aoaitiImage (\ s a -> s{_aoaitiImage = a})

-- | URL of the webpage containing the image.
aoaitiURL :: Lens' ActivityObjectAttachmentsItemThumbnailsItem (Maybe Text)
aoaitiURL
  = lens _aoaitiURL (\ s a -> s{_aoaitiURL = a})

-- | Potential name of the thumbnail.
aoaitiDescription :: Lens' ActivityObjectAttachmentsItemThumbnailsItem (Maybe Text)
aoaitiDescription
  = lens _aoaitiDescription
      (\ s a -> s{_aoaitiDescription = a})

instance FromJSON
           ActivityObjectAttachmentsItemThumbnailsItem
         where
        parseJSON
          = withObject
              "ActivityObjectAttachmentsItemThumbnailsItem"
              (\ o ->
                 ActivityObjectAttachmentsItemThumbnailsItem' <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "description"))

instance ToJSON
           ActivityObjectAttachmentsItemThumbnailsItem
         where
        toJSON
          ActivityObjectAttachmentsItemThumbnailsItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _aoaitiImage,
                  ("url" .=) <$> _aoaitiURL,
                  ("description" .=) <$> _aoaitiDescription])

-- | The cover photo content.
--
-- /See:/ 'personCover' smart constructor.
data PersonCover =
  PersonCover'
    { _pcLayout :: !(Maybe Text)
    , _pcCoverInfo :: !(Maybe PersonCoverCoverInfo)
    , _pcCoverPhoto :: !(Maybe PersonCoverCoverPhoto)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonCover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcLayout'
--
-- * 'pcCoverInfo'
--
-- * 'pcCoverPhoto'
personCover
    :: PersonCover
personCover =
  PersonCover'
    {_pcLayout = Nothing, _pcCoverInfo = Nothing, _pcCoverPhoto = Nothing}


-- | The layout of the cover art. Possible values include, but are not
-- limited to, the following values: - \"banner\" - One large image banner.
pcLayout :: Lens' PersonCover (Maybe Text)
pcLayout = lens _pcLayout (\ s a -> s{_pcLayout = a})

-- | Extra information about the cover photo.
pcCoverInfo :: Lens' PersonCover (Maybe PersonCoverCoverInfo)
pcCoverInfo
  = lens _pcCoverInfo (\ s a -> s{_pcCoverInfo = a})

-- | The person\'s primary cover image.
pcCoverPhoto :: Lens' PersonCover (Maybe PersonCoverCoverPhoto)
pcCoverPhoto
  = lens _pcCoverPhoto (\ s a -> s{_pcCoverPhoto = a})

instance FromJSON PersonCover where
        parseJSON
          = withObject "PersonCover"
              (\ o ->
                 PersonCover' <$>
                   (o .:? "layout") <*> (o .:? "coverInfo") <*>
                     (o .:? "coverPhoto"))

instance ToJSON PersonCover where
        toJSON PersonCover'{..}
          = object
              (catMaybes
                 [("layout" .=) <$> _pcLayout,
                  ("coverInfo" .=) <$> _pcCoverInfo,
                  ("coverPhoto" .=) <$> _pcCoverPhoto])

--
-- /See:/ 'commentInReplyToItem' smart constructor.
data CommentInReplyToItem =
  CommentInReplyToItem'
    { _cirtiURL :: !(Maybe Text)
    , _cirtiId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentInReplyToItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirtiURL'
--
-- * 'cirtiId'
commentInReplyToItem
    :: CommentInReplyToItem
commentInReplyToItem =
  CommentInReplyToItem' {_cirtiURL = Nothing, _cirtiId = Nothing}


-- | The URL of the activity.
cirtiURL :: Lens' CommentInReplyToItem (Maybe Text)
cirtiURL = lens _cirtiURL (\ s a -> s{_cirtiURL = a})

-- | The ID of the activity.
cirtiId :: Lens' CommentInReplyToItem (Maybe Text)
cirtiId = lens _cirtiId (\ s a -> s{_cirtiId = a})

instance FromJSON CommentInReplyToItem where
        parseJSON
          = withObject "CommentInReplyToItem"
              (\ o ->
                 CommentInReplyToItem' <$>
                   (o .:? "url") <*> (o .:? "id"))

instance ToJSON CommentInReplyToItem where
        toJSON CommentInReplyToItem'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _cirtiURL, ("id" .=) <$> _cirtiId])

--
-- /See:/ 'personOrganizationsItem' smart constructor.
data PersonOrganizationsItem =
  PersonOrganizationsItem'
    { _poiDePartment :: !(Maybe Text)
    , _poiLocation :: !(Maybe Text)
    , _poiEndDate :: !(Maybe Text)
    , _poiPrimary :: !(Maybe Bool)
    , _poiStartDate :: !(Maybe Text)
    , _poiName :: !(Maybe Text)
    , _poiTitle :: !(Maybe Text)
    , _poiType :: !(Maybe Text)
    , _poiDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonOrganizationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poiDePartment'
--
-- * 'poiLocation'
--
-- * 'poiEndDate'
--
-- * 'poiPrimary'
--
-- * 'poiStartDate'
--
-- * 'poiName'
--
-- * 'poiTitle'
--
-- * 'poiType'
--
-- * 'poiDescription'
personOrganizationsItem
    :: PersonOrganizationsItem
personOrganizationsItem =
  PersonOrganizationsItem'
    { _poiDePartment = Nothing
    , _poiLocation = Nothing
    , _poiEndDate = Nothing
    , _poiPrimary = Nothing
    , _poiStartDate = Nothing
    , _poiName = Nothing
    , _poiTitle = Nothing
    , _poiType = Nothing
    , _poiDescription = Nothing
    }


-- | The department within the organization. Deprecated.
poiDePartment :: Lens' PersonOrganizationsItem (Maybe Text)
poiDePartment
  = lens _poiDePartment
      (\ s a -> s{_poiDePartment = a})

-- | The location of this organization. Deprecated.
poiLocation :: Lens' PersonOrganizationsItem (Maybe Text)
poiLocation
  = lens _poiLocation (\ s a -> s{_poiLocation = a})

-- | The date that the person left this organization.
poiEndDate :: Lens' PersonOrganizationsItem (Maybe Text)
poiEndDate
  = lens _poiEndDate (\ s a -> s{_poiEndDate = a})

-- | If \"true\", indicates this organization is the person\'s primary one,
-- which is typically interpreted as the current one.
poiPrimary :: Lens' PersonOrganizationsItem (Maybe Bool)
poiPrimary
  = lens _poiPrimary (\ s a -> s{_poiPrimary = a})

-- | The date that the person joined this organization.
poiStartDate :: Lens' PersonOrganizationsItem (Maybe Text)
poiStartDate
  = lens _poiStartDate (\ s a -> s{_poiStartDate = a})

-- | The name of the organization.
poiName :: Lens' PersonOrganizationsItem (Maybe Text)
poiName = lens _poiName (\ s a -> s{_poiName = a})

-- | The person\'s job title or role within the organization.
poiTitle :: Lens' PersonOrganizationsItem (Maybe Text)
poiTitle = lens _poiTitle (\ s a -> s{_poiTitle = a})

-- | The type of organization. Possible values include, but are not limited
-- to, the following values: - \"work\" - Work. - \"school\" - School.
poiType :: Lens' PersonOrganizationsItem (Maybe Text)
poiType = lens _poiType (\ s a -> s{_poiType = a})

-- | A short description of the person\'s role in this organization.
-- Deprecated.
poiDescription :: Lens' PersonOrganizationsItem (Maybe Text)
poiDescription
  = lens _poiDescription
      (\ s a -> s{_poiDescription = a})

instance FromJSON PersonOrganizationsItem where
        parseJSON
          = withObject "PersonOrganizationsItem"
              (\ o ->
                 PersonOrganizationsItem' <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "endDate")
                     <*> (o .:? "primary")
                     <*> (o .:? "startDate")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON PersonOrganizationsItem where
        toJSON PersonOrganizationsItem'{..}
          = object
              (catMaybes
                 [("department" .=) <$> _poiDePartment,
                  ("location" .=) <$> _poiLocation,
                  ("endDate" .=) <$> _poiEndDate,
                  ("primary" .=) <$> _poiPrimary,
                  ("startDate" .=) <$> _poiStartDate,
                  ("name" .=) <$> _poiName, ("title" .=) <$> _poiTitle,
                  ("type" .=) <$> _poiType,
                  ("description" .=) <$> _poiDescription])

--
-- /See:/ 'personURLsItem' smart constructor.
data PersonURLsItem =
  PersonURLsItem'
    { _puiValue :: !(Maybe Text)
    , _puiType :: !(Maybe Text)
    , _puiLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonURLsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puiValue'
--
-- * 'puiType'
--
-- * 'puiLabel'
personURLsItem
    :: PersonURLsItem
personURLsItem =
  PersonURLsItem' {_puiValue = Nothing, _puiType = Nothing, _puiLabel = Nothing}


-- | The URL value.
puiValue :: Lens' PersonURLsItem (Maybe Text)
puiValue = lens _puiValue (\ s a -> s{_puiValue = a})

-- | The type of URL. Possible values include, but are not limited to, the
-- following values: - \"otherProfile\" - URL for another profile. -
-- \"contributor\" - URL to a site for which this person is a contributor.
-- - \"website\" - URL for this Google+ Page\'s primary website. -
-- \"other\" - Other URL.
puiType :: Lens' PersonURLsItem (Maybe Text)
puiType = lens _puiType (\ s a -> s{_puiType = a})

-- | The label of the URL.
puiLabel :: Lens' PersonURLsItem (Maybe Text)
puiLabel = lens _puiLabel (\ s a -> s{_puiLabel = a})

instance FromJSON PersonURLsItem where
        parseJSON
          = withObject "PersonURLsItem"
              (\ o ->
                 PersonURLsItem' <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "label"))

instance ToJSON PersonURLsItem where
        toJSON PersonURLsItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _puiValue,
                  ("type" .=) <$> _puiType,
                  ("label" .=) <$> _puiLabel])

-- | Extra information about the cover photo.
--
-- /See:/ 'personCoverCoverInfo' smart constructor.
data PersonCoverCoverInfo =
  PersonCoverCoverInfo'
    { _pcciTopImageOffSet :: !(Maybe (Textual Int32))
    , _pcciLeftImageOffSet :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonCoverCoverInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcciTopImageOffSet'
--
-- * 'pcciLeftImageOffSet'
personCoverCoverInfo
    :: PersonCoverCoverInfo
personCoverCoverInfo =
  PersonCoverCoverInfo'
    {_pcciTopImageOffSet = Nothing, _pcciLeftImageOffSet = Nothing}


-- | The difference between the top position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
pcciTopImageOffSet :: Lens' PersonCoverCoverInfo (Maybe Int32)
pcciTopImageOffSet
  = lens _pcciTopImageOffSet
      (\ s a -> s{_pcciTopImageOffSet = a})
      . mapping _Coerce

-- | The difference between the left position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
pcciLeftImageOffSet :: Lens' PersonCoverCoverInfo (Maybe Int32)
pcciLeftImageOffSet
  = lens _pcciLeftImageOffSet
      (\ s a -> s{_pcciLeftImageOffSet = a})
      . mapping _Coerce

instance FromJSON PersonCoverCoverInfo where
        parseJSON
          = withObject "PersonCoverCoverInfo"
              (\ o ->
                 PersonCoverCoverInfo' <$>
                   (o .:? "topImageOffset") <*>
                     (o .:? "leftImageOffset"))

instance ToJSON PersonCoverCoverInfo where
        toJSON PersonCoverCoverInfo'{..}
          = object
              (catMaybes
                 [("topImageOffset" .=) <$> _pcciTopImageOffSet,
                  ("leftImageOffset" .=) <$> _pcciLeftImageOffSet])

-- | People who reshared this activity.
--
-- /See:/ 'activityObjectResharers' smart constructor.
data ActivityObjectResharers =
  ActivityObjectResharers'
    { _aTotalItems :: !(Maybe (Textual Word32))
    , _aSelfLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityObjectResharers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTotalItems'
--
-- * 'aSelfLink'
activityObjectResharers
    :: ActivityObjectResharers
activityObjectResharers =
  ActivityObjectResharers' {_aTotalItems = Nothing, _aSelfLink = Nothing}


-- | Total number of people who reshared this activity.
aTotalItems :: Lens' ActivityObjectResharers (Maybe Word32)
aTotalItems
  = lens _aTotalItems (\ s a -> s{_aTotalItems = a}) .
      mapping _Coerce

-- | The URL for the collection of resharers.
aSelfLink :: Lens' ActivityObjectResharers (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

instance FromJSON ActivityObjectResharers where
        parseJSON
          = withObject "ActivityObjectResharers"
              (\ o ->
                 ActivityObjectResharers' <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON ActivityObjectResharers where
        toJSON ActivityObjectResharers'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aTotalItems,
                  ("selfLink" .=) <$> _aSelfLink])

--
-- /See:/ 'comment' smart constructor.
data Comment =
  Comment'
    { _comEtag :: !(Maybe Text)
    , _comPlusoners :: !(Maybe CommentPlusoners)
    , _comKind :: !Text
    , _comPublished :: !(Maybe DateTime')
    , _comActor :: !(Maybe CommentActor)
    , _comSelfLink :: !(Maybe Text)
    , _comObject :: !(Maybe CommentObject)
    , _comId :: !(Maybe Text)
    , _comUpdated :: !(Maybe DateTime')
    , _comVerb :: !Text
    , _comInReplyTo :: !(Maybe [CommentInReplyToItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comEtag'
--
-- * 'comPlusoners'
--
-- * 'comKind'
--
-- * 'comPublished'
--
-- * 'comActor'
--
-- * 'comSelfLink'
--
-- * 'comObject'
--
-- * 'comId'
--
-- * 'comUpdated'
--
-- * 'comVerb'
--
-- * 'comInReplyTo'
comment
    :: Comment
comment =
  Comment'
    { _comEtag = Nothing
    , _comPlusoners = Nothing
    , _comKind = "plus#comment"
    , _comPublished = Nothing
    , _comActor = Nothing
    , _comSelfLink = Nothing
    , _comObject = Nothing
    , _comId = Nothing
    , _comUpdated = Nothing
    , _comVerb = "post"
    , _comInReplyTo = Nothing
    }


-- | ETag of this response for caching purposes.
comEtag :: Lens' Comment (Maybe Text)
comEtag = lens _comEtag (\ s a -> s{_comEtag = a})

-- | People who +1\'d this comment.
comPlusoners :: Lens' Comment (Maybe CommentPlusoners)
comPlusoners
  = lens _comPlusoners (\ s a -> s{_comPlusoners = a})

-- | Identifies this resource as a comment. Value: \"plus#comment\".
comKind :: Lens' Comment Text
comKind = lens _comKind (\ s a -> s{_comKind = a})

-- | The time at which this comment was initially published. Formatted as an
-- RFC 3339 timestamp.
comPublished :: Lens' Comment (Maybe UTCTime)
comPublished
  = lens _comPublished (\ s a -> s{_comPublished = a})
      . mapping _DateTime

-- | The person who posted this comment.
comActor :: Lens' Comment (Maybe CommentActor)
comActor = lens _comActor (\ s a -> s{_comActor = a})

-- | Link to this comment resource.
comSelfLink :: Lens' Comment (Maybe Text)
comSelfLink
  = lens _comSelfLink (\ s a -> s{_comSelfLink = a})

-- | The object of this comment.
comObject :: Lens' Comment (Maybe CommentObject)
comObject
  = lens _comObject (\ s a -> s{_comObject = a})

-- | The ID of this comment.
comId :: Lens' Comment (Maybe Text)
comId = lens _comId (\ s a -> s{_comId = a})

-- | The time at which this comment was last updated. Formatted as an RFC
-- 3339 timestamp.
comUpdated :: Lens' Comment (Maybe UTCTime)
comUpdated
  = lens _comUpdated (\ s a -> s{_comUpdated = a}) .
      mapping _DateTime

-- | This comment\'s verb, indicating what action was performed. Possible
-- values are: - \"post\" - Publish content to the stream.
comVerb :: Lens' Comment Text
comVerb = lens _comVerb (\ s a -> s{_comVerb = a})

-- | The activity this comment replied to.
comInReplyTo :: Lens' Comment [CommentInReplyToItem]
comInReplyTo
  = lens _comInReplyTo (\ s a -> s{_comInReplyTo = a})
      . _Default
      . _Coerce

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment' <$>
                   (o .:? "etag") <*> (o .:? "plusoners") <*>
                     (o .:? "kind" .!= "plus#comment")
                     <*> (o .:? "published")
                     <*> (o .:? "actor")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "object")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "verb" .!= "post")
                     <*> (o .:? "inReplyTo" .!= mempty))

instance ToJSON Comment where
        toJSON Comment'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _comEtag,
                  ("plusoners" .=) <$> _comPlusoners,
                  Just ("kind" .= _comKind),
                  ("published" .=) <$> _comPublished,
                  ("actor" .=) <$> _comActor,
                  ("selfLink" .=) <$> _comSelfLink,
                  ("object" .=) <$> _comObject, ("id" .=) <$> _comId,
                  ("updated" .=) <$> _comUpdated,
                  Just ("verb" .= _comVerb),
                  ("inReplyTo" .=) <$> _comInReplyTo])

--
-- /See:/ 'place' smart constructor.
data Place =
  Place'
    { _plaKind :: !Text
    , _plaAddress :: !(Maybe PlaceAddress)
    , _plaDisplayName :: !(Maybe Text)
    , _plaId :: !(Maybe Text)
    , _plaPosition :: !(Maybe PlacePosition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Place' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaKind'
--
-- * 'plaAddress'
--
-- * 'plaDisplayName'
--
-- * 'plaId'
--
-- * 'plaPosition'
place
    :: Place
place =
  Place'
    { _plaKind = "plus#place"
    , _plaAddress = Nothing
    , _plaDisplayName = Nothing
    , _plaId = Nothing
    , _plaPosition = Nothing
    }


-- | Identifies this resource as a place. Value: \"plus#place\".
plaKind :: Lens' Place Text
plaKind = lens _plaKind (\ s a -> s{_plaKind = a})

-- | The physical address of the place.
plaAddress :: Lens' Place (Maybe PlaceAddress)
plaAddress
  = lens _plaAddress (\ s a -> s{_plaAddress = a})

-- | The display name of the place.
plaDisplayName :: Lens' Place (Maybe Text)
plaDisplayName
  = lens _plaDisplayName
      (\ s a -> s{_plaDisplayName = a})

-- | The id of the place.
plaId :: Lens' Place (Maybe Text)
plaId = lens _plaId (\ s a -> s{_plaId = a})

-- | The position of the place.
plaPosition :: Lens' Place (Maybe PlacePosition)
plaPosition
  = lens _plaPosition (\ s a -> s{_plaPosition = a})

instance FromJSON Place where
        parseJSON
          = withObject "Place"
              (\ o ->
                 Place' <$>
                   (o .:? "kind" .!= "plus#place") <*> (o .:? "address")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "position"))

instance ToJSON Place where
        toJSON Place'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _plaKind),
                  ("address" .=) <$> _plaAddress,
                  ("displayName" .=) <$> _plaDisplayName,
                  ("id" .=) <$> _plaId,
                  ("position" .=) <$> _plaPosition])

--
-- /See:/ 'acl' smart constructor.
data ACL =
  ACL'
    { _aclcKind :: !Text
    , _aclcItems :: !(Maybe [PlusDomainsACLentryResource])
    , _aclcDomainRestricted :: !(Maybe Bool)
    , _aclcDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclcKind'
--
-- * 'aclcItems'
--
-- * 'aclcDomainRestricted'
--
-- * 'aclcDescription'
acl
    :: ACL
acl =
  ACL'
    { _aclcKind = "plus#acl"
    , _aclcItems = Nothing
    , _aclcDomainRestricted = Nothing
    , _aclcDescription = Nothing
    }


-- | Identifies this resource as a collection of access controls. Value:
-- \"plus#acl\".
aclcKind :: Lens' ACL Text
aclcKind = lens _aclcKind (\ s a -> s{_aclcKind = a})

-- | The list of access entries.
aclcItems :: Lens' ACL [PlusDomainsACLentryResource]
aclcItems
  = lens _aclcItems (\ s a -> s{_aclcItems = a}) .
      _Default
      . _Coerce

-- | Whether access is restricted to the domain.
aclcDomainRestricted :: Lens' ACL (Maybe Bool)
aclcDomainRestricted
  = lens _aclcDomainRestricted
      (\ s a -> s{_aclcDomainRestricted = a})

-- | Description of the access granted, suitable for display.
aclcDescription :: Lens' ACL (Maybe Text)
aclcDescription
  = lens _aclcDescription
      (\ s a -> s{_aclcDescription = a})

instance FromJSON ACL where
        parseJSON
          = withObject "ACL"
              (\ o ->
                 ACL' <$>
                   (o .:? "kind" .!= "plus#acl") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "domainRestricted")
                     <*> (o .:? "description"))

instance ToJSON ACL where
        toJSON ACL'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aclcKind),
                  ("items" .=) <$> _aclcItems,
                  ("domainRestricted" .=) <$> _aclcDomainRestricted,
                  ("description" .=) <$> _aclcDescription])

-- | Exif information of the media item.
--
-- /See:/ 'mediaExif' smart constructor.
newtype MediaExif =
  MediaExif'
    { _meTime :: Maybe DateTime'
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MediaExif' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meTime'
mediaExif
    :: MediaExif
mediaExif = MediaExif' {_meTime = Nothing}


-- | The time the media was captured. Formatted as an RFC 3339 timestamp.
meTime :: Lens' MediaExif (Maybe UTCTime)
meTime
  = lens _meTime (\ s a -> s{_meTime = a}) .
      mapping _DateTime

instance FromJSON MediaExif where
        parseJSON
          = withObject "MediaExif"
              (\ o -> MediaExif' <$> (o .:? "time"))

instance ToJSON MediaExif where
        toJSON MediaExif'{..}
          = object (catMaybes [("time" .=) <$> _meTime])

-- | The person who performed this activity.
--
-- /See:/ 'activityActor' smart constructor.
data ActivityActor =
  ActivityActor'
    { _aaClientSpecificActorInfo :: !(Maybe ActivityActorClientSpecificActorInfo)
    , _aaImage :: !(Maybe ActivityActorImage)
    , _aaURL :: !(Maybe Text)
    , _aaName :: !(Maybe ActivityActorName)
    , _aaDisplayName :: !(Maybe Text)
    , _aaId :: !(Maybe Text)
    , _aaVerification :: !(Maybe ActivityActorVerification)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaClientSpecificActorInfo'
--
-- * 'aaImage'
--
-- * 'aaURL'
--
-- * 'aaName'
--
-- * 'aaDisplayName'
--
-- * 'aaId'
--
-- * 'aaVerification'
activityActor
    :: ActivityActor
activityActor =
  ActivityActor'
    { _aaClientSpecificActorInfo = Nothing
    , _aaImage = Nothing
    , _aaURL = Nothing
    , _aaName = Nothing
    , _aaDisplayName = Nothing
    , _aaId = Nothing
    , _aaVerification = Nothing
    }


-- | Actor info specific to particular clients.
aaClientSpecificActorInfo :: Lens' ActivityActor (Maybe ActivityActorClientSpecificActorInfo)
aaClientSpecificActorInfo
  = lens _aaClientSpecificActorInfo
      (\ s a -> s{_aaClientSpecificActorInfo = a})

-- | The image representation of the actor.
aaImage :: Lens' ActivityActor (Maybe ActivityActorImage)
aaImage = lens _aaImage (\ s a -> s{_aaImage = a})

-- | The link to the actor\'s Google profile.
aaURL :: Lens' ActivityActor (Maybe Text)
aaURL = lens _aaURL (\ s a -> s{_aaURL = a})

-- | An object representation of the individual components of name.
aaName :: Lens' ActivityActor (Maybe ActivityActorName)
aaName = lens _aaName (\ s a -> s{_aaName = a})

-- | The name of the actor, suitable for display.
aaDisplayName :: Lens' ActivityActor (Maybe Text)
aaDisplayName
  = lens _aaDisplayName
      (\ s a -> s{_aaDisplayName = a})

-- | The ID of the actor\'s Person resource.
aaId :: Lens' ActivityActor (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | Verification status of actor.
aaVerification :: Lens' ActivityActor (Maybe ActivityActorVerification)
aaVerification
  = lens _aaVerification
      (\ s a -> s{_aaVerification = a})

instance FromJSON ActivityActor where
        parseJSON
          = withObject "ActivityActor"
              (\ o ->
                 ActivityActor' <$>
                   (o .:? "clientSpecificActorInfo") <*> (o .:? "image")
                     <*> (o .:? "url")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON ActivityActor where
        toJSON ActivityActor'{..}
          = object
              (catMaybes
                 [("clientSpecificActorInfo" .=) <$>
                    _aaClientSpecificActorInfo,
                  ("image" .=) <$> _aaImage, ("url" .=) <$> _aaURL,
                  ("name" .=) <$> _aaName,
                  ("displayName" .=) <$> _aaDisplayName,
                  ("id" .=) <$> _aaId,
                  ("verification" .=) <$> _aaVerification])

-- | The object of this comment.
--
-- /See:/ 'commentObject' smart constructor.
data CommentObject =
  CommentObject'
    { _coObjectType :: !Text
    , _coOriginalContent :: !(Maybe Text)
    , _coContent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coObjectType'
--
-- * 'coOriginalContent'
--
-- * 'coContent'
commentObject
    :: CommentObject
commentObject =
  CommentObject'
    { _coObjectType = "comment"
    , _coOriginalContent = Nothing
    , _coContent = Nothing
    }


-- | The object type of this comment. Possible values are: - \"comment\" - A
-- comment in reply to an activity.
coObjectType :: Lens' CommentObject Text
coObjectType
  = lens _coObjectType (\ s a -> s{_coObjectType = a})

-- | The content (text) as provided by the author, stored without any HTML
-- formatting. When creating or updating a comment, this value must be
-- supplied as plain text in the request.
coOriginalContent :: Lens' CommentObject (Maybe Text)
coOriginalContent
  = lens _coOriginalContent
      (\ s a -> s{_coOriginalContent = a})

-- | The HTML-formatted content, suitable for display.
coContent :: Lens' CommentObject (Maybe Text)
coContent
  = lens _coContent (\ s a -> s{_coContent = a})

instance FromJSON CommentObject where
        parseJSON
          = withObject "CommentObject"
              (\ o ->
                 CommentObject' <$>
                   (o .:? "objectType" .!= "comment") <*>
                     (o .:? "originalContent")
                     <*> (o .:? "content"))

instance ToJSON CommentObject where
        toJSON CommentObject'{..}
          = object
              (catMaybes
                 [Just ("objectType" .= _coObjectType),
                  ("originalContent" .=) <$> _coOriginalContent,
                  ("content" .=) <$> _coContent])

--
-- /See:/ 'commentFeed' smart constructor.
data CommentFeed =
  CommentFeed'
    { _cffEtag :: !(Maybe Text)
    , _cffNextPageToken :: !(Maybe Text)
    , _cffNextLink :: !(Maybe Text)
    , _cffKind :: !Text
    , _cffItems :: !(Maybe [Comment])
    , _cffId :: !(Maybe Text)
    , _cffUpdated :: !(Maybe DateTime')
    , _cffTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cffEtag'
--
-- * 'cffNextPageToken'
--
-- * 'cffNextLink'
--
-- * 'cffKind'
--
-- * 'cffItems'
--
-- * 'cffId'
--
-- * 'cffUpdated'
--
-- * 'cffTitle'
commentFeed
    :: CommentFeed
commentFeed =
  CommentFeed'
    { _cffEtag = Nothing
    , _cffNextPageToken = Nothing
    , _cffNextLink = Nothing
    , _cffKind = "plus#commentFeed"
    , _cffItems = Nothing
    , _cffId = Nothing
    , _cffUpdated = Nothing
    , _cffTitle = Nothing
    }


-- | ETag of this response for caching purposes.
cffEtag :: Lens' CommentFeed (Maybe Text)
cffEtag = lens _cffEtag (\ s a -> s{_cffEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
cffNextPageToken :: Lens' CommentFeed (Maybe Text)
cffNextPageToken
  = lens _cffNextPageToken
      (\ s a -> s{_cffNextPageToken = a})

-- | Link to the next page of activities.
cffNextLink :: Lens' CommentFeed (Maybe Text)
cffNextLink
  = lens _cffNextLink (\ s a -> s{_cffNextLink = a})

-- | Identifies this resource as a collection of comments. Value:
-- \"plus#commentFeed\".
cffKind :: Lens' CommentFeed Text
cffKind = lens _cffKind (\ s a -> s{_cffKind = a})

-- | The comments in this page of results.
cffItems :: Lens' CommentFeed [Comment]
cffItems
  = lens _cffItems (\ s a -> s{_cffItems = a}) .
      _Default
      . _Coerce

-- | The ID of this collection of comments.
cffId :: Lens' CommentFeed (Maybe Text)
cffId = lens _cffId (\ s a -> s{_cffId = a})

-- | The time at which this collection of comments was last updated.
-- Formatted as an RFC 3339 timestamp.
cffUpdated :: Lens' CommentFeed (Maybe UTCTime)
cffUpdated
  = lens _cffUpdated (\ s a -> s{_cffUpdated = a}) .
      mapping _DateTime

-- | The title of this collection of comments.
cffTitle :: Lens' CommentFeed (Maybe Text)
cffTitle = lens _cffTitle (\ s a -> s{_cffTitle = a})

instance FromJSON CommentFeed where
        parseJSON
          = withObject "CommentFeed"
              (\ o ->
                 CommentFeed' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "plus#commentFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON CommentFeed where
        toJSON CommentFeed'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cffEtag,
                  ("nextPageToken" .=) <$> _cffNextPageToken,
                  ("nextLink" .=) <$> _cffNextLink,
                  Just ("kind" .= _cffKind),
                  ("items" .=) <$> _cffItems, ("id" .=) <$> _cffId,
                  ("updated" .=) <$> _cffUpdated,
                  ("title" .=) <$> _cffTitle])

-- | Verification status of actor.
--
-- /See:/ 'commentActorVerification' smart constructor.
newtype CommentActorVerification =
  CommentActorVerification'
    { _cavAdHocVerified :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentActorVerification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cavAdHocVerified'
commentActorVerification
    :: CommentActorVerification
commentActorVerification =
  CommentActorVerification' {_cavAdHocVerified = Nothing}


-- | Verification for one-time or manual processes.
cavAdHocVerified :: Lens' CommentActorVerification (Maybe Text)
cavAdHocVerified
  = lens _cavAdHocVerified
      (\ s a -> s{_cavAdHocVerified = a})

instance FromJSON CommentActorVerification where
        parseJSON
          = withObject "CommentActorVerification"
              (\ o ->
                 CommentActorVerification' <$>
                   (o .:? "adHocVerified"))

instance ToJSON CommentActorVerification where
        toJSON CommentActorVerification'{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _cavAdHocVerified])

-- | An object representation of the individual components of name.
--
-- /See:/ 'activityActorName' smart constructor.
data ActivityActorName =
  ActivityActorName'
    { _aanGivenName :: !(Maybe Text)
    , _aanFamilyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityActorName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aanGivenName'
--
-- * 'aanFamilyName'
activityActorName
    :: ActivityActorName
activityActorName =
  ActivityActorName' {_aanGivenName = Nothing, _aanFamilyName = Nothing}


-- | The given name (\"first name\") of the actor.
aanGivenName :: Lens' ActivityActorName (Maybe Text)
aanGivenName
  = lens _aanGivenName (\ s a -> s{_aanGivenName = a})

-- | The family name (\"last name\") of the actor.
aanFamilyName :: Lens' ActivityActorName (Maybe Text)
aanFamilyName
  = lens _aanFamilyName
      (\ s a -> s{_aanFamilyName = a})

instance FromJSON ActivityActorName where
        parseJSON
          = withObject "ActivityActorName"
              (\ o ->
                 ActivityActorName' <$>
                   (o .:? "givenName") <*> (o .:? "familyName"))

instance ToJSON ActivityActorName where
        toJSON ActivityActorName'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _aanGivenName,
                  ("familyName" .=) <$> _aanFamilyName])
